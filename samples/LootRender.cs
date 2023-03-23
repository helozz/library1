using UnityEngine;
using System.Collections;
using System;

namespace MapViewer
{
    public class LootRender : MonoBehaviour
    {
        public UILabel Name;
        public UI2DSprite image;
        public Sprite sprite;
        public UILabel toggle;

        public UIInput Amount;
        public string typeName;
        public int typeData;

        // Use this for initialization
        void Start()
        {
            image.gameObject.GetComponentInChildren<UI2DSprite>().sprite2D = sprite;
        }

        // Update is called once per frame
        void Update()
        {
        }

        public static GameObject Render(string loot, int amount)
        {
            var prefab = Resources.Load("Loot") as GameObject;
            prefab.layer = 5;
            LootRender instance = prefab.GetComponent<LootRender>();
            instance.Amount.gameObject.SetActive(false);
            instance.Name.gameObject.SetActive(true);
            instance.toggle.gameObject.SetActive(false);
            instance.Name.text = "x " + amount;
            Sprite sp = Resources.Load(loot, typeof(Sprite)) as Sprite;
            instance.sprite = sp;
            
            return prefab;
        }

        public static GameObject RenderSelect(string loot, int amount, string memType, string togglestate = "OFF", bool toggle = false)
        {
            if (!toggle) PlayerPrefs.SetInt(memType, amount);
            else PlayerPrefs.SetString(memType, togglestate);
            var prefab = Resources.Load("Loot") as GameObject;
            prefab.layer = 5;
            LootRender instance = prefab.GetComponent<LootRender>();
            instance.Amount.gameObject.SetActive(!toggle);
            instance.Name.gameObject.SetActive(false);
            instance.toggle.gameObject.SetActive(toggle);
            instance.typeName = memType;
            if (toggle) instance.toggle.text = PlayerPrefs.GetString(memType, togglestate);
            instance.Amount.value = "" + amount;
            EventDelegate.Add(instance.Amount.onChange, instance.OnChangeAmount);
            Sprite sp = Resources.Load(loot, typeof(Sprite)) as Sprite;
            instance.sprite = sp;

            return prefab;
        }

        public void OnToggle()
        {
            UILabel lbl = this.gameObject.GetComponent<LootRender>().toggle.GetComponent<UILabel>();
            if (lbl.text == "CLOSE")
            {
                var ur = GameObject.Find("RouteLootRenderer(Clone)") as GameObject;
                if (ur != null) Destroy(ur);
                return;
            }
            lbl.text = (lbl.text == "ON") ? "OFF" : "ON";
            PlayerPrefs.SetString(typeName, lbl.text);
        }

        public void OnChangeAmount()
        {
            PlayerPrefs.SetInt(typeName, Convert.ToInt32(this.gameObject.GetComponent<LootRender>().Amount.value));
        }

    }
}