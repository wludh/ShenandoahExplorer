<%@ Page Title="" Language="C#" MasterPageFile="~/Application.Master" AutoEventWireup="true" CodeBehind="Explore.aspx.cs" Inherits="VS2015Test.Explore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="about" class="jumbotron">
        <h1>Explore</h1>
        <p>
            Contents...
        </p>
        <ul>
            <li><a href="Index.aspx">Browse</a></li>
            <li><a href="Search.aspx">Search</a></li>
            <li><a href="Visualize.aspx">Visualize</a></li>         
        </ul>
    </div>
</asp:Content>
