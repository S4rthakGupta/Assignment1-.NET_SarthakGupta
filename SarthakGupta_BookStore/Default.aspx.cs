using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SarthakGupta_BookStore
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PageAdapter.CurrentPage = "Default";

        }

        protected void btnRemove_Click(object sender, EventArgs e)
        {
            // if cart contains items and user 
            //has selected an item...


        }
    }

}