<%@ Page Language="C#" MasterPageFile="~/Forms/Default.Master" AutoEventWireup="true" CodeBehind="PartialPageUpdates.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.PartialPageUpdates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        input[type="submit"]
        {
            cursor: pointer;
            font-size: large;
            font-weight: bold;
        }
        .FooterFlow
        {
            margin-top: 1em;
        }
        #DivisionOne
        {
            border: 2px dashed #ccc;
            margin: 1em;
            padding: 1em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <asp:ScriptManager runat="server" ID="ScriptManagerOne" EnablePartialRendering="true">
    </asp:ScriptManager>
    <p>Page load stamp: <asp:Literal runat="server" ID="PageLoadTimeLiteral" Text="<%#DateTime.Now%>" /></p>
    <p><asp:Button runat="server" ID="PageClientCommand" OnClientClick="return doPartialPostBack();" Text="Partial PostBack" /></p>
    <asp:UpdatePanel runat="server" ID="UpdatePanelOne" ClientIDMode="Static">
        <ContentTemplate>
            <div runat="server" id="DivisionOne" clientidmode="static">
                <p><asp:Literal runat="server" ID="ContentTemplateLiteral" /></p>
                <asp:Button runat="server" ID="PartialPageCommand" Text="Partial PostBack" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <p>Observe the <code>UpdatePanel</code> client-side events of the <code><a href="http://msdn.microsoft.com/en-us/library/bb311028.aspx">Sys.WebForms.PageRequestManager</a></code> in your browser console.</p>
    <div class="FooterFlow">
        <asp:HyperLink runat="server" NavigateUrl="~/Forms/PartialPageUpdates.aspx" Text="Reload" />
    </div>

    <script type="text/javascript">
        var manager = Sys.WebForms.PageRequestManager.getInstance();

        var doPartialPostBack = function () {
            var updatePanelsToUpdate = [];
            var eventTarget = 'PageClientCommand';
            var eventArgument = '';
            var causesValidation = false;
            var validationGroup = '';

            manager.beginAsyncPostBack(updatePanelsToUpdate, eventTarget, eventArgument, causesValidation, validationGroup);

            return false;
        };

        manager.add_initializeRequest(function (sender, args) {
            if (window.console) {
                window.console.log('initializeRequest:', "\n    sender:", sender, "\n    args:", args);
            }
        });
        manager.add_beginRequest(function (sender, args) {
            if (window.console) {
                window.console.log('initializeRequest:', "\n    sender:", sender, "\n    args:", args);
            }
        });
        manager.add_pageLoading(function (sender, args) {
            if (window.console) {
                window.console.log('pageLoading:', "\n    sender:", sender, "\n    args:", args);
            }
        });
        manager.add_pageLoaded(function (sender, args) {
            if (window.console) {
                window.console.log('pageLoaded:', "\n    sender:", sender, "\n    args:", args);
            }
        });
        manager.add_endRequest(function (sender, args) {
            if (window.console) {
                window.console.log('endRequest:', "\n    sender:", sender, "\n    args:", args);
            }
        });
    </script>

</asp:Content>
