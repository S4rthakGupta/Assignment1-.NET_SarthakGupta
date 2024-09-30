﻿using System;
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
            if (Session["FirstName"] != null)
            {
                SpnWelcomeTxt.InnerText = "Welcome, " + Session["FirstName"].ToString() + "!";
            }
        }
    }
}