<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Default.Master" AutoEventWireup="true" CodeBehind="MultiView.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.MultiView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        input[type="submit"]
        {
            cursor: pointer;
            font-size: large;
            font-weight: bold;
        }
        .CurrentView
        {
            background-color: Blue;
            color: #fff;
            font-size: x-large;
            font-weight: bold;
            height: 300px;
            width: 400px;
        }
        .CurrentView > p
        {
            padding: 2em;
        }
        .PagerFlow
        {
            margin-top: 1em;
        }
        .PagerFlow >input[type="submit"]
        {
            margin: 0.5em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:MultiView runat="server" ID="MultiViewOne" ClientIDMode="Static">
        <asp:View runat="server">
            <div class="CurrentView">
                <p>This is the first View.</p>
            </div>
        </asp:View>
        <asp:View runat="server">
            <div class="CurrentView">
                <p>This is the second View.</p>
            </div>
        </asp:View>
        <asp:View runat="server">
            <div class="CurrentView">
                <p>This is the last View.</p>
            </div>
        </asp:View>
    </asp:MultiView>
    <div class="FooterFlow">
        <asp:HyperLink runat="server" NavigateUrl="~/Forms/MultiView.aspx" Text="Reload" />
    </div>
    <div class="PagerFlow">
        <asp:Button runat="server" ID="ViewPrevious" Text="&lt;" ToolTip="Previous View" />
        <asp:Button runat="server" ID="ViewNext" Text="&gt;" ToolTip="Next View" />
    </div>
</asp:Content>
