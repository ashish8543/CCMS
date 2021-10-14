using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;
using System.Net;
using System.Net.Mail;
using System.Threading;

namespace CCMS
{
    public partial class complaintpage : System.Web.UI.Page
    {
        datalayer dl = new datalayer();
        int id; string name, subject;

        public void state()
        {
            var q = dl.getdatastate();
            if (q.Any())
            {
                ddl_state.DataSource = q;

                ddl_state.DataTextField = "state_name";
                ddl_state.DataValueField = "id";
                ddl_state.DataBind();
                ddl_state.Items.Insert(0, "Select State");

            }

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                state();
            }


            
            
          

            

         

        }



        protected void btn_submit_Click(object sender, EventArgs e)
        {
            complain comp = new complain();
            comp.u_name = t_name.Text.Trim();
            comp.contact_num =Convert.ToInt64(t_con.Text);
            comp.state_name = ddl_state.SelectedItem.Text;
            comp.city_name = ddl_city.SelectedItem.Text;
            comp.area_name = ddl_area.SelectedItem.Text;
            comp.pin_code = Convert.ToInt32( t_pcode.Text);
            comp.kotwali_name = ddl_kotwali.SelectedItem.Text;
            comp.thana_name = ddl_thana.SelectedItem.Text;
            comp.choki_name = ddl_choki.SelectedItem.Text;
            comp.com_sub = t_subject.Text;
            comp.com_type = t_type.Text;
            FileUpload1.SaveAs(Server.MapPath("images/ComplainProofPic/" + FileUpload1.FileName));
            comp.com_proofpic = FileUpload1.FileName;
            comp.com_des = t_desc.Text;
            comp.occurence_date = t_occdate.Text;
            comp.c_date = DateTime.Now;
            comp.isactive = 0;
            comp.anyaction = t_address.Text;
            comp.email_id = Session["email_id"].ToString();
            comp.aadhar_no =Convert.ToInt64( t_aadhar.Text);
            dl.SaveComplain(comp);
            

            var q = dl.getComplainDetails(Session["email_id"].ToString());
            if (q.Any())
            {
                using (MailMessage m = new MailMessage())
                {
                    foreach (complain k in q)
                    {
                        id = k.com_id;
                        name = k.u_name;
                        subject = k.com_sub;
                    }

                    SmtpClient client = new SmtpClient();
                    m.To.Add(Session["email_id"].ToString());
                    m.CC.Add(ViewState["email"].ToString());
                    m.IsBodyHtml = true;
                    m.Subject = "Complain Generation";
                    m.Body = "<strong>Hi,</strong>" + name + "<br />" + "Welcome to CCMS!!" + "<br />"+  "Your Complain has been register successfully." + "<br />" + "<br />" + "Your Complain Subject is: " + subject + "<br />" + "Your Complain Id is: " + id;
                    m.From = new MailAddress("ccms.web2021@gmail.com");
                    client.Credentials = new NetworkCredential("ccms.web2021@gmail.com", "Nokia206@");

                    client.Host = "smtp.gmail.com";
                    client.Port = 587;

                    client.EnableSsl = true;
                    client.Send(m);
                }
            
            Response.Write("<script>alert('Complain Registered Successfully!!'); window.location='/Dashboard/UserHome.aspx'</script>");




            }
        }

        protected void btn_cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHome.aspx");
        }

        protected void ddl_state_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_state.SelectedIndex != 0)
            {
                int data = Convert.ToInt32(ddl_state.SelectedValue);
                var q = dl.getdatacity(data);
                if (q.Any())
                {
                    ddl_city.DataSource = q;
                    ddl_city.DataTextField = "ct_name";
                    ddl_city.DataValueField = "id";
                    ddl_city.DataBind();
                    ddl_city.Items.Insert(0, "Select City");
                }
            }
                

        }
        


        protected void ddl_area_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_area.SelectedIndex != 0)
            {
                int data = Convert.ToInt32(ddl_area.SelectedValue);
                var q = dl.getdatakotwali(data);
                if (q.Any())
                {

                    ddl_kotwali.DataSource = q;
                    ddl_kotwali.DataTextField = "kotwali_name";
                    ddl_kotwali.DataValueField = "id";
                    ddl_kotwali.DataBind();
                    ddl_kotwali.Items.Insert(0, "Please Select Kotwali");

                }
            }
            t_pcode.Text = ViewState["PinCode"].ToString();
        }

        protected void ddl_city_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_city.SelectedIndex != 0)
            {
                int data = Convert.ToInt32(ddl_city.SelectedValue);
                var q = dl.getdataarea(data);
                if (q.Any())
                {
                    foreach (area k in q )
                    {
                        ViewState["PinCode"] = k.pin_code;

                    }

                    ddl_area.DataSource = q;
                    ddl_area.DataTextField = "area_name";
                    ddl_area.DataValueField = "id";
                    ddl_area.DataBind();
                    ddl_area.Items.Insert(0, "Please Select Area");
                }
                
            }
        }

        protected void ddl_kotwali_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_kotwali.SelectedIndex != 0)
            {
                int data = Convert.ToInt32(ddl_kotwali.SelectedValue);
                var q = dl.getdatathana(data);
                if (q.Any())
                {
                    ddl_thana.DataSource = q;
                    ddl_thana.DataTextField = "thana_name";
                    ddl_thana.DataValueField = "id";
                    ddl_thana.DataBind();
                    ddl_thana.Items.Insert(0, "Select Thana");
                }
            }
        }

        protected void ddl_choki_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            {
                string choki = ddl_choki.SelectedItem.Text;
                var q = dl.getEmployee(choki);

                if (q.Any())
                {
                    foreach (employee k in q)
                    {
                        ViewState["email"] = k.email_id;
                    }
                }
            }
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Dashboard/UserHome.aspx");
        }

        protected void ddl_thana_SelectedIndexChanged(object sender, EventArgs e)
        {
            
                if (ddl_thana.SelectedIndex != 0)
                {
                    int data = Convert.ToInt32(ddl_thana.SelectedValue);
                    var q = dl.getdatachoki(data);
                    if (q.Any())
                    {
                        ddl_choki.DataSource = q;
                        ddl_choki.DataTextField = "choki_name";
                        ddl_choki.DataValueField = "id";
                        ddl_choki.DataBind();
                        ddl_choki.Items.Insert(0, "Select Choki");
                    }
                }
            
        }
    }
}