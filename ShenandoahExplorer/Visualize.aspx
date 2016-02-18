<%@ Page Title="" Language="C#" MasterPageFile="~/Application.Master" AutoEventWireup="true" CodeBehind="Visualize.aspx.cs" Inherits="VS2015Test.Visualize" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="scripts/d3/d3.min.js"></script>
    <link rel="stylesheet" href="Visualize.css" />
    <script src="Visualize.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="about" class="jumbotron">
        <h1>Visualize</h1>
        <p>
            Contents...
        </p>
        <div id="controls">
            Add Issue: <select id="issueSelect"></select>
            Add Editor: <select id="editorSelect"></select>
            Add Author: <select id="authorSelect"></select>
        </div>
    </div>
    <div id="canvas"></div>
    <div id="details"></div>
</asp:Content>
