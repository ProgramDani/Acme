<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

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
        .Texto1 {
           padding: 0px 20px 0px 0px;
           width:77%;
           text-align:right;
           display:inline-block;
            top: 557px;
            left: 10px;
            float:left;
            height: 42px;
        }
        .calendario {
            padding-left:670px;
            width: 180px;
            margin-top:-45px;
            padding-right: 0px;
        }
        .elementoFlotante{
            float:left;
            width: 853px;
        }
        #BotonEnviar{
            text-align:right;
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
            <asp:TextBox ID="txtTelEmp" runat="server" Width="304px"></asp:TextBox>
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
                <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal" Height="17px" Width="177px" RepeatLayout="Flow">
                    <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                </asp:RadioButtonList>
           
                
            <br />
                
            <div class="Texto">
            <asp:Label ID="Label10" runat="server" Text="Label">Departamento</asp:Label>
            </div>
            <asp:DropDownList ID="ddlDepEmp" runat="server">
                <asp:ListItem Selected="True" Value="Investigación"></asp:ListItem>
                <asp:ListItem Value="Desarrollo"></asp:ListItem>
                <asp:ListItem>Innovación</asp:ListItem>
                <asp:ListItem>Administración</asp:ListItem>
            </asp:DropDownList>
            <br />

            <div id="BotonEnviar">
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" Width="68px" OnClick="cmdEnviar_Click" />
            </div>
        </div>

        <asp:Label ID="IblValores" runat="server" BackColor="#66FFFF" Visible="False" Width="60%"></asp:Label>
        <br />
        <br />

        <div class="elementoFlotante">
            <div class="Texto1">
                <asp:Label ID="lblError1" runat="server" Text="Label">Fecha de Nacicimiento</asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="126px"></asp:TextBox>
            </div>
            <div class="calendario">
                <asp:Calendar ID="Calendar1" runat="server" Height="147px" Width="178px"></asp:Calendar>
            </div>
        </div>
        <div class="elementoFlotante">
            <div class="Texto1">
            <asp:Label ID="lblError2" runat="server" Text="Label">Fecha de Ingreso</asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Width="126px"></asp:TextBox>
            </div>
            <div class="calendario">
                <asp:Calendar ID="Calendar2" runat="server" Height="147px" Width="178px"></asp:Calendar>
            </div>
        </div>
        
        
    </form>
</body>
</html>
