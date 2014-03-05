<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="FormSamples_About" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <h1>Form Mockups</h1>
    <p>
        <a href="ContestEntry.aspx"><img alt="Contest Entry Mockup" class="auto-style1" src="Mockups/Data%20Entry%202%20-%20Contest%20Entry.png" /></a></p>
    <p>
        <a href="CreateBankAccount.aspx"><img alt="Bank Account Mockup" class="auto-style2" src="Mockups/Data%20Entry%202%20-%20Create%20Bank%20Account.png" /></a></p>
    <p>
        <a href="JobApplication.aspx"><img alt="Job Application Mockup" class="auto-style3" src="Mockups/Data%20Entry%202%20-%20Job%20Application.png" /></a></p>
    <p>
        <a href="StudentEnrollment.aspx"><img alt="Student Enrollment Mockup" class="auto-style4" src="Mockups/Data%20Entry%202%20-%20Student%20Enrollment.png" /></a></p>

    <%--Note: Move to a Head ContentPlaceholder, if present--%>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <script>$(function () { $('<br />').insertBefore('fieldset label'); });</script>
    <style type="text/css">
        .auto-style1
        {
            width: 514px;
            height: 434px;
        }
        .auto-style2
        {
            width: 420px;
            height: 301px;
        }
        .auto-style3
        {
            width: 440px;
            height: 396px;
        }
        .auto-style4
        {
            width: 482px;
            height: 453px;
        }
    </style>
</asp:Content>

