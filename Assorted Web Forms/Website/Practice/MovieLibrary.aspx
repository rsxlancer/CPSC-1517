<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="MovieLibrary.aspx.cs" Inherits="MovieLibrary" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div>

        <h1>Movie Library</h1>
        <p>
            Fill out the form below to add information on the movie for your movie library.
        </p>
        <fieldset>
            <legend></legend>
            <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
            <asp:TextBox ID="MovieTitle" runat="server" Width="338px"></asp:TextBox>

            <asp:Label ID="Label2" runat="server" Text="Year"></asp:Label>
            <asp:TextBox ID="Year" runat="server" Width="88px"></asp:TextBox>

            <asp:Label ID="Label3" runat="server" Text="Media"></asp:Label>
            <asp:RadioButtonList ID="MediaTypes" runat="server" RepeatLayout="Flow">
                <asp:ListItem>DVD</asp:ListItem>
                <asp:ListItem>VHS</asp:ListItem>
                <asp:ListItem>File</asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label ID="Label4" runat="server" Text="Rating"></asp:Label>
            <asp:RadioButtonList ID="RatingTypes" runat="server" RepeatLayout="Flow" RepeatColumns="2"
                RepeatDirection="Horizontal">
                <asp:ListItem Value="G">General (G)</asp:ListItem>
                <asp:ListItem Value="PG">Parental Guidance (PG)</asp:ListItem>
                <asp:ListItem>14A</asp:ListItem>
                <asp:ListItem>18A</asp:ListItem>
                <asp:ListItem Value="R">Restricted (R)</asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label ID="Label5" runat="server" Text="Review (1-5 Stars)"></asp:Label>
            <asp:DropDownList ID="Review" runat="server" Height="16px" Width="88px">
                <asp:ListItem Value="1">1 Star</asp:ListItem>
                <asp:ListItem Value="2">2 Stars</asp:ListItem>
                <asp:ListItem Value="3">3 Stars</asp:ListItem>
                <asp:ListItem Value="4">4 Stars</asp:ListItem>
                <asp:ListItem Value="5">5 Stars</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" Text="ISBN"></asp:Label>
            <asp:TextBox ID="ISBN" runat="server"></asp:TextBox>
            <asp:LinkButton ID="SearchOnline" runat="server">Search Online for DVD</asp:LinkButton>
        </fieldset>
        <p>
            <asp:LinkButton ID="AddToLibrary" runat="server">Add to Library</asp:LinkButton>
        </p>
    </div>
</asp:Content>

