using UnityEngine;
using System.Collections;

namespace DeepSpaces
{
    public class Loading : MonoBehaviour
    {
        public UILabel hintLabel;
        public GameObject AloadingBar;
        LoadingBar bar;
        public double hintfreq = 3.5;
        double hinttime = 0;
        bool stop = false;
        HintManager HM;

        // Use this for initialization
        void Start()
        {
            HM = new HintManager();
            hinttime = hintfreq - 0.5;
            bar = AloadingBar.GetComponentInChildren<LoadingBar>();
            Localization.instance.currentLanguage = "RU";// PlayerPrefs.GetString("Language", "EN");

        }

        // Update is called once per frame
        void Update()
        {
            if (!stop)
            {
                hinttime += Time.deltaTime;
                if (hinttime > hintfreq)
                {
                    hinttime = 0;
                    hintLabel.text = Localization.Localize("hint") + " " + Localization.Localize(HM.GetHint());
                }
                if (bar.IsReady()) onLoaded();
            }
        }

        public void onLoaded()
        {
            stop = true;
            SceneLoader.loadSceneMain();
        }
    }
}