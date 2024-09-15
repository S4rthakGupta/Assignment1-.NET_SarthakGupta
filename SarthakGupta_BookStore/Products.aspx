<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SarthakGupta_BookStore.Products" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Another Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <h2>Another Page Title</h2>

            <!-- Example Form -->
            <h4>Example Form</h4>
            <div class="form-group">
                <label for="exampleInput">Example Input:</label>
                <asp:TextBox ID="ExampleInputTextBox" runat="server" CssClass="form-control" placeholder="Enter something" />
            </div>
            <div class="form-group">
                <label for="exampleTextarea">Example Textarea:</label>
                <asp:TextBox ID="ExampleTextarea" runat="server" CssClass="form-control" TextMode="MultiLine" placeholder="Enter more details" />
            </div>
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" CssClass="btn btn-success" />

        </div>
    </form>

    <!-- Bootstrap JS and dependencies (jQuery and Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>