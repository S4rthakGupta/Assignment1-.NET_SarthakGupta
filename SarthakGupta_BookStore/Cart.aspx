<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Cart.aspx.cs" Inherits="SarthakGupta_BookStore.Cart" %>


<asp:Content ContentPlaceHolderID="MainContent" runat="server">  

    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <img src="Images/banner.jpg" class="card-img-top cart" alt="Banner Image">
                </div>
            </div>
        </div>
    </div>

        <div class="container mt-2">
            <h2>Your Shopping Cart</h2>
            <div class="row">
                <div class="col-md-8">
                    <asp:ListBox ID="ShoppingCartListBox" runat="server" CssClass="form-control" Height="150px"></asp:ListBox>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="RemoveItemButton" OnClick="btnRemove_Click" runat="server" Text="Remove Item" CssClass="remove-btn mb-2 btn-block" />
                    <asp:Button ID="EmptyCartButton" OnClick="EmptyCartButton_Click" runat="server" Text="Empty Cart" CssClass="empty-btn mb-2 btn-block" />
                </div>
            </div>

            <!-- Adding Buttons for the user to be redirected. -->
            <div class="row mt-3">
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False" CssClass="text-info col-sm-12"></asp:Label>
                <div class="col-md-6">
                    <asp:Button ID="ContinueShoppingButton" PostBackUrl="~/Product.aspx" runat="server" Text="Continue Shopping" CssClass="navy-btn btn-block" />
                </div>
                <div class="col-md-6">
                    <asp:Button ID="CheckOutButton" runat="server" PostBackUrl="~/Checkout.aspx" Text="Check Out" CssClass="navy-btn btn-block" />
                </div>
            </div>
        </div>


    <!-- Bootstrap JS and dependencies (jQuery and Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</asp:Content>