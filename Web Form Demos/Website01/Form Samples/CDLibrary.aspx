<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CDLibrary.aspx.cs" Inherits="Form_Samples_CDLibrary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1>CD Library</h1>
    <p>
        Fill the form below to add a musoc CD to your Personal Library</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="ISBN"></asp:Label>
        <asp:TextBox ID="ISBN" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
        <asp:TextBox ID="AlbumTitle" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Artist(s)"></asp:Label>
        <asp:TextBox ID="Artist" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Year"></asp:Label>
&nbsp;<asp:TextBox ID="Year" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Number of Tracks"></asp:Label>
&nbsp;<asp:TextBox ID="NumberOfTracks" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
    </p>
</asp:Content>

