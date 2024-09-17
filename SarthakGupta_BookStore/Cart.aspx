<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="SarthakGupta_BookStore.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Your Shopping Cart</title>
    <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="Content/style.css"="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Your shopping cart</h2>
            <div class="row">
                <div class="col-md-8">
                    <asp:ListBox ID="ShoppingCartListBox" runat="server" CssClass="form-control" Height="150px">

                    </asp:ListBox>
                </div>
                <div class="col-md-4">
                    <asp:Button ID="RemoveItemButton" runat="server" Text="Remove Item" CssClass="btn btn-danger mb-2 btn-block" />
                    <asp:Button ID="EmptyCartButton" runat="server" Text="Empty Cart" CssClass="btn btn-warning mb-2 btn-block" />
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <asp:Button ID="ContinueShoppingButton" runat="server" Text="Continue Shopping" CssClass="btn btn-primary btn-block" />
                </div>
                <div class="col-md-6">
                    <asp:Button ID="CheckOutButton" runat="server" Text="Check Out" CssClass="btn btn-success btn-block" />
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (jQuery and Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>