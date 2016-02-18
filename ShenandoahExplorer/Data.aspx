<%@ Page Title="" Language="C#" MasterPageFile="~/Application.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="VS2015Test.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="about" class="jumbotron pageDiv">
        <h1>Data</h1>
        <p>
            Contents...
        </p>
        <ul>
            <li><a href="RDF.aspx">RDF</a></li>
            <li><a href="SPRQL.aspx">SPRQL</a></li>
        </ul>
    </div>
</asp:Content>
