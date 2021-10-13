<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPEmpleados.aspx.cs" Inherits="GesPresta.MPEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="style.css" />
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <br />
        <br />
            <div class="Titulo">DATOS DE LOS EMPLEADO</div>
        <div class="Cuerpo">
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label11" runat="server" Text="Label">Código de Empleados</asp:Label>
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtCodEmp" runat="server" ErrorMessage="El Código del Empleado es obligatorio" ControlToValidate="txtCodEmp" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regtxtCodEmp" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: una letra y 5 dígitos" ControlToValidate="txtCodEmp" ForeColor="Green" ValidationExpression="\w\d{5}"></asp:RegularExpressionValidator>
                </div>
            </div>
     
            <br />
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label2" runat="server" Text="Label">NIF</asp:Label>
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNifEmp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtNIF" runat="server" ErrorMessage="El NIF del Empleado es obligatorio" ControlToValidate="txtNifEmp" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="regtxtNIF" runat="server" ErrorMessage="“El formato de los datos a introducir debe ser: 8 dígitos, un guion y una letra" ControlToValidate="txtNifEmp" ForeColor="Green" ValidationExpression="\d{8}-\w"></asp:RegularExpressionValidator>
                </div>
            </div>
            
            <br />
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label3" runat="server" Text="Label">Apellidos y Nombre</asp:Label>
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtNomEmp" runat="server" Width="356px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtApellidoNombre" runat="server" ErrorMessage="El Nombre del Empleado es obligatorio" ControlToValidate="txtNomEmp" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>
            
            <br />

            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label4" runat="server" Text="Label">Dirección</asp:Label>  
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtDirEmp" runat="server" Width="409px" style="margin-left: 9px"></asp:TextBox>
                </div>
            </div>

            <br />

            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label5" runat="server" Text="Label">Ciudad</asp:Label>
                </div>
                 <div class="controles">
                    <asp:TextBox ID="txtCiuEmp" runat="server" Width="408px" style="margin-left: 5px"></asp:TextBox>
                </div>
            </div>
                
            <br />

            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label6" runat="server" Text="Label">Teléfonos</asp:Label>
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtTelEmp" runat="server" Width="304px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtTelefono" runat="server" ErrorMessage="Al menos un Teléfono del Empleado es obligatorio" ControlToValidate="txtTelEmp" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
            </div>

            <br />
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label7" runat="server" Text="Label">Fecha de Nacimiento</asp:Label>
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtFnaEmp" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtFechaNacimiento" runat="server" ErrorMessage="La fecha de Nacimiento del Empleado es obligatoria" ControlToValidate="txtFnaEmp" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cmptxtFnaEmp" runat="server" ErrorMessage="La Fecha de Nacimiento del Empleado debe ser menor a la Fecha de ingreso" ControlToValidate="txtFnaEmp" ControlToCompare="txtFinEmp" Operator="LessThan" ForeColor="Red"></asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="regtxtFnac" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: dd/mm/aaaa." ControlToValidate="txtFnaEmp" ForeColor="Green" ValidationExpression=" \d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
                </div>
            </div>
               
            <br />

            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label8" runat="server" Text="Label">Fecha de Ingreso</asp:Label>
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtFinEmp" runat="server" ControlToValidate="txtFinEmp"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rqdTxtFechaIngreso" runat="server" ErrorMessage="La Fecha de Ingreso del Empleado es obligatoria" ControlToValidate="txtFinEmp" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="“La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento" Type="Date" Operator="GreaterThan" ControlToCompare="txtFnaEmp" ControlToValidate="txtFinEmp" ForeColor="Red"></asp:CompareValidator>
                    <asp:RegularExpressionValidator ID="regtxtFing" runat="server" ErrorMessage="El formato de los datos a introducir debe ser: Formato de fecha dd/mm/aaaa." ControlToValidate="txtFinEmp" ForeColor="green" ValidationExpression="\d\d\/\d\d\/\d\d\d\d"></asp:RegularExpressionValidator>
                </div>
            </div>
            
            <br />
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label9" runat="server" Text="Label">Sexo</asp:Label>
                </div>
                <div class="controles">
                    <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" Height="17px" Width="177px" RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                </asp:RadioButtonList>
                </div>
            </div>
                
            <br />
            <div class="linea">
                <div class="Texto">
                <asp:Label ID="Label10" runat="server" Text="Label">Departamento</asp:Label>
                </div>
                <div class="controles">
                    <asp:DropDownList ID="ddlDepEmp" runat="server">
                        <asp:ListItem Selected="True" Value="Investigación"></asp:ListItem>
                        <asp:ListItem Value="Desarrollo"></asp:ListItem>
                        <asp:ListItem>Innovación</asp:ListItem>
                        <asp:ListItem>Administración</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <br />

            <div class="linea">
                <div class="BotonEnviar">
                    <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" Width="68px" />
                </div>
            </div>
            <div class="controlAlineado">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ForeColor="Red" />
            </div>
        </div>
</asp:Content>
