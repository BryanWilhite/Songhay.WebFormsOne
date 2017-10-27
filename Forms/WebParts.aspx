<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Default.Master" AutoEventWireup="true" CodeBehind="WebParts.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.WebParts" %>
<asp:Content ID="HeadContent" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
    .WebPartFlow
    {
        display: inline;
        height: 240px;
        margin: 32px;
        width: 320px;
    }
</style>
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="Body" runat="server">
    <asp:WebPartManager ID="WebPartManagerOne" runat="server">
    </asp:WebPartManager>
    <asp:WebPartZone runat="server" ID="WebPartZoneOne" ClientIDMode="Static" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6" CssClass="WebPartFlow">
        <MenuLabelHoverStyle ForeColor="Yellow"></MenuLabelHoverStyle>
        <MenuLabelStyle ForeColor="#333333"></MenuLabelStyle>
        <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
        </MenuPopupStyle>
        <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333"></MenuVerbHoverStyle>
        <MenuVerbStyle BorderColor="#1C5E55" BorderWidth="1px" BorderStyle="Solid" ForeColor="White"></MenuVerbStyle>
        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
        </TitleBarVerbStyle>
        <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
        <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC"></HeaderStyle>
        <PartChromeStyle BackColor="#E3EAEB" BorderColor="#C5BBAF" Font-Names="Verdana" ForeColor="#333333"></PartChromeStyle>
        <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
        <PartTitleStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.8em" ForeColor="White"></PartTitleStyle>
    </asp:WebPartZone>
    <asp:WebPartZone runat="server" ID="WebPartZoneTwo" ClientIDMode="Static" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6" CssClass="WebPartFlow">
        <MenuLabelHoverStyle ForeColor="Yellow"></MenuLabelHoverStyle>
        <MenuLabelStyle ForeColor="#333333"></MenuLabelStyle>
        <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
        </MenuPopupStyle>
        <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333"></MenuVerbHoverStyle>
        <MenuVerbStyle BorderColor="#1C5E55" BorderWidth="1px" BorderStyle="Solid" ForeColor="White"></MenuVerbStyle>
        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
        </TitleBarVerbStyle>
        <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
        <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC"></HeaderStyle>
        <PartChromeStyle BackColor="#E3EAEB" BorderColor="#C5BBAF" Font-Names="Verdana" ForeColor="#333333"></PartChromeStyle>
        <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
        <PartTitleStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.8em" ForeColor="White"></PartTitleStyle>
    </asp:WebPartZone>
    <asp:WebPartZone runat="server" ID="WebPartZoneThree" ClientIDMode="Static" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6" CssClass="WebPartFlow">
        <MenuLabelHoverStyle ForeColor="Yellow"></MenuLabelHoverStyle>
        <MenuLabelStyle ForeColor="#333333"></MenuLabelStyle>
        <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
        </MenuPopupStyle>
        <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333"></MenuVerbHoverStyle>
        <MenuVerbStyle BorderColor="#1C5E55" BorderWidth="1px" BorderStyle="Solid" ForeColor="White"></MenuVerbStyle>
        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
        </TitleBarVerbStyle>
        <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
        <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC"></HeaderStyle>
        <PartChromeStyle BackColor="#E3EAEB" BorderColor="#C5BBAF" Font-Names="Verdana" ForeColor="#333333"></PartChromeStyle>
        <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
        <PartTitleStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.8em" ForeColor="White"></PartTitleStyle>
    </asp:WebPartZone>
    <asp:WebPartZone runat="server" ID="WebPartZoneFour" ClientIDMode="Static" BorderColor="#CCCCCC" Font-Names="Verdana" Padding="6" CssClass="WebPartFlow">
        <MenuLabelHoverStyle ForeColor="Yellow"></MenuLabelHoverStyle>
        <MenuLabelStyle ForeColor="#333333"></MenuLabelStyle>
        <MenuPopupStyle BackColor="#1C5E55" BorderColor="#CCCCCC" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.6em">
        </MenuPopupStyle>
        <MenuVerbHoverStyle BackColor="#E3EAEB" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" ForeColor="#333333"></MenuVerbHoverStyle>
        <MenuVerbStyle BorderColor="#1C5E55" BorderWidth="1px" BorderStyle="Solid" ForeColor="White"></MenuVerbStyle>
        <TitleBarVerbStyle Font-Size="0.6em" Font-Underline="False" ForeColor="White">
        </TitleBarVerbStyle>
        <EmptyZoneTextStyle Font-Size="0.8em"></EmptyZoneTextStyle>
        <HeaderStyle HorizontalAlign="Center" Font-Size="0.7em" ForeColor="#CCCCCC"></HeaderStyle>
        <PartChromeStyle BackColor="#E3EAEB" BorderColor="#C5BBAF" Font-Names="Verdana" ForeColor="#333333"></PartChromeStyle>
        <PartStyle Font-Size="0.8em" ForeColor="#333333"></PartStyle>
        <PartTitleStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.8em" ForeColor="White"></PartTitleStyle>
    </asp:WebPartZone>
</asp:Content>
