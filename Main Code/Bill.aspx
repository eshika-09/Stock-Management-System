<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="StockManagementSystems.Bill" %>
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
  font-size: 20px;
    font-family: sans-serif;
    padding:20px;
}
        .addbtn {
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
    <table class="TableBody" > <%--MAKE A TABLE TAG TO FILL IN THE ROWS AND COLOUMNS--%>
        <tr> <%--GIVE THE TABLE ROW 'TR' TAG--%>
            <td> <%--GIVE THE TABLE DATA 'TD' TAG--%>
                <asp:Label ID="Name" runat="server" CssClass="text">Your Name: </asp:Label>
                <asp:TextBox ID="CName" runat="server" CssClass="textbox" placeholder="Full Name"></asp:TextBox>
                </td>
            <td>
                &nbsp;</td>
                
        </tr>
        <tr>
            <td>
                <asp:Label ID="Ctype" runat="server" CssClass="text">User Type:</asp:Label>
                <asp:DropDownList ID="type" runat="server" CssClass="select">
                    <asp:ListItem>Customer</asp:ListItem>
                    <asp:ListItem>Supplier</asp:ListItem>
                </asp:DropDownList>
                            </td>
        </tr>
        <tr>
           <td>
       <asp:Label ID="name_item" runat="server" CssClass="text">Item Name: </asp:Label>
                <asp:TextBox ID="item_name" runat="server" placeholder="Enter the Item you want" CssClass="textbox"></asp:TextBox>
        </td>
            <td>
        <asp:Label ID="item_cate" runat="server" Text="Category:" CssClass="text"></asp:Label>
        </td>
            <td>
        <asp:Label ID="item_brand" runat="server" Text="Brand" CssClass="text"></asp:Label>
    </td>
    <td>
        <asp:Label ID="item_tax" runat="server" Text="Tax" CssClass="text"></asp:Label>
    </td>
    <td >
        &nbsp;</td>
     <td>
         &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                <asp:DropDownList ID="category" runat="server" CssClass="select"></asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="brand_name" runat="server" CssClass="select"></asp:DropDownList>
            </td>
            <td>
                <asp:TextBox ID="tax" runat="server" placeholder="Enter Tax Applied" CssClass="textbox"></asp:TextBox>            
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
        <asp:Label ID="cost" runat="server" Text="Price" CssClass="text"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="price" runat="server" placeholder="Enter Price for Item Selected" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
        <asp:Label ID="item_quant" runat="server" Text="Quantity." CssClass="text"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="quant" runat="server" placeholder="Enter the number of Items" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
        <asp:Label ID="item_total" runat="server" Text="Total" CssClass="text"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="total" placeholder="Total is displayed here" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td style="width: 363px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="add" Text="Add" runat="server" OnClick="add_Click" CssClass="addbtn" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
         
        <tr>
            <td>
                <asp:GridView ID="grdvr" runat="server" AutoGenerateColumns="False" BackColor="#678983" BorderColor="#DEBA84" BorderStyle="Double" BorderWidth="1px" CellPadding="3" CssClass="grid" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="bill_id" HeaderText="Bill ID" />
                        <asp:BoundField DataField="names" HeaderText="User Name" />
                        <asp:BoundField DataField="type" HeaderText="User Type" />
                        <asp:BoundField DataField="item_name" HeaderText="Item Name" />
                        <asp:BoundField DataField="category" HeaderText="Item Category" />
                        <asp:BoundField DataField="brand_name" HeaderText="Brand Name" />
                        <asp:BoundField DataField="tax" HeaderText="Tax Applied" />
                        <asp:BoundField DataField="price" HeaderText="Item Price" />
                        <asp:BoundField DataField="quant" HeaderText="Quantity" />
                        <asp:BoundField DataField="total" HeaderText="Total" />
                        
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

</asp:Content>
