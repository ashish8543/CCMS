using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                u_profile up = new u_profile();
                up.login_id = Session["email_id"].ToString();

                var q = dl.Check(up);
                foreach (u_profile k in q)
                {
                    t_email.Text = k.login_id;
                    t_adharno.Text = k.adhar_no.ToString();
                    t_email.ReadOnly = true;

                    img_propic.Src = "ProfilePic/" + k.p_pic;

                }
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            u_profile up = new u_profile();
            up.login_id = Session["email_id"].ToString();
            up.adhar_no =Convert.ToInt64( t_adharno.Text) ;
            FileUpload1.SaveAs(Server.MapPath("ProfilePic/"+ FileUpload1.FileName));
            up.p_pic = FileUpload1.FileName;
            FileUpload2.SaveAs(Server.MapPath("AadharPic/" + FileUpload2.FileName));
            up.ad_pic = FileUpload2.FileName;
            


            var q = dl.update_profile(up);
            if(q==0)
            {
                var q1 = dl.Check(up);
                foreach (u_profile k in q1)
                {
                    img_propic.Src = "ProfilePic/" + k.p_pic;

                }
                lbl_message.Text = "Update Successfully";
                lbl_message.ForeColor = System.Drawing.Color.Green;
            }
            else if(q==1)
            {
                lbl_message.Text = "Something went wrong";
                lbl_message.ForeColor = System.Drawing.Color.Red;

            }

        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }
    }
}