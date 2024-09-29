<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SarthakGupta_BookStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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

        <div class="form-section">
            <div class="form-group">
                <label for="firstName">First Name: <span class="required">*</span></label>
                <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" placeholder="Enter first name" />
                <span id="firstNameError" class="error"></span>
            </div>
            <div class="form-group">
                <label for="lastName">Last Name: <span class="required">*</span></label>
                <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control" placeholder="Enter last name" />
                <span id="lastNameError" class="error"></span>
            </div>


            <div class="btn-group-custom">
                <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="login-btn mr-2" PostBackUrl="~/Login.aspx" />
                <asp:Button ID="CancelOrderButton" runat="server" Text="Cancel Order" CssClass="cancel-btn mr-2" PostBackUrl="~/Cart.aspx" />
            </div>
    </form>
</body>
</html>
