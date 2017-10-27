<%@ Import Namespace="Songhay.Web.WebFormsSample.Models" %>
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Forms/Default.Master" CodeBehind="Repeater.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.Repeater" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="Head">
    <style type="text/css">
        input[type="submit"]
        {
            cursor: pointer;
            font-size: large;
            font-weight: bold;
        }
        .Divider
        {
            width: 1em;
        }
        .RepeaterItem
        {
            display: inline-block;
        }
        .RepeaterItem > label
        {
            display: block;
        }
        .RepeaterItem > label > span
        {
            display: inline-block;
            font-weight: bold;
            width: 10em;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="Body">
    <asp:Repeater runat="server" ID="RepeaterOne"
        DataSourceID="GridOneObjectDataSource">
        <ItemTemplate>
        <div class="RepeaterItem">
            <label><span>Property One: </span><asp:Literal runat="server" Text='<%#Eval("PropertyOne")%>' /></label>
            <label><span>Is Property Zero?: </span><asp:Literal runat="server" Text='<%#Eval("IsPropertyZero")%>' /></label>
            <label><span>Property One Date: </span><asp:Literal runat="server" Text='<%#Eval("PropertyOneDate")%>' /></label>
        </div>
        </ItemTemplate>
        <SeparatorTemplate>
        <div class="Divider">&#160;</div>
        </SeparatorTemplate>
    </asp:Repeater>
    <asp:ObjectDataSource runat="server" ID="GridOneObjectDataSource"
        SelectMethod="Select"
        EnableCaching="false"
        TypeName="Songhay.Web.WebFormsSample.Models.GridOneData">
        <SelectParameters>
            <asp:Parameter Name="pageIndex" DefaultValue="0" Type="Int32" />
            <asp:Parameter Name="pageSize" DefaultValue="3" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="FooterFlow">
        <label for="CollectionCountDisplay">Row Count: </label>
        <span id="CollectionCountDisplay"><asp:Literal runat="server" Text="<%#GridOneData.CollectionCount.ToString()%>" /></span>
        <asp:HyperLink runat="server" NavigateUrl="~/Forms/ListView.aspx" Text="Reload" />
    </div>
    <div class="PagerFlow">
        <asp:Button runat="server" ID="PagePrevious" Text="&lt;" ToolTip="Previous Page" />
        <asp:Button runat="server" ID="PageNext" Text="&gt;" ToolTip="Next Page" />
    </div>
</asp:Content>
