using UnityEngine;
using System.Collections;
using System;

namespace DeepSpaces
{
    public class LoadingBar : MonoBehaviour
    {
        public UISprite bar;
        UIWidget wid;
        public UILabel proLabel;
        private float percentage = 1f;
        private float ipercentage = 0;// 0.84f; // set to 0f

        // Use this for initialization
        void Start()
        {
            wid = bar.GetComponentInChildren<UIWidget>();
        }

        // Update is called once per frame
        void Update()
        {
            if (ipercentage < percentage) ipercentage += 0.002f;
            ipercentage = Math.Min(ipercentage, percentage);
            wid.width = (int)Math.Min(Math.Ceiling(801 * ipercentage), 801);
            proLabel.text = (int)Math.Floor(ipercentage * 100) + "%";
        }

        public void SetProgress(float f)
        {
            percentage = f;
        }

        public float GetProgress()
        {
            return percentage;
        }

        public bool IsReady()
        {
            return ipercentage >= percentage;
        }

    }
}