using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class PoliceViewComplain : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty((Session["choki_name"].ToString())))
                {
                    var q = dl.getDetailsChoki(Session["choki_name"].ToString(), Session["email_id"].ToString());
                    if (q.Any())
                    {
                        GridView1.Visible = true;
                    }
                }
                
                if (!string.IsNullOrEmpty((Session["thana_name"].ToString())))
                {
                    var q1 = dl.getDetailsThana(Session["thana_name"].ToString(), Session["email_id"].ToString());
                    if (q1.Any())
                    {
                        GridView2.Visible = true;
                    }
                }

                if (!string.IsNullOrEmpty((Session["kotwali_name"].ToString())))
                {
                    var q2 = dl.getDetailsKotwali(Session["kotwali_name"].ToString(), Session["email_id"].ToString());
                    if (q2.Any())
                    {
                        GridView3.Visible = true;
                    }
                }


            }
        }
    }
}