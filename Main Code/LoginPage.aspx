<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="StockManagementSystems.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="server">
        <link id="Link1" href="Styles.css" type="text/css" rel="Stylesheet" runat="server"/>
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
</style>
    <title>Login Page</title>

        <h1>Login Form</h1>
        <table class="TableBody">
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="username" placeholder="Username" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <asp:TextBox ID="pass" placeholder="Password" TextMode="Password" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="loginBtn button1">
                    <asp:Button ID="login" text="Login" runat="server" OnClick="login_Click" CssClass="btn" />
                </td>
            </tr>
<tr>
                 <td>
                    <asp:HyperLink ID="link" runat="server" Text="Don't have an Account?" NavigateUrl="SignUp.aspx" ForeColor="BlanchedAlmond" BackColor="#678983"></asp:HyperLink>
                </td>
            </tr>
             <tr>
                <td>
                    <p>
                       <asp:Label ID="error" runat="server" CssClass="text"></asp:Label>
                   </p>
                </td>
            </tr>
        </table>
        </asp:Content>
