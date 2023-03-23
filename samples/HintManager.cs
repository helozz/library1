using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System;

namespace DeepSpaces
{
    public class HintManager
    {
        int hintCount = 7;

        List<int> list = new List<int>();
        System.Random RND = new System.Random(DateTime.UtcNow.Millisecond);

        public HintManager()
        {
            int count = 0;
            List<int> listttt = new List<int>();
            for (int i = 0; i < hintCount; i++) listttt.Add(i + 1);
            while (listttt.Count > 0)
            {
                count = RND.Next(1, listttt.Count + 1);
                list.Add(listttt[count - 1]);
                listttt.RemoveAt(count - 1);
            }
        }

        public string GetHint()
        {
            if (list.Count > 0)
            {
                int n = list[0];
                list.RemoveAt(0);
                return "hint" + n;
            }
            return "hint1";
        }
    }
}