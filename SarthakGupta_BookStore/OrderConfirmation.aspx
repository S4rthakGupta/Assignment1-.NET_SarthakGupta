<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderConfirmation.aspx.cs" Inherits="SarthakGupta_BookStore.OrderConfirmation" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order Confirmation</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5 text-center">
            <div class="row">
                <div class="col-12">
                    <h1>Thank you for your order!</h1>
                    <p class="lead">Your order has been placed successfully. We will notify you once it has been shipped.</p>
                    <img src="Images/order_success.png" alt="Order Success" class="img-fluid" style="max-width: 400px;" />
                    <div class="mt-4">
                        <asp:Button ID="BackToHomeButton" runat="server" Text="Back to Home" CssClass="btn btn-primary" PostBackUrl="~/Default.aspx" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (jQuery and Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.amazonaws.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>