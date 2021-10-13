<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<p style="text-align:center; height: 45px;">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx" CausesValidation="False">Inicio</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/Empleados1.aspx" CausesValidation="False">Empleados</asp:LinkButton>&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/Prestaciones1.aspx" CausesValidation="False">Prestaciones</asp:LinkButton>
    <hr/>
<p  style="text-align:center; height: 17px;">

    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="XX-Large">ACME INNOVACIÓN,S.FIG.</asp:Label>
    <hr/>
<p  style="text-align:center; height: 24px; margin-top: 2px;">
    <asp:Label ID="Label2" runat="server" Text="Label">Gestión de Prestaciones Sociles</asp:Label>
</p>