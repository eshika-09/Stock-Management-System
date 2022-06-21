<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ad_Item.aspx.cs" Inherits="StockManagementSystems.Ad_Item" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="server">
    <link href="Styles.css" type="text/css" rel="Stylesheet" runat="server"/>
    <h2>Add Your Item!!</h2>
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
    <center>
   <table class="TableBody">
       <tr>
           <td>
               &nbsp;</td>
       </tr>
       <tr>
           <td>
               Write the Item ID to Delete or Edit in the box below
           </td>
           <td>
               <asp:Label ID="category" runat="server" CssClass="text">Select Category:</asp:Label>
           </td>
           <td rowspan="1">
               <asp:DropDownList ID="CategoryList" runat="server" CssClass="select"></asp:DropDownList>
           </td>
           <td rowspan="1">
               &nbsp;</td>
       </tr>
       <%--<tr>
           <td rowspan="5">
               <asp:ListBox ID="LBitem" runat="server" Height="193px" Width="180px"></asp:ListBox>
           </td>
           <td>
               &nbsp;</td>
       </tr>--%>
       <tr>
           <td>
               <asp:TextBox ID="txt" runat="server" CssClass="textbox"></asp:TextBox>
           </td>
           <td>
               <asp:Label ID="brand" runat="server" CssClass="text">Select Brand: </asp:Label>
           </td>
           <td>
               <asp:DropDownList ID="ItemBrndList" runat="server" CssClass="select"></asp:DropDownList>
           </td>
       </tr>
       <tr>
                      <td>
                          &nbsp;
                      </td>
           <td>
               <asp:Label ID="name" runat="server" CssClass="text">Item Name: </asp:Label>
            <td>
               <asp:TextBox ID="ItemName" runat="server" CssClass="textbox"></asp:TextBox>
           </td>
           <td style="width: 111px">
               &nbsp;</td>
          
       </tr>
       <tr>
           <td>
               <asp:Button ID="edit" Text="Edit" runat="server" OnClick="edit_Click" CssClass="btn" />
               </td>
           <td>
                    <asp:Label ID="unit" runat="server" CssClass="text">Unit: </asp:Label>
           </td>
           <td>
                    <asp:DropDownList ID="unitDDL" runat="server" CssClass="select">
                   <asp:ListItem>--Select Unit--</asp:ListItem> 
                   <asp:ListItem>METER</asp:ListItem>
                   <asp:ListItem>FT</asp:ListItem>
                   <asp:ListItem>LITER</asp:ListItem>
                   <asp:ListItem>BAG</asp:ListItem>
                   <asp:ListItem>KG</asp:ListItem>
               </asp:DropDownList>
           </td>
       </tr>
       <tr>
           <td style="width: 111px">
               &nbsp;</td>
               <td>
               <asp:Label ID="tax" runat="server" CssClass="text">Tax: </asp:Label>
               </td>
              <td>
               <asp:TextBox ID="taxTxt" runat="server" CssClass="textbox"></asp:TextBox>
              </td>           
       </tr>
        <tr>
            <td>
               <asp:Button ID="delete" Text="Delete" runat="server" OnClick="delete_Click" CssClass="btn"/>
               </td>
            <td>
               &nbsp;</td>
            
                <td>
               <asp:Button ID="save" Text="Save" runat="server" OnClick="save_Click" CssClass="btn"/>
                    </td>
            </tr>
            <tr>
            <td>
                <asp:GridView ID="grdvr" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="368px">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="Item ID" />
                        <asp:BoundField DataField="category" HeaderText="Category" />
                        <asp:BoundField DataField="brand_name" HeaderText="Brand Name" />
                        <asp:BoundField DataField="item_name" HeaderText="Item Name" />
                        <asp:BoundField DataField="unit" HeaderText="Unit" />
                        <asp:BoundField DataField="tax" HeaderText="Tax" />
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
