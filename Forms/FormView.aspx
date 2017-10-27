<%@ Import Namespace="Songhay.Web.WebFormsSample.Models" %>
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Forms/Default.Master" CodeBehind="FormView.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.FormView" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="Head">
    <style type="text/css">
        input[type="submit"]
        {
            cursor: pointer;
            margin-left: 1em;
            width: 5em;
        }
        input[type="text"]
        {
            border: 1px solid #000;
        }
        #FormOne .ItemFlow > label
        {
            display: block;
        }
        #FormOne  .ItemFlow > label > span
        {
            display: inline-block;
            font-weight: bold;
            width: 10em;
        }
        span.Validation
        {
            display: inline-block;
        }
        .ItemFlow.Commands
        {
            margin-top: 1em;
            text-align: right;
            width: 400px;
        }
        .FooterFlow
        {
            margin-top: 1em;
        }
        .Validation
        {
            color: #ff0000;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="Body">
    <asp:FormView runat="server" ID="FormOne" ClientIDMode="Static"
        AllowPaging="True" DefaultMode="ReadOnly" EnableViewState="false"
        DataKeyNames="PrimaryKey" DataSourceID="GridOneObjectDataSource">
        <ItemTemplate>
            <div class="ItemFlow">
                <label><span>Property One: </span><asp:Literal runat="server" Text='<%#Eval("PropertyOne")%>' /></label>
                <label><span>Is Property Zero?: </span><asp:Literal runat="server" Text='<%#Eval("IsPropertyZero")%>' /></label>
                <label><span>Property One Date: </span><asp:Literal runat="server" Text='<%#Eval("PropertyOneDate")%>' /></label>
            </div>
            <div class="ItemFlow Commands">
                <asp:Button runat="server" ID="FormViewEdit" CommandName="Edit" Text="Edit" />
            </div>
        </ItemTemplate>
        <EditItemTemplate>
            <div class="ItemFlow Edit">
                <label>
                    <span>Property One: </span><asp:TextBox runat="server" ID="EditPropertyOne" Text='<%# Bind("PropertyOne") %>' />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForEditPropertyOne"
                        CssClass="Validation Required"
                        ErrorMessage="You must provide a Property One."
                        ControlToValidate="EditPropertyOne">*</asp:RequiredFieldValidator>
                </label>
                <label>
                    <span>Is Property Zero?: </span><asp:CheckBox runat="server" ID="EditIsPropertyZero" Checked='<%# Bind("IsPropertyZero") %>' />
                </label>
                <label>
                    <span>Property One Date: </span><asp:TextBox runat="server" ID="EditPropertyOneDate" Text='<%# Bind("PropertyOneDate") %>' />
                    <asp:CustomValidator runat="server" ID="CustomValidatorForEditPropertyOneDate"
                        CssClass="Validation Compare"
                        ErrorMessage="You must provide a valid Property One Date and Time."
                        ControlToValidate="EditPropertyOneDate"
                        OnServerValidate="DoCustomValidatorForPropertyOneDate">*</asp:CustomValidator>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForEditPropertyOneDate"
                        CssClass="Validation Required"
                        ErrorMessage="You must provide a Property One Date."
                        ControlToValidate="EditPropertyOneDate">*</asp:RequiredFieldValidator>
                </label>
            </div>
            <div class="ItemFlow Commands">
                <asp:Button runat="server" ID="FormViewCancel" CausesValidation="false" CommandName="Cancel" Text="Cancel" />
                <asp:Button runat="server" ID="FormViewDelete" CommandName="Delete" Text="Delete" />
                <asp:Button runat="server" ID="FormViewUpdate" CommandName="Update" Text="Save" />
            </div>
        </EditItemTemplate>
        <InsertItemTemplate>
            <div class="ItemFlow Edit Insert">
                <label>
                    <span>Property One: </span><asp:TextBox runat="server" ID="InsertPropertyOne" />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForInsertPropertyOne"
                        CssClass="Validation Required"
                        ErrorMessage="You must provide a Property One."
                        ControlToValidate="InsertPropertyOne">*</asp:RequiredFieldValidator>
                </label>
                <label>
                    <span>Is Property Zero?: </span><asp:CheckBox runat="server" ID="InsertIsPropertyZero" />
                </label>
                <label>
                    <span>Property One Date: </span><asp:TextBox runat="server" ID="InsertPropertyOneDate" Text="<%# DateTime.Now %>" />
                    <asp:CustomValidator runat="server" ID="CustomValidatorForInsertPropertyOneDate"
                        CssClass="Validation Compare"
                        ErrorMessage="You must provide a valid Property One Date and Time."
                        ControlToValidate="InsertPropertyOneDate"
                        OnServerValidate="DoCustomValidatorForPropertyOneDate">*</asp:CustomValidator>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForInsertPropertyOneDate"
                        CssClass="Validation Required"
                        ErrorMessage="You must provide a Property One Date."
                        ControlToValidate="InsertPropertyOneDate">*</asp:RequiredFieldValidator>
                </label>
            </div>
            <div class="ItemFlow Commands">
                <asp:Button runat="server" ID="FormViewCancel" CausesValidation="false" CommandName="Cancel" Text="Cancel" />
                <asp:Button runat="server" ID="FormViewInsert" CommandName="Insert" Text="Save" />
            </div>
        </InsertItemTemplate>
        <FooterTemplate>

            <asp:ValidationSummary runat="server" ID="GridViewInputValidationSummary"
                CssClass="Validation Summary"
                ShowMessageBox="false" ShowSummary="true" />

            <div class="FooterFlow">
                <label for="CollectionCountDisplay">Row Count:</label>
                <span id="CollectionCountDisplay"><asp:Literal runat="server" Text="<%#GridOneData.CollectionCount.ToString()%>" /></span>
                <asp:HyperLink runat="server" NavigateUrl="~/Forms/FormView.aspx" Text="Reload" />
                <asp:Button runat="server" ID="FormViewInsertForm" CommandName="InsertForm" Text="Insert" />
            </div>
        </FooterTemplate>
    </asp:FormView>
    <asp:ObjectDataSource runat="server" ID="GridOneObjectDataSource"
        DeleteMethod="Delete" SelectMethod="List" InsertMethod="Insert" UpdateMethod="Update"
        EnableCaching="false"
        TypeName="Songhay.Web.WebFormsSample.Models.GridOneData">
        <DeleteParameters>
            <asp:Parameter Type="Int32" Name="primaryKey" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="isPropertyZero" Type="Boolean" />
            <asp:Parameter Name="propertyOne" Type="String" />
            <asp:Parameter Name="propertyOneDate" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="primaryKey" Type="Int32" />
            <asp:Parameter Name="isPropertyZero" Type="Boolean" />
            <asp:Parameter Name="propertyOne" Type="String" />
            <asp:Parameter Name="propertyOneDate" Type="DateTime" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
