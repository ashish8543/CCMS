using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class EmpViewFeedback : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Bind();
            }
        }
        void Bind()
        {
            Repeater1.DataSource = dl.getReview();
            Repeater1.DataBind();
        }
    }
}