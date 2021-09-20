<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<p style="text-align:center; height: 45px;">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Inicio</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Empleados.aspx">Empleados</asp:LinkButton>
    &nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Prestaciones.aspx">Prestaciones</asp:LinkButton>
    <hr style="height: 0px" />
<p  style="text-align:center; height: 17px;">

    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="XX-Large">ACME INNOVACIÓN,S.FIG.</asp:Label><hr style="height: -12px" />
<p  style="text-align:center; height: 24px; margin-top: 2px;">
    <asp:Label ID="Label2" runat="server" Text="Label">Gestión de Prestaciones Sociles</asp:Label>
</p>
       




