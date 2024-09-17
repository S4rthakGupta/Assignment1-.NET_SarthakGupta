<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SarthakGupta_BookStore.Products" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>Product Selection</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <img src="banner-image.jpg" class="card-img-top" alt="Banner Image" style="height: 200px; object-fit: cover;">
                    </div>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-12">
                    <div class="card border-primary">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="productSelect">Please select a product:</label>
                                        <asp:DropDownList ID="ddlBooks" DataSourceID="SqlDataSource1" DataTextField="Title" AutoPostBack="True" DataValueField="BookID" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [BookID], [Title], [Author], [PublicationYear], [GenreID], [Price] FROM [Books] ORDER BY [Price]"></asp:SqlDataSource>
                                    </div>
                                    <div class="product-details">
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <h4>
                                                    <asp:Label ID="lblName" runat="server"></asp:Label></h4>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <asp:Label ID="lblShortDescription" runat="server"></asp:Label></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <asp:Label ID="lblLongDescription" runat="server"></asp:Label></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <asp:Label ID="lblUnitPrice" runat="server"></asp:Label></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <img src="flying-bats.jpg" alt="Flying Bats" class="img-fluid rounded" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap JS and dependencies -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>
