<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Forms/Default.Master" CodeBehind="ServerTransferOne.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.ServerTransferOne" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <h2>First Page</h2>
    <asp:TextBox runat="server" ID="FirstPageTextBox" ClientIDMode="Static" Text="First Page Data" />
    <asp:Button runat="server" Text="Do Transfer" />
</asp:Content>
