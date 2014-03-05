<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CreateBankAccount.aspx.cs" Inherits="Form_Samples_CreateBankAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1>Create Bank Account</h1>
    <p>
        Fill out the following form and submit</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        
        <asp:Label ID="Label1" runat="server" Text="Account Holder"></asp:Label>
        <asp:TextBox ID="FullName" runat="server"></asp:TextBox>
        
    </p>
    <p>
        
        <asp:Label ID="Label2" runat="server" Text="Account Number"></asp:Label>
        <asp:TextBox ID="AccountNumber" runat="server"></asp:TextBox>
        
    </p>
    <p>
        
        <asp:Label ID="Label3" runat="server" Text="Opening Balance"></asp:Label>
        <asp:TextBox ID="OpeningBalance" runat="server"></asp:TextBox>
        
    </p>
    <p>
        
        <asp:Label ID="Label4" runat="server" Text="Account Type"></asp:Label>
        <asp:TextBox ID="AccountType" runat="server"></asp:TextBox>
        
    </p>
    <p>
        
        <asp:Label ID="Label5" runat="server" Text="Account Type"></asp:Label>
        <asp:DropDownList ID="BAccountType" runat="server">
            <asp:ListItem>Chequings</asp:ListItem>
            <asp:ListItem>Savings</asp:ListItem>
            <asp:ListItem>Credit</asp:ListItem>
        </asp:DropDownList>
        
    </p>
    <p>
        
        <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
        
    </p>
</asp:Content>

