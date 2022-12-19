using System;
using System.Collections.Generic;

namespace  TW
{
public class AfterLoadShopItemProcessor
{
	public ItemConfig config;
    public Dictionary<int, ItemParameters> iSettings;

    public AfterLoadShopItemProcessor(ItemConfig i_config, Dictionary<int, ItemParameters> i_iSettings)
    {
        this.config = i_config;
        this.iSettings = i_iSettings;
    }

    public void onLoad()
    {
        ItemParameters referencedItem = this.iSettings[config.param];
		config.name = referencedItem.itemConfig.name;
    }
}
}
