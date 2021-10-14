using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class AdminChngPass : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Login_detail ld = new Login_detail();
            ld.email_id = Convert.ToString(Session["email_id"]);
            ld.u_date = DateTime.Now;
            ld.pass = t_oldpass.Text;

            var q = dl.updatepass(ld, t_newpass.Text);

            if (q == 0)
            {
                Label1.Text = "Password Changed Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;

            }

            else if (q == 1)
            {
                Label1.Text = "Old password not match";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}
