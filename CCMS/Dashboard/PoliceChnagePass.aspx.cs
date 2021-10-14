using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    
    public partial class PoliceChnagePass : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            employee em = new employee();
            em.email_id = Convert.ToString(Session["email_id"]);
            em.u_date = DateTime.Now;
            em.pass = t_oldpass.Text;

            var q = dl.UpdateEmppass(em, t_newpass.Text);

            if (q == 0)
            {
                Label1.Text = "Password Changed Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
                Response.Write("<script>alert('invalid username or password')</script>");


            }

            else if (q == 1)
            {
                Label1.Text = "Old password not match";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}