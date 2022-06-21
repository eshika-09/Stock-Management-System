<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Email.aspx.cs" Inherits="StockManagementSystems.Email" %>
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

<div class="TableBody">
    <br />
    <br />
        <table class="TableBody">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="to:" CssClass="text"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="cc:" CssClass="text"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="bcc:" CssClass="text"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="subject:" CssClass="text" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Messege:" CssClass="text"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="btn" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Send Mail" OnClick="Button1_Click" CssClass="btn" />
                </td>
            </tr>
        </table>
    <br />
    <table class="TableBody">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label6" runat="server" Text="Configure your email id" CssClass="text"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label7" runat="server" Text="Email id:" CssClass="text"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" CssClass="textbox" placeholder="abc@gmail.com"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label8" runat="server" Text="Password:" CssClass="text"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Send Email" CssClass="btn"/>
                </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grdvr" runat="server"></asp:GridView>
            </td>
        </tr>
    </table>
    <br />
</div>
    </asp:Content>


