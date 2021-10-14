using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;
using System.Net;
using System.Net.Mail;


namespace CCMS
{
    public partial class EmpForgotPass : System.Web.UI.Page
    {
        string pass;
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            employee ld = new employee();
            ld.email_id = t_email.Value;
            var q = dl.empforgetPass(ld);
            if (q.Any())
            {
                foreach (employee k in q)
                {
                    pass = k.pass;
                }


                using (MailMessage m = new MailMessage())
                {

                    SmtpClient client = new SmtpClient();
                    m.To.Add(t_email.Value);
                    m.IsBodyHtml = true;
                    m.Subject = "Reset Password";
                    m.Body = "<strong>Hi,</strong> " + "<br />"+ "Welcome to CCMS!! "+ "<br />"+ "<br />"+ " Your password is: "+ pass;

                    //m.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
                    m.From = new MailAddress("ccms.web2021@gmail.com");
                    client.Credentials = new NetworkCredential("ccms.web2021@gmail.com", "Nokia206@");

                    client.Host = "smtp.gmail.com";
                    client.Port = 25;

                    client.EnableSsl = true;
                    client.Send(m);
                    Response.Write("<script>alert('Password Send to your Email Successfully..!!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid User or Email..!!')</script>");

            }
            t_email.Value = "";
        }
    }
}