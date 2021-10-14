using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        datalayer1 dl1 = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //if (FileUpload1.HasFile && FileUpload2.HasFile)
            //{
            //    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/UserPic/" + FileUpload1.FileName));
            //    FileUpload2.PostedFile.SaveAs(Server.MapPath("~/UserPic/" + FileUpload2.FileName));
            //}

            u_registeration ur = new u_registeration();
            Login_detail ld = new Login_detail();
            u_profile up = new u_profile();
            
            ur.u_name = t_Name.Text.Trim();
            ur.email_id = t_Email.Text.Trim();
            ur.gender = RadioButtonList1.SelectedValue.ToString();
            ur.mobile_No = Convert.ToInt64(t_contact.Text);
            ur.isactive = 0;
            ur.c_date = DateTime.Now;
            ur.u_city = t_city.Text.Trim();
            ur.u_state = t_state.Text.Trim();

            ld.email_id = t_Email.Text.Trim();
            ld.pass = t_password.Text.Trim();
            ld.mobile_No = Convert.ToInt64(t_contact.Text);
            ld.isactive = 0;
            ld.u_type = 0;
            ld.c_date = DateTime.Now;
            //up.adhar_no = 0;
            up.c_date = DateTime.Now;
            up.isactive = 0;
            up.login_id = t_Email.Text.Trim();
            dl.SaveData(ur,ld,up);

            Response.Write("<script>alert('Sign Up Successfully!!')</script>");
            t_Name.Text = t_Email.Text = t_password.Text = t_confirmpass.Text =t_city.Text=t_state.Text=t_contact.Text= "";

            Response.Redirect("UserLogin.aspx");

        }

        protected void t_Email_TextChanged(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var q = dl1.checkEmail(t_Email.Text);
                if (q==0)
                {
                    //Label2.Text = "Himansh";

                }
               
            }
        }
    }
}
