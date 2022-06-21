<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="StockManagementSystems.Logout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="server">
        <link href="Styles.css" type="text/css" rel="Stylesheet" runat="server"/>
    <style>
        .text {
             padding:5px;
    height: 30px;
    position: relative;
    font-size: 20px;
    text-transform:uppercase;
    font-family: sans-serif;
        }
        .textbox {
	border: 1px solid #848484;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
	width: 285px;
  height: 60px;
    font-family: sans-serif;
    padding:20px;
}
        .btn {
            display: inline-block;
    text-align: center;
    font-weight: bold;
    padding: 10px 10px 10px;
    line-height: 1;
    border-radius: 1rem;
    position: relative;
    min-width: 10px;
    font-family: var(--font);
    font-size: large;
    background-color:#678983;
    color:#F0E9D2;
        }
        .select {
             width: 285px;
  height: 60px;
  -webkit-border-radius: 30px;
	-moz-border-radius: 30px;
  font-family: var(--font);
    font-size: medium;
         }
    </style>
    <h1>Thank you for visiting our page! </h1>
    <asp:Button ID="logoutButton" runat="server" OnClick="logoutButton_Click" Text="Logout" CssClass="btn"/>
</asp:Content>
