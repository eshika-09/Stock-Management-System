<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="StockManagementSystems.Category" %>
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
    <center>
        <table class="TableBody">
            <tr>
                <td class="text">
                    Category:
                </td>
                <td>
                    <asp:TextBox ID="category" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="save" Text="Save Category" runat="server" OnClick="save_Click" CssClass="btn" />
                </td>
            </tr>
 <tr>
                <td colspan="4">
                    <br />
                <asp:GridView ID="grdvr" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="User ID" />
                        <asp:BoundField DataField="category" HeaderText="Category" />
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
</asp:Content>
