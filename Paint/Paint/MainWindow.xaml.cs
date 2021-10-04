using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Paint
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public ColorRGB mcolor { get; set; }

        public Color clr { get; set; }

        public class ColorRGB
        {
            public byte red { get; set; }
            public byte green { get; set; }
            public byte blue { get; set; }
        }

        public MainWindow()
        {
            InitializeComponent();
            mcolor = new ColorRGB();
            mcolor.red = 0;
            mcolor.green = 0;
            mcolor.blue = 0;
            this.lbl1.Background = new SolidColorBrush(Color.FromRgb(mcolor.red, mcolor.green, mcolor.blue));
        }

        private void sld_Color_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            var slider = sender as Slider;
            string crlName = slider.Name; //Определяем имя контрола, который покрутили
            double value = slider.Value;  // Получаем значение контрола
                                          //В зависимости от выбранного контрола, меняем ту или иную компоненту и переводим ее в тип byte
            if (crlName.Equals("sld_RedColor"))
            {
                mcolor.red = Convert.ToByte(value);
            }
            if (crlName.Equals("sld_GreenColor"))
            {
                mcolor.green = Convert.ToByte(value);
            }
            if (crlName.Equals("sld_BlueColor"))
            {
                mcolor.blue = Convert.ToByte(value);
            }

            //Задаем значение переменной класса clr 
            clr = Color.FromRgb(mcolor.red, mcolor.green, mcolor.blue);
            //Устанавливаем фон для контрола Label 
            this.lbl1.Background = new SolidColorBrush(Color.FromRgb(mcolor.red, mcolor.green, mcolor.blue));
            // Задаем цвет кисти для контрола InkCanvas
            this.inkCanvas1.DefaultDrawingAttributes.Color = clr;
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            this.inkCanvas1.Strokes.Clear();
        }

        private void btn_Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void btn_Save_Click(object sender, RoutedEventArgs e)
        {
            string imgPath = @"C:\Temp\file.gif"; //Куда сохраняется файл
            MemoryStream ms = new MemoryStream();  //Поток памяти
            FileStream fs = new FileStream(imgPath, FileMode.Create); //  Поток файла

            //rtb - объект класса RenderTargetBitmap
            RenderTargetBitmap rtb = new RenderTargetBitmap((int)inkCanvas1.Width, (int)inkCanvas1.Height, 100, 100, PixelFormats.Default);
            rtb.Render(inkCanvas1);

            GifBitmapEncoder gifEnc = new GifBitmapEncoder(); //сохраняем в формате GIF
            gifEnc.Frames.Add(BitmapFrame.Create(rtb));
            gifEnc.Save(fs);
            fs.Close();
            MessageBox.Show("Файл сохранен, " + imgPath); //Для информации
        }
    }
}