﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Navi
{
    public partial class Bid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)//boolean - true if user is logged in, false otherwise
            {
                Response.Redirect("~/View/Login.aspx");
            }
        }
        
    }
}