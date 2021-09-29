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
            string fecha_nacimiento = Calendar1.SelectedDate.ToShortDateString();
            string fecha_ingreso = Calendar2.SelectedDate.ToShortDateString();

            if(Validarfecha (fecha_nacimiento,fecha_ingreso) == true)
            {
                IblValores.Visible = true;
                IblValores.Text = "VALORES DEL FORMULARIO" +
                "<br/> Código Empleado: " + txtCodEmp.Text +
                "<br/> NIF: " + txtNifEmp.Text +
                "<br/> Apellidos y Nombre: " + txtNomEmp.Text +
                "<br/> Dirección: " + txtDirEmp.Text +
                "<br/> Ciudad: " + txtCiuEmp.Text +
                "<br/> Teléfonos: " + txtTelEmp.Text +
                "<br/> Sexo: " + rblSexEmp.SelectedItem.Value +
                "<br/> Departamento: " + ddlDepEmp.Text;
            }
        }
        /*cuadros de texto para poder introducir o editar la fecha de nacimiento y la de ingreso*/
        //publuc bool validarfecha()
        //{
        //    bool fecha
        //}
        //protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        //{
        //    //Calendar1.SelectedDate = Convert.ToDateTime(TextBox1.Text); //asignar fecha
        //    //Calendar1.VisibleDate = Convert.ToDateTime(txtFnaEmp.Text); //hacer visible la fecha

        //    //Calendar2.SelectedDate = Convert.ToDateTime(TextBox1.Text); //asignar fecha
        //    //Calendar2.VisibleDate = Convert.ToDateTime(txtFnaEmp.Text); //hacer visible la fecha
        //    ////si es distinto de vaio comprobamos lo de validar la fecha
        //    ///*si es correcto
        //    // lo que hy en el pdf en calendar 2*/

        //    string Fecha_ingreso = Calendar1.SelectedDate.ToShortDateString(txtTelEmpleadona.text)
        //    string Fecha_Nacimiento = Calendar1.SelectedDate.ToShortDateString(Fecha_Nacimiento).Date;
            
        //    DateTime dtHoy = System.DateTime.Now;

        //    if (txtAños.Emplead.Text != "" < Fecha_Nacimiento)
        //    {
        //        lblError1.Visible = true;
        //        lblError1.Text = "ERROR -> fecha de ingreso menor a la de nacimiento";
        //        //Fecha_ingreso =false;
        //    }
        //    else if(Fecha_ingreso > dtHoy)
        //    {
        //        lblError2.Visible = true;
        //        lblError2.Text = "ERROR -> fecha de ingreso mayor a la actual";
        //        //Fecha_ingreso = false;
        //    }
        //}
        public bool Validarfecha(string fecha_nac, string fecha_ingreso)
        {
            bool fechaing1_valida, fechaing2_valida, fecha_valida = false;

            DateTime dtHoy = System.DateTime.Now;
            DateTime Fecha_ingreso = Convert.ToDateTime(fecha_ingreso).Date;
            DateTime Fecha_nacimiento = Convert.ToDateTime(fecha_nac).Date;

            if (Fecha_ingreso < Fecha_nacimiento)
            {
                lblError1.Visible = true;
                lblError1.Text = "ERROR ! Fecha de ingreso menor a la de nacimiento";
                fechaing1_valida = false;
            }
            else //if(Fecha_ingreso > Fecha_nacimiento)
            {
                lblError1.Visible = false;
                fechaing1_valida = true;
            }
            if (Fecha_ingreso > dtHoy)
            {
                lblError2.Visible = true;
                lblError2.Text = "ERROR ! Fecha de ingreso menor a la de nacimiento";
                fechaing2_valida = false;
            }
            else //if (Fecha_ingreso < dtHoy)
            {
                lblError2.Visible = false;
                fechaing2_valida = true;
            }
            if (fechaing1_valida && fechaing2_valida)
            {
                fecha_valida = true;
            }

            return fecha_valida;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;

            string Fecha_ingreso = Calendar1.SelectedDate.ToShortDateString();
            string Fecha_Nacimiento = Calendar1.SelectedDate.ToShortDateString();
            TxtFnaEmp.Text = Fecha_ingreso;

            if(Validarfecha(Fecha_Nacimiento, Fecha_ingreso))
            {
                TimeSpan diferencia = dtHoy - Calendar2.SelectedDate;
                DateTime fechamin = new DateTime(1, 1, 1);

                txtAños.Text = ((fechamin + diferencia).Year - 1).ToString();
                TxtMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
                txtDias.Text = ((fechamin + diferencia).Day).ToString();
            }
        }

        protected void TxtFnaEmpleado(object sender, EventArgs e)
        {
            Calendar1.SelectedDate = Convert.ToDateTime(TxtFnaEmp.Text);
            Calendar1.VisibleDate = Convert.ToDateTime(TxtFnaEmp.Text);

            string Fecha_nacimiento = Calendar1.SelectedDate.ToShortDateString();
            string Fecha_ingreso = Calendar2.SelectedDate.ToShortDateString();

            if(TxtFinEmp.Text != "")
            {
                Validarfecha(Fecha_nacimiento, Fecha_ingreso);
            }
        }

        protected void TxtFinEmp_TextChanged(object sender, EventArgs e)
        {
            DateTime dtHoy = System.DateTime.Now;

            Calendar2.SelectedDate = Convert.ToDateTime(TxtFinEmp.Text);
            Calendar2.VisibleDate = Convert.ToDateTime(TxtFinEmp.Text);

            string Fecha_nacimiento = Calendar1.SelectedDate.ToShortDateString();
            string Fecha_ingreso = Calendar2.SelectedDate.ToShortDateString();

            if(Validarfecha(Fecha_nacimiento, Fecha_ingreso))
            {
                TimeSpan diferencia = dtHoy - Calendar2.SelectedDate;
                DateTime fechamin = new DateTime(1, 1, 1);

                txtAños.Text = ((fechamin + diferencia).Year - 1).ToString();
                TxtMeses.Text = ((fechamin + diferencia).Month - 1).ToString();
                txtDias.Text = ((fechamin + diferencia).Day).ToString();
            }
        }
    }
}