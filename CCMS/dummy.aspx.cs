using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace CCMS
{
    public partial class dummy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MailMessage m = new MailMessage();
            SmtpClient client = new SmtpClient();
            m.To.Add("guptahimanshu3344@gmail.com");
            //m.CC.Add();
            m.IsBodyHtml = true;
            m.Subject = "Complain Generation";
            m.Body = "Hi," + "<br />";
            m.Body = "Welcome to CCMS!!" + "<br />";
            m.Body = "<strong>Hi,</strong>" + "<br />" + "Welcome to CCMS!!" + "<br />" + "<strong>Your Complain has been register successfully and your complain id is:</ strong > " ;
            m.From = new MailAddress("ccms.web2021@gmail.com");
            client.Credentials = new NetworkCredential("ccms.web2021@gmail.com", "Nokia206@");

            client.Host = "smtp.gmail.com";
            client.Port = 25;

            client.EnableSsl = true;
            client.Send(m);
        }
    }
}