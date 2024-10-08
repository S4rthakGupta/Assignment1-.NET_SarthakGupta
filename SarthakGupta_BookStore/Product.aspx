﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Product.aspx.cs" Inherits="SarthakGupta_BookStore.Product" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">
<!-- Giving Reference from Site.MasterPage. -->


    <!-- This is a basic text under the Navigation Links. -->
    <div class="container mt-4">
        <div class="row">
            <div class="col-12">
                <h1>Welcome Back, <span id="SpnWelcomeTxtProducts" runat="server"></span></h1>
            </div>
        </div>
    </div>

    <!-- Main Body starts here! -->
    <div class="container mt-3">
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
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [BookID], [Author], [Title], [PublicationYear], [Price], [ImageFile], [GenreID] FROM [Books] ORDER BY [PublicationYear]"></asp:SqlDataSource>
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
                                    <asp:TextBox ID="Quantity" runat="server" CssClass="form-control"></asp:TextBox>

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
</asp:Content>
