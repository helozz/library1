using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Threading;
using System;
using System.Runtime.InteropServices;
using System.Diagnostics;

namespace MapViewer
{
    public enum VirtualKeyStates : int
    {
        VK_LBUTTON = 0x01,
        VK_RBUTTON = 0x02,
        VK_CANCEL = 0x03,
        VK_MBUTTON = 0x04,
        //
        VK_XBUTTON1 = 0x05,
        VK_XBUTTON2 = 0x06,
        //
        VK_BACK = 0x08,
        VK_TAB = 0x09,
        //
        VK_CLEAR = 0x0C,
        VK_RETURN = 0x0D,
        //
        VK_SHIFT = 0x10,
        VK_CONTROL = 0x11,
        VK_MENU = 0x12,
        VK_PAUSE = 0x13,
        VK_CAPITAL = 0x14,
        //
        VK_KANA = 0x15,
        VK_HANGEUL = 0x15,  /* old name - should be here for compatibility */
        VK_HANGUL = 0x15,
        VK_JUNJA = 0x17,
        VK_FINAL = 0x18,
        VK_HANJA = 0x19,
        VK_KANJI = 0x19,
        //
        VK_ESCAPE = 0x1B,
        //
        VK_CONVERT = 0x1C,
        VK_NONCONVERT = 0x1D,
        VK_ACCEPT = 0x1E,
        VK_MODECHANGE = 0x1F,
        //
        VK_SPACE = 0x20,
        VK_PRIOR = 0x21,
        VK_NEXT = 0x22,
        VK_END = 0x23,
        VK_HOME = 0x24,
        VK_LEFT = 0x25,
        VK_UP = 0x26,
        VK_RIGHT = 0x27,
        VK_DOWN = 0x28,
        VK_SELECT = 0x29,
        VK_PRINT = 0x2A,
        VK_EXECUTE = 0x2B,
        VK_SNAPSHOT = 0x2C,
        VK_INSERT = 0x2D,
        VK_DELETE = 0x2E,
        VK_HELP = 0x2F,
        //
        VK_LWIN = 0x5B,
        VK_RWIN = 0x5C,
        VK_APPS = 0x5D,
        //
        VK_SLEEP = 0x5F,
        //
        VK_NUMPAD0 = 0x60,
        VK_NUMPAD1 = 0x61,
        VK_NUMPAD2 = 0x62,
        VK_NUMPAD3 = 0x63,
        VK_NUMPAD4 = 0x64,
        VK_NUMPAD5 = 0x65,
        VK_NUMPAD6 = 0x66,
        VK_NUMPAD7 = 0x67,
        VK_NUMPAD8 = 0x68,
        VK_NUMPAD9 = 0x69,
        VK_MULTIPLY = 0x6A,
        VK_ADD = 0x6B,
        VK_SEPARATOR = 0x6C,
        VK_SUBTRACT = 0x6D,
        VK_DECIMAL = 0x6E,
        VK_DIVIDE = 0x6F,
        VK_F1 = 0x70,
        VK_F2 = 0x71,
        VK_F3 = 0x72,
        VK_F4 = 0x73,
        VK_F5 = 0x74,
        VK_F6 = 0x75,
        VK_F7 = 0x76,
        VK_F8 = 0x77,
        VK_F9 = 0x78,
        VK_F10 = 0x79,
        VK_F11 = 0x7A,
        VK_F12 = 0x7B,
        VK_F13 = 0x7C,
        VK_F14 = 0x7D,
        VK_F15 = 0x7E,
        VK_F16 = 0x7F,
        VK_F17 = 0x80,
        VK_F18 = 0x81,
        VK_F19 = 0x82,
        VK_F20 = 0x83,
        VK_F21 = 0x84,
        VK_F22 = 0x85,
        VK_F23 = 0x86,
        VK_F24 = 0x87,
        //
        VK_NUMLOCK = 0x90,
        VK_SCROLL = 0x91,
        //
        VK_OEM_NEC_EQUAL = 0x92,   // '=' key on numpad
        //
        VK_OEM_FJ_JISHO = 0x92,   // 'Dictionary' key
        VK_OEM_FJ_MASSHOU = 0x93,   // 'Unregister word' key
        VK_OEM_FJ_TOUROKU = 0x94,   // 'Register word' key
        VK_OEM_FJ_LOYA = 0x95,   // 'Left OYAYUBI' key
        VK_OEM_FJ_ROYA = 0x96,   // 'Right OYAYUBI' key
        //
        VK_LSHIFT = 0xA0,
        VK_RSHIFT = 0xA1,
        VK_LCONTROL = 0xA2,
        VK_RCONTROL = 0xA3,
        VK_LMENU = 0xA4,
        VK_RMENU = 0xA5,
        //
        VK_BROWSER_BACK = 0xA6,
        VK_BROWSER_FORWARD = 0xA7,
        VK_BROWSER_REFRESH = 0xA8,
        VK_BROWSER_STOP = 0xA9,
        VK_BROWSER_SEARCH = 0xAA,
        VK_BROWSER_FAVORITES = 0xAB,
        VK_BROWSER_HOME = 0xAC,
        //
        VK_VOLUME_MUTE = 0xAD,
        VK_VOLUME_DOWN = 0xAE,
        VK_VOLUME_UP = 0xAF,
        VK_MEDIA_NEXT_TRACK = 0xB0,
        VK_MEDIA_PREV_TRACK = 0xB1,
        VK_MEDIA_STOP = 0xB2,
        VK_MEDIA_PLAY_PAUSE = 0xB3,
        VK_LAUNCH_MAIL = 0xB4,
        VK_LAUNCH_MEDIA_SELECT = 0xB5,
        VK_LAUNCH_APP1 = 0xB6,
        VK_LAUNCH_APP2 = 0xB7,
        //
        VK_OEM_1 = 0xBA,   // ';:' for US
        VK_OEM_PLUS = 0xBB,   // '+' any country
        VK_OEM_COMMA = 0xBC,   // ',' any country
        VK_OEM_MINUS = 0xBD,   // '-' any country
        VK_OEM_PERIOD = 0xBE,   // '.' any country
        VK_OEM_2 = 0xBF,   // '/?' for US
        VK_OEM_3 = 0xC0,   // '`~' for US
        //
        VK_OEM_4 = 0xDB,  //  '[{' for US
        VK_OEM_5 = 0xDC,  //  '\|' for US
        VK_OEM_6 = 0xDD,  //  ']}' for US
        VK_OEM_7 = 0xDE,  //  ''"' for US
        VK_OEM_8 = 0xDF,
        //
        VK_OEM_AX = 0xE1,  //  'AX' key on Japanese AX kbd
        VK_OEM_102 = 0xE2,  //  "<>" or "\|" on RT 102-key kbd.
        VK_ICO_HELP = 0xE3,  //  Help key on ICO
        VK_ICO_00 = 0xE4,  //  00 key on ICO
        //
        VK_PROCESSKEY = 0xE5,
        //
        VK_ICO_CLEAR = 0xE6,
        //
        VK_PACKET = 0xE7,
        //
        VK_OEM_RESET = 0xE9,
        VK_OEM_JUMP = 0xEA,
        VK_OEM_PA1 = 0xEB,
        VK_OEM_PA2 = 0xEC,
        VK_OEM_PA3 = 0xED,
        VK_OEM_WSCTRL = 0xEE,
        VK_OEM_CUSEL = 0xEF,
        VK_OEM_ATTN = 0xF0,
        VK_OEM_FINISH = 0xF1,
        VK_OEM_COPY = 0xF2,
        VK_OEM_AUTO = 0xF3,
        VK_OEM_ENLW = 0xF4,
        VK_OEM_BACKTAB = 0xF5,
        //
        VK_ATTN = 0xF6,
        VK_CRSEL = 0xF7,
        VK_EXSEL = 0xF8,
        VK_EREOF = 0xF9,
        VK_PLAY = 0xFA,
        VK_ZOOM = 0xFB,
        VK_NONAME = 0xFC,
        VK_PA1 = 0xFD,
        VK_OEM_CLEAR = 0xFE
    }

    [StructLayout(LayoutKind.Sequential)]
    public struct POINT
    {
        public int X;
        public int Y;
    }

    public class Clicker : MonoBehaviour
    {
        public bool clicking = false;
        public bool beingSet = false;
        public bool beingSetM = false;
        public bool beingSetE = false;
        public UILabel sett;
        public UILabel settM;
        public UILabel settE;
        public UILabel cli;
        public List<POINT> pointsEntrance = new List<POINT>();
        public List<POINT> pointsMap = new List<POINT>();
        public List<POINT> pointsExit = new List<POINT>();
        int pause = 300;
        int pause0 = 500;
        int pause1 = 900;
        int pause2 = 3000;
        int pause3 = 4000;
        int pause4 = 6000;
        int pause5 = 7000;
        public int countPoints = 20;
        public int countPointsM = 200;
        public int countPointsE = 20;
        public int State = 0;
        public int RealSteps = 0;
        public int Route = 0;
        public int runeCount = 0;
        public Node achieve = new Node();
        List<Node> RouteNodes = new List<Node>();
        AccountButton account;
        int success = 0;
        int all = 0;

        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        public static extern void mouse_event(uint dwFlags, uint dx, uint dy, uint cButtons, UIntPtr dwExtraInfo);
        private const uint MOUSEEVENTF_LEFTDOWN = 0x02;
        private const uint MOUSEEVENTF_LEFTUP = 0x04;
        private const uint MOUSEEVENTF_RIGHTDOWN = 0x08;
        private const uint MOUSEEVENTF_RIGHTUP = 0x10;
        private const uint MOUSEEVENTF_MOVE = 0x0001;

        [DllImport("user32.dll", SetLastError = true)]
        internal static extern IntPtr WindowFromPoint(POINT Point);

        [DllImport("user32", CharSet = CharSet.Auto, SetLastError = true, ExactSpelling = true)]
        public static extern IntPtr GetWindow(IntPtr hwnd, int wFlag);

        [DllImport("user32.dll", EntryPoint = "PostMessageA", SetLastError = true)]
        public static extern bool PostMessage(IntPtr hwnd, uint Msg, IntPtr wParam, IntPtr lParam);

        [DllImport("user32.dll", SetLastError = true)]
        private static extern IntPtr FindWindowEx(IntPtr parentHandle, IntPtr childAfter, string className, string windowTitle);

        [DllImport("user32.dll", SetLastError = true)]
        public static extern IntPtr FindWindow(string lpClassName, string lpWindowName);
        [DllImport("user32.dll")]
        static extern bool SetCursorPos(int X, int Y);
        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        public static extern bool GetCursorPos(out POINT lpPoint);
        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        public static extern short GetKeyState(VirtualKeyStates nVirtKey);
        private const int KEY_PRESSED = 0x8000;
        private const uint WM_KEYDOWN = 0x100;
        private const uint WM_KEYUP = 0x101;
        private const uint WM_LBUTTONDOWN = 0x0201;
        private const uint WM_LBUTTONUP = 0x0202;
        private const uint WM_MOUSEMOVE = 0x0200;
        private const int GW_HWNDNEXT = 2;
        private const int GW_CHILD = 5;

        private int pointsetcounter = 1;
        private int pointsetcounterM = 1;
        private int pointsetcounterE = 1;
        IntPtr HWND;

        public static POINT GetCursorPosition()
        {
            POINT lpPoint;
            GetCursorPos(out lpPoint);
            return lpPoint;
        }

        public void MouseClick(POINT p)
        {
            //HWND = WindowFromPoint(p);
            //UnityEngine.Debug.Log(p.X+" "+p.Y);
            SetCursorPos(p.X, p.Y);
            mouse_event(MOUSEEVENTF_LEFTDOWN, (uint)p.X, (uint)p.Y, 0, (UIntPtr)0);
            Thread.Sleep(200);
            mouse_event(MOUSEEVENTF_LEFTUP, (uint)p.X, (uint)p.Y, 0, (UIntPtr)0);
        }


        // Use this for initialization
        void Start()
        {
            account = GameObject.Find("Account").GetComponentInChildren<AccountButton>();
            for (int i = 1; i <= countPoints; i++)
            {
                if (PlayerPrefs.GetInt("PX" + i, 0) > 0 && PlayerPrefs.GetInt("PY" + i, 0) > 0) pointsEntrance.Add(new POINT { X = PlayerPrefs.GetInt("PX" + i, 0), Y = PlayerPrefs.GetInt("PY" + i, 0) });
            }
            pointsetcounter = pointsEntrance.Count + 1;
            for (int i = 1; i <= countPointsM; i++)
            {
                if (PlayerPrefs.GetInt("PXM" + i, 0) > 0 && PlayerPrefs.GetInt("PYM" + i, 0) > 0) pointsMap.Add(new POINT { X = PlayerPrefs.GetInt("PXM" + i, 0), Y = PlayerPrefs.GetInt("PYM" + i, 0) });
            }
            pointsetcounterM = pointsMap.Count + 1;
            for (int i = 1; i <= countPointsE; i++)
            {
                if (PlayerPrefs.GetInt("PXE" + i, 0) > 0 && PlayerPrefs.GetInt("PYE" + i, 0) > 0) pointsExit.Add(new POINT { X = PlayerPrefs.GetInt("PXE" + i, 0), Y = PlayerPrefs.GetInt("PYE" + i, 0) });
            }
            pointsetcounterE = pointsExit.Count + 1;
        }

        // Update is called once per frame
        void Update()
        {
            if (IsPressed()) OnClickSet();
            if (IsPressedE()) OnClickSetE();
            if (IsPressedM()) OnClickSetM();
            if (clicking) Cycle();
        }

        public bool IsPressed()
        {
            return beingSet & Convert.ToBoolean(GetKeyState(VirtualKeyStates.VK_LBUTTON) & KEY_PRESSED);
        }

        public bool IsPressedM()
        {
            return beingSetM & Convert.ToBoolean(GetKeyState(VirtualKeyStates.VK_LBUTTON) & KEY_PRESSED);
        }

        public bool IsPressedE()
        {
            return beingSetE & Convert.ToBoolean(GetKeyState(VirtualKeyStates.VK_LBUTTON) & KEY_PRESSED);
        }

        public void IsUp()
        {
            if (Convert.ToBoolean(GetKeyState(VirtualKeyStates.VK_LBUTTON) & WM_KEYUP))
            {
                if (beingSet) OnClickSet();
                if (beingSetM) OnClickSetM();
                if (beingSetE) OnClickSetE();
            }
        }

        public void OnClickSet()
        {
            Setsetting();
            POINT p = Clicker.GetCursorPosition();
            pointsEntrance.Add(p);
            PlayerPrefs.SetInt("PX" + pointsetcounter, p.X);
            PlayerPrefs.SetInt("PY" + pointsetcounter, p.Y);
            pointsetcounter++;
        }

        public void OnClickSetM()
        {
            PlayerPrefs.SetInt("Route", Load.currentRoute);
            SetsettingM();
            POINT p = Clicker.GetCursorPosition();
            pointsMap.Add(p);
            PlayerPrefs.SetInt("PXM" + pointsetcounterM, p.X);
            PlayerPrefs.SetInt("PYM" + pointsetcounterM, p.Y);
            pointsetcounterM++;
        }

        public void OnClickSetE()
        {
            SetsettingE();
            POINT p = Clicker.GetCursorPosition();
            pointsExit.Add(p);
            PlayerPrefs.SetInt("PXE" + pointsetcounterE, p.X);
            PlayerPrefs.SetInt("PYE" + pointsetcounterE, p.Y);
            pointsetcounterE++;
        }

        POINT GetPoint(Node a, Node b)
        {
            POINT p = new POINT();
            int dx = Math.Abs(pointsMap[1].X - pointsMap[0].X);
            int dy = Math.Abs(pointsMap[1].Y - pointsMap[0].Y);
            int sx = 1;
            int sy = 1;
            if (a.x == b.x && a.y > b.y)
            {
                sx = 1;
                sy = 1;
            }
            if (a.x == b.x && a.y < b.y)
            {
                sx = -1;
                sy = -1;
            }
            if (a.x > b.x && a.y == b.y)
            {
                sx = -1;
                sy = 1;
            }
            if (a.x < b.x && a.y == b.y)
            {
                sx = 1;
                sy = -1;
            }
            p.X = pointsMap[0].X + sx * dx;
            p.Y = pointsMap[0].Y + sy * dy;
            return p;
        }

        public void GetStartMap(bool rune)
        {
            //if (!clicking) return;
            RealSteps = 0;
            runeCount = 0;
            achieve = new Node();

            int a = 1;
            int b = 10000;
            int c = 0;

            for (int i = 0; i < Load.RoutesData.Count; i++)
            {
                Node n = Load.RoutesData[i];
                if ((Load.Routes[i].Count < b || MapLootCount(Load.RoutesData[i]) > c) && MapLootCount(Load.RoutesData[i]) >= c && NeedToExitMap(Load.RoutesData[i], RouteNodes.Count, true))
                {
                    b = Load.Routes[i].Count;
                    a = i + 1;
                    c = MapLootCount(Load.RoutesData[i]);
                }
            }
            Route = a;
            Load.SelectRoute(Load.Routes[Route - 1]);

            List<int> rr = Load.Routes[Route - 1];
            RouteNodes = new List<Node>();
            foreach (int r in rr)
            {
                Node n = Load.Nodes[r].gameObject.GetComponentInChildren<NodeRender>().node;
                if (n.type != "beat" || n.type != "force")
                {
                    RouteNodes.Add(n);
                }
            }

            if (NeedToExitMap(Load.RoutesData[Route - 1], RouteNodes.Count, true)) account.PlaySound();

            if (clicking && this.State == 3 && pointsMap.Count >= 1 && NeedToExitMap(Load.RoutesData[Route - 1], RouteNodes.Count, true))
            {
                Thread.Sleep(pause3);
                MouseClick(pointsMap[1]);
                success++;
            }

            if (clicking && this.State == 3 && pointsExit.Count >= 4 && !NeedToExitMap(Load.RoutesData[Route - 1], RouteNodes.Count, true))
            {
                Thread.Sleep(pause4);
                MouseClick(pointsExit[2]);
                Thread.Sleep(pause1);
                MouseClick(pointsExit[3]);
            }

        }
        public void GetExpireMission()
        {
            if (!clicking) return;
            if (this.State == 2)
            {
                if (pointsEntrance.Count >= 2)
                {
                    Thread.Sleep(pause3);
                    MouseClick(pointsEntrance[1]);
                }
                if (pointsEntrance.Count >= 3)
                {
                    Thread.Sleep(pause1);
                    MouseClick(pointsEntrance[2]);
                }
                if (pointsEntrance.Count >= 4)
                {
                    Thread.Sleep(pause1);
                    MouseClick(pointsEntrance[3]);
                }
                this.State = 3;
            }
        }

        public bool NeedToExitMap(Node achieve, int length, bool start = false)
        {
            bool res = true;
            if (PlayerPrefs.GetString("LSportal", "ON") == "ON" && !start)
            {
                if (RouteNodes.Count <= length) return true;
                else return false;
            }
            if (length == PlayerPrefs.GetInt("LSstepsMax", 0) && !start && PlayerPrefs.GetInt("LSstepsMax", 0) > 0) return true;
            if (length < PlayerPrefs.GetInt("LSsteps", 0)) res = false;
            if (achieve.loot.eventRune < PlayerPrefs.GetInt("LSeventRune", 0)) res = false;
            if (achieve.loot.sigils < PlayerPrefs.GetInt("LSsigils", 0)) res = false;
            if (achieve.loot.glyphs < PlayerPrefs.GetInt("LSglyphs", 0)) res = false;
            if (achieve.loot.eventEmblems < PlayerPrefs.GetInt("LSeventEmblems", 0)) res = false;
            if (achieve.loot.coins < PlayerPrefs.GetInt("LScoins", 0)) res = false;
            if (achieve.loot.essence < PlayerPrefs.GetInt("LSessence", 0)) res = false;
            if (achieve.loot.emblems < PlayerPrefs.GetInt("LSemblems", 0)) res = false;
            if (achieve.loot.strongbox < PlayerPrefs.GetInt("LSstrongbox", 0)) res = false;
            if (achieve.loot.goldenRune < PlayerPrefs.GetInt("LSgoldenRune", 0)) res = false;
            if (achieve.loot.silverRune < PlayerPrefs.GetInt("LSsilverRune", 0)) res = false;
            if (achieve.loot.copperRune < PlayerPrefs.GetInt("LScopperRune", 0)) res = false;
            if (achieve.loot.goldenTrap < PlayerPrefs.GetInt("LSgoldenTrap", 0)) res = false;
            if (achieve.loot.silverTrap < PlayerPrefs.GetInt("LSsilverTrap", 0)) res = false;
            if (achieve.loot.copperTrap < PlayerPrefs.GetInt("LScopperTrap", 0)) res = false;
            if (achieve.loot.energypack < PlayerPrefs.GetInt("LSenergypack", 0)) res = false;
            if (achieve.loot.pvpenergypack < PlayerPrefs.GetInt("LSpvpenergypack", 0)) res = false;
            if (achieve.loot.essencepack < PlayerPrefs.GetInt("LSessencepack", 0)) res = false;
            if (achieve.loot.reviveElixir < PlayerPrefs.GetInt("LSreviveElixir", 0)) res = false;
            if (achieve.loot.bigreviveScroll < PlayerPrefs.GetInt("LSbigreviveScroll", 0)) res = false;
            if (achieve.loot.reviveScroll < PlayerPrefs.GetInt("LSreviveScroll", 0)) res = false;
            if (achieve.loot.book < PlayerPrefs.GetInt("LSbook", 0)) res = false;
            if (achieve.loot.gear < PlayerPrefs.GetInt("LSgear", 0)) res = false;
            return res;
        }

        public int MapLootCount(Node achieve)
        {
            int loot = 0;
            if (0 < PlayerPrefs.GetInt("LSeventRune", 0)) loot += achieve.loot.eventRune;
            if (0 < PlayerPrefs.GetInt("LSsigils", 0)) loot += achieve.loot.sigils;
            if (0 < PlayerPrefs.GetInt("LSglyphs", 0)) loot += achieve.loot.glyphs;
            if (0 < PlayerPrefs.GetInt("LSeventEmblems", 0)) loot += achieve.loot.eventEmblems;
            if (0 < PlayerPrefs.GetInt("LScoins", 0)) loot += achieve.loot.coins;
            if (0 < PlayerPrefs.GetInt("LSessence", 0)) loot += achieve.loot.essence;
            if (0 < PlayerPrefs.GetInt("LSemblems", 0)) loot += achieve.loot.emblems;
            if (0 < PlayerPrefs.GetInt("LSstrongbox", 0)) loot += achieve.loot.strongbox;
            if (0 < PlayerPrefs.GetInt("LSgoldenRune", 0)) loot += achieve.loot.goldenRune;
            if (0 < PlayerPrefs.GetInt("LSsilverRune", 0)) loot += achieve.loot.silverRune;
            if (0 < PlayerPrefs.GetInt("LScopperRune", 0)) loot += achieve.loot.copperRune;
            if (0 < PlayerPrefs.GetInt("LSgoldenTrap", 0)) loot += achieve.loot.goldenTrap;
            if (0 < PlayerPrefs.GetInt("LSsilverTrap", 0)) loot += achieve.loot.silverTrap;
            if (0 < PlayerPrefs.GetInt("LScopperTrap", 0)) loot += achieve.loot.copperTrap;
            if (0 < PlayerPrefs.GetInt("LSenergypack", 0)) loot += achieve.loot.energypack;
            if (0 < PlayerPrefs.GetInt("LSpvpenergypack", 0)) loot += achieve.loot.pvpenergypack;
            if (0 < PlayerPrefs.GetInt("LSessencepack", 0)) loot += achieve.loot.essencepack;
            if (0 < PlayerPrefs.GetInt("LSreviveElixir", 0)) loot += achieve.loot.reviveElixir;
            if (0 < PlayerPrefs.GetInt("LSbigreviveScroll", 0)) loot += achieve.loot.bigreviveScroll;
            if (0 < PlayerPrefs.GetInt("LSreviveScroll", 0)) loot += achieve.loot.reviveScroll;
            if (0 < PlayerPrefs.GetInt("LSbook", 0)) loot += achieve.loot.book;
            if (0 < PlayerPrefs.GetInt("LSgear", 0)) loot += achieve.loot.gear;
            return loot;
        }

        public void GetMarkVisitedNodes()
        {
            if (!clicking) return;

            RealSteps++;

            if (RouteNodes[RealSteps].type == "loot")
            {
                Thread.Sleep(pause5);
                MouseClick(pointsExit[1]);
                achieve.AddNodeData(RouteNodes[RealSteps]);
            }

            if (!NeedToExitMap(achieve, RealSteps) && RouteNodes.Count > RealSteps)
            {
                if (RouteNodes[RealSteps].type == "loot")
                {

                }
                if (RouteNodes[RealSteps].type == "empty")
                {

                }
                else if (RouteNodes.Count > RealSteps + 1 && !NeedToExitMap(achieve, RealSteps))
                {
                    Thread.Sleep(pause5);
                    MouseClick(GetPoint(RouteNodes[RealSteps], RouteNodes[RealSteps + 1]));
                }
            }
            if (pointsExit.Count >= 4 && NeedToExitMap(achieve, RealSteps))
            {
                Thread.Sleep(pause2);
                MouseClick(pointsExit[2]);
                Thread.Sleep(pause1);
                MouseClick(pointsExit[3]);
            }


        }

        public void GetRecordEncounterBegin()
        {
            if (!clicking) return;
            //if (this.State == 4 && pointsMap.Count >= 2)
            if (pointsExit.Count >= 1)
            {
                Thread.Sleep(pause4);
                MouseClick(pointsExit[0]);
                this.State = 5;
            }
        }

        public void GetClearMap()
        {
            if (!clicking) return;
            // if (this.State == 7 && pointsEntrance.Count >= 11)
            if (pointsExit.Count >= 5)
            {
                Thread.Sleep(pause);
                MouseClick(pointsExit[4]);
                this.State = 8;
            }
        }
        public void GetGetActiveEvents()
        {
            if (!clicking) return;
            if (this.State == 8)
            {
                Thread.Sleep(pause2);
                this.State = 99;
                account.AddClickCntr(this.success + "/" + this.all);
            }
        }
        public void run()
        {
            if (!clicking) return;
            if (State == 1 && pointsEntrance.Count >= 1)
            {
                Thread.Sleep(pause2); // added
                all++;

                MouseClick(pointsEntrance[0]);
                State = 2;
                GetExpireMission();
            }
        }




        public void Setsetting()
        {
            this.beingSet = !beingSet;
            sett.text = (this.beingSet) ? "SET ENTRANCE ON" : "SET ENTRANCE OFF";
        }
        public void SetsettingM()
        {
            this.beingSetM = !beingSetM;
            settM.text = (this.beingSetM) ? "SET MAP ON" : "SET MAP OFF";
        }
        public void SetsettingE()
        {
            this.beingSetE = !beingSetE;
            settE.text = (this.beingSetE) ? "SET EXIT ON" : "SET EXIT OFF";
        }


        public void Clearsetting()
        {
            pointsetcounter = 1;
            pointsetcounterM = 1;
            pointsetcounterE = 1;
            pointsEntrance = new List<POINT>();
            pointsMap = new List<POINT>();
            pointsExit = new List<POINT>();
            PlayerPrefs.SetInt("Route", 0);
            for (int i = 1; i <= countPoints; i++)
            {
                PlayerPrefs.SetInt("PX" + i, 0);
                PlayerPrefs.SetInt("PY" + i, 0);
            }
            for (int i = 1; i <= countPointsM; i++)
            {
                PlayerPrefs.SetInt("PXM" + i, 0);
                PlayerPrefs.SetInt("PYM" + i, 0);
            }
            for (int i = 1; i <= countPointsE; i++)
            {
                PlayerPrefs.SetInt("PXE" + i, 0);
                PlayerPrefs.SetInt("PYE" + i, 0);
            }
        }

        public void Cycle()
        {
            if (State == 0 || State == 99)
            {
                State = 1;
                run();
            }
        }

        public void ClickOn()
        {
            all = 0;
            success = 0;
            State = 0;
            cli.text = (!clicking) ? "CLI ON" : "CLI OFF";
            if (!clicking) StartCoroutine("clickset");
            else clicking = !clicking;
        }

        IEnumerator clickset()
        {
            yield return new WaitForSeconds(3f);
            clicking = !clicking;
        }

        public void lootSelection()
        {
            RouteLootSingle.RenderSelect();
        }

    }
}