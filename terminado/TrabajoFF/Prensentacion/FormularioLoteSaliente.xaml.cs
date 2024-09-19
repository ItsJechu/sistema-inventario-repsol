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
    /// Lógica de interacción para FormularioLoteSaliente.xaml
    /// </summary>
    public partial class FormularioLoteSaliente : Window
    {
        nDatos datosn;
        eLoteSalida salida;
        public FormularioLoteSaliente()
        {
            datosn = new nDatos();
            InitializeComponent();
            Mostrar();
            salida = new eLoteSalida();
        }
        private void Mostrar()
        {

            dgEsaliente.ItemsSource = datosn.ListarSalientes();
            dgCiudades.ItemsSource = datosn.ListarCiudad();
            dgalmacen.ItemsSource = datosn.ListarAlmacenes();
        }

        private void btnRegistrar_Click(object sender, RoutedEventArgs e)
        {

            if (txtalmacen.Text!=""|| txtciudad.Text!=""||txttipo.Text!=""||txtfecha_salida.Text!="")
            {
                salida.tipo = txttipo.Text;
                salida.fecha_salida = Convert.ToInt32(txtfecha_salida.Text);
                salida.nombreciudad = txtciudad.Text;
                salida.almacen = Convert.ToInt32(txtalmacen.Text);
                salida.contenido_salida = Convert.ToInt32(txtcontenido.Text);




                MessageBox.Show(datosn.RegistrarLoteSSaliente(salida));
                Mostrar();
            }
            

        }

        private void txtalmacen_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void cmbciudad_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

    }
}
