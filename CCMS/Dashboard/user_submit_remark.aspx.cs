using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    
    public partial class user_submit_remark : System.Web.UI.Page
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
                user_remark ur = new user_remark();
                if (q.Any())
                {
                    foreach (complain k in q)
                    {
                        ur.area_name = k.area_name;
                        ur.choki_name = k.choki_name;
                        ur.com_id = comid;
                        ur.c_date = DateTime.Now;
                        ur.isactive = 0;
                        ur.kotwali_name = k.kotwali_name;
                        ur.remark = tremark.Text.Trim();
                        ur.thana_name = k.thana_name;
                        ur.u_id = k.email_id;


                    }
                    dl.User_Save_Remark(ur);
                    lmsg.Text = "Remarked ";
                    tremark.Text = "";
                    dvremark.Visible = true;

                }

            }
        }
    }
}