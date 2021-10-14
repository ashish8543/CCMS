using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class PoliceMaster : System.Web.UI.MasterPage
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {
            //try
            //{
            //    if (string.IsNullOrEmpty(Session["email_id"].ToString()))
            //    {

            //    }
            //}
            //catch (Exception)
            //{

            //    Response.Redirect("../EmpLogin.aspx");
            //}
            if (!IsPostBack)
            {
                var q = dl.getPoliceData (Session["email_id"].ToString());
                if (q.Any())
                {
                    foreach (employee k in q)
                    {
                        string m = k.e_name;
                        lbl_name.Text = "Police " + "Hi " + m;
                    }
                }

            }

        }
    }
}