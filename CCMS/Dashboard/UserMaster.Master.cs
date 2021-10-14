using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        datalayer dl = new datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var q = dl.getData(Session["email_id"].ToString());
                if (q.Any())
                {
                    foreach (u_registeration k in q)
                    {
                        string m = k.u_name;
                        lbl_name.Text = "User "+ "Hi " + m;
                    }
                }
                
            }
        }
    }
}