using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using Newtonsoft.Json;
using TW;

/// <summary>
/// Сводное описание для PremiumService
/// </summary>
public class PaymentService : AbstractService
{

    public PaymentService()
    {

    }

    public Error PurchaseGold(User user, int goodId, bool isAndroid, string receipt, string signature, string ip, double timeNow)
    {
        Offer good = new Offer(goodId);
        if (good.active)
        {
            if (isAndroid)
            {
                return AndroidPurchase(user, goodId, receipt, signature, ip, timeNow);
            }
            else
            {
                return iOSPurchase(user, goodId, receipt, signature, ip, timeNow);
            }
        }
        else return Error.ERROR_OFFERENDED;
    }
    
    private Error AndroidPurchase(User user, int goodId, string receipt, string signature, string ip, double timeNow)
    {
        Offer good = new Offer(goodId);
        var response = "";
        PurchaseInfo purInfo = new PurchaseInfo();
        /*temp fix for check
        List<UserAction> offerSpecial1 = UserAction.GetByName(user.id, good.name, timeNow);        
        PurchaseResult result1 = null;
        if (offerSpecial1.Count > 0) result1 = UserAction.Purchase(offerSpecial1, user, timeNow);        
        return Error.OK.SetData(Util.ToJson(result1)); 
        */
        purInfo = GetPurchaseAndroid(receipt, signature);
        Util.PurchaseLog("userId:" + user.id + " tried purchase - " + purInfo.purchase);
        if (string.IsNullOrEmpty(purInfo.purchase)) return Error.ERROR_PURCHASE;
        var purchaseData = JsonConvert.DeserializeObject<AndroidPurchaseData>(purInfo.purchase);
        //if (!string.IsNullOrEmpty(purchaseData.orderId) && !purchaseData.orderId.StartsWith("GPA.")) return Error.ERROR_PURCHASE;  //check if Freedom hack
        var valid = new Validation(purchaseData.packageName);
        if (valid.Verify(receipt, signature))
        {
            // помещаем в таблицу информацию о покупке, при верификации обновляем информацию и меняем флаг              
            Purchase purchase = new Purchase(user, good, true, ip, purInfo);             
            if (!purchase.validated) // для андроида этот флаг устанавливается вручную
            {
                AdditionalHandlerPayment(user, purchase, good, timeNow); // Начисляем только когда золото было начислено игроку            
                if (good.goodsNum + good.goodsBonus > 0)
                    new Gold(user, "Purchase", good.id, (int)(good.goodsNum + good.goodsBonus));
                user.Gold += good.goodsNum + good.goodsBonus;
                user.Saving();
                if (purchase.id != 0)
                {
                    List<UserAction> offerSpecial = UserAction.GetByName(user.id, good.name, timeNow);
                    //if (good.name == "com.iron5studio.iron5.tank2tier" && offerSpecial.Count == 0) // gift promocode
                    //    offerSpecial.Add(UserAction.AddTankTierOffer(3, user.id));
                    PurchaseResult result = null;
                    if (offerSpecial.Count > 0) result = UserAction.Purchase(offerSpecial, user, timeNow);

                    if (result == null) return Error.OK;
                    response = Util.ToJson(result);
                }
            }         
            else return Error.OK;
        }
        else return Error.ERROR_PURCHASE;
        return Error.OK.SetData(response);
    }

    private Error iOSPurchase(User user, int goodId, string receipt, string signature, string ip, double timeNow)
    {
        Offer good = new Offer(goodId);
        var response = "";
        PurchaseInfo purInfo = new PurchaseInfo();
        purInfo = GetPurchaseIOS(receipt, good);
        Util.PurchaseLog("userId:" + user.id + " tried purchase - " + JsonConvert.SerializeObject(purInfo.purchaseData));
        if (purInfo.purchaseData == null) return Error.ERROR_PURCHASE;

        if (verifyPurchase(receipt, signature))
        {
            Purchase purchase = new Purchase(user, good, false, ip, purInfo);
            if (purchase.id != 0)
            {
                if (!good.typeGold) user.AddMoney((int)good.goodsNum + (int)good.goodsBonus);
                else
                {
                    if (good.goodsNum + good.goodsBonus > 0)
                        new Gold(user, "Purchase", good.id, (int)(good.goodsNum + good.goodsBonus));
                    user.Gold += good.goodsNum + good.goodsBonus;
                }

                List<UserAction> offerSpecial = UserAction.GetByName(user.id, good.name, timeNow);
                PurchaseResult result = null;
                if (offerSpecial.Count > 0) result = UserAction.Purchase(offerSpecial, user, timeNow);
                                
                AdditionalHandlerPayment(user, purchase, good, timeNow);
                if (result == null) return Error.OK;
                response = Util.ToJson(result);
            }
            else return Error.ERROR_NO_RECORD_INSERTED;
        }
        else return Error.ERROR_PURCHASE;
        return Error.OK.SetData(response);
    }

    private void AdditionalHandlerPayment(User user, Purchase purchase, Offer good, double timeNow)
    {
        if (purchase.name == "com.iron5studio.iron5.tank2tier") user.Flags = Util.AddType(user.Flags, (int)Flag.DSC_Tank2Tier);
        if (purchase.name == "com.iron5studio.iron5.beginnerpack") user.Flags = Util.AddType(user.Flags, (int)Flag.DSC_BeginnerPack);
        if (purchase.name.StartsWith(SystemDefine.BundleId + ".gold_offer") && purchase.name.EndsWith("_discount")) user.Flags = Util.AddType(user.Flags, (int)Flag.DSC_Gold25);
        if (purchase.name.StartsWith(SystemDefine.BundleId + ".gold_offer") && purchase.name.EndsWith("_discount50")) user.Flags = Util.AddType(user.Flags, (int)Flag.DSC_Gold50);
        double goldSum = 0;
        if (purchase.name.StartsWith(SystemDefine.BundleId + ".gold_offer"))
            goldSum = good.goodsNum + good.goodsBonus;
        user.VIPgold += goldSum;
        if (goldSum > 0) user.CheckUnlimitFuel(timeNow, (int)goldSum);
        user.Saving();
    }

    private bool verifyPurchase(string receipt, string signature) // iOS check
    {
        string b = "";
        string url = (SystemDefine.Sandbox) ? "https://sandbox.itunes.apple.com/verifyReceipt" : "https://buy.itunes.apple.com/verifyReceipt";
        HttpWebRequest webRequest = (HttpWebRequest)WebRequest.Create(url);
        webRequest.Method = "POST";
        webRequest.ContentType = "application/x-www-form-urlencoded";
        string data = "{\"receipt-data\":\"" + receipt + "\"}";
        webRequest.ContentLength = data.Length;
        using (StreamWriter requestWriter2 = new StreamWriter(webRequest.GetRequestStream()))
        {
            requestWriter2.Write(data);
        }
        try
        {
            using (StreamReader responseReader = new StreamReader(webRequest.GetResponse().GetResponseStream()))
            {
                b = responseReader.ReadToEnd();
            }
        }
        catch (Exception)
        {
            b = "{\"status\":500}";
        }
        Receipt rcode = JsonConvert.DeserializeObject<Receipt>(b);
        switch (rcode.status)
        {
            case 0: return true;
            case 500: return false;
            default: return false;
        }
    }

    public static PurchaseInfo GetPurchaseAndroid(string originalJSON, string signature)
    {
        try
        {
            var pi = new PurchaseInfo();
            pi.receipt = signature;
            pi.environment = "Android";
            pi.signature = signature;
            pi.purchase = originalJSON;
            return pi;
        }
        catch (Exception)
        {
            return new PurchaseInfo();
        }
    }

    private PurchaseInfo GetPurchaseIOS(string receipt, Offer offer)
    {
        try
        {
            StringBuilder sb = new StringBuilder();
            sb.Append(Encoding.UTF8.GetChars(Convert.FromBase64String(receipt)));
            string receipt1 = sb.ToString();
            receipt1 = receipt1.Replace("purchase-info", "purchase");
            receipt1 = receipt1.Replace("signing-status", "signing");
            receipt1 = receipt1.Replace("\" = \"", "\":\"");
            receipt1 = receipt1.Replace(";", ",");
            PurchaseInfo pi = JsonConvert.DeserializeObject<PurchaseInfo>(receipt1);
            StringBuilder sb1 = new StringBuilder();
            sb1.Append(Encoding.UTF8.GetChars(Convert.FromBase64String(pi.purchase)));
            string tempData = sb1.ToString().Replace("\n", "");
            tempData = tempData.Replace("\t", "");
            tempData = tempData.Replace("original-purchase-date-pst", "original_purchase_date_pst");
            tempData = tempData.Replace("original-purchase-date-ms", "original_purchase_date_ms");
            tempData = tempData.Replace("original-purchase-date", "original_purchase_date");
            tempData = tempData.Replace("unique-identifier", "unique_identifier");
            tempData = tempData.Replace("original-transaction-id", "original_transaction_id");
            tempData = tempData.Replace("transaction-id", "transaction_id");
            tempData = tempData.Replace("unique-vendor-identifier", "unique_vendor_identifier");
            tempData = tempData.Replace("product-id", "product_id");
            tempData = tempData.Replace("item-id", "item_id");
            tempData = tempData.Replace("purchase-date-ms", "purchase_date_ms");
            tempData = tempData.Replace("purchase-date-pst", "purchase_date_pst");
            tempData = tempData.Replace("purchase-date", "purchase_date");
            tempData = tempData.Replace("\" = \"", "\":\"");
            tempData = tempData.Replace(";", ",");
            pi.purchaseData = JsonConvert.DeserializeObject<PurchaseData>(tempData);
            if (pi.purchaseData.bid != SystemDefine.BundleId || pi.purchaseData.product_id != offer.name) return new PurchaseInfo();
            pi.receipt = receipt;
            return pi;
        }
        catch (Exception)
        {
            return new PurchaseInfo();
        }
    }

    public Error BuySupscription(User user, VIPdata sub, double timeNow)
    {        
        double n = 1;
        if (sub == VIPdata.GoldFor30Day) n = 30;
        else if (sub == VIPdata.GoldFor7Day) n = 7;
        int[] data = user.GetVIPData();
        int gold = data[(int)sub];
        int discountG = 0;
        List<UserAction> action = UserAction.GetByItemId(user.id, ItemType.VIPSubscription, 0, timeNow);
        if (action.Count > 0)
        {
            discountG = (int)Math.Ceiling((double)gold * action[0].discount / 100);
            if (action[0].counter == 1) action[0].Disappear();
        }
        if (user.Gold < gold - discountG) return Error.LACK_GOLD;
        user.Gold -= (gold - discountG);
        new Gold(user, "Subscription", (int)sub,  -(int)(gold - discountG));
        if (user.VIPsubscription > timeNow)
        {
            user.VIPsubscription += n * 86400000;
        }
        else user.VIPsubscription = timeNow + n * 86400000;
        user.Saving();
        return Error.OK;
    }

    public Error GetFreeGold(User user, double timeNow)
    {
        var result = (user.EventFuelRestoreAttempt / (int)Math.Pow(10, 7)) % 10;
        if (result < 3)
        {
            user.Gold += Define.Get(Def.GoldPerAd);
            new Gold(user, "ForAds", 0, Define.Get(Def.GoldPerAd));
        }
        else return Error.NOREWARD;
        user.EventFuelRestoreAttempt += (int)Math.Pow(10, 7);  //saving free gold use
        user.Saving();
        return Error.OK;
    }
}