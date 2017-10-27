<%@ Page Trace="false" Language="C#" MasterPageFile="~/Forms/NestedMasterPages/NestTwo.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.NestedMasterPages.Default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="Nest2" runat="server">
<h3>Page Content</h3>
<fieldset>
    <legend>Title Text</legend>
    <asp:TextBox runat="server" ID="TitleText" Text="New Title" /><asp:Button runat="server" ID="SetTitle" Text="Set Title" />
</fieldset>
<fieldset>
    <legend>Nested Master Label</legend>
    <asp:TextBox runat="server" ID="LabelText" Text="New Label Text" /><asp:Button runat="server" ID="SetLabel" Text="Set Label" />
</fieldset>
</asp:Content>
