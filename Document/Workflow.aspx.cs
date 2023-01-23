using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersWebApplication1.Document
{
    public partial class Workflow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                if (!User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Account/Login");
                }
            }
        }

        protected void btnPDFDocument_Click(object sender, EventArgs e)
        {
            Session["Type"] = "PDF";
            Response.Redirect("Workflow2");
        }

        protected void btnHTMLEmail_Click(object sender, EventArgs e)
        {
            Session["Type"] = "Email";
            Response.Redirect("Workflow2");
        }

        protected void btnWebsiteLandingPage_Click(object sender, EventArgs e)
        {
            Session["Type"] = "Landing";
            Response.Redirect("Workflow2");
        }
    }
}