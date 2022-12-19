using System;
using Newtonsoft.Json;

namespace TW
{
    public class ResUser
    {
        [JsonProperty("u")]
        public Int32 u; //user.ID 
        [JsonProperty("e")]
        public Int32 e; //user.exp-> r1
        [JsonProperty("m")]
        public Int32 m; //user.money
        [JsonProperty("r")]
        public Int32 r; //user.rating-> r
        [JsonProperty("v")]
        public Int32 v; //user.victory-> r2\r3 victory\loses
        [JsonProperty("t")]
        public String[] t; // tanks
        [JsonProperty("d")]
        public String[] d; // enemy tanks
        [JsonProperty("b")]
        public Int32[] b; // bonuses

        public ResUser()
        {

        }
    }
}