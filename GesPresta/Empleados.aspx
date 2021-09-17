<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Cuerpo{
             width:100%;
        }
        #Titulo {
            text-align:center;
            padding-bottom:1em;
            font-weight:bold;
        }
        .Texto{
           padding: 0px 20px 0px 0px;
           width:45%;
           text-align:right;
           display:inline-block;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera ID="Cabecera1" runat="server" />
        <div id="Titulo">DATOS DE LOS EMPLEADO</div>
        <div id="Cuerpo">

            <div class="Texto">
                <asp:Label ID="Label11" runat="server" Text="Label">Código de Empleados</asp:Label>
            </div>
            <asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox>
            <br />

            <div class="Texto">
                <asp:Label ID="Label2" runat="server" Text="Label">NIF</asp:Label>
            </div>
            <asp:TextBox ID="txtNifEmp" runat="server"></asp:TextBox>
            <br />
            
            <div class="Texto">
                <asp:Label ID="Label3" runat="server" Text="Label">Apellidos y Nombre</asp:Label>
            </div>
            <asp:TextBox ID="txtNomEmp" runat="server" Width="356px"></asp:TextBox>
            <br />
            
            <div class="Texto">
                <asp:Label ID="Label4" runat="server" Text="Label">Dirección</asp:Label>  
            </div>
            <asp:TextBox ID="txtDirEmp" runat="server" Width="409px"></asp:TextBox>
            <br />
            
            <div class="Texto">
                <asp:Label ID="Label5" runat="server" Text="Label">Ciudad</asp:Label>
            </div>
            <asp:TextBox ID="txtCiuEmp" runat="server" Width="406px"></asp:TextBox>
            <br />

            <div class="Texto">
                <asp:Label ID="Label6" runat="server" Text="Label">Teléfonos</asp:Label>
            </div>
            <asp:TextBox ID="txtTelEmp" runat="server" OnTextChanged="TextBox6_TextChanged" Width="304px"></asp:TextBox>
            <br />

            <div class="Texto">
                <asp:Label ID="Label7" runat="server" Text="Label">Fecha de Nacimiento</asp:Label>
            </div>
            <asp:TextBox ID="txtFnaEmp" runat="server"></asp:TextBox>
            <br />

            <div class="Texto">
                <asp:Label ID="Label8" runat="server" Text="Label">Fecha de Ingreso</asp:Label>
            </div>
            <asp:TextBox ID="txtFinEmp" runat="server"></asp:TextBox>
            <br />

            <div class="Texto">
            <asp:Label ID="Label9" runat="server" Text="Label">Sexo</asp:Label>
            </div>
            <div id="RadioBoton">
                <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:Label ID="Label10" runat="server" Text="Label">Departamento</asp:Label>

            <asp:DropDownList ID="ddlDepEmp" runat="server">
                <asp:ListItem Selected="True" Value="Investigación"></asp:ListItem>
                <asp:ListItem Value="Desarrollo"></asp:ListItem>
                <asp:ListItem>Innovación</asp:ListItem>
                <asp:ListItem>Administración</asp:ListItem>
            </asp:DropDownList>
            <br />

            <div id="BotonEnviar">
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
                <br />
            </div>
        </div>
    </form>
</body>
</html>
