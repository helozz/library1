using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Calculating;

namespace TestDll
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        double a = 0;
        double b = 0;
        double c = 0;
        double d = 0;

        public MainWindow()
        {
            InitializeComponent();


        }

        private void btnCircle_Click(object sender, RoutedEventArgs e)
        {
            circleRes.Text = "0";
            if (parse(radius)) circleRes.Text = Calculate.Circle(a).ToString();
        }

        private void btnTri_Click(object sender, RoutedEventArgs e)
        {
            triRes.Text = "0";
            if (parse(sideA, sideB, sideC))
            {
                if (!Calculate.IsTriangle(a, b, c)) return;
                triRes.Text = Calculate.Triangle(a, b, c).ToString();
                CheckBox1.IsChecked = Calculate.IsRectangular(a, b, c);
            }
        }

        private void btnRect_Click(object sender, RoutedEventArgs e)
        {
            rectRes.Text = "0";
            if (parse(sideA1, sideB1, sideC1, sideD1)) rectRes.Text = Calculate.Triangle(a, b, c, d).ToString();
        }

        private bool parse(TextBox ta, TextBox tb = null, TextBox tc = null, TextBox td = null)
        {
            try
            {
                a = double.Parse(ta.Text);
                if (a == 0) return false;
                if (tb != null)
                {
                    b = double.Parse(tb.Text);
                    if (b == 0) return false;
                }
                if (tc != null)
                {
                    c = double.Parse(tc.Text);
                    if (c == 0) return false;
                }
                if (td != null)
                {
                    d = double.Parse(td.Text);
                    if (d == 0) return false;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
            return true;
        }

    }
}
