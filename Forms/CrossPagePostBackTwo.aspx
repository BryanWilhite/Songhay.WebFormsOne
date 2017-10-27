<%@ Page Language="C#" MasterPageFile="~/Forms/Default.Master" AutoEventWireup="true" CodeBehind="CrossPagePostBackTwo.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.CrossPagePostBackTwo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .Label
        {
            font-weight: bold;
            font-size: large;
            font-style: oblique;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <h2>Second Page</h2>
    <asp:Label runat="server" ID="SecondPageLabel" CssClass="Label" />
</asp:Content>
