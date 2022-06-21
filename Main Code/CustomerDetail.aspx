<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDetail.aspx.cs" Inherits="StockManagementSystems.CustomerDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="server">
    <link id="Link1" href="Styles.css" type="text/css" rel="Stylesheet" runat="server"/>
    <h1>Customer Information</h1>
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
    font-size:15px;
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
    <table class="TableBody">
        <tr>
            <td>
                <asp:Label ID="name" runat="server" CssClass="text">Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="nameTxt" runat="server" placeholder="Your Full Name" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="mobile" runat="server" CssClass="text">Mobile Contact:</asp:Label>
            </td>
            <td>
                <asp:TextBox TextMode="Number" runat="server" placeholder="Active Number" ID="contact" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="type" runat="server" CssClass="text">Type: </asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="customerType" runat="server" CssClass="select">
                <asp:ListItem>--Select Unit--</asp:ListItem> 
                   <asp:ListItem>Cutomer</asp:ListItem>
                   <asp:ListItem>Supplier</asp:ListItem>
                   <asp:ListItem>Employee</asp:ListItem>
            </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="address" runat="server" CssClass="text">Address: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CAddress" TextMode="MultiLine" placeholder="Current Residensial Address" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="remark" runat="server" CssClass="text">Remark: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CRemark" runat="server" TextMode="MultiLine" placeholder="Remark here" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="company" runat="server" CssClass="text">Company Name: </asp:Label>
            </td>
            <td>
                <asp:TextBox ID="CusCompany" runat="server" placeholder="Your Company Name" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="save" Text="Save Info" runat="server" OnClick="save_Click" CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="grdvr" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Customer ID" />
                        <asp:BoundField DataField="names" HeaderText="Customer Name" />
                        <asp:BoundField DataField="mobile" HeaderText="Customer Contact" />
                        <asp:BoundField DataField="types" HeaderText="Customer Type" />
                        <asp:BoundField DataField="addre" HeaderText="Customer Address" />
                        <asp:BoundField DataField="remark" HeaderText="Customer Remarks" />
                        <asp:BoundField DataField="company" HeaderText="Customer Company" />
                    </Columns>
                     <FooterStyle BackColor="#678983" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#678983" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#678983" HorizontalAlign="Center" />
                    <RowStyle ForeColor="#678983" BackColor="#FFF7E7" />
                    <SelectedRowStyle BackColor="#678983" Font-Bold="True" ForeColor="White" Font-Size="X-Large" />
                    <SortedAscendingCellStyle BackColor="#678983" />
                    <SortedAscendingHeaderStyle BackColor="#678983" />
                    <SortedDescendingCellStyle BackColor="#678983" />
                    <SortedDescendingHeaderStyle BackColor="#678983" />
                    </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

