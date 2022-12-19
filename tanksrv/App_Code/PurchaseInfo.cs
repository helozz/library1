using System;
using System.Collections.Generic;

namespace TW
{
/// <summary>
/// Сводное описание для PurchaseInfo
/// </summary>
public class PurchaseInfo
{
    public string signature;
    public string purchase;
    public string environment;
    public string pod;
    public string signing;
    public string receipt;
    public PurchaseData purchaseData;

	public PurchaseInfo()
	{
	}
}}