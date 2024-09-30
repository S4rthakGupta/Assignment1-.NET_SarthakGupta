using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SarthakGupta_BookStore
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void CheckOutButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Redirect to the Order Confirmation page
                Response.Redirect("~/OrderConfirmation.aspx");
            }
        }
    }
}