﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class UserReport : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rp.DataSource = dl.viewRemark();
                rp.DataBind();
            }
        }
    }
}