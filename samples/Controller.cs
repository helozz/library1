using System.Collections;
using System;
using UnityEngine;
using System.Text;
using System.IO;
using DROD;
using System.Collections.Generic;
using UnityEngine.UI;
using TouchScript.Gestures;

public class Controller : MonoBehaviour
{
    public delegate void OnMap();
    public static event OnMap ShowMap;
    public static event OnMap HideMap;

    public AudioSource music = new AudioSource();
    public AudioSource sound = new AudioSource();
    public Hold CurrentHold;
    public GameObject scrollCanvas;
    public GameObject deathCanvas;
    public GameObject loader;
    public Toggle pcSelect;
    public Toggle lpSelect;

    public GameObject MenuPanel;

    private bool roomLoaded = false;
    public Room currentRoom;
    WWW connect;
    bool HoldLoaded = false;
    public bool MapOpened = false;

    public GameObject TouchPanel;
    bool gesturesSet = false;
    public bool translated = false;
    public bool allowKeyboard = true;

    public UILabel scrollText;
    public bool scrollOpened = false;

    float updateInterval = 0.06f;
    float updateTime = 0;
    float updateFMInterval = 0.5f;

    #region Application close
    private bool isQuitting = false;

    void OnApplicationQuit()
    {
        isQuitting = true;
    }

    void OnDestroy()
    {
        if (!isQuitting)
        {
            //Debug.Log("!Quit");
        }
        else
        {
            //Debug.Log("Quit");
        }
    }
    #endregion

    void OnEnable()
    {
        Gestures.onMenu += GameMenu;
        Gestures.onTurnBack += Map;
    }

    void OnDisable()
    {
        Gestures.onMenu -= GameMenu;
        Gestures.onTurnBack -= Map;
    }

    public void ShowLoader(Action onComplete)
    {
        StartCoroutine(load(onComplete));
    }

    IEnumerator load(Action onComplete)
    {
        touchDisable();
        loader.gameObject.SetActive(true);
        yield return new WaitForSeconds(1.2f);
        onComplete();
    }

    public void HideLoader()
    {
        loader.gameObject.SetActive(false);
        touchEnable();
        
    }

    public void touchDisable()
    {
        if (!translated)
        {
            TouchPanel.transform.Translate(new Vector3(0f, 0f, -100f));
            translated = true;
        }
        allowKeyboard = false;
    }

    public void touchEnable()
    {
        if (translated)
        {
            TouchPanel.transform.Translate(new Vector3(0f, 0f, 100f));
            translated = false;
        }
        allowKeyboard = true;
    }

    // Use this for initialization
    void Start()
    {
        PlayerPrefs.SetString("Language", "RU");
        Localization.instance.currentLanguage = PlayerPrefs.GetString("Language", "RU");

        //
        if (!gesturesSet)
        {
            TouchPanel.GetComponent<TapGesture>().StateChanged += Gestures.TapGesture;
            TouchPanel.GetComponent<PanGesture>().StateChanged += Gestures.PanGesture;
            gesturesSet = true;
        }
        SpriteUtility.GetNodes();
        StartCoroutine("LoadTexture");
    }

    IEnumerator LoadTexture()
    {
        if (!SpriteUtility.Loaded) yield return 0.3f;
        onTextureLoaded();
    }

    void onTextureLoaded()
    {
#if ((UNITY_EDITOR || UNITY_STANDALONE))
        if (!PlayerPrefs.HasKey("Notebook"))
        {
            PlayerPrefs.SetInt("Notebook", 0);
        }
#endif

        string filePath = Path.Combine(Application.streamingAssetsPath, "DefaultHold") + ".room";
        if (filePath.Contains("://"))
        {
            this.connect = new WWW(filePath);
            StartCoroutine(IsReady());
        }
        else
        {
            this.CurrentHold = new Hold();
            this.CurrentHold.SetHold(this.Load(filePath));
            this.Puzzle(false);
        }
    }

    void OnGUI()
    {

    }

    public void openScroll(string text)
    {
        scrollText.text = Localization.Localize(text);
        scrollCanvas.gameObject.SetActive(true);
        scrollOpened = true;
        PlaySound(Sound.Scroll);
    }

    public void closeScroll()
    {
        scrollText.text = "";
        scrollCanvas.gameObject.SetActive(false);
        scrollOpened = false;
        PlaySound(Sound.Scroll);
    }

    public void SetMusic()
    {
        string musicName = "";
        DateTime dt = DateTime.Now;
        switch (dt.Millisecond % 6)
        {
            case 0: musicName = "Sounds/Sound 91"; break;
            case 1: musicName = "Sounds/Sound 92"; break;
            case 2: musicName = "Sounds/Sound 87"; break;
            case 3: musicName = "Sounds/Sound 112"; break;
            case 4: musicName = "Sounds/Sound 113"; break;
            case 5: musicName = "Sounds/Sound 109"; break;
        }
        this.music.clip = (AudioClip)Resources.Load(musicName);
        this.music.Play();
    }

    public void PlaySound(Sound sound)
    {
        AudioClip clip = new AudioClip();
        clip = (AudioClip)Resources.Load("Sounds/" + Sounds.SoundName(sound));
        this.sound.clip = clip;
        this.sound.Play();
    }

    IEnumerator IsReady()
    {
        yield return this.connect;

        if (this.connect.isDone && this.connect.text != "" && this.connect.error == null)//Если удалось установить подключение
        {
            Debug.Log(this.connect.text);
            try
            {
                if (!this.HoldLoaded)
                {
                    this.HoldLoaded = true;
                    this.CurrentHold = new Hold();
                    this.CurrentHold.SetHold(this.connect.text);
                    this.Puzzle(false);
                }
            }
            catch (Exception e) { Debug.Log(e.Message); }
        }
        else if (this.connect.error != null)
        {
            Debug.Log("ERRCONNECT");
        }
        else
        {
            Debug.Log("ERR");
        }
    }

    public void Puzzle(bool LevelStatistics)
    {
        MenuPanel.gameObject.SetActive(false);
        Action s = () =>
        {
            this.LoadRoom(PlayerPrefs.GetInt("Level", 1), PlayerPrefs.GetInt("Nord", 0), PlayerPrefs.GetInt("South", 0), PlayerPrefs.GetInt("East", 0), PlayerPrefs.GetInt("West", 0));
        };
        ShowLoader(s);
    }

    public void LoadRoom(int level, int roomN, int roomS, int roomE, int roomW)
    {
        if (roomLoaded) UnLoadRoom();
        touchEnable();
        deathCanvas.gameObject.SetActive(false);
        currentRoom = this.CurrentHold.GetRoom(level, roomN, roomS, roomE, roomW);
        currentRoom.LoadItems();
        currentRoom.TryOpenGreenDoors(true);
        PlayerPrefs.SetInt("l" + currentRoom.room.level + "_" + currentRoom.room.nord + "_" + currentRoom.room.south + "_" + currentRoom.room.west + "_" + currentRoom.room.east + "", 1);

        currentRoom.moveCount = 0;
        PlayerPrefs.SetInt("Level", level);
        PlayerPrefs.SetInt("Nord", roomN);
        PlayerPrefs.SetInt("South", roomS);
        PlayerPrefs.SetInt("East", roomE);
        PlayerPrefs.SetInt("West", roomW);
        SetMusic();
        roomLoaded = true;
    }

    public void UnLoadRoom()
    {
        currentRoom.StopAllCoroutines();
        currentRoom.DestroyRoom();
        if (this.sound.isPlaying) this.sound.Stop();
        this.music.Stop();

        roomLoaded = false;
        MenuPanel.gameObject.SetActive(false);
    }

    public void MainMenu()
    {
        if (Application.HasProLicense())
        {
            Application.LoadLevelAsync("Lobby");
        }
        else Application.LoadLevel("Lobby");
    }

    public void GameMenu(Orientation move = Orientation.None)
    {
        if (scrollOpened)
        {
            closeScroll();
            return;
        }
        if (MapOpened)
        {
            Map();
            return;
        }
        touchDisable();
        MenuPanel.gameObject.SetActive(true);
    }

    public void Map(Orientation move = Orientation.None)
    {
        if (scrollOpened)
        {
            closeScroll();
            return;
        }
        if (MapOpened) HideMap();
        else ShowMap();
        MapOpened = !MapOpened;
    }

    public void Reload()
    {
        Puzzle(false);
    }

    public void BackToGame()
    {
        touchEnable();
        MenuPanel.gameObject.SetActive(false);
    }

    public void Help()
    {
        MenuPanel.gameObject.SetActive(false);
    }

    public void HelpMonsters()
    {
        MenuPanel.gameObject.SetActive(false);
    }

    public void Save(string file, string txt)
    {
        StreamWriter sw = new StreamWriter(file);
        sw.Write(txt);
        sw.Close();
    }

    public string Load(string file)
    {
        try
        {
            StreamReader sw = new StreamReader(file);
            string dd = sw.ReadToEnd();
            sw.Close();
            return dd;
        }
        catch (Exception)
        {
            return "0";
        }
    }

    private string GetFilePath()
    {
        string FilePath = "";
#if UNITY_IPHONE			
		        string fileNameBase = Application.dataPath.Substring(0, Application.dataPath.LastIndexOf('/'));
		        FilePath = fileNameBase.Substring(0, fileNameBase.LastIndexOf('/')) + "/Documents/";
#elif UNITY_ANDROID
                FilePath = Application.persistentDataPath + "/";
#else
        FilePath = Application.dataPath + "/";
#endif
        return FilePath;
    }

    void Update()
    {
        if (allowKeyboard)
        {
#if ((UNITY_EDITOR || UNITY_STANDALONE))
            if (PlayerPrefs.GetInt("Notebook", 0) == 0)
            {
                if (Input.GetKeyDown(KeyCode.Keypad6))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.East);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad5))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.None);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad8))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.Nord);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad9))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordEast);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad7))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordWest);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad2))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.South);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad1))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthWest);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad3))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthEast);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Keypad4))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.West);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Q))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().TurnCCW();
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.W))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().TurnCW();
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    GameMenu();
                }
                if (Input.GetKeyDown(KeyCode.M))
                {
                    Map();
                }
            }
            else
            {
                if (Input.GetKeyDown(KeyCode.O))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.East);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.I))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.None);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Alpha8))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.Nord);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Alpha9))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordEast);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Alpha7))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordWest);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.K))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.South);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.J))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthWest);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.L))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthEast);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.U))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.West);
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Q))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().TurnCCW();
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.W))
                {
                    currentRoom.player.GetComponentInChildren<GameItem>().TurnCW();
                    updateTime = -updateFMInterval;
                }
                if (Input.GetKeyDown(KeyCode.Escape))
                {
                    GameMenu();
                }
                if (Input.GetKeyDown(KeyCode.M))
                {
                    Map();
                }
            }
#endif
        }


        updateTime += Time.deltaTime;
        if (updateTime >= updateInterval)
        {
            updateTime = 0;
            if (allowKeyboard)
            {
#if ((UNITY_EDITOR || UNITY_STANDALONE))
                if (PlayerPrefs.GetInt("Notebook", 0) == 0)
                {
                    if (Input.GetKey(KeyCode.Keypad6))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.East);
                    }
                    if (Input.GetKey(KeyCode.Keypad5))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.None);
                    }
                    if (Input.GetKey(KeyCode.Keypad8))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.Nord);
                    }
                    if (Input.GetKey(KeyCode.Keypad9))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordEast);
                    }
                    if (Input.GetKey(KeyCode.Keypad7))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordWest);
                    }
                    if (Input.GetKey(KeyCode.Keypad2))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.South);
                    }
                    if (Input.GetKey(KeyCode.Keypad1))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthWest);
                    }
                    if (Input.GetKey(KeyCode.Keypad3))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthEast);
                    }
                    if (Input.GetKey(KeyCode.Keypad4))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.West);
                    }
                    if (Input.GetKey(KeyCode.Q))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().TurnCCW();
                    }
                    if (Input.GetKey(KeyCode.W))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().TurnCW();
                    }
                }
                else
                {
                    if (Input.GetKey(KeyCode.O))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.East);
                    }
                    if (Input.GetKey(KeyCode.I))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.None);
                    }
                    if (Input.GetKey(KeyCode.Alpha8))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.Nord);
                    }
                    if (Input.GetKey(KeyCode.Alpha9))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordEast);
                    }
                    if (Input.GetKey(KeyCode.Alpha7))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.NordWest);
                    }
                    if (Input.GetKey(KeyCode.K))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.South);
                    }
                    if (Input.GetKey(KeyCode.J))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthWest);
                    }
                    if (Input.GetKey(KeyCode.L))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.SouthEast);
                    }
                    if (Input.GetKey(KeyCode.U))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().Move(Orientation.West);
                    }
                    if (Input.GetKey(KeyCode.Q))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().TurnCCW();
                    }
                    if (Input.GetKey(KeyCode.W))
                    {
                        currentRoom.player.GetComponentInChildren<GameItem>().TurnCW();
                    }
                }
#endif
            }
        }
    }

    internal void ExitLevel()
    {
        Debug.LogWarning("ExitLevel");
        PlayerPrefs.SetInt("ExitLevel", 1);
    }

    internal void GameOver()
    {
        Debug.LogWarning("GameOver");
    }

    internal void HoldBonus()
    {
        Debug.Log("HoldBonus");
    }

    internal void MasterBonus()
    {
        Debug.Log("MasterBonus");
    }
}
