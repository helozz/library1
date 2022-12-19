using System;
using System.Collections.Generic;
using System.Web;

namespace TW
{
    /// <summary>
    /// Сводное описание для PurchaseData
    /*'{
            "orderId":"GPA.1234-5678-9012-34567",
            "packageName":"com.example.app",
            "productId":"exampleSku",
            "purchaseTime":1345678900000,
            "purchaseState":0,
            "developerPayload":"bGoa+V7g/yqDXvKRqq+JTFn4uQZbPiQJo4pf9RzJ",
            "purchaseToken":"opaque-token-up-to-1000-characters"
        }'*/
    /// </summary>
    public class AndroidPurchaseData
    {        
        public string orderId;
        public string packageName;
        public string productId;
        public string purchaseTime;
        public string purchaseState;
        public string developerPayload;
        public string purchaseToken;        

        public AndroidPurchaseData()
        {
        }
    }
}