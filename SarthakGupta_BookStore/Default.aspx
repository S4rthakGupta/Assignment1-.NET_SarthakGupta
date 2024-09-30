<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="SarthakGupta_BookStore.Default" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="text-center">
        <h1><span id="SpnWelcomeTxt" runat="server"></span></h1>
    </div>

    <!-- Creating the Landing Page with an Image. -->
    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <div class="card shadow">
                    <img src="Images/banner.jpg" class="card-img-top" alt="Banner Image">
                </div>
            </div>
        </div>
    </div>




    <!-- Adding a button which takes the user to the home page. -->
    <div class="btn-group-custom">
        <asp:Button ID="ContinueShoppingButton" runat="server" Text="Explore Books" CssClass="products-btn" PostBackUrl="~/Product.aspx" />
    </div>
</asp:Content>
