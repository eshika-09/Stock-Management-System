<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="StockManagementSystems.Contact" %>

<asp:Content runat="server" ID="Content1" ContentPlaceHolderID="Content1">
    <link id="Link1" href="Styles.css" type="text/css" rel="Stylesheet" runat="server"/>
   <hgroup class="title">
        <h1>Contact Page</h1>
        <h2>Your contact page.</h2>
 </hgroup>

    <section class="contact">
        <header>
            <h3>Phone:</h3>
        </header>
        <p>
            <span class="label">Main:</span> 7382928390</p>
        <p>
            <span class="label">After Hours:</span>
            9381067304
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Email:</h3>
        </header>
        <p>
            <span class="label">Support:</span>
            <span><a href="mailto:Support@example.com">Support@abcexample.com</a></span>
        </p>
        <p>
            <span class="label">Marketing:</span>
            <span><a href="mailto:Marketing@example.com">Marketing@abcexample.com</a></span>
        </p>
        <p>
            <span class="label">General:</span>
            <span><a href="mailto:General@example.com">General@abcexample.com</a></span>
        </p>
    </section>

    <section class="contact">
        <header>
            <h3>Address:</h3>
        </header>
        <p>
            ABC Pvt. ltd<br />
            Greater Noida, UP 98052-6399
        </p>
    </section>
</asp:Content>


