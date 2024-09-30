<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SarthakGupta_BookStore.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login | S4RTHAK Gupta</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Custom CSS -->
    <link href="CSS/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm()">
        <div class="container-login">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-8 col-sm-12">
                    <!-- Card to hold the form -->
                    <div class="card mt-5 shadow-lg">
                        <div class="card-body p-5">
                            <!-- Header Section -->
                            <h3 class="text-center mb-4">Please Login</h3>

                            <!-- First Name -->
                            <div class="form-group">
                                <label for="firstName">First Name: <span class="required">*</span></label>
                                <asp:TextBox ID="TxtFirstName" runat="server" CssClass="form-control" placeholder="Enter first name" />
                                <span id="firstNameError" class="error text-danger"></span>
                            </div>

                            <!-- Last Name -->
                            <div class="form-group">
                                <label for="lastName">Last Name: <span class="required">*</span></label>
                                <asp:TextBox ID="TxtLastName" runat="server" CssClass="form-control" placeholder="Enter last name" />
                                <span id="lastNameError" class="error text-danger"></span>
                            </div>

                            <!-- Buttons -->
                            <div class="d-flex justify-content-between mt-4">
                                <asp:Button ID="BtnLogin" runat="server" Text="Login" CssClass="btn btn-primary px-4" OnClick="BtnLogin_Click" />
                                <asp:Button ID="BtnCancel" runat="server" Text="Cancel" CssClass="btn btn-danger px-4" PostBackUrl="~/Cart.aspx" />
                            </div>

                            <!-- Error Messages -->
                            <div id="errorMessages" class="text-danger mt-3"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script>
        // Function to clear any previous error messages
        function clearErrors() {
            document.getElementById("firstNameError").innerText = "";
            document.getElementById("lastNameError").innerText = "";
            document.getElementById("errorMessages").innerText = "";
        }

        // Function to validate the form
        function validateForm() {
            let errorMessages = [];
            let valid = true;

            // Clear previous errors
            clearErrors();

            // First Name Validation
            if (document.getElementById("<%= TxtFirstName.ClientID %>").value.trim() === "") {
                errorMessages.push("First Name is required.");
                document.getElementById("firstNameError").innerText = "First Name is required.";
                valid = false;
            }

            // Last Name Validation
            if (document.getElementById("<%= TxtLastName.ClientID %>").value.trim() === "") {
                errorMessages.push("Last Name is required.");
                document.getElementById("lastNameError").innerText = "Last Name is required.";
                valid = false;
            }

            // If valid is false, prevent form submission
            return valid;
        }
    </script>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
