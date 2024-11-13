<%@ Page Title="Admin" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SarthakGupta_BookStore.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2>Admin Panel</h2>

        <!-- Dropdown to Select Genre -->
        <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="true" CssClass="form-control" 
            DataSourceID="sqlDataSourceCategories" DataTextField="LongName" DataValueField="ID">
        </asp:DropDownList>

        <!-- DataList for Books -->
        <asp:DataList ID="dataListProducts" runat="server" DataSourceID="sqlDataSourceProducts" RepeatColumns="3" CssClass="row">
            <ItemTemplate>
                <div class="card m-2" style="width: 18rem;">
                    <img class="card-img-top" src='<%# Eval("ImageFile") %>' alt="Book Image">
                    <div class="card-body">
                        <h5 class="card-title"><%# Eval("Title") %></h5>
                        <p class="card-text">Author: <%# Eval("Author") %></p>
                        <p class="card-text">Price: $<%# Eval("Price") %></p>
                    </div>
                </div>
            </ItemTemplate>
        </asp:DataList>

        <!-- SQL Data Sources -->
        <asp:SqlDataSource ID="sqlDataSourceCategories" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    SelectCommand="SELECT * FROM Genre"
    InsertCommand="INSERT INTO Genre (GenreID, GenreName) VALUES (@GenreID, @GenreName)">
    <InsertParameters>
        <asp:Parameter Name="GenreID" Type="Int32" />
        <asp:Parameter Name="GenreName" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>




        <asp:SqlDataSource ID="sqlDataSourceProducts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT Title, Author, Price, ImageFile FROM Books WHERE GenreID = @CategoryID">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCategories" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <!-- GridView for Genre Management -->
        <h3 class="mt-4">Manage Genres</h3>
        <asp:GridView ID="gridViewCategories" runat="server" CssClass="table table-striped"
            AutoGenerateColumns="False" DataSourceID="sqlDataSourceGridCategories"
            DataKeyNames="GenreID" AllowSorting="True" AllowPaging="True" PageSize="5">
            <Columns>
                <asp:BoundField DataField="GenreID" HeaderText="Genre ID" SortExpression="GenreID" />
                <asp:BoundField DataField="GenreName" HeaderText="Genre Name" SortExpression="GenreName" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>



        <!-- SQL DataSource for GridView -->
        <asp:SqlDataSource ID="sqlDataSourceGridCategories" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM Genre"
            UpdateCommand="UPDATE Genre SET GenreName=@GenreName WHERE GenreID=@GenreID"
            DeleteCommand="DELETE FROM Genre WHERE GenreID=@GenreID">
            <UpdateParameters>
                <asp:Parameter Name="GenreName" Type="String" />
                <asp:Parameter Name="GenreID" Type="Int32" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="GenreID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>

        <!-- Form to Add New Genre -->
        <h3 class="mt-4">Add New Genre</h3>
        <div class="form-group">
            <asp:TextBox ID="txtNewCategoryID" runat="server" CssClass="form-control" Placeholder="Genre ID"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtNewCategoryLongName" runat="server" CssClass="form-control" Placeholder="Genre Name"></asp:TextBox>
        </div>
        <asp:Button ID="btnAddCategory" runat="server" Text="Add Genre" CssClass="btn btn-primary" OnClick="btnAddCategory_Click" />

        <!-- GridView and DetailsView for Books -->
        <h3 class="mt-4">Manage Books</h3>
        <asp:GridView ID="gridViewProducts" runat="server" CssClass="table table-striped" 
            AutoGenerateColumns="False" DataSourceID="sqlDataSourceProductsGrid"
            DataKeyNames="BookID" AllowSorting="True" AllowPaging="True" PageSize="5" 
            OnSelectedIndexChanged="gridViewProducts_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="Book ID" SortExpression="BookID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="GenreID" HeaderText="Genre ID" SortExpression="GenreID" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>

        <asp:DetailsView ID="detailsViewProducts" runat="server" CssClass="table table-striped" 
            AutoGenerateRows="True" DataSourceID="sqlDataSourceProductsGrid" DefaultMode="Edit">
        </asp:DetailsView>

        <asp:SqlDataSource ID="sqlDataSourceProductsGrid" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM Books"
            UpdateCommand="UPDATE Books SET Title=@Title, GenreID=@GenreID, Price=@Price, ImageFile=@ImageFile WHERE BookID=@BookID"
            DeleteCommand="DELETE FROM Books WHERE BookID=@BookID">
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="GenreID" Type="Int32" />
                <asp:Parameter Name="Price" Type="Decimal" />
                <asp:Parameter Name="ImageFile" Type="String" />
                <asp:Parameter Name="BookID" Type="Int32" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="BookID" Type="Int32" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
