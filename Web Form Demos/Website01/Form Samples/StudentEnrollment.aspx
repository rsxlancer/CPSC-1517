<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="StudentEnrollment.aspx.cs" Inherits="Form_Samples_StudentEnrollment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1>Student Enrollment</h1>
    <p>
        Fill&nbsp; out the following form and click Submit</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Middle Name"></asp:Label>
        <asp:TextBox ID="MiddleName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="SIN Number"></asp:Label>
        <asp:TextBox ID="SIN" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Date Of Birth"></asp:Label>
        <asp:TextBox ID="DateOfbirth" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Program Of Study"></asp:Label>
        <asp:DropDownList ID="Program" runat="server">
            <asp:ListItem>Business</asp:ListItem>
            <asp:ListItem>Computer Engineering Technology</asp:ListItem>
            <asp:ListItem>Dental Hygene</asp:ListItem>
            <asp:ListItem>Digital Media and IT</asp:ListItem>
            <asp:ListItem>Emergency Medical Technician</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Starting School Year"></asp:Label>
        <asp:DropDownList ID="Year" runat="server">
            <asp:ListItem>2010</asp:ListItem>
            <asp:ListItem>2011</asp:ListItem>
            <asp:ListItem>2012</asp:ListItem>
            <asp:ListItem>2013</asp:ListItem>
            <asp:ListItem>2014</asp:ListItem>
            <asp:ListItem>2015</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
    </p>
</asp:Content>

