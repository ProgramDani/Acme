<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="prestaciones.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Titulo">
            <asp:Label ID="Label1" runat="server" Text="Label">DATOS DE LAS PRESTACIONES</asp:Label>
        </div>
        <br />
        <br />
        <div class="cuerpo">
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label2" runat="server" Text="Label">Código Prestación</asp:Label>
                </div>
                <div class="controles">
                    <asp:RequiredFieldValidator ID="rqdTxtCodPrestaciones" runat="server" ErrorMessage="*" ControlToValidate="txtCodPre" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtCodPre" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="regtxtCodPre" runat="server" ErrorMessage="El formato de los datos a introducir debe ser:  3 dígitos, un guión, 3 dígitos, un guion y, 3 dígitos" ForeColor="#009933" ValidationExpression="\d{3}-\d{3}-\d{3}" ControlToValidate="txtCodPre"></asp:RegularExpressionValidator>
                </div>
            </div>
            <br />
            <div class="linea">
                <div class="Texto">
                <asp:Label ID="Label3" runat="server" Text="Label">Descripción</asp:Label>
                </div>
                <div class="controles">
                    <asp:TextBox ID="txtDesPre" runat="server" Width="295px"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label4" runat="server" Text="Label">Importe Fijo</asp:Label>
                </div>

                <div class="controles">
                   <asp:RequiredFieldValidator ID="rqdTxtImportFijo" runat="server" ErrorMessage="*" ControlToValidate="txtImpPre" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:TextBox ID="txtImpPre" runat="server"></asp:TextBox>
                   <asp:RangeValidator ID="rngtxtImporte" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre 0,00 y 500,00 " ControlToValidate="txtImpPre" MaximumValue="500,00" MinimumValue="0,00" Type="Double" Height="0px"></asp:RangeValidator>
                </div>
            </div>
            <br />
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label5" runat="server" Text="Label">Porcentaje del Importe</asp:Label>
                </div>
                <div class="controles">
                    <asp:RequiredFieldValidator ID="rqdTxtPorcImporte" runat="server" ErrorMessage="*" ControlToValidate="txtPorPre" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPorPre" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="rngtxtImpPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre el 0,00% y el 15,00%" ControlToValidate="txtPorPre" MaximumValue="15,00" MinimumValue="0,00" Type="Double"></asp:RangeValidator>
                </div>
            </div>
            <br />
            <div class="linea">
                <div class="Texto">
                    <asp:Label ID="Label6" runat="server" Text="Label">Tipo de Prestación</asp:Label>
                </div>
                <div class="controles">
                    <asp:DropDownList ID="ddlTipPre" runat="server">
                    <asp:ListItem>Dentaria</asp:ListItem>
                    <asp:ListItem>Familiar</asp:ListItem>
                    <asp:ListItem Selected="True">Ocultar</asp:ListItem>
                    <asp:ListItem>Otras</asp:ListItem>
                  </asp:DropDownList>
                </div>
            </div>
                <br />
            <div class="linea">
                <div class="BotonEnviar">
                <asp:Button ID="cmdEnviar" runat="server" Text="Enviar" />
                </div>
            </div>
        </div>
</asp:Content>
