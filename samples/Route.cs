using UnityEngine;
using System.Collections;
using System.Collections.Generic;

namespace MapViewer
{
    public class Route : MonoBehaviour
    {
        public UILabel Name;
        public int route;
        public GameObject button;

        // Use this for initialization
        void Start()
        {

        }

        public static GameObject AddButton(int route)
        {
            var prefab = Resources.Load("Route") as GameObject;
            prefab.layer = 5;
            Route instance = prefab.GetComponent<Route>();
            instance.Name.text = "Route " + route;
            instance.name = "Route" + route;
            instance.route = route;
            return prefab;
        }

        public static void Render()
        {
            List<List<int>> Routes = Load.Routes;
            var ur = GameObject.Find("MenuRoutes") as GameObject;
            var ur1 = GameObject.Find("ScrollLeft") as GameObject;
            int dd = 9;
            for (int i = 1; i <= Routes.Count; i++)
            {
                var go = NGUITools.AddChild(ur.gameObject, Route.AddButton(i));
                go.GetComponentInChildren<UI2DSprite>().depth = dd + i * 2;
                go.GetComponentInChildren<Route>().Name.GetComponentInChildren<UILabel>().depth = dd + 1 + i * 2;
            }
            ur.GetComponentInChildren<UIGrid>().Reposition();
            ur1.GetComponentInChildren<UIScrollView>().ResetPosition();
        }

        public void Show()
        {
            var ur0 = GameObject.Find("MenuRoutes") as GameObject;
            for (int i = ur0.gameObject.transform.childCount; i > 0; i--)
            {
                GameObject r = ur0.gameObject.transform.FindChild("Route" + i + "(Clone)").gameObject;
                r.GetComponentInChildren<UIButton>().defaultColor = Color.white;
                r.GetComponentInChildren<UIButton>().UpdateColor(true, true);
            }
            this.button.GetComponentInChildren<UIButton>().defaultColor = this.button.GetComponentInChildren<UIButton>().pressed;

            var ur = GameObject.Find("RouteLootRenderer(Clone)") as GameObject;
            if (ur != null) Destroy(ur);

            List<List<int>> Routes = Load.Routes;
            List<Node> RoutesData = Load.RoutesData;
            Load.SelectRoute(Routes[route - 1]);
            Load.currentRoute = route;
            RouteLootSingle.Render(RoutesData[route - 1], Routes[route - 1].Count);
        }

        public void Clear()
        {
            var ur = GameObject.Find("RouteLootRenderer(Clone)") as GameObject;
            if (ur != null) Destroy(ur);
            Load.DeselectRoutes();
        }



    }
}