using System;
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
using System.Windows.Shapes;
using Entidades;
using Negocio;
namespace Prensentacion
{
    /// <summary>
    /// Lógica de interacción para FormularioCiudad.xaml
    /// </summary>
    public partial class FormularioCiudad : Window
    {
        nDatos datosn;
        public FormularioCiudad()
        {
            datosn = new nDatos();
            InitializeComponent();
            Mostrar();
        }
        private void Mostrar()
        {

            DgCiudad.ItemsSource = datosn.ListarCiudad();
        }
        private void btnciudad_Clicks(object sender, RoutedEventArgs e)
        {

        }

        private void btnciudad_Click_1(object sender, RoutedEventArgs e)
        {
            eCiudad ciud = new eCiudad();
            ciud.nombre_ciudad = txtNombreciudad.Text;
            ciud.precio = Convert.ToDecimal(txtprecio.Text);
            MessageBox.Show(datosn.RegistrarCiudad(ciud));
            Mostrar();
        }
    }
}
