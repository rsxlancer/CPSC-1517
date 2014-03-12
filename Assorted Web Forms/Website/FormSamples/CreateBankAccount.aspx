<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CreateBankAccount.aspx.cs" Inherits="FormSamples_CreateBankAccount" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>Create Bank Account</h1>
    <blockquote>
        This illustrates some basic controls for creating a bank account.
    </blockquote>
    <p>
        Fill in the following form and click Submit.
    </p>
    <fieldset>
        <legend></legend>
        <asp:Label ID="lblAccountHolder" runat="server" AssociatedControlID="AccountHolder" Text="Account Holder"></asp:Label>
        <asp:TextBox ID="AccountHolder" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="The name of the holder of the account is required" ControlToValidate="AccountHolder"></asp:RequiredFieldValidator>

        <asp:Label ID="lblAccountNumber" runat="server" AssociatedControlID="AccountNumber" Text="Account Number"></asp:Label>
        <asp:TextBox ID="AccountNumber" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Account number must be 10 digits" ControlToValidate="AccountNumber" ValidationExpression="[1-9]\d{9}?"></asp:RegularExpressionValidator>

        <asp:Label ID="lblOpeningBalance" runat="server" AssociatedControlID="OpeningBalance" Text="Opening Balance"></asp:Label>
        <asp:TextBox ID="OpeningBalance" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Opening balance must be greater than zero" ControlToValidate="OpeningBalance" Operator="GreaterThan" ValueToCompare="0" Type="Currency"></asp:CompareValidator>

        <asp:Label ID="lblOverdraftLimit" runat="server" AssociatedControlID="OverdraftLimit" Text="Overdraft Limit"></asp:Label>
        <asp:TextBox ID="OverdraftLimit" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="OVerdraft limit must be greater than or equal to zero" ControlToValidate="OverdraftLimit" Type="Currency" Operator="GreaterThanEqual" ValueToCompare="0"></asp:CompareValidator>

        <asp:Label ID="lblAccountType" runat="server" AssociatedControlID="AccountType" Text="Account Type"></asp:Label>
        <asp:DropDownList ID="AccountType" runat="server">
            <asp:ListItem>Chequing</asp:ListItem>
            <asp:ListItem>Savings</asp:ListItem>
            <asp:ListItem>Credit</asp:ListItem>
        </asp:DropDownList>
    </fieldset>
    <p>
        <asp:LinkButton ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
    </p>
    <p>
        <asp:Label ID="FormResults" runat="server" />
    </p>
</asp:Content>

