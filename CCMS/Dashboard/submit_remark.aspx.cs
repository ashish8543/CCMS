using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class submit_remark : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty((Request.QueryString["valid"])))
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel2.Visible = true;
            }



        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrEmpty((Request.QueryString["valid"])))
            {
                int comid = Convert.ToInt32(Request.QueryString["valid"]);
                var q = dl.Viewcom(comid);
                remark r = new remark();
                if (q.Any())
                {
                    foreach (complain k in q)
                    {
                        r.area_name = k.area_name;
                        r.choki_name = k.choki_name;
                        r.com_id = comid;
                        r.c_date = DateTime.Now;
                        r.emp_id = Session["email_id"].ToString();
                        r.isactive = 0;
                        r.kotwali_name = k.kotwali_name;
                        r.remark1 = tremark.Text.Trim();
                        r.thana_name = k.thana_name;
                        r.u_date = null;
                        r.u_id = k.email_id;


                    }
                    dl.Save_Remark(r);
                    lmsg.Text = "Remarked ";
                    dvreamrk.Visible = true;

                }

            }
        }
    }
}