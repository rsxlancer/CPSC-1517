<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContestEntry.aspx.cs" Inherits="Form_Samples_ContestEntry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1>Contest entry</h1>
    <p>
        Fill out the following form to enter the contest. This contest is only available to residents in Western Canada.</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
    <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        &nbsp;<asp:TextBox ID="LastName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Street Address 1"></asp:Label>
&nbsp;<asp:TextBox ID="Address1" runat="server" ></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Street Address 2"></asp:Label>
        <asp:TextBox ID="Address2" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
&nbsp;<asp:TextBox ID="City" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Province"></asp:Label>
&nbsp;<asp:DropDownList ID="Province" runat="server">
            <asp:ListItem>AB</asp:ListItem>
            <asp:ListItem>BC</asp:ListItem>
            <asp:ListItem>SK</asp:ListItem>
            <asp:ListItem>MB</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Postal Code"></asp:Label>
&nbsp;<asp:TextBox ID="PostalCode" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
&nbsp;<asp:TextBox ID="Email" runat="server"></asp:TextBox>
    </p>
    <p>
        Note: You must agree to the contest terms in order to be entered</p>
    <p>
        <asp:CheckBox ID="TermAgreement" runat="server" Text="I agree to the terms and conditions" />
    </p>
    <br />
    <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
</asp:Content>

