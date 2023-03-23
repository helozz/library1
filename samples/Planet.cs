using UnityEngine;
using System.Collections;
using System;

namespace DeepSpaces
{
    public class Planet : MonoBehaviour
    {
        public DefaultPlanet dp;

        public static System.Random rnd = new System.Random(DateTime.UtcNow.Millisecond);
        public Planet instance;
        public GameObject planet;
        public UISprite planetSkin;
        public float Speed = 0f;
        public float OrbitX = 0f;
        public float OrbitY = 0f;
        public float TimeStart = 0;
        public int queue;
        public UISprite current;

        // Use this for initialization
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {
            Planet instance = planet.GetComponent<Planet>();
            float PI = 3.1415926f;
            float as0 = Mathf.Sin(-PI / 180);
            float ac0 = Mathf.Cos(-PI / 180);
            float x0 = instance.OrbitX * Mathf.Cos(instance.Speed * (Time.realtimeSinceStartup + TimeStart));
            float y0 = instance.OrbitY * Mathf.Sin(instance.Speed * (Time.realtimeSinceStartup + TimeStart));
            float NewX = x0 * ac0 + y0 * as0;
            float NewY = -x0 * as0 + y0 * ac0;
            planet.transform.position = new Vector3(NewX, NewY, 0f);
        }

        public static void Render(int queue, DefaultPlanet dp)
        {
            var prefab = Resources.Load("Planets/Planet") as GameObject;
            var ur = GameObject.Find("Planets") as GameObject;
            if (ur != null)
            {
                var go = NGUITools.AddChild(ur.gameObject, prefab);
                go.transform.Translate(new Vector3(0f, 0f, 0f));
                var pl = go.GetComponent<Planet>();
                pl.queue = queue;
                pl.Speed = (float)rnd.Next(1, 10) / 200;
                pl.OrbitX = (float)queue * 0.24f;
                pl.OrbitY = (float)queue * 0.16f;
                pl.TimeStart = (float)rnd.Next(0, 80);
                pl.planetSkin.spriteName = !dp.required ? "unknown" : dp.type.ToString();
                pl.dp = dp;
                
                if (BattleInfo.currentGalaxyID == BattleInfo.selectedGalaxyID &&
                    BattleInfo.currentStarSystemID == BattleInfo.selectedStarSystemID &&
                    BattleInfo.currentPlanetID == dp.id)
                {
                    pl.current.gameObject.SetActive(true);
                }
                else pl.current.gameObject.SetActive(false);

                if (PlayerPrefs.GetInt("planet_" + BattleInfo.selectedGalaxyID + "_" + BattleInfo.selectedStarSystemID + "_" + dp.id, 0) != 0)
                {
                    pl.planetSkin.alpha = 0.25f;
                }

            }
        }

        public void ClickPlanet()
        {
            Debug.Log("Click " + planet.GetComponent<Planet>().queue);
            BattleInfo.selectedPlanetID = dp.id;
            PlanetPopup.instance.Show(dp);
        }

        public void DestroyPlanet()
        {
            planet.gameObject.transform.parent = null;
            Destroy(planet);
        }

    }
}