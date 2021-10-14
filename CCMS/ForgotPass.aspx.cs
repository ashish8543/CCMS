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
    public partial class ForgotPass : System.Web.UI.Page
    {
        string pass;
        datalayer dl = new datalayer();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            
            Login_detail ld = new Login_detail();
            ld.email_id = t_email.Value;
            var q = dl.forgetPass(ld);
            if(q.Any())
            {
                foreach (Login_detail k in q)
                {
                     pass = k.pass;
                }


                using (MailMessage m = new MailMessage())
                {

                    SmtpClient client = new SmtpClient();
                    m.To.Add(t_email.Value);
                    m.IsBodyHtml = true;
                    m.Subject = "Reset Password";
                    m.Body = "<strong>Hi,</strong> " +  "<br />";
                    m.Body = "<strong>Welcome to CCMS!!</strong> " + "<br />";

                    m.Body = "<strong>Your password is:</ strong > " + pass;
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


            //using (MailMessage m = new MailMessage())
            //{

            //    SmtpClient client = new SmtpClient();
            //    m.To.Add(t_email.Value);

            //    m.Subject = "Reset Password";
            //    m.Body = "Your password is: " + s;
            //    //m.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
            //    m.IsBodyHtml = true;
            //    m.From = new MailAddress("ccms.web2021@gmail.com");
            //    client.Credentials = new NetworkCredential("ccms.web2021@gmail.com", "Nokia206@");

            //    client.Host = "smtp.gmail.com";
            //    client.Port = 25;

            //    client.EnableSsl = true;
            //    client.Send(m);
            //    Response.Write("<script>alert('Password Send to your Email Successfully..!!')</script>");
            //}
            //var q = dl.forgotpass(t_email.Value);
            //if (q == 0)
            //{
            //    Session["email_id"] = t_email.Value;
            //    Response.Redirect("Forgotpass1.aspx");
            //}

            //else if (q == 1)
            //{
            //    Response.Write("<script>alert('Enter Valid Email !!')</script>");
            //}

        }
    }
}