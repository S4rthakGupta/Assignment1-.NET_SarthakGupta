<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="SarthakGupta_BookStore.Checkout" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Check Out Page | S4RTHAK Book Store</title>
    <!-- Adding a link of Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Adding a link of the external stylesheet for customization. -->
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

    <form id="form1" runat="server" onsubmit="return validateForm()">
        <div class="container mt-5">
            <h2>Check Out Page</h2>

            <!-- Error messages will be shown here -->
            <div id="errorMessages" class="error-list"></div>

            <!-- Contact Information Section -->
            <div class="form-section">
                <h4>Contact Information</h4>
                <div class="form-group">
                    <label for="email">Email Address: <span class="required">*</span></label>
                    <asp:TextBox ID="EmailTextBox" runat="server" CssClass="form-control" placeholder="Enter email" />
                    <span id="emailError" class="error"></span>
                </div>
                <div class="form-group">
                    <label for="emailReEntry">Email Re-entry: <span class="required">*</span></label>
                    <asp:TextBox ID="EmailReEntryTextBox" runat="server" CssClass="form-control" placeholder="Re-enter email" />
                    <span id="emailReEntryError" class="error"></span>
                </div>
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
                <div class="form-group">
                    <label for="phoneNumber">Phone Number: <span class="required">*</span></label>
                    <asp:TextBox ID="PhoneNumberTextBox" runat="server" CssClass="form-control" placeholder="Enter phone number" />
                    <span id="phoneError" class="error"></span>
                </div>
            </div>

            <!-- Billing Address Section -->
            <div class="form-section">
                <h4>Billing Address</h4>
                <div class="form-group">
                    <label for="address">Address: <span class="required">*</span></label>
                    <asp:TextBox ID="AddressTextBox" runat="server" CssClass="form-control" placeholder="Enter address" />
                    <span id="addressError" class="error"></span>
                </div>
                <div class="form-group">
                    <label for="city">City: <span class="required">*</span></label>
                    <asp:TextBox ID="CityTextBox" runat="server" CssClass="form-control" placeholder="Enter city" />
                    <span id="cityError" class="error"></span>
                </div>
                <div class="form-group">
                    <label for="state">State: <span class="required">*</span></label>
                    <asp:TextBox ID="StateTextBox" runat="server" CssClass="form-control" placeholder="Enter state" />
                    <span id="stateError" class="error"></span>
                </div>
                <div class="form-group">
                    <label for="zipCode">Zip Code: <span class="required">*</span></label>
                    <asp:TextBox ID="ZipCodeTextBox" runat="server" CssClass="form-control" placeholder="Enter zip code" />
                    <span id="zipCodeError" class="error"></span>
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
                <asp:Button ID="ContinueShoppingButton" runat="server" Text="Continue Shopping" CssClass="navy-btn" PostBackUrl="~/Product.aspx" />
            </div>
        </div>
    </form>

    <!-- JavaScript Validation -->
    <script>
        function validateForm() {
            let errorMessages = [];
            let valid = true;

            // Get form fields
            const email = document.getElementById('<%= EmailTextBox.ClientID %>').value;
            const emailReEntry = document.getElementById('<%= EmailReEntryTextBox.ClientID %>').value;
            const firstName = document.getElementById('<%= FirstNameTextBox.ClientID %>').value;
            const lastName = document.getElementById('<%= LastNameTextBox.ClientID %>').value;
            const phoneNumber = document.getElementById('<%= PhoneNumberTextBox.ClientID %>').value;
            const address = document.getElementById('<%= AddressTextBox.ClientID %>').value;
            const city = document.getElementById('<%= CityTextBox.ClientID %>').value;
            const state = document.getElementById('<%= StateTextBox.ClientID %>').value;
            const zipCode = document.getElementById('<%= ZipCodeTextBox.ClientID %>').value;

            // Clear previous errors
            clearErrors();

            // Validation checks
            if (!validateEmail(email)) {
                errorMessages.push("Please enter a valid email address.");
                document.getElementById("emailError").innerText = "Invalid email.";
                valid = false;
            }
            if (email !== emailReEntry) {
                errorMessages.push("Email and re-entered email do not match.");
                document.getElementById("emailReEntryError").innerText = "Emails do not match.";
                valid = false;
            }
            if (!firstName.match(/^[A-Za-z]+$/)) {
                errorMessages.push("First name can only contain alphabets.");
                document.getElementById("firstNameError").innerText = "Invalid first name.";
                valid = false;
            }
            if (!lastName.match(/^[A-Za-z]+$/)) {
                errorMessages.push("Last name can only contain alphabets.");
                document.getElementById("lastNameError").innerText = "Invalid last name.";
                valid = false;
            }
            if (!phoneNumber.match(/^\d{10}$/)) {
                errorMessages.push("Phone number must be 10 digits.");
                document.getElementById("phoneError").innerText = "Invalid phone number.";
                valid = false;
            }
            if (address === "") {
                errorMessages.push("Address is required.");
                document.getElementById("addressError").innerText = "Address is required.";
                valid = false;
            }
            if (!city.match(/^[A-Za-z]+$/)) {
                errorMessages.push("City can only contain alphabets.");
                document.getElementById("cityError").innerText = "Invalid city.";
                valid = false;
            }
            if (!state.match(/^[A-Za-z]+$/)) {
                errorMessages.push("State can only contain alphabets.");
                document.getElementById("stateError").innerText = "Invalid state.";
                valid = false;
            }
            if (!zipCode.match(/^\d+$/)) {
                errorMessages.push("Zip code must be numeric.");
                document.getElementById("zipCodeError").innerText = "Invalid zip code.";
                valid = false;
            }

            if (!valid) {
                document.getElementById("errorMessages").innerHTML = "<ul><li>" + errorMessages.join("</li><li>") + "</li></ul>";
            }

            return valid;
        }

        function validateEmail(email) {
            const re = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            return re.test(String(email).toLowerCase());
        }

        function clearErrors() {
            document.getElementById("errorMessages").innerHTML = "";
            document.querySelectorAll('.error').forEach(el => el.innerText = "");
        }
    </script>

    <!-- Bootstrap JS and dependencies (jQuery and Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
