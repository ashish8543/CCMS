using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Login_detail ur = new Login_detail();
            ur.email_id = TextBox1.Text.Trim();
            ur.pass = TextBox2.Text.Trim();
            var q = dl.Login(ur);
            if (q.Any())
            {
                Session["email_id"] = ur.email_id;

                foreach (Login_detail k in q)
                {
                    Session["u_type"] = k.u_type;
                }
                if (Convert.ToInt32(Session["u_type"]) == 1)
                {
                    Response.Redirect("AdminHome.aspx");
                }

                else if (Convert.ToInt32(Session["u_type"]) == 0)
                {
                    Response.Redirect("AdminLogin.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid username or password')</script>");
            }
        }
    }
}