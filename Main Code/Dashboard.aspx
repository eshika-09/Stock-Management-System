<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StockManagementSystems.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content1" runat="server">
    <link id="Link1" href="Styles.css" type="text/css" rel="Stylesheet" runat="server"/>
     <style>
        .btn {
             /*display: inline-block;
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
    color:#F0E9D2;*/
              display: inline-block;
  border-radius: 10px;
  font-weight: bold;
  color:#F0E9D2;
  background-color: #678983;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
        }
    </style>
    <br />
     <br />
     <br />
   <center>
     <table class="TableBody">
        <tr>
            <td>
                <asp:Button ID="admin" runat="server" OnClick="admin_Click" Text="Admin" CssClass="btn" />
            </td>
            <td>
                <asp:Button ID="bill" runat="server" OnClick="bill_Click" Text="Bill" CssClass="btn" />
            </td>
            <td>
                <asp:Button ID="contacts" runat="server" OnClick="contacts_Click" Text="Contacts" CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="item" runat="server" OnClick="item_Click" Text="Item" CssClass="btn"/>
            </td>
            <td>
                <asp:Button ID="Category" runat="server" OnClick="Category_Click" Text="Category" CssClass="btn"/>
            </td>
            <td>
                <asp:Button ID="Email" runat="server" OnClick="Email_Click" Text="Email" CssClass="btn"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="brand" runat="server" OnClick="brand_Click" Text="Brand" CssClass="btn"/>
            </td>
            <td>
                <asp:Button ID="in" runat="server" OnClick="in_Click" Text="In-stock" CssClass="btn"/>
            </td>
             <td>
                <asp:Button ID="out" runat="server" OnClick="out_Click" Text="Out-stock" CssClass="btn"/>
            </td>
        </tr>
    </table>
          </center>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
