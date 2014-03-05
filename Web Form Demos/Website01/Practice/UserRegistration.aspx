<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="UserRegistration.aspx.cs" Inherits="Practice_UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1>User registration</h1>
    <p>
        Please fill out the form and click Submit. After submitting the form, you will recieve an email with a link to confirm your registration. By clicking on that link, you will complete the registration process.</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <fieldset>
        <legend></legend>
   
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
   
        <br />
   
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
        <br />
    
        <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="UserName" runat="server" ></asp:TextBox>
   
        <br />
   
        <asp:Label ID="Label4" runat="server" Text="Email Address"></asp:Label>
        <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
   
        <br />
   
        <asp:Label ID="Label5" runat="server" Text="Confirm Email"></asp:Label>
        <asp:TextBox ID="ConfirmEmail" runat="server"></asp:TextBox>
   
        <br />
   
        <asp:Label ID="Label6" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="Password" runat="server"></asp:TextBox>
   
        <br />
   
        <asp:Label ID="Label7" runat="server" Text="Confirm Password"></asp:Label>
        <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
           
         <br />
        <br />
           
         <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
    </fieldset>
   
       
  
</asp:Content>

