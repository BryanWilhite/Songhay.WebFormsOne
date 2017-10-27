<%@ Page Trace="false" Language="C#" MasterPageFile="~/Forms/Default.Master" AutoEventWireup="true" CodeBehind="Wizard.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.Wizard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        input[type="submit"]
        {
            cursor: pointer;
            font-size: large;
            font-weight: bold;
            width: 7em;
        }
        .WizardStep
        {
            background-color: Blue;
            color: #fff;
            font-size: x-large;
            font-weight: bold;
            height: 300px;
            width: 400px;
        }
        .WizardStep > p
        {
            padding: 2em;
        }
        #SideBarList
        {
            margin: 1em;
            width: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:Wizard runat="server" ID="WizardOne" ClientIDMode="Static">
        <HeaderTemplate>
            <h2 runat="server" id="WizardHeader">The Wizard!</h2>
        </HeaderTemplate>
        <WizardSteps>
            <asp:WizardStep runat="server" title="Step One">
            <div class="WizardStep">
                <p>This is the first step of the Wizard.</p>
            </div>
            </asp:WizardStep>
            <asp:WizardStep runat="server" title="Step Two">
            <div class="WizardStep">
                <p>This is the second step of the Wizard.</p>
            </div>
            </asp:WizardStep>
            <asp:WizardStep runat="server" Title="Step Three">
            <div class="WizardStep">
                <p>This is the last step of the Wizard.</p>
            </div>
            </asp:WizardStep>
        </WizardSteps>
    </asp:Wizard>
    <div class="FooterFlow">
        <asp:HyperLink runat="server" NavigateUrl="~/Forms/Wizard.aspx" Text="Reload" />
    </div>
</asp:Content>
