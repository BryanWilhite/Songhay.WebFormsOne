<%@ Import Namespace="Songhay.Web.WebFormsSample.Models" %>
<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Forms/Default.Master" CodeBehind="GridView.aspx.cs" Inherits="Songhay.Web.WebFormsSample.Forms.GridView" %>

<asp:Content runat="server" ID="HeadContent" ContentPlaceHolderID="Head">
    <style type="text/css">
        fieldset, input[type="text"]
        {
            border: 1px solid #000;
        }
        label
        {
            font-weight: bold;
            display: inline-block;
            width: 128px;
        }
        label[for="CollectionCountDisplay"]
        {
            width: auto;
        }
        .GridView td
        {
            font-size: 10pt;
            white-space: nowrap;
        }
        .GridView td,
        .GridView th
        {
            padding: 4px;
            text-align: center;
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
    <p>This sample demonstrates the following:</p>
    <ul>
        <li>Data Binding expressions</li>
        <li>Binding declaratively with <code>ObjectDataSource</code></li>
        <li>Automatic Paging</li>
        <li>Custom/Manual Sorting</li>
        <li>Use of standard Validation controls (with Validation groups)</li>
        <li>Custom/Manual Validation</li>
    </ul>
    <asp:GridView runat="server" ID="GridOne"
        CssClass="GridView"
        AllowPaging="True" PageSize="3"
        AutoGenerateColumns="False"
        DataKeyNames="PrimaryKey" DataSourceID="GridOneObjectDataSource"
        ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:BoundField DataField="PrimaryKey" HeaderText="Primary Key" ReadOnly="true" />
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:LinkButton runat="server" CausesValidation="false" CommandName="Sort" CommandArgument="PropertyOne" Text="Property One" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("PropertyOne") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="EditPropertyOne" Text='<%# Bind("PropertyOne") %>' />
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForEditPropertyOne"
                        CssClass="Validation Required"
                        ErrorMessage="You must provide a Property One."
                        ControlToValidate="EditPropertyOne"
                        ValidationGroup="GridViewRow">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="IsPropertyZero" HeaderText="Is Property Zero?" />
            <asp:TemplateField>
                <HeaderTemplate>
                    <asp:LinkButton runat="server" CausesValidation="false" CommandName="Sort" CommandArgument="PropertyOneDate" Text="Property One Date" />
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%# Eval("PropertyOneDate") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox runat="server" ID="EditPropertyOneDate" Text='<%# Bind("PropertyOneDate") %>' />
                    <asp:CustomValidator runat="server" ID="CustomValidatorForEditPropertyOneDate"
                        CssClass="Validation Compare"
                        ErrorMessage="You must provide a valid Property One Date and Time."
                        ControlToValidate="EditPropertyOneDate"
                        ValidationGroup="GridViewRow"
                        OnServerValidate="DoCustomValidatorForPropertyOneDate">*</asp:CustomValidator>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForEditPropertyOneDate"
                        CssClass="Validation Required"
                        ErrorMessage="You must provide a Property One Date."
                        ControlToValidate="EditPropertyOneDate"
                        ValidationGroup="GridViewRow">*</asp:RequiredFieldValidator>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="true" ValidationGroup="GridViewRow" />
        </Columns>
    </asp:GridView>
    <asp:ValidationSummary runat="server" ID="GridViewValidationSummary"
        CssClass="Validation Summary"
        ShowMessageBox="false" ShowSummary="true"
        ValidationGroup="GridViewRow" />
    <fieldset>
        <legend>Insert Data:</legend>

        <div>
            <asp:Label runat="server" AssociatedControlID="InputPropertyOne">Property One: </asp:Label>
            <asp:TextBox runat="server" ID="InputPropertyOne" />
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForInputPropertyOne"
                CssClass="Validation Required"
                ErrorMessage="You must provide a Property One."
                ControlToValidate="InputPropertyOne"
                ValidationGroup="GridViewInput">*</asp:RequiredFieldValidator>
            <asp:CheckBox runat="server" ID="InputIsPropertyZero" />
            <asp:Label runat="server" AssociatedControlID="InputIsPropertyZero">Is Property Zero?</asp:Label>
        </div>

        <div>
            <asp:Label runat="server" AssociatedControlID="InputPropertyOneDate">Date: </asp:Label>
            <asp:TextBox runat="server" ID="InputPropertyOneDate" Text="<%# DateTime.Now %>" />
            <asp:CustomValidator runat="server" ID="CustomValidatorForInputPropertyOneDate"
                CssClass="Validation Compare"
                ErrorMessage="You must provide a valid Property One Date and Time."
                ControlToValidate="InputPropertyOneDate"
                ValidationGroup="GridViewInput"
                OnServerValidate="DoCustomValidatorForPropertyOneDate">*</asp:CustomValidator>
            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidatorForInputPropertyOneDate"
                CssClass="Validation Required"
                ErrorMessage="You must provide a Property One Date."
                ControlToValidate="InputPropertyOneDate"
                ValidationGroup="GridViewInput">*</asp:RequiredFieldValidator>
            <asp:Button runat="server" ID="InsertData" Text="Insert" ValidationGroup="GridViewInput" />
        </div>

        <asp:ValidationSummary runat="server" ID="GridViewInputValidationSummary"
            CssClass="Validation Summary"
            ShowMessageBox="false" ShowSummary="true"
            ValidationGroup="GridViewInput" />

    </fieldset>
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
    <div class="FooterFlow">
        <label for="CollectionCountDisplay">Row Count:</label>
        <span id="CollectionCountDisplay"><asp:Literal runat="server" Text="<%#GridOneData.CollectionCount.ToString()%>" /></span>
        <asp:HyperLink runat="server" NavigateUrl="~/Forms/GridView.aspx" Text="Reload" />
    </div>
</asp:Content>
