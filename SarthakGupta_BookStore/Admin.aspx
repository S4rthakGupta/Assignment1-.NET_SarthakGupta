<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SarthakGupta_BookStore.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <!-- Header -->
        <h4>Admin Panel - Manage Genres and Books</h4>

        <!-- DropDownList for genres -->
        <div class="mt-3">
            <label for="DropDownListGenres">Select Genre:</label>
            <asp:DropDownList ID="DropDownListGenres" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceGenres"
                DataTextField="GenreName" DataValueField="GenreID" AutoPostBack="True"
                OnSelectedIndexChanged="DropDownListGenres_SelectedIndexChanged">
            </asp:DropDownList>
        </div>

        <!-- DataList for books -->
        <div class="container-products mt-3">
            <asp:DataList ID="DataListBooks" runat="server" DataSourceID="SqlDataSourceBooks">
                <ItemTemplate>
                    <div class="card mt-3">
                        <div class="card-body">
                            <h3><%# Eval("Title") %></h3>
                            <p><strong>Author:</strong> <%# Eval("Author") %></p>
                            <p><strong>Price:</strong> <%# Eval("Price", "{0:C}") %></p>
                            <p><strong>Published:</strong> <%# Eval("PublicationYear") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <!-- GridView for Genres -->
        <div class="mt-3">
            <asp:GridView ID="GridViewGenres" runat="server" DataSourceID="SqlDataSourceGenresCRUD"
                CssClass="table table-bordered" AutoGenerateColumns="False" AllowSorting="True"
                AllowPaging="True" PageSize="5" PagerSettings-Mode="NextPreviousFirstLast" DataKeyNames="GenreID">
                <Columns>
                    <asp:BoundField DataField="GenreID" HeaderText="Genre ID" ReadOnly="True" />
                    <asp:BoundField DataField="GenreName" HeaderText="Genre Name" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>

        <!-- Add new genre -->
        <div class="mt-3">
            <label for="TextBoxNewGenre">Add New Genre:</label>
            <asp:TextBox ID="TextBoxNewGenre" runat="server" CssClass="form-control" Placeholder="Enter Genre Name"></asp:TextBox>
            <asp:Button ID="ButtonAddGenre" runat="server" Text="Add Genre" CssClass="navy-btn mt-2" OnClick="ButtonAddGenre_Click" />
            <asp:Label ID="LabelGenreError" runat="server" CssClass="error"></asp:Label>
        </div>

        <!-- GridView for books -->
        <div class="mt-3">
            <asp:GridView ID="GridViewBooks" runat="server" DataSourceID="SqlDataSourceBooksWithGenres"
                CssClass="table table-bordered" AutoGenerateColumns="False" AllowSorting="True"
                AllowPaging="True" PageSize="5" PagerSettings-Mode="NextPreviousFirstLast"
                OnSelectedIndexChanged="GridViewBooks_SelectedIndexChanged" DataKeyNames="BookID">
                <Columns>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" ReadOnly="True" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="GenreName" HeaderText="Genre" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
        </div>

        <!-- DetailsView for CRUD on books -->
        <div class="mt-3">
            <asp:DetailsView ID="DetailsViewBooks" runat="server" DataSourceID="SqlDataSourceBooksCRUD"
                CssClass="table table-bordered" AutoGenerateRows="False" DataKeyNames="BookID">
                <Fields>
                    <asp:BoundField DataField="BookID" HeaderText="Book ID" ReadOnly="True" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" />
                    <asp:BoundField DataField="PublicationYear" HeaderText="Publication Year" />
                    <asp:BoundField DataField="GenreID" HeaderText="Genre ID" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="ImageFile" HeaderText="Image File" />
                    <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True" />
                </Fields>
            </asp:DetailsView>
        </div>
    </div>

    <!-- SqlDataSources -->
    <asp:SqlDataSource ID="SqlDataSourceGenres" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT GenreID, GenreName FROM Genre ORDER BY GenreName"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceGenresCRUD" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM Genre ORDER BY GenreName"
        UpdateCommand="UPDATE Genre SET GenreName = @GenreName WHERE GenreID = @GenreID"
        DeleteCommand="DELETE FROM Genre WHERE GenreID = @GenreID">
        <UpdateParameters>
            <asp:Parameter Name="GenreName" Type="String" />
            <asp:Parameter Name="GenreID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="GenreID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceGenresInsert" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        InsertCommand="INSERT INTO Genre (GenreName) VALUES (@GenreName)">
        <InsertParameters>
            <asp:Parameter Name="GenreName" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceBooks" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM Books WHERE GenreID = @GenreID">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownListGenres" PropertyName="SelectedValue" Name="GenreID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceBooksWithGenres" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT B.BookID, B.Title, B.Author, B.Price, G.GenreName FROM Books B JOIN Genre G ON B.GenreID = G.GenreID"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSourceBooksCRUD" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM Books WHERE BookID = @BookID"
        InsertCommand="INSERT INTO Books (Title, Author, PublicationYear, GenreID, Price, ImageFile) VALUES (@Title, @Author, @PublicationYear, @GenreID, @Price, @ImageFile)"
        UpdateCommand="UPDATE Books SET Title = @Title, Author = @Author, PublicationYear = @PublicationYear, GenreID = @GenreID, Price = @Price, ImageFile = @ImageFile WHERE BookID = @BookID"
        DeleteCommand="DELETE FROM Books WHERE BookID = @BookID">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridViewBooks" PropertyName="SelectedValue" Name="BookID" Type="Int32" />
        </SelectParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="PublicationYear" Type="Int32" />
            <asp:Parameter Name="GenreID" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImageFile" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="PublicationYear" Type="Int32" />
            <asp:Parameter Name="GenreID" Type="Int32" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="BookID" Type="Int32" />
        </UpdateParameters>
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>
