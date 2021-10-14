using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;
using System.Net;
using System.Net.Mail;

namespace CCMS.Dashboard
{
    public partial class EmpRegisKotwali : System.Web.UI.Page
    {
        string email, pass, name;

        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var q = dl.getdataarea();
                if (q.Any())
                {
                    ddl_area.DataSource = q;

                    ddl_area.DataTextField = "area_name";
                    ddl_area.DataValueField = "id";
                    ddl_area.DataBind();
                    ddl_area.Items.Insert(0, "Select Area");

                }

            }
        }

        protected void ddl_area_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddl_area.SelectedIndex != 0)
            {
                int data = Convert.ToInt32(ddl_area.SelectedValue);
                var q = dl.getdatakotwali1(data);
                if (q.Any())
                {
                    ddl_kotwali.DataSource = q;
                    ddl_kotwali.DataTextField = "kotwali_name";
                    ddl_kotwali.DataValueField = "id";
                    ddl_kotwali.DataBind();
                    ddl_kotwali.Items.Insert(0, "Select Kotwali");
                }
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            employee er = new employee();
            er.e_name = t_name.Value.Trim();
            er.email_id = t_email.Value.Trim();
            er.cotact_no = Convert.ToInt64(t_contact_no.Value);
            er.designation = t_designation.Value.Trim();
            er.isactive = 0;
            er.c_date = DateTime.Now;
            er.pass = t_pass.Value.Trim();
            er.kotwali_name = ddl_kotwali.SelectedItem.Text;
            dl.EmpSaveData(er);
            //Response.Write("<script>alert('Registeration Successfully!!')</script>");
            var q = dl.getEmployeeDetails(t_email.Value);
            if (q.Any())
            {
                using (MailMessage m = new MailMessage())
                {
                    foreach (employee k in q)
                    {
                        email = k.email_id;
                        pass = k.pass;
                        name = k.e_name;
                    }

                    SmtpClient client = new SmtpClient();
                    m.To.Add(email);
                    m.IsBodyHtml = true;
                    m.Subject = "Registeration Details";
                    m.Body = "<strong>Hi,</strong>" + name + "<br />" + "Welcome to CCMS!!" + "<br />" + "<br />" + "Your UserId is: " + email + "<br />" + "Your Password is: " + pass;
                    m.From = new MailAddress("ccms.web2021@gmail.com");
                    client.Credentials = new NetworkCredential("ccms.web2021@gmail.com", "Nokia206@");

                    client.Host = "smtp.gmail.com";
                    client.Port = 25;

                    client.EnableSsl = true;
                    client.Send(m);
                }



                t_name.Value = t_email.Value = t_pass.Value = t_contact_no.Value = t_designation.Value = "";
                Response.Write("<script>alert('Registeration Successfully!!'); window.location='/Dashboard/EmpRegisChoki.aspx'</script>");

            }
        }
    }
}