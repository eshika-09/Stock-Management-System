<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Out-Stock.aspx.cs" Inherits="StockManagementSystems.Out_Stock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="content1" runat="server">
    <h2>
        OUT-STOCK DETAIL
    </h2>
    <asp:GridView ID="grdvr" runat="server">
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
</asp:Content>