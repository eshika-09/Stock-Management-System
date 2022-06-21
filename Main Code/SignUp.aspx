<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StockManagementSystems.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="server">
    <link href="Styles.css" rel="stylesheet" runat="server"/>
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

<br />
    <br />
    <br />
    <table class="TableBody">
        <tr>
            <td class="text">
                Username: 
            </td>
            <td>
                <asp:TextBox ID="username" placeholder="Username" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td class="text">
                Password: 
            </td>
            <td>
                <asp:TextBox ID="pass" placeholder="Password" TextMode="Password" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="signup" Text="Sign Up"  runat="server" OnClick="signup_Click" CssClass="btn" />
            </td>
        </tr>
    </table>
</asp:Content>
