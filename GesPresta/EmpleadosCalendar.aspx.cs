using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GesPresta
{
    public partial class EmpleadosCalendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtCodEmp.Focus(); // Sitúa el foco en el elemento Código Empleado
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            IblValores.Visible = true;
            IblValores.Text = "VALORES DEL FORMULARIO" +
            "<br/> Código Empleado: " + txtCodEmp.Text +
            "<br/> NIF: " + txtNifEmp.Text +
            "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
            "<br/> Dirección: " + txtDirEmp.Text +
            "<br/> Ciudad: " + txtCiuEmp.Text +
            "<br/> Teléfonos: " + txtTelEmp.Text +
            "<br/> Fecha de Nacimiento: " + txtFnaEmp.Text +
            "<br/> Fecha de Incorporación: " + txtFinEmp.Text +
            "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
            "<br/> Departamento: " + ddlDepEmp.Text;
        }
        /*cuadros de texto para poder introducir o editar la fecha de nacimiento y la de ingreso*/

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = Convert.ToDateTime(TextBox1.Text); //asignar fecha
            Calendar1.VisibleDate = Convert.ToDateTime(txtFnaEmp.Text); //hacer visible la fecha

            Calendar2.SelectedDate = Convert.ToDateTime(TextBox1.Text); //asignar fecha
            Calendar2.VisibleDate = Convert.ToDateTime(txtFnaEmp.Text); //hacer visible la fecha
            //si es distinto de vaio comprobamos lo de validar la fecha
            /*si es correcto
             lo que hy en el pdf en calendar 2*/

            string Fecha_ingreso = Calendar1.SelectedDate.ToShortDateString();
            string Fecha_Nacimiento = Calendar1.SelectedDate.ToShortDateString();
            
            DateTime dtHoy = System.DateTime.Now;

            if (Fecha_ingreso < Fecha_Nacimiento)
            {
                lblError1.Visible = true;
                lblError1.Text = "ERROR -> fecha de ingreso menor a la de nacimiento";
                //Fecha_ingreso =false;
            }
            else if(Fecha_ingreso > dtHoy)
            {
                lblError2.Visible = true;
                lblError2.Text = "ERROR -> fecha de ingreso mayor a la actual";
                //Fecha_ingreso = false;
            }
        }
    }
}