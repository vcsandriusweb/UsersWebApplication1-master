using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersWebApplication1.Document
{
    public partial class Workflow3 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!User.Identity.IsAuthenticated)
                {
                    Response.Redirect("~/Account/Login");
                }
                else
                {
                    if ((Session["assetName"] == null)|| (Session["content"] == null))
                    {
                        Response.Redirect("Workflow");
                    }
                    string assetName = Session["assetName"].ToString();
                    string content = Session["content"].ToString();
                    //add space between words
                    lblContent.Text = string.Concat(content.Select(c => char.IsUpper(c) ? " " + c.ToString() : c.ToString())).TrimStart(); ;
                }
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string design = rblDesign.SelectedValue.ToString();
            Session["design"] = design;
            if (Session["Type"].ToString() == "PDF")
            {
                Response.Redirect("Workflow4");
            }
            else if (Session["Type"].ToString() == "Email")
            {
                Response.Redirect("../Email/EmailWorkflow4");
            }
            else if (Session["Type"].ToString() == "Landing")
            {
                Response.Redirect("../Landing/LandingWorkflow");
            }
        }
    }
}