<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1Respuesta.aspx.cs" Inherits="GesPresta.Prestaciones1Respuesta1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .label{
            text-align:center;
            margin:1em;
        }
        .label1{
            text-transform:capitalize;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="label">
            <div class="label1">
                <asp:Label ID="lblValores1" runat="server" Text="VALORES RECIBIDOS DESDE EL FORMULARIO PRESTACIONES1.ASPX" Visible="False"></asp:Label>
            </div>
            <asp:Label ID="lblValores" runat="server" Text="Label" BackColor="#C0FFFF" Width="70%"></asp:Label>
        </div>
    </form>
</body>
</html>
