using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Deditor
{
    public class Room
    {
        public List<int[]>[] objs = new List<int[]>[Enum.GetValues(typeof(Items)).Length];
        public Room(String[,] room, int jdef, int idef)
        {
            
            foreach (Items item in Enum.GetValues(typeof(Items)))
            {
                objs[(int)item] = new List<int[]>();

                switch (item)
                {
                    case Items.Assasin:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "cb")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }

                        }; break;

                    case Items.Brain:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "ba")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }

                        }; break;

                    case Items.Character:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "dk")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }

                        }; break;

                    case Items.ClayBaby:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bo")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Evileye:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "be")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Goblin:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bg")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Golem:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bh")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Helper:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "dj")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Hologram:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bc")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Jelly:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "ck")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Mimic:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bl")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Player:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bu")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Roach:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bx")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.RoachEgg:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "by")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.RoachQueen:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bz")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Spider:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "ce")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Swordsman:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bj")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.TarBaby:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "cf")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.TarMother:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "cg")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.ClayMother:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bp")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Thermit:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "di")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Wraithwings:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "cj")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Clay:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(9, 2) == "bn" || room[i, j].Substring(9, 2) == "gs")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(11, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Tar:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(9, 2) == "cd" || room[i, j].Substring(9, 2) == "dg")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(11, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Fuze:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(9, 2) == "db" || room[i, j].Substring(9, 2) == "dc" || room[i, j].Substring(9, 2) == "eb" || room[i, j].Substring(9, 2) == "ec" || room[i, j].Substring(9, 2) == "ed")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(11, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Checkpoint:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "bb")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Obstacle:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "de" || room[i, j].Substring(6, 2) == "ef"
                                        || room[i, j].Substring(6, 2) == "ej" || room[i, j].Substring(6, 2) == "df"
                                        || room[i, j].Substring(6, 2) == "eg" || room[i, j].Substring(6, 2) == "ek"
                                        || room[i, j].Substring(6, 2) == "dh" || room[i, j].Substring(6, 2) == "ei"
                                        || room[i, j].Substring(6, 2) == "em")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Orb:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "bq")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.DeadGolem:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "bi")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Scroll:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "ca")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.OrthoSquare:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "da")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Waypoints:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "cc")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.ForceArrow:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "bf" || room[i, j].Substring(6, 2) == "ea" || room[i, j].Substring(6, 2) == "dz")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.BlackDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "aa" || room[i, j].Substring(6, 2) == "af" || room[i, j].Substring(6, 2) == "ak" || room[i, j].Substring(6, 2) == "ap" || room[i, j].Substring(6, 2) == "au")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.BlueDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "ad" || room[i, j].Substring(6, 2) == "ai" || room[i, j].Substring(6, 2) == "an" || room[i, j].Substring(6, 2) == "as" || room[i, j].Substring(6, 2) == "ax")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.GreenDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "ac" || room[i, j].Substring(6, 2) == "ah" || room[i, j].Substring(6, 2) == "am" || room[i, j].Substring(6, 2) == "ar" || room[i, j].Substring(6, 2) == "aw")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.RedDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "ab" || room[i, j].Substring(6, 2) == "ag" || room[i, j].Substring(6, 2) == "al" || room[i, j].Substring(6, 2) == "aq" || room[i, j].Substring(6, 2) == "av")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.BlackDoorOpened:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "aa" || room[i, j].Substring(0, 2) == "af" || room[i, j].Substring(0, 2) == "ak" || room[i, j].Substring(0, 2) == "ap" || room[i, j].Substring(0, 2) == "au")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.BlueDoorOpened:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "ad" || room[i, j].Substring(0, 2) == "ai" || room[i, j].Substring(0, 2) == "an" || room[i, j].Substring(0, 2) == "as" || room[i, j].Substring(0, 2) == "ax")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.GreenDoorOpened:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "ac" || room[i, j].Substring(0, 2) == "ah" || room[i, j].Substring(0, 2) == "am" || room[i, j].Substring(0, 2) == "ar" || room[i, j].Substring(0, 2) == "aw")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.RedDoorOpened:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "ab" || room[i, j].Substring(0, 2) == "ag" || room[i, j].Substring(0, 2) == "al" || room[i, j].Substring(0, 2) == "aq" || room[i, j].Substring(0, 2) == "av")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;
                    case Items.Trapdoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(3, 2) == "ch")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(5, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.MasterDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "hb")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;


                    case Items.HoldDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "hc")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Wall:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(3, 2) == "cr" || room[i, j].Substring(3, 2) == "ft" || room[i, j].Substring(3, 2) == "fy"
                                        || room[i, j].Substring(3, 2) == "cs" || room[i, j].Substring(3, 2) == "fu" || room[i, j].Substring(3, 2) == "ex"
                                        || room[i, j].Substring(3, 2) == "fq" || room[i, j].Substring(3, 2) == "fv" || room[i, j].Substring(3, 2) == "ey"
                                        || room[i, j].Substring(3, 2) == "fr" || room[i, j].Substring(3, 2) == "fw" || room[i, j].Substring(3, 2) == "ez"
                                        || room[i, j].Substring(3, 2) == "fs" || room[i, j].Substring(3, 2) == "fx" || room[i, j].Substring(3, 2) == "fa")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(5, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.BrokenWall:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(3, 2) == "cv" || room[i, j].Substring(3, 2) == "cw" || room[i, j].Substring(3, 2) == "et"
                                        || room[i, j].Substring(3, 2) == "eu" || room[i, j].Substring(3, 2) == "ev" || room[i, j].Substring(3, 2) == "ew"
                                        || room[i, j].Substring(3, 2) == "gi" || room[i, j].Substring(3, 2) == "gj" || room[i, j].Substring(3, 2) == "gk"
                                        || room[i, j].Substring(3, 2) == "gl" || room[i, j].Substring(3, 2) == "gm" || room[i, j].Substring(3, 2) == "gn"
                                        || room[i, j].Substring(3, 2) == "go" || room[i, j].Substring(3, 2) == "gp" || room[i, j].Substring(3, 2) == "gq")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(5, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.SecretWall:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(3, 2) == "ct" || room[i, j].Substring(3, 2) == "fb" || room[i, j].Substring(3, 2) == "fd"
                                        || room[i, j].Substring(3, 2) == "cu" || room[i, j].Substring(3, 2) == "fc" || room[i, j].Substring(3, 2) == "fe"
                                        || room[i, j].Substring(3, 2) == "fz" || room[i, j].Substring(3, 2) == "ga" || room[i, j].Substring(3, 2) == "gb"
                                        || room[i, j].Substring(3, 2) == "gc" || room[i, j].Substring(3, 2) == "gd" || room[i, j].Substring(3, 2) == "ge"
                                        || room[i, j].Substring(3, 2) == "gf" || room[i, j].Substring(3, 2) == "gg" || room[i, j].Substring(3, 2) == "gh")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(5, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.OpenedDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "ae" || room[i, j].Substring(0, 2) == "aj" || room[i, j].Substring(0, 2) == "ao"
                                        || room[i, j].Substring(0, 2) == "at" || room[i, j].Substring(0, 2) == "ay")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.YellowDoor:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(6, 2) == "ae" || room[i, j].Substring(6, 2) == "aj" || room[i, j].Substring(6, 2) == "ao" || room[i, j].Substring(6, 2) == "at" || room[i, j].Substring(6, 2) == "ay")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(8, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Pit:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "bs" || room[i, j].Substring(0, 2) == "ff" || room[i, j].Substring(0, 2) == "fi"
                                        || room[i, j].Substring(0, 2) == "bt" || room[i, j].Substring(0, 2) == "fg"
                                         || room[i, j].Substring(0, 2) == "fj" || room[i, j].Substring(0, 2) == "fl"
                                        || room[i, j].Substring(0, 2) == "fm" || room[i, j].Substring(0, 2) == "fn"
                                         || room[i, j].Substring(0, 2) == "br" || room[i, j].Substring(0, 2) == "fh"
                                        || room[i, j].Substring(0, 2) == "fk")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Floor:
                        {/*
                            objs[(int)item].Add(new List<int[]>());
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "cl" || room[i, j].Substring(0, 2) == "en" || room[i, j].Substring(0, 2) == "eo")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        */
                        }; break;

                    case Items.FloorDirty:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "cp" || room[i, j].Substring(0, 2) == "ep" || room[i, j].Substring(0, 2) == "eq")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.FloorGrass:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "cn" || room[i, j].Substring(0, 2) == "fo" || room[i, j].Substring(0, 2) == "fp")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.FloorMosaic:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "cm" || room[i, j].Substring(0, 2) == "er" || room[i, j].Substring(0, 2) == "es")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.FloorRoad:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "co")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.FloorSandy:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "cq")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.Portal:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "ci" || room[i, j].Substring(0, 2) == "eh" || room[i, j].Substring(0, 2) == "el")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.StairsDown:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "cy")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.StairsUp:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(0, 2) == "cx")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(2, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.BlueSerpent:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "dm")
                                    {
                                        int nextX = 0, nextY = 0, prevX = 0, prevY = 0;
                                        Orientation orient = OrConv(room[i, j].Substring(14, 1));
                                        objs[(int)item].Add(new int[] { i, j, (int)orient });
                                        prevX = i;
                                        prevY = j;
                                        switch (orient)
                                        {
                                            case Orientation.Nord: nextX = i; nextY = j + 1; break;
                                            case Orientation.South: nextX = i; nextY = j - 1; break;
                                            case Orientation.East: nextX = i - 1; nextY = j; break;
                                            case Orientation.West: nextX = i + 1; nextY = j; break;
                                        }
                                        while (room[nextX, nextY].Substring(12, 2) != "dn")
                                        {
                                            if (room[nextX, nextY].Substring(12, 2) == "az")
                                            {
                                                orient = OrConv(room[nextX, nextY].Substring(14, 1));
                                                objs[(int)item].Add(new int[] { nextX, nextY, (int)orient });
                                                switch (orient)
                                                {
                                                    case Orientation.Nord: { if (prevY == nextY - 1) { prevX = nextX; prevY = nextY; nextY++; } else { prevX = nextX; prevY = nextY; nextY--; } }; break;
                                                    case Orientation.East: { if (prevX == nextX - 1) { prevX = nextX; prevY = nextY; nextX++; } else { prevX = nextX; prevY = nextY; nextX--; } }; break;
                                                    case Orientation.NordEast: { if (prevX == nextX - 1) { prevX = nextX; prevY = nextY; nextY++; } else { prevX = nextX; prevY = nextY; nextX--; } }; break;
                                                    case Orientation.NordWest: { if (prevX == nextX + 1) { prevX = nextX; prevY = nextY; nextY++; } else { prevX = nextX; prevY = nextY; nextX++; } }; break;
                                                    case Orientation.SouthEast: { if (prevX == nextX - 1) { prevX = nextX; prevY = nextY; nextY--; } else { prevX = nextX; prevY = nextY; nextX--; } }; break;
                                                    case Orientation.SouthWest: { if (prevX == nextX + 1) { prevX = nextX; prevY = nextY; nextY--; } else { prevX = nextX; prevY = nextY; nextX++; } }; break;
                                                }
                                            }
                                        }
                                        orient = OrConv(room[nextX, nextY].Substring(14, 1));
                                        objs[(int)item].Add(new int[] { nextX, nextY, (int)orient });
                                        objs[(int)item].Add(new int[] { 0, 0, 0 });
                                    }
                                }
                            }
                        }; break;

                    case Items.PurpleSerpent:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "dt")
                                    {
                                        int nextX = 0, nextY = 0, prevX = 0, prevY = 0;
                                        Orientation orient = OrConv(room[i, j].Substring(14, 1));
                                        objs[(int)item].Add(new int[] { i, j, (int)orient });
                                        prevX = i;
                                        prevY = j;
                                        switch (orient)
                                        {
                                            case Orientation.Nord: nextX = i; nextY = j + 1; break;
                                            case Orientation.South: nextX = i; nextY = j - 1; break;
                                            case Orientation.East: nextX = i - 1; nextY = j; break;
                                            case Orientation.West: nextX = i + 1; nextY = j; break;
                                        }
                                        while (room[nextX, nextY].Substring(12, 2) != "du")
                                        {
                                            if (room[nextX, nextY].Substring(12, 2) == "bw")
                                            {
                                                orient = OrConv(room[nextX, nextY].Substring(14, 1));
                                                objs[(int)item].Add(new int[] { nextX, nextY, (int)orient });
                                                switch (orient)
                                                {
                                                    case Orientation.Nord: { if (prevY == nextY - 1) { prevX = nextX; prevY = nextY; nextY++; } else { prevX = nextX; prevY = nextY; nextY--; } }; break;
                                                    case Orientation.East: { if (prevX == nextX - 1) { prevX = nextX; prevY = nextY; nextX++; } else { prevX = nextX; prevY = nextY; nextX--; } }; break;
                                                    case Orientation.NordEast: { if (prevX == nextX - 1) { prevX = nextX; prevY = nextY; nextY++; } else { prevX = nextX; prevY = nextY; nextX--; } }; break;
                                                    case Orientation.NordWest: { if (prevX == nextX + 1) { prevX = nextX; prevY = nextY; nextY++; } else { prevX = nextX; prevY = nextY; nextX++; } }; break;
                                                    case Orientation.SouthEast: { if (prevX == nextX - 1) { prevX = nextX; prevY = nextY; nextY--; } else { prevX = nextX; prevY = nextY; nextX--; } }; break;
                                                    case Orientation.SouthWest: { if (prevX == nextX + 1) { prevX = nextX; prevY = nextY; nextY--; } else { prevX = nextX; prevY = nextY; nextX++; } }; break;
                                                }
                                            }
                                        }
                                        orient = OrConv(room[nextX, nextY].Substring(14, 1));
                                        objs[(int)item].Add(new int[] { nextX, nextY, (int)orient });
                                        objs[(int)item].Add(new int[] { 0, 0, 0 });
                                    }
                                }
                            }
                        }; break;

                    case Items.Mine:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "cz")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.HologramPotion:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bd")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.InvisiblePotion:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bk")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.MimicPotion:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "bm")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                    case Items.SpeedPotion:
                        {
                            for (int j = jdef - 1; j >= 0; j--)
                            {
                                for (int i = 0; i < idef; i++)
                                {
                                    if (room[i, j].Substring(12, 2) == "hd")
                                    {
                                        objs[(int)item].Add(new int[] { i, j, (int)OrConv(room[i, j].Substring(14, 1)) });
                                    }
                                }
                            }
                        }; break;

                }
            }
        }

        Orientation OrConv(string n)
        {
            switch (n)
            {
                case "0": return Orientation.None;
                case "1": return Orientation.Nord;
                case "2": return Orientation.NordEast;
                case "3": return Orientation.East;
                case "4": return Orientation.SouthEast;
                case "5": return Orientation.South;
                case "6": return Orientation.SouthWest;
                case "7": return Orientation.West;
                case "8": return Orientation.NordWest;
                default: return Orientation.None;
            }
        }


    }

    public class GameItem
    {
        public List<int[]> b;
        public GameItem(Items ItemType)
        {
            this.b = new List<int[]>();
        }
    }

    public enum Orientation
    {
        None, Nord, West, East, South, NordWest, NordEast, SouthWest, SouthEast
    }


    public enum Items
    {
        None,
        Player,
        Assasin,
        Helper,
        BlueSerpent,
        Brain,
        Character,
        Checkpoint,
        Clay,
        ClayBaby,
        ClayMother,
        Golem,
        Evileye,
        Floor,
        ForceArrow,
        Fuze,
        Goblin,
        Hologram,
        HologramPotion,
        InvisiblePotion,
        Jelly,
        Mimic,
        MimicPotion,
        Mine,
        Obstacle,
        Orb,
        OrthoSquare,
        Pit,
        Portal,
        PurpleSerpent,
        Roach,
        RoachEgg,
        RoachQueen,
        Scroll,
        Waypoints,
        Spider,
        StairsDown,
        StairsUp,
        Swordsman,
        Tar,
        TarBaby,
        TarMother,
        Thermit,
        Trapdoor,
        Wall,
        SecretWall,
        BrokenWall,
        Wraithwings,
        BlackDoor,
        BlueDoor,
        RedDoor,
        GreenDoor,
        YellowDoor,
        OpenedDoor,
        DeadGolem,
        FloorDirty,
        FloorGrass,
        FloorMosaic,
        FloorRoad,
        FloorSandy,
        BlackDoorOpened,
        BlueDoorOpened,
        RedDoorOpened,
        GreenDoorOpened,
        MasterDoor,
        HoldDoor,
        SpeedPotion
    }

}
