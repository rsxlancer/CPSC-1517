<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="JobApplication.aspx.cs" Inherits="FormSamples_JobApplication" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>
        Job Application</h1>
    <blockquote style="font-style: italic">
        This illustrates some simple controls to fill out an online job application.</blockquote>
    <p>
        Fill out the following form and click Submit to apply for the listed job(s).</p>
    <fieldset>
        <legend></legend>
        <asp:Label ID="lblFullName" runat="server" Text="Name" AssociatedControlID="FullName"></asp:Label>
        <asp:TextBox ID="FullName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First name is required" ControlToValidate="FullName"></asp:RequiredFieldValidator>

        <asp:Label ID="lblEmailAddress" runat="server" Text="Email" AssociatedControlID="EmailAddress"></asp:Label>
        <asp:TextBox ID="EmailAddress" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email must be in correct format" ControlToValidate="EmailAddress" ValidationExpression="\w+([-+.']\w)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone" AssociatedControlID="PhoneNumber"></asp:Label>
        <asp:TextBox ID="PhoneNumber" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone Number is Required" ControlToValidate="PhoneNumber" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Phone number must be in the following format: (###)###-####" ControlToValidate="PhoneNumber" Display="Dynamic" ValidationExpression="\(\d{3}\)\s?\d{3}-\d{4}"></asp:RegularExpressionValidator>

        <asp:Label ID="lblFullOrPartTime" runat="server" Text="Full/Part Time" AssociatedControlID="FullOrPartTime"></asp:Label>
        <asp:RadioButtonList ID="FullOrPartTime" runat="server" RepeatLayout="Flow" RepeatDirection="Horizontal" CssClass="inline-block">
            <asp:ListItem>Full time</asp:ListItem>
            <asp:ListItem>Part time</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="You must select full or part time" ControlToValidate="FullOrPartTime"></asp:RequiredFieldValidator>

		<%--
		<!-- Alternatively, you can use individual RadioButtons instead of a RadioButtonList, but it's good to put in a span -->
        <asp:Label ID="lblFullTime" runat="server" Text="Full/Part Time" AssociatedControlID="FullTime"></asp:Label>
        <span class="inline-block">
            <asp:RadioButton ID="FullTime" runat="server" Text="Full-Time" GroupName="FullPartTime" />
            <asp:RadioButton ID="PartTime" runat="server" Text="Part-Time" GroupName="FullPartTime" />
        </span>
		--%>

        <asp:Label ID="lblJobs" runat="server" Text="Jobs" AssociatedControlID="Jobs"></asp:Label>
        <asp:CheckBoxList ID="Jobs" runat="server" RepeatLayout="Flow" CssClass="inline-block-vertical">
            <asp:ListItem>Sales</asp:ListItem>
            <asp:ListItem>Manufacturing</asp:ListItem>
            <asp:ListItem>Accounting</asp:ListItem>
            <asp:ListItem>Shipping/Receiving</asp:ListItem>
        </asp:CheckBoxList>
    </fieldset>
    <p>
        <asp:LinkButton ID="Submit" runat="server" OnClick="Submit_Click">Submit</asp:LinkButton>
        <asp:LinkButton ID="ClearForm" runat="server" Text="Clear Form" OnClick="ClearForm_Click" CausesValidation="false" />
    </p>
    <p>
        <asp:Label ID="FormResults" runat="server" />
    </p>

</asp:Content>

