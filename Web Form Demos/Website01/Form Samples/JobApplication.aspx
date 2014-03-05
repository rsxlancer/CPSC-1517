<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="JobApplication.aspx.cs" Inherits="Form_Samples_JobApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1>Job Application</h1>
    <p>
        Fill out the following form and click Submit to apply for the listed job(s)</p>
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <fieldset>
        <legend></legend>
        <asp:Label ID="Label1" runat="server" Text="Name:" AssociatedControlID="FullName"></asp:Label>
        <asp:TextBox ID="FullName" runat="server"></asp:TextBox>

         <asp:Label ID="Label2" runat="server" Text="Email:" AssociatedControlID="Email"></asp:Label>
        <asp:TextBox ID="Email" runat="server"></asp:TextBox>

         <asp:Label ID="Label3" runat="server" Text="Phone:" AssociatedControlID="Phone"></asp:Label>
        <asp:TextBox ID="Phone" runat="server"></asp:TextBox>

        <asp:Label ID="Label4" runat="server" Text="Full/Part Time:" AssociatedControlID="FullOrPartTime"></asp:Label>
        <asp:RadioButtonList ID="FullOrPartTime" runat="server">
            <asp:ListItem>Full Time</asp:ListItem>
            <asp:ListItem>PartTime</asp:ListItem>
        </asp:RadioButtonList>
        <p></p>

        <asp:Label ID="Label5" runat="server" Text="Jobs:" AssociatedControlID="Jobs"></asp:Label>
        <asp:CheckBoxList ID="Jobs" runat="server">
            <asp:ListItem>Sales</asp:ListItem>
            <asp:ListItem>Manufacturing</asp:ListItem>
            <asp:ListItem>Accounting</asp:ListItem>
            <asp:ListItem>Shipping/Recieving</asp:ListItem>
        </asp:CheckBoxList>
    </fieldset>

    <p>
        <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
    </p>
</asp:Content>

