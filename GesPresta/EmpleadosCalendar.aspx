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
           width:45%;
           text-align:right;
           display:inline-block;
            top: 557px;
            left: 10px;
            float:left;
            height: 42px;
        }
        .Texto2{
            padding: 0px 20px 0px 0px;
            width:10%;
            text-align:right;
            display:inline-block;
            top: 557px;
            left: 15px;
            float:left;
            height: 42px;
        }
        .calendario {
            width: 15%;
            margin-top:0px;
            padding-right: 0px;
            float:left;
        }
        .Valores{
            display:inline-block;
             display:block;
            margin-left:1em;
        }
        #BotonEnviar{
            text-align:center;
           clear:right;
            width:1267px;
            margin:1em;
            padding-left:15%;
        }
        label{
            padding-left:25%;
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
            </div>

            <br />
            <br />
            <div class="Texto1">
            <asp:Label ID="label1" runat="server" Text="Label">Fecha de Nacimiento</asp:Label>
            <br />
                <asp:TextBox ID="TxtFnaEmp" runat="server" OnTextChanged="TxtFnaEmpleado"></asp:TextBox>
            </div>
            <div class="calendario">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </div>
        
            <div class="Texto2">
                <asp:Label ID="label" runat="server" Text="Label">Fecha de Ingreso</asp:Label>
                <br />
                <asp:TextBox ID="TxtFinEmp" runat="server" Width="126px" OnTextChanged="TxtFinEmp_TextChanged"></asp:TextBox>
            </div>
            <div class="calendario">
                <asp:Calendar ID="Calendar2" runat="server" Width="200px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar2_SelectionChanged">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </div>
            <div class="Valores">
                <asp:Label ID="Label12" runat="server" Text="Label">Antiguedad:</asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtAños" runat="server" Width="57px"></asp:TextBox>
                <asp:Label ID="Label13" runat="server" Text="Label">Años</asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TxtMeses" runat="server" Width="55px"></asp:TextBox>
                <asp:Label ID="Label14" runat="server" Text="Label">Meses</asp:Label>
                <br />
                <br />
                <asp:TextBox ID="txtDias" runat="server" Width="54px"></asp:TextBox>
                <asp:Label ID="Label15" runat="server" Text="Label">Días</asp:Label>
            </div>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <div id="BotonEnviar">
                <asp:Button ID="Button1" runat="server" Text="Enviar" OnClick="Button1_Click" />
            </div>
        <asp:Label ID="lblError1" runat="server" Text="Label" BackColor="Lime" Visible="False" Width="21%"></asp:Label>
        <asp:Label ID="lblError2" runat="server" Text="Label" BackColor="#66FFFF" Visible="False" Width="21%"></asp:Label>
        <label>
            <asp:Label ID="IblValores" runat="server" BackColor="#66FFFF" Visible="False" Width="60%"></asp:Label>
        </label>
            
        <br />
    </form>
</body>
</html>
