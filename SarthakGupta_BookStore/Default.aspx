<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SarthakGupta_BookStore.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | S4RTHAK Book Store</title>
    <!-- Adding a link of Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Adding a link of the external stylesheet for customization. -->
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
    <!-- Creating the Landing Page with an Image. -->
    <form id="form1" runat="server">

        <!-- Navigation bar as per the instructions. -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="Default.aspx">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="Product.aspx">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="Cart.aspx">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link font-weight-bold" href="Login.aspx">Cart</a>
                    </li>
                </ul>
            </div>
        </nav>

        <div class="container mt-4">
            <div class="row">
                <div class="col-12">
                    <div class="card shadow">
                        <img src="Images/banner.jpg" class="card-img-top" alt="Banner Image">
                    </div>
                </div>
            </div>
        </div>


        <!-- Adding a button which takes the user to the home page. -->
        <div class="btn-group-custom">
            <asp:Button ID="ContinueShoppingButton" runat="server" Text="Explore Books" CssClass="products-btn" PostBackUrl="~/Product.aspx" />
        </div>
    </form>

</body>
</html>
