using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class Feedback : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            review r = new review();
            r.com_id = Convert.ToInt32(DropDownList1.SelectedItem.Text);
            r.full_name = Name.Text;
            r.email_id = Session["email_id"].ToString();
            r.contact_no =Convert.ToInt64( Phone_No.Text);
            r.r_subject = Subject.Text;
            r.r_message = Message.Text;
            dl.SaveFeedback(r);

            Response.Write("<script>alert('Review Submited Successfully!!')</script>");
            Name.Text = Phone_No.Text = Subject.Text = Message.Text = "";


        }
    }
}