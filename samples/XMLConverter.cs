using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Xml;

namespace XMLConverter
{
    public class XMLConverter
    {
            public XMLConverter()
            {

            }

            public List<XmlNode> ConvertText(string text, XmlDocument document)
            {
                List<XmlNode> ll = new List<XmlNode>();
                string[] data = text.Split(';');
                var regex1 = new Regex(@"!data\s+([^\s;/=:]+)\s*=\s*!data.([^;=]+)\(([^;=]*)\)");
                var regex2 = new Regex(@",?\s?([^\{\}\]\[\s;,]+)\s?,?");
                var regex3 = new Regex(@"\[([^;/=\]]+)\]|,?\s?([^\]\[\s;,]+)\s?,?");
                var regex4 = new Regex(@"\[([^;/=\]]+)\]|,?\s?([^\]\[\s;,]+)\s?,?|([^\]\[\s;,]+:\s*\{[^;/=\}]+\})");




                for (int i = 0; i < data.Length; i++)
                {
                    data[i] = data[i].Replace("\r\n", " ");
                    data[i] = data[i].Trim();
                    
                    var matches = regex1.Matches(data[i]);
                    if (data[i].Contains("!data."))
                    {
                        foreach (Match match in matches)
                        {
                            //Console.WriteLine(match.Groups[3].Value.Trim());
                            string name = match.Groups[1].Value.Trim();
                            string type = match.Groups[2].Value.Trim();

                            string data2 = match.Groups[3].Value.Trim();

                            List<string> pars = new List<string>();
                            bool asd = false;
                            bool asx = false;
                            string temp = "";
                            for (int j = 0; j < data2.Length; j++)
                            {
                                string a = data2.Substring(j, 1);
                                if (a == "[") asd = true;
                                if (a == "{") asx = true;
                                if (a == "]") asd = false;
                                if (a == "}") asx = false;
                                if (!asd && !asx && a == ",")
                                {
                                    if (temp.Trim() != "") pars.Add(temp.Trim());
                                    temp = "";
                                }
                                else temp += a;
                            }
                            if(temp.Trim() != "") pars.Add(temp.Trim());
                            //foreach (string s in pars) Console.WriteLine(s);

                            XmlNode element = document.CreateElement(name);
                            document.DocumentElement.AppendChild(element);
                            XmlAttribute attribute = document.CreateAttribute("type");
                            attribute.Value = type;
                            element.Attributes.Append(attribute);
                            GetContent(type, element, document);
                            ll.Add(element);
                        }
                    }
                }
                return ll;
            }

            public List<XmlNode> ConvertLine(string line, string nextline, XmlDocument document)
            {
                List<XmlNode> ll = new List<XmlNode>();

                string trim = line.Trim();
                string pref = line.Substring(0, line.IndexOf(trim));

                if (trim.Contains("!data."))
                {
                    //var regex1 = new Regex(@"!data\s+([^\s;/=:]+)\s*=\s*!data.([^\s;=/:]+)\(([^;=,]+),*\s*([^;=]*)\)");
                    var regex1 = new Regex(@"!data\s+([^\s;/=:]+)\s*=\s*!data.([^\s;=/:]+)\(([^;=]*)\)");
                    var regex2 = new Regex(@"\[([^;/=\]]+)\]|,?\s?([^\]\[\s;,]+)\s?,?");
                    var matches = regex1.Matches(trim);

                    foreach (Match match in matches)
                    {
                        string name = match.Groups[1].Value.Trim();
                        string type = match.Groups[2].Value.Trim();

                        string data2 = match.Groups[3].Value.Trim();
                        var matches2 = regex2.Matches(data2);
                        List<Dictionary<string, string>> parameters = new List<Dictionary<string, string>>();
                        
                        foreach (Match m2 in matches2)
                        {
                            Dictionary<string, string> par = new Dictionary<string, string>();
                            string datam2 = m2.Groups[1].Value.Trim() + m2.Groups[2].Value.Trim();
                            if (datam2.IndexOf(",") >= 0)
                            {
                                string[] arr = datam2.Split(',');
                                foreach(string s in arr)
                                    {
                                        string[] sss = s.Trim().Split(':');
                                        if (sss.Length > 1) par.Add(sss[0].Trim(), sss[1].Trim());
                                    }
                            }
                            else par.Add("key", datam2);
                            parameters.Add(par);
                        }

                        foreach (Dictionary<string, string> ss in parameters)
                        {
                            foreach (string s in ss.Keys)
                                if (ss.Keys.Contains(s)) Console.WriteLine(s + ":  " + ss[s]);
                        }


                        XmlNode element = document.CreateElement(name);
                        document.DocumentElement.AppendChild(element);
                        XmlAttribute attribute = document.CreateAttribute("type");
                        attribute.Value = type;
                        element.Attributes.Append(attribute);
                        GetContent(type, element, document);
                        ll.Add(element);
                    }
                    return ll;
                }
                else return null;
            }

            private XmlNode GetContent(string s, XmlNode element, XmlDocument document)
            {
                switch (s)
                {
                    case "http": 
                        {
                            XmlNode subElement2 = document.CreateElement("value");
                            subElement2.InnerText = "<![CDATA[Data]]>";
                            element.AppendChild(subElement2);
                        }; break;
                    case "http_post":
                        {
                            element.InnerText = "";
                        }; break;
                    case "Url":
                        {
                            XmlNode subElement2 = document.CreateElement("value");
                            subElement2.InnerText = "Data";
                            element.AppendChild(subElement2);
                        }; break;
                    case "download":
                        {
                            XmlNode subElement2 = document.CreateElement("value");
                            subElement2.InnerText = "Saved Local Path";
                            element.AppendChild(subElement2);
                        }; break;
                    case "xml":
                        {
                            element.InnerText = "XML Content";
                        }; break;
                    case "http_xml":
                        {
                            element.InnerText = "Saved Local Path";
                        }; break;
                    case "http_xml_post":
                        {
                            element.InnerText = "";
                        }; break;
                    case "json":
                        {
                            element.InnerText = "";
                        }; break;
                    case "http_json":
                        {
                            element.InnerText = "XML Content";
                        }; break;
                    case "http_json_post":
                        {
                            element.InnerText = "";
                        }; break;
                    case "cvs":
                        {
                            element.InnerText = "XML Content";
                        }; break;
                    case "excel":
                        {
                            element.InnerText = "XML Content";
                        }; break;
                    case "get_files":
                        {
                            XmlNode subElement2 = document.CreateElement("file");
                            element.AppendChild(subElement2);
                            XmlNode subElement3 = document.CreateElement("name");
                            subElement3.InnerText = "name";
                            subElement2.AppendChild(subElement3);
                            XmlNode subElement4 = document.CreateElement("path");
                            subElement4.InnerText = "path";
                            subElement2.AppendChild(subElement4);
                            XmlNode subElement5 = document.CreateElement("size");
                            subElement5.InnerText = "size";
                            subElement2.AppendChild(subElement5);
                            XmlNode subElement6 = document.CreateElement("extension");
                            subElement6.InnerText = "extension";
                            subElement2.AppendChild(subElement6);
                        }; break;
                    case "get_folders":
                        {
                            XmlNode subElement2 = document.CreateElement("folder");
                            element.AppendChild(subElement2);
                            XmlNode subElement3 = document.CreateElement("name");
                            subElement3.InnerText = "name";
                            subElement2.AppendChild(subElement3);
                            XmlNode subElement4 = document.CreateElement("path");
                            subElement4.InnerText = "path";
                            subElement2.AppendChild(subElement4);
                            XmlNode subElement5 = document.CreateElement("size");
                            subElement5.InnerText = "size";
                            subElement2.AppendChild(subElement5);
                        }; break;
                    default: element.InnerText = "XML Content"; break;
                }
                return element;
            }



    }
}
