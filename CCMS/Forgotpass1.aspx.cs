using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS
{
    public partial class Forgotpass1 : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_sumbitpass_Click(object sender, EventArgs e)
        {
            var q = dl.forgetchange(Session["email_id"].ToString(), t_newpass.Text);

            if (q==0)
            {
                Response.Redirect("Dashboard/UserChangePass.aspx");
            }

            else
            {
                Label1.Text = "Invalid Credential";
            }
        }
    }
}