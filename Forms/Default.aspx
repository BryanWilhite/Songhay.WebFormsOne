<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Forms/Default.Master" CodeBehind="Default.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.SiteMap" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="Head">
    <style type="text/css">
        #TreeViewOne
        {
            font-size: x-large;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="Body">
    <asp:TreeView runat="server" ID="TreeViewOne" ClientIDMode="Static" />
</asp:Content>
