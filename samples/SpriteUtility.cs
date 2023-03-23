using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace DROD
{
    static class SpriteUtility
    {
        static List<Texture2D> Atlases = new List<Texture2D>();
        static string[] AtlasesNames = { "Atlas1", "Atlas2", "Atlas3", "Atlas4", "Atlas5", "Atlas6" };
        static List<AtlasNode> Nodes = new List<AtlasNode>();
        static public bool Loaded = true;

        public static Sprite CreateSprite(string name)
        {
            if (Nodes.Count() == 0)
            {
                SpriteUtility.GetNodes();
            }
            foreach (AtlasNode an in Nodes)
            {
                if (an.spriteName == name)
                {
                    Texture2D txtr=SpriteUtility.assign(an.atlasName);
                    return Sprite.Create(txtr, new Rect(an.spriteSize.x, txtr.height - an.spriteSize.y - an.spriteSize.height, an.spriteSize.width, an.spriteSize.height), new Vector2(0.5f, 0.5f));
                }
            }
            return null;
        }

        public static Texture2D CreateTexture(string name)
        {
            if (Nodes.Count() == 0)
            {
                SpriteUtility.GetNodes();
            }
            foreach (AtlasNode an in Nodes)
            {
                if (an.spriteName == name)
                {
                    Texture2D txtr = SpriteUtility.assign(an.atlasName);
                    return SpriteUtility.TextureCreating(txtr, new Rect(an.spriteSize.x, txtr.height - an.spriteSize.y - an.spriteSize.height, an.spriteSize.width, an.spriteSize.height));
                }
            }
            return null;
        }

        public static void GetNodes()
        {
            foreach (string str in AtlasesNames)
            {
                Texture2D txtt = Resources.Load("Atlases/" + str, typeof(Texture2D)) as Texture2D;
                Atlases.Add(txtt);
                TextAsset t = Resources.Load("Atlases/" + str, typeof(TextAsset)) as TextAsset;
                JSONObject j0 = new JSONObject(t.text);
                JSONObject fs = (JSONObject)j0.GetField("frames");

                if (fs.type == JSONObject.Type.OBJECT)
                {
                    fs.keys.Count();
                    foreach (string key in fs.keys)
                    {
                        JSONObject n = (JSONObject)fs.GetField(key);
                        JSONObject nn = (JSONObject)n.GetField("frame");
                        AtlasNode an = new AtlasNode() { atlasName = str, spriteName = key, spriteSize = new Rect(nn.GetField("x").f, nn.GetField("y").f, nn.GetField("w").f, nn.GetField("h").f) };
                        Nodes.Add(an);
                    }
                }
            }
            Loaded = true;
        }

        static Texture2D assign(string name)
        {
            for (int i = 0; i < AtlasesNames.Length; i++)
            {
                if (AtlasesNames[i] == name) return Atlases[i];
            }
            return null;
        }

        static Texture2D TextureCreating(Texture2D source, Rect bounds)
        {
            Texture2D texture = new Texture2D((int)bounds.width, (int)bounds.height);
            for (int y = 1; y <= (int)bounds.height; y++)
            {
                for (int x = 1; x <= (int)bounds.width; x++)
                {
                    source.GetPixel(x + (int)bounds.x, y + (int)bounds.y);
                    texture.SetPixel(x, y, source.GetPixel(x + (int)bounds.x, y + (int)bounds.y));
                }
            }
            texture.Apply();
            return texture;
        }


    }
}
