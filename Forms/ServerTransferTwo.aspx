<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Forms/Default.Master" CodeBehind="ServerTransferTwo.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.ServerTransferTwo" %>

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
