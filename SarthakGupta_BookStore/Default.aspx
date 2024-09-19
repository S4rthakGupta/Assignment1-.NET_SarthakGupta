<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SarthakGupta_BookStore.Default" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <title>Product Selection</title>
    <!-- Bootstrap CSS -->
    <link href="Content/style.css" rel="stylesheet" />
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
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ImageFile], [Price], [GenreID], [PublicationYear], [Author], [Title], [BookID] FROM [Books] ORDER BY [Price]"></asp:SqlDataSource>
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
                                    <asp:Image ID="imgProduct" runat="server" CssClass="product-image" />
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <asp:Textbox ID="Quantity" runat="server"></asp:Textbox>

                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger"
                                        runat="server" ControlToValidate="Quantity" Display="Dynamic" 
                                        ErrorMessage="Quantity is a required field."></asp:RequiredFieldValidator>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="text-danger" 
                                        ControlToValidate="Quantity" Display="Dynamic" 
                                        ErrorMessage="Quantity must range from 1 to 500."
                                        MaximumValue="500" MinimumValue="1" Type="Integer">
                                    </asp:RangeValidator>

                                    <asp:Button ID="AddBtn" runat="server" Text="Add to Cart" CssClass="CartBtn" OnClick="AddBtn_Click" />
                                    <asp:Button ID="CartBtn" runat="server" Text="Go to the Cart" 
                                      PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn" />
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
