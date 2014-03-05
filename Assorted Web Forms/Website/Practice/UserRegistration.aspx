<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="UserRegistration.aspx.cs" Inherits="UserRegistration" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div>

        <h1>User Registration</h1>
        <p>
            Please fill in the form below and click submit. After sumitting the form, you 
            will receive an email with a link to confirm your registration. By clicking on 
            that link, you will complete the registration process.
        </p>
        <fieldset>
            <legend></legend>
            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="LastName" runat="server"></asp:TextBox>

            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>

            <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>

            <asp:Label ID="Label5" runat="server" Text="Confirm Email"></asp:Label>
            <asp:TextBox ID="ConfirmEmail" runat="server"></asp:TextBox>

            <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>

            <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        </fieldset>
        <asp:CheckBox ID="AgreeToTerms" runat="server"
            Text="I agree to the terms of this site." />
        <br />
        <asp:LinkButton ID="Submit" runat="server">Submit Registration</asp:LinkButton>

    </div>
</asp:Content>

