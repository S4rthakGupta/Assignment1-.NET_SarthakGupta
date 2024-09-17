<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SarthakGupta_BookStore.Products" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>Product Selection</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="productSelect">Please select a product:</label>
                        <asp:DropDownList ID="productSelect" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Flying Bats" Text="Flying Bats" />
                        </asp:DropDownList>
                    </div>
                    <div class="product-details">
                        <h4 id="productName">Flying Bats</h4>
                        <p>Bats flying in front of moon</p>
                        <p>Bats flying in front of a full moon make for an eerie spectacle.</p>
                        <p><strong>$69.99 each</strong></p>
                        <div class="form-group">
                            <label for="quantityInput">Quantity:</label>
                            <asp:TextBox ID="quantityInput" runat="server" CssClass="form-control" />
                        </div>
                        <div class="btn-group" role="group">
                            <asp:Button ID="addToCartButton" runat="server" Text="Add to Cart" CssClass="btn btn-primary" />
                            <asp:Button ID="goToCartButton" runat="server" Text="Go to Cart" CssClass="btn btn-secondary" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <img src="flying-bats.jpg" alt="Flying Bats" class="img-fluid" />
                </div>
            </div>
        </div>


        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>