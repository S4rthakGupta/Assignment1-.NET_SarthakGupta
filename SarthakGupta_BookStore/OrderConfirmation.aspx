<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="OrderConfirmation.aspx.cs" Inherits="SarthakGupta_BookStore.OrderConfirmation" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<!-- Giving Reference from Site.MasterPage. -->

    <div class="container mt-5 text-center">
        <div class="row">
            <div class="col-12">
                <h1>Thank you for your order!</h1>
                <p class="lead">Your order has been placed successfully. We will notify you once it has been shipped.</p>
                <img src="Images/order_success.png" alt="Order Success" class="img-fluid" />
                <div class="mt-4">
                    <!-- This button redirects the user to the products page. -->
                    <asp:Button ID="BackToHomeButton" runat="server" Text="Explore more Books" CssClass="btn btn-primary" PostBackUrl="~/Product.aspx" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
