using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS
{
    public partial class EmpLogin : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            employee em = new employee();
            em.email_id = t_email.Text.Trim();
            em.pass = t_password.Text.Trim();
            var q = dl.empLogin(em);
            if (q.Any())
            {
                foreach (employee k in q)
                {
                    if (k.choki_name!=null)
                    {
                        Session["email_id"] = k.email_id;
                        Session["choki_name"] = k.choki_name;
                        Session["thana_name"] = "";
                        Session["kotwali_name"] = "";
                        Response.Redirect("/Dashboard/PoliceHome.aspx");

                    }
                    if (k.thana_name != null)
                    {
                        Session["email_id"] = k.email_id;
                        Session["choki_name"] = "";
                        Session["thana_name"] = k.thana_name;
                        Session["kotwali_name"] = "";
                        Response.Redirect("/Dashboard/PoliceHome.aspx");

                    }

                    if (k.kotwali_name != null)
                    {
                        Session["email_id"] = k.email_id;
                        Session["choki_name"] = "";
                        Session["thana_name"] = "";
                        Session["kotwali_name"] = k.kotwali_name;
                        Response.Redirect("/Dashboard/PoliceHome.aspx");

                    }

                }
                



            }
            else
            {
                Response.Write("<script>alert('invalid username or password')</script>");
            }
        }
    }
}