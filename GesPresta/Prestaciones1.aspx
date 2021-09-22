<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1.aspx.cs" Inherits="GesPresta.Prestaciones1" %>

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
           width:21%;
           text-align:right;
           display:inline-block;
            height: 24px;
        }
        #BotonEnviar{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div id="Titulo">
            <asp:Label ID="Label1" runat="server" Text="Label">DATOS DE LAS PRESTACIONES</asp:Label>
        </div>
        <br />
        <br />

        <div class="Texto">
            <asp:Label ID="Label2" runat="server" Text="Label">Código Prestación</asp:Label>
        </div>
        <asp:TextBox ID="txtCodPre" runat="server"></asp:TextBox>
        <br />

        <div class="Texto">
        <asp:Label ID="Label3" runat="server" Text="Label">Descripción</asp:Label>
        </div>
        <asp:TextBox ID="txtDesPre" runat="server" Width="295px"></asp:TextBox>
        <br />

        <div class="Texto">
            <asp:Label ID="Label4" runat="server" Text="Label">Importe Fijo</asp:Label>
        </div>
        <asp:TextBox ID="txtImpPre" runat="server"></asp:TextBox>
        <br />

        <div class="Texto">
            <asp:Label ID="Label5" runat="server" Text="Label">Porcentaje del Importe</asp:Label>
        </div>
            <asp:TextBox ID="txtPorPre" runat="server"></asp:TextBox>
        <br />

        <div class="Texto">
            <asp:Label ID="Label6" runat="server" Text="Label">Tipo de Prestación</asp:Label>
        </div>
         <asp:DropDownList ID="ddlTipPre" runat="server">
            <asp:ListItem>Dentaria</asp:ListItem>
            <asp:ListItem>Familiar</asp:ListItem>
            <asp:ListItem Selected="True">Ocultar</asp:ListItem>
            <asp:ListItem>Otras</asp:ListItem>
        </asp:DropDownList>
        <br />

        <div id="BotonEnviar">
            <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" OnClick="cmdEnviar_Click" PostBackUrl="~/Prestaciones1Respuesta.aspx"/>
        </div>
        <br />
    </form>
</body>
</html>
