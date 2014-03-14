<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="StudentEnrollment.aspx.cs" Inherits="FormSamples_StudentEnrollment" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <h1>Student Enrollment</h1>
    <blockquote style="font-style: italic">
        This illustrates some simple controls to enroll a student in a particular 
        course.
    </blockquote>
    <p>
        Fill out the following form and click Submit.
    </p>
    <fieldset>
        <legend></legend>
        <asp:Label ID="lblFirstName" runat="server" AssociatedControlID="FirstName" Text="First Name"></asp:Label>
        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>

        <asp:Label ID="lblLastName" runat="server" AssociatedControlID="LastName" Text="Last Name"></asp:Label>
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>

        <asp:Label ID="lblMiddleName" runat="server" AssociatedControlID="MiddleName" Text="Middle Name"></asp:Label>
        <asp:TextBox ID="MiddleName" runat="server"></asp:TextBox>

        <asp:Label ID="lblSocialInsuranceNumber" runat="server" AssociatedControlID="SocialInsuranceNumber" Text="Social Insurance Number"></asp:Label>
        <asp:TextBox ID="SocialInsuranceNumber" runat="server"></asp:TextBox>

        <asp:Label ID="lblDateOfBirth" runat="server" AssociatedControlID="DateOfBirth" Text="Date of Birth"></asp:Label>
        <asp:TextBox ID="DateOfBirth" runat="server"></asp:TextBox>

        <asp:Label ID="lblProgramOfStudy" runat="server" AssociatedControlID="ProgramOfStudy" Text="Program of Study"></asp:Label>
        <asp:DropDownList ID="ProgramOfStudy" runat="server">
            <asp:ListItem Value="DMIT">Digital Media and Information Technology</asp:ListItem>
            <asp:ListItem>Business</asp:ListItem>
            <asp:ListItem Value="Dental">Dental Hygene</asp:ListItem>
            <asp:ListItem Value="EMT">Emergency Medial Technician</asp:ListItem>
        </asp:DropDownList>

        <asp:Label ID="lblSchoolYear" runat="server" AssociatedControlID="SchoolYear" Text="Starting School Year"></asp:Label>
        <asp:DropDownList ID="SchoolYear" runat="server">
        </asp:DropDownList>
    </fieldset>
    <p>
        <asp:LinkButton ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click" />
        <asp:LinkButton ID="ClearForm" runat="server" Text="Clear Form" OnClick="ClearForm_Click" CausesValidation="false" />
    </p>
    <p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="FormResults" runat="server" />
    </p>
</asp:Content>

