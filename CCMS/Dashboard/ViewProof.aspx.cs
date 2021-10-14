using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dal2;

namespace CCMS.Dashboard
{
    public partial class ViewProof : System.Web.UI.Page
    {
        datalayer1 dl = new datalayer1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                complain cm = new complain();
                cm.com_id =Convert.ToInt32( Request.QueryString["comv"]) ;

                var q = dl.CheckProof(cm);
                if (q.Any())
                {
                    foreach (complain k in q)
                    {
                        img_proof.Src = "../images/ComplainProofPic/" + k.com_proofpic;
                    }
                }
                


            }
            
        }
    }
}