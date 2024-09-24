using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.Menu;

namespace SarthakGupta_BookStore
{
    public partial class Product : System.Web.UI.Page
    {
        private Book selectedProduct;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if it's the first time the page is loaded
            if (IsPostBack == false)
            {
                // Load and display data in the dropdown list
                ddlBooks.DataBind();
            }

            // Get the selected product every time the page loads
            selectedProduct = this.GetSelectedProduct();

            // Display product details
            lblName.Text = selectedProduct.Title;
            lblShortDescription.Text = selectedProduct.Author;
            lblLongDescription.Text = selectedProduct.PublicationYear.ToString();
            lblUnitPrice.Text = selectedProduct.Price.ToString("c") + " each";
            imgProduct.ImageUrl = selectedProduct.ImageFile;
        }

        protected Book GetSelectedProduct()
        {
            // Create a DataView to retrieve selected records
            DataView productsTable = (DataView)
                      SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            // Filter to get the selected row
            productsTable.RowFilter = "BookID = '" + ddlBooks.SelectedValue + "'";

            // Get the first row
            DataRowView row = productsTable[0];

            // Create a new Book object
            Book objBook = new Book();

            // Set Book properties from the row
            objBook.BookID = Convert.ToInt32(row["BookID"].ToString());
            objBook.Title = row["Title"].ToString();
            objBook.Author = row["Author"].ToString();
            objBook.PublicationYear = Convert.ToInt32(row["PublicationYear"].ToString());
            objBook.Price = (decimal)row["Price"];
            objBook.ImageFile = "~/Images/" + row["ImageFile"].ToString();

            return objBook;
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Get or create the cart in session state
                CartList cart = CartList.GetCartOrCreateIt();

                // Find the item in the cart
                Item cartItem = cart[selectedProduct.BookID.ToString()];

                // Add item to the cart or update its quantity
                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct, Convert.ToInt32(Quantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(Quantity.Text));
                }

                // Redirect to the Cart page
                Response.Redirect("~/Cart.aspx");
            }
        }
    }
}