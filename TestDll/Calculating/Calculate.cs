using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Calculating
{
    public static class Calculate
    {
        public static bool IsTriangle(double x, double y, double z)
        {
            return ((x + y) > z && (x + z) > y && (y + z) > x);
        }

        public static bool IsRectangular(double a, double b, double c)
        {
            if (a <= 0 || b <= 0 || c <= 0) return false;
            double max = Math.Max(Math.Max(a, b), c);

            if (max == a) return (b * b + c * c == a * a);
            if (max == b) return (a * a + c * c == b * b);
            if (max == c) return (b * b + a * a == c * c);

            return false;
        }

        public static double Triangle(double a, double b, double c, double d = 0)
        {
            if (a <= 0 || b <= 0 || c <= 0 || d < 0) return 0;
            double pp = (a + b + c + d) / 2;
            return Math.Sqrt((pp - a) * (pp - b) * (pp - c) * (pp - d));
        }

        public static double Circle(double a)
        {
            if (a <= 0) return 0;
            return a * a * Math.PI;
        }
    }
}
