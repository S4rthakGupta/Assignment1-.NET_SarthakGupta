using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SarthakGupta_BookStore
{
    public partial class Admin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialization logic
            }
        }

        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            string id = txtNewCategoryID.Text.Trim();
            string name = txtNewCategoryLongName.Text.Trim();

            // Ensure both ID and Name are provided
            if (!string.IsNullOrEmpty(id) && !string.IsNullOrEmpty(name))
            {
                sqlDataSourceGridCategories.InsertParameters["GenreID"].DefaultValue = id;
                sqlDataSourceGridCategories.InsertParameters["GenreName"].DefaultValue = name;

                try
                {
                    sqlDataSourceGridCategories.Insert();
                    gridViewCategories.DataBind(); // Refresh the GridView to show the new category
                    txtNewCategoryID.Text = string.Empty;
                    txtNewCategoryLongName.Text = string.Empty; // Clear input fields
                }
                catch (Exception ex)
                {
                    // Log or display error if insert fails
                    // Example: Display an error message to the user
                    Response.Write($"<script>alert('Error: {ex.Message}');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Please provide both Genre ID and Genre Name.');</script>");
            }
        }

        protected void gridViewProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the selected BookID from the GridView
            if (gridViewProducts.SelectedDataKey != null)
            {
                string selectedBookId = gridViewProducts.SelectedDataKey.Value.ToString();

                // Pass the selected BookID to the DetailsView
                sqlDataSourceProductsGrid.SelectParameters["BookID"].DefaultValue = selectedBookId;
                detailsViewProducts.ChangeMode(DetailsViewMode.Edit); // Switch to Edit mode
                detailsViewProducts.DataBind(); // Refresh the DetailsView
            }
        }
    }
}
