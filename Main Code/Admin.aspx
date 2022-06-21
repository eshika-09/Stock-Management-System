<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="StockManagementSystems.Admin" %>
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
    <br />
    <br />
    <br />
    <center>
    <table class="TableBody">
        <tr>
            <td>Username</td>
            
            <td>
                <asp:TextBox ID="username" runat="server" placeholder="Username" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>User ID</td>
            <td>
                <asp:TextBox ID="ID" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Default Password</td>
            <td>
                <asp:TextBox ID="pass" runat="server" TextMode="Password" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>User Grade</td>
            <td>
                <asp:DropDownList ID="grade" runat="server" CssClass="select">
                    <asp:ListItem Value="A">A grade</asp:ListItem>
                    <asp:ListItem Value="B">B grade</asp:ListItem>
                    <asp:ListItem Value="C">C grade</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="lblmsg" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="save" Text="Save" runat="server" OnClick="save_Click" CssClass="btn"/>
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" CssClass="btn" />
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" CssClass="btn" />
                
            </td>
        </tr>
        <tr>
             <asp:Label ID="alert" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
                 </tr>
        <tr>
                <td colspan="4">
                    <br />
                <asp:GridView ID="grdvr" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3"  >
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Sno." />
                        <asp:BoundField DataField="username" HeaderText="Username" />
                        <asp:BoundField DataField="user_id" HeaderText="User ID" />
                        <asp:BoundField DataField="password" HeaderText="Password" />
                        <asp:BoundField DataField="user_grade" HeaderText="User Grade" />
                    </Columns>
                    <FooterStyle BackColor="#678983" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#678983" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#678983" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#678983" BackColor="#FFF7E7" />
                    <SelectedRowStyle BackColor="#678983" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#678983" />
                    <SortedAscendingHeaderStyle BackColor="#678983" />
                    <SortedDescendingCellStyle BackColor="#678983" />
                    <SortedDescendingHeaderStyle BackColor="#678983" />
                </asp:GridView>
                    </td>
            </tr>
    </table>
        </center>
    <br />
    <br />
    <br />
</asp:Content>
