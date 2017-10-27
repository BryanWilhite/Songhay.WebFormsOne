<%@ Import Namespace="Songhay.Web.WebFormsSample.Models" %>
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Forms/Default.Master" CodeBehind="ListView.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.ListView" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="Head">
    <style type="text/css">
        input[type="submit"]
        {
            cursor: pointer;
            font-size: large;
            font-weight: bold;
        }
        label[for="CollectionCountDisplay"]
        {
            font-weight: bold;
            width: auto;
        }
        .ListView > .ListViewGroup
        {
            margin-bottom: 2em;
        }
        .ListView > .ListViewGroup > .Divider
        {
            width: 2em;
        }
        .ListView > .ListViewGroup > .ListViewItem,
        .ListView > .ListViewGroup > .Divider
        {
            display: inline-block;
        }
        .ListView > .ListViewGroup > .ListViewItem > label
        {
            display: block;
        }
        .ListView > .ListViewGroup > .ListViewItem > label > span
        {
            display: inline-block;
            font-weight: bold;
            width: 10em;
        }
        .FooterFlow
        {
            margin-top: 1em;
        }
        #DataPagerOne
        {
            font-size: large;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="Body">
    <p>Read the classic article, “<a href="http://msdn.microsoft.com/en-us/magazine/cc337898.aspx">The Only Data-binding Control You’ll Ever Need</a>,” by Fritz Onion.</p>
    <asp:ListView runat="server" ID="ListOne"
        DataKeyNames="PrimaryKey" DataSourceID="GridOneObjectDataSource"
        GroupItemCount="2" GroupPlaceholderID="ListOneGroup" ItemPlaceholderID="ListOneItem">
    <LayoutTemplate>
        <div class="ListView">
            <asp:PlaceHolder runat="server" ID="ListOneGroup" />
        </div>
    </LayoutTemplate>
    <ItemTemplate>
        <div class="ListViewItem">
            <label><span>Property One: </span><asp:Literal runat="server" Text='<%#Eval("PropertyOne")%>' /></label>
            <label><span>Is Property Zero?: </span><asp:Literal runat="server" Text='<%#Eval("IsPropertyZero")%>' /></label>
            <label><span>Property One Date: </span><asp:Literal runat="server" Text='<%#Eval("PropertyOneDate")%>' /></label>
        </div>
    </ItemTemplate>
    <GroupTemplate>
        <div class="ListViewGroup">
            <asp:PlaceHolder runat="server" ID="ListOneItem" />
        </div>
    </GroupTemplate>
    <ItemSeparatorTemplate>
        <div class="Divider">&#160;</div>
    </ItemSeparatorTemplate>
    </asp:ListView>
    <asp:ObjectDataSource runat="server" ID="GridOneObjectDataSource"
        SelectMethod="List"
        EnableCaching="false"
        TypeName="Songhay.Web.WebFormsSample.Models.GridOneData">
    </asp:ObjectDataSource>
    <asp:DataPager runat="server" ID="DataPagerOne" ClientIDMode="Static"
        PagedControlID="ListOne" PageSize="3">
        <Fields>
            <asp:NextPreviousPagerField
                FirstPageText="&amp;lt;&amp;lt;" PreviousPageText="&amp;lt;"
                ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="true" />
            <asp:NumericPagerField />
            <asp:NextPreviousPagerField
                LastPageText="&amp;gt;&amp;gt;" NextPageText="&amp;gt;"
                ShowLastPageButton="True" ShowNextPageButton="true" ShowPreviousPageButton="False" />
        </Fields>
    </asp:DataPager>
    <div class="FooterFlow">
        <label for="CollectionCountDisplay">Row Count: </label>
        <span id="CollectionCountDisplay"><asp:Literal runat="server" Text="<%#GridOneData.CollectionCount.ToString()%>" /></span>
        <asp:HyperLink runat="server" NavigateUrl="~/Forms/ListView.aspx" Text="Reload" />
    </div>
</asp:Content>
