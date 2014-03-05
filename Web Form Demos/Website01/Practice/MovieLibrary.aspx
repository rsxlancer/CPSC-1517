<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="MovieLibrary.aspx.cs" Inherits="Practice_MovieLibrary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <h1>Movie Library</h1>
    <p>
        Fill out the form to add a movie to your personal library</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
   <fieldset>
       <legend></legend>
    
        <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
        <asp:TextBox ID="MovieTitle" runat="server"></asp:TextBox>
    
        <br />
    
        <asp:Label ID="Label2" runat="server" Text="Year"></asp:Label>
        <asp:TextBox ID="Year" runat="server"></asp:TextBox>
    
        <br />
       <br />
       <br />
    
        <asp:Label ID="Label3" runat="server" Text="Media"></asp:Label>
        <asp:RadioButtonList ID="Media" runat="server">
            <asp:ListItem>DVD</asp:ListItem>
            <asp:ListItem>VHS</asp:ListItem>
            <asp:ListItem>File</asp:ListItem>
        </asp:RadioButtonList>
    
    
        <br />
       <br />
    
    
        <asp:Label ID="Label4" runat="server" Text="Rating"></asp:Label>
        <asp:RadioButtonList ID="Rating" runat="server">
            <asp:ListItem>General(G)</asp:ListItem>
            <asp:ListItem>Parental Guidance(PG)</asp:ListItem>
            <asp:ListItem>14A</asp:ListItem>
            <asp:ListItem>18A</asp:ListItem>
            <asp:ListItem>Resricted(R)</asp:ListItem>
        </asp:RadioButtonList>
    

        <asp:Label ID="Label5" runat="server" Text="Review(1-5 Stars)"></asp:Label>
        <asp:DropDownList ID="Review" runat="server">
            <asp:ListItem>1 Star</asp:ListItem>
            <asp:ListItem>2 Star</asp:ListItem>
            <asp:ListItem>3 Star</asp:ListItem>
            <asp:ListItem>4 Star</asp:ListItem>
            <asp:ListItem>5 Star</asp:ListItem>
        </asp:DropDownList>
    
        <br />
    
        <asp:Label ID="Label6" runat="server" Text="ISBN(Barcode)"></asp:Label>
        <asp:TextBox ID="ISBN" runat="server"></asp:TextBox>

       <br />
       <br />

    <asp:LinkButton ID="Submit" runat="server">Submit</asp:LinkButton>
   </fieldset>
   
        
   
</asp:Content>

