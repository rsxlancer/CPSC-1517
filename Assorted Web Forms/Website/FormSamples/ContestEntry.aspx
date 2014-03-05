<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ContestEntry.aspx.cs" Inherits="FormSamples_ContestEntry" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>Contest Entry</h1>
    <blockquote style="font-style: italic">
        This illustrates some simple controls to fill out an entry form for a contest.
    </blockquote>
    <p>
        Please fill out the following form to enter the contest. This contest is only 
        available to residents in Western Canada.
    </p>
    <fieldset>
        <legend></legend>
        <asp:Label ID="lblFirstName" runat="server" AssociatedControlID="FirstName" Text="First Name"></asp:Label>
        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
		
        <asp:Label ID="lblLastName" runat="server" AssociatedControlID="LastName" Text="Last Name"></asp:Label>
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
		
        <asp:Label ID="lblStreetAddress1" runat="server" AssociatedControlID="StreetAddress1" Text="Street Address 1"></asp:Label>
        <asp:TextBox ID="StreetAddress1" runat="server"></asp:TextBox>
		
        <asp:Label ID="lblStreetAddress2" runat="server" AssociatedControlID="StreetAddress2" Text="Street Address 2"></asp:Label>
        <asp:TextBox ID="StreetAddress2" runat="server"></asp:TextBox>
		
        <asp:Label ID="lblCity" runat="server" AssociatedControlID="City" Text="City"></asp:Label>
        <asp:TextBox ID="City" runat="server"></asp:TextBox>
		
        <asp:Label ID="lblProvince" runat="server" AssociatedControlID="Province" Text="Province"></asp:Label>
        <asp:DropDownList ID="Province" runat="server">
            <asp:ListItem>BC</asp:ListItem>
            <asp:ListItem>AB</asp:ListItem>
            <asp:ListItem>SK</asp:ListItem>
            <asp:ListItem>MB</asp:ListItem>
        </asp:DropDownList>
		
        <asp:Label ID="lblPostalCode" runat="server" AssociatedControlID="PostalCode" Text="Postal Code"></asp:Label>
        <asp:TextBox ID="PostalCode" runat="server"></asp:TextBox>
		
        <asp:Label ID="lblEmail" runat="server" AssociatedControlID="Email" Text="Email"></asp:Label>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>
    </fieldset>
    <p>
        Note: You must agree to the contest terms in order to be entered.<br />
        <asp:CheckBox ID="AgreeToTerms" runat="server"
            Text="I agree to the terms of the contest." />
    </p>
    <p>
        <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
        <br />
        <asp:Label ID="MessageLabel" runat="server"></asp:Label>
    </p>

</asp:Content>

