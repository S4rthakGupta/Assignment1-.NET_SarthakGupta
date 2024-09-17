using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SarthakGupta_BookStore
{
    public partial class Products : System.Web.UI.Page
    {
        private Book selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            //1-if the page didn't post back(first time to use it)
            if (IsPostBack == false)
            {
                //to load and display the data in ddlProducts
                ddlBooks.DataBind();
            }

            //2-Get and show the selected product on every load
            selectedProduct = this.GetSelectedProduct();

            //3- Display the data 
            lblName.Text = selectedProduct.Title;
            lblShortDescription.Text = selectedProduct.Author;
            lblLongDescription.Text = selectedProduct.PublicationYear.ToString();
            lblUnitPrice.Text = selectedProduct.Price.ToString("c") + " each";
            //imgProduct.ImageUrl = selectedProduct.ImageFile;

        }


        protected Book GetSelectedProduct()
        {
            //Create DataView to retrieve selected records 
            // A DataView enables you to create different views of the data stored in a DataTable,
            DataView productsTable = (DataView)
                      //Get all the records from data source 
                      SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            //Add Filter:
            //Retrieve a selected row [not all the records]
            productsTable.RowFilter =
                "BookID = '" + ddlBooks.SelectedValue + "'";
            //get the first row 
            DataRowView row = productsTable[0];
            // -- -----------------------------------------------------
            //Createt Object from product
            Book p = new Book();
            //Get Product ID from row
            p.BookID = Convert.ToInt32(row["BookID"].ToString());
            //Get Product Name
            p.Title = row["Title"].ToString();

            p.Author = row["Author"].ToString();

            p.PublicationYear = Convert.ToInt32(row["PublicationYear"].ToString());

            p.Price = (decimal)row["Price"];

            //p.ImageFile = "~/Images/Products/" + row["ImageFile"].ToString();

            return p;
            //--------------------------------------------------------- 
        }
    }
}