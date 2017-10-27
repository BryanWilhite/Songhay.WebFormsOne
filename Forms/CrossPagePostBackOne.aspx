<%@ Page Language="C#" MasterPageFile="~/Forms/Default.Master" AutoEventWireup="true" CodeBehind="CrossPagePostBackOne.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.CrossPagePostBackOne" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
<h2>First Page</h2>
<asp:TextBox runat="server" ID="FirstPageTextBox" ClientIDMode="Static" Text="First Page Data" />
<asp:Button runat="server" PostBackUrl="~/Forms/CrossPagePostBackTwo.aspx" Text="Do PostBack" />
</asp:Content>
