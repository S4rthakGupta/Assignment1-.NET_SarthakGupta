﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="SarthakGupta_BookStore.Checkout" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Check Out Page</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
<div class="container mt-4">
    <div class="row">
        <div class="col-12">
            <div class="card shadow">
                <img src="Images/banner.jpg" class="card-img-top cart" alt="Banner Image">
            </div>
        </div>
    </div>
</div>

    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Check Out Page</h2>

            <!-- Contact Information Section -->
            <div class="form-section">
                <h4>Contact Information</h4>
                <div class="form-group">
                    <label for="email">Email Address:</label>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Enter email" />
                </div>
                <div class="form-group">
                    <label for="emailReEntry">Email Re-entry:</label>
                    <asp:TextBox ID="EmailReEntryTextBox" runat="server" CssClass="form-control" placeholder="Re-enter email" />
                </div>
                <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <asp:TextBox ID="FirstNameTextBox" runat="server" CssClass="form-control" placeholder="Enter first name" />
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <asp:TextBox ID="LastNameTextBox" runat="server" CssClass="form-control" placeholder="Enter last name" />
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone Number:</label>
                    <asp:TextBox ID="PhoneNumberTextBox" runat="server" CssClass="form-control" placeholder="Enter phone number" />
                </div>
            </div>

            <!-- Billing Address Section -->
            <div class="form-section">
                <h4>Billing Address</h4>
                <div class="form-group">
                    <label for="address">Address:</label>
                    <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control" placeholder="Enter address" />
                </div>
                <div class="form-group">
                    <label for="city">City:</label>
                    <asp:TextBox ID="CityTextBox" runat="server" CssClass="form-control" placeholder="Enter city" />
                </div>
                <div class="form-group">
                    <label for="state">State:</label>
                    <asp:TextBox ID="StateTextBox" runat="server" CssClass="form-control" placeholder="Enter state" />
                </div>
                <div class="form-group">
                    <label for="zipCode">Zip Code:</label>
                    <asp:TextBox ID="ZipCodeTextBox" runat="server" CssClass="form-control" placeholder="Enter zip code" />
                </div>
            </div>

            <!-- Optional Data Section -->
            <div class="form-section">
                <h4>Optional Data</h4>
                <p>Please let me know about:</p>
                <div class="form-check">
                    <asp:CheckBox ID="NewProductsCheckBox" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="newProducts">New products</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="SpecialOffersCheckBox" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="specialOffers">Special offers</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="NewEditionsCheckBox" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="newEditions">New editions</label>
                </div>
                <div class="form-check">
                    <asp:CheckBox ID="LocalEventsCheckBox" runat="server" CssClass="form-check-input" />
                    <label class="form-check-label" for="localEvents">Local events</label>
                </div>

                <p class="mt-3">Please contact me via:</p>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="ContactTwitterRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="twitter">Twitter</label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="ContactFacebookRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="facebook">Facebook</label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="ContactTextRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="textMessage">Text message</label>
                </div>
                <div class="form-check form-check-inline">
                    <asp:RadioButton ID="ContactEmailRadioButton" runat="server" CssClass="form-check-input" GroupName="Contact" />
                    <label class="form-check-label" for="email">Email</label>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="btn-group-custom">
                <asp:Button ID="CheckOutButton" runat="server" Text="Check Out" CssClass="success-btn mr-2" PostBackUrl="~/OrderConfirmation.aspx" />
                <asp:Button ID="CancelOrderButton" runat="server" Text="Cancel Order" CssClass="cancel-btn mr-2" PostBackUrl="~/Cart.aspx" />
                <asp:Button ID="ContinueShoppingButton" runat="server" Text="Continue Shopping" CssClass="navy-btn" PostBackUrl="~/Product.aspx"/>
            </div>
        </div>
    </form>

    <!-- Bootstrap JS and dependencies (jQuery and Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>