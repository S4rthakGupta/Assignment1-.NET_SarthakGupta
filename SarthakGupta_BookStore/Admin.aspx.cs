using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SarthakGupta_BookStore
{
    public partial class Admin : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownListGenres_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataListBooks.DataBind();
        }

        protected void ButtonAddGenre_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBoxNewGenre.Text))
            {
                LabelGenreError.Text = "Genre name cannot be empty.";
                return;
            }

            try
            {
                SqlDataSourceGenresInsert.InsertParameters["GenreName"].DefaultValue = TextBoxNewGenre.Text;
                SqlDataSourceGenresInsert.Insert();
                LabelGenreError.Text = "Genre added successfully!";
                TextBoxNewGenre.Text = ""; // Clear the textbox after insertion
                GridViewGenres.DataBind(); // Refresh the GridView
            }
            catch (Exception ex)
            {
                LabelGenreError.Text = $"Error: {ex.Message}";
            }
        }

        protected void GridViewBooks_SelectedIndexChanged(object sender, EventArgs e)
        {
            DetailsViewBooks.DataBind();
        }
    }
}
