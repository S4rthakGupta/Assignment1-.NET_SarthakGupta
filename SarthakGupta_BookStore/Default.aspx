<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SarthakGupta_BookStore.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Selection</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-12">
                    <div class="card shadow">
                        <img src="Images/banner.jpg" class="card-img-top" alt="Banner Image">
                    </div>
                </div>
            </div>
        </div>

        <div class="btn-group-custom">
            <asp:Button ID="ContinueShoppingButton" runat="server" Text="Explore Books" CssClass="products-btn" PostBackUrl="~/Product.aspx" />
        </div>
    </form>

</body>
</html>
