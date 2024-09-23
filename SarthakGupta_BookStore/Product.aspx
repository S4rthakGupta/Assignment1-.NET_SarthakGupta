<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="SarthakGupta_BookStore.Product" %>

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
                    <h1>Welcome to my Book Store.</h1>
                </div>
            </div>
        </div>

        <div class="container mt-5">
            <div class="row">
                <div class="col-12">
                    <div class="card border-primary shadow">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="productSelect" class="font-weight-bold">Please select a product:</label>
                                        <asp:DropDownList ID="ddlBooks" DataSourceID="SqlDataSource1" DataTextField="Title" AutoPostBack="True" DataValueField="BookID" runat="server" CssClass="form-control">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ImageFile], [Price], [GenreID], [PublicationYear], [Author], [Title], [BookID] FROM [Books] ORDER BY [Price]"></asp:SqlDataSource>
                                    </div>
                                    <div class="product-details mt-3">
                                        <h4>
                                            <asp:Label ID="lblName" runat="server" CssClass="font-weight-bold"></asp:Label>
                                        </h4>
                                        <p>
                                            <asp:Label ID="lblShortDescription" runat="server" CssClass="text-muted"></asp:Label>
                                        </p>
                                        <p>
                                            <asp:Label ID="lblLongDescription" runat="server"></asp:Label>
                                        </p>
                                        <p class="text-success">
                                            <asp:Label ID="lblUnitPrice" runat="server" CssClass="font-weight-bold"></asp:Label>
                                        </p>
                                    </div>
                                </div>
                                <div class="col-md-6 text-center">
                                    <asp:Image ID="imgProduct" runat="server" CssClass="product-image img-fluid rounded" />
                                </div>
                            </div>

                            <div class="form-group mt-4">
                                <label for="Quantity" class="font-weight-bold">Quantity:</label>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <asp:Textbox ID="Quantity" runat="server" CssClass="form-control"></asp:Textbox>

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                                            runat="server" ControlToValidate="Quantity" Display="Dynamic" 
                                            ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>

                                        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger" 
                                            ControlToValidate="Quantity" Display="Dynamic" 
                                            ErrorMessage="Quantity must range from 1 to 500."
                                            MaximumValue="500" MinimumValue="1" Type="Integer">
                                        </asp:RangeValidator>
                                    </div>
                                </div>

                                <div class="mt-3">
                                    <asp:Button ID="AddBtn" runat="server" Text="Add to Cart" CssClass="navy-btn btn" OnClick="AddBtn_Click" />
                                    <asp:Button ID="CartBtn" runat="server" Text="Go to the Cart" 
                                        PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="navy-btn btn ml-2" />
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