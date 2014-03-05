<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="CDLibrary.aspx.cs" Inherits="CDLibrary" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div>
    
        <h1>
            CD Library</h1>
        <p>
            Fill the form below to add a music CD to your personal library.</p>
        <fieldset>
            <legend></legend>
            <asp:Label ID="Label5" runat="server" Text="ISBN (Barcode)"></asp:Label>
            <asp:TextBox ID="ISBN" runat="server" Width="250px"></asp:TextBox>
            <asp:LinkButton ID="SearchOnline" runat="server">Search Online for CD</asp:LinkButton>

            <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="CDTitle" runat="server" Width="250px"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Artist(s)"></asp:Label>
            <asp:TextBox ID="Artists" runat="server" Rows="4" TextMode="MultiLine" 
                Width="250px"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Year"></asp:Label>
            <asp:TextBox ID="Year" runat="server" Width="50px"></asp:TextBox>
            <asp:Label ID="Label4" runat="server" Text="Number of Tracks"></asp:Label>
            <asp:TextBox ID="TrackCount" runat="server" Width="50px"></asp:TextBox>
        </fieldset>
         <br />
        <asp:LinkButton ID="AddToLibrary" runat="server">Add to Library</asp:LinkButton>
    </div>
</asp:Content>

