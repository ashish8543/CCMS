using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS
{

    public partial class UserLogin : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            Login_detail ur = new Login_detail();
            ur.email_id = t_email.Text.Trim();
            ur.pass = t_password.Text.Trim();
            var q = dl.Login(ur);
            if (q.Any())
            {
                Session["email_id"] = ur.email_id;

                foreach (Login_detail k in q)
                {
                    Session["u_type"] = k.u_type;
                }
                if (Convert.ToInt32(Session["u_type"]) == 0)
                {
                    Response.Redirect("Dashboard/UserHome.aspx");
                }

                else if (Convert.ToInt32(Session ["u_type"]) == 1)
                {
                    Response.Redirect("Dashboard/AdminHome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid username or password')</script>");
            }
        }
    }
}