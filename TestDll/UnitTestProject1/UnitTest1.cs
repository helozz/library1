using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Calculating;
using NUnit.Framework;
using NUnit.Framework.Constraints;

namespace UnitTestProject1
{
    public class UnitTest1
    {
        [Test]
        public void TestMethod1()
        {
            double a = 3;
            double b = 4;
            double c = 5;

            NUnit.Framework.Assert.That(Calculate.IsRectangular(a, b, c), Is.TypeOf(typeof(bool)));
        }

        [Test]
        public void TestMethod2()
        {
            double a = 3;
            double b = 4;
            double c = 5;

            NUnit.Framework.Assert.That(Calculate.Triangle(a, b, c), Is.TypeOf(typeof(double)));
        }
    }
}
