using Microsoft.AspNet.Identity.Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast;

namespace UsersWebApplication1.Email
{
    public partial class EmailWorkflow3 : System.Web.UI.Page
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
                    if ((Session["assetName"] == null) || (Session["content"] == null))
                    {
                        Response.Redirect("Workflow");
                    }
                    string assetName = Session["assetName"].ToString();
                    string content = Session["content"].ToString();
                    //add space between words
                    lblContent.Text = string.Concat(content.Select(c => char.IsUpper(c) ? " " + c.ToString() : c.ToString())).TrimStart(); ;

                    switch (content)
                    {
                        case "BusinessAgility":
                            rblDesignBusinessAgility.Visible = true;
                            break;
                        case "CloudManagement":
                            rblDesignCloudManagement.Visible = true;
                            break;
                        case "CostOptimization":
                            rblDesignCostOptimization.Visible = true;
                            break;
                        case "DigitalTransformation":
                            rblDesignDigitalTransformation.Visible = true;
                            break;
                        case "CloudSecurityResilience":
                            rblDesignCloudSecurityResilience.Visible = true;
                            break;
                    }
                }
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (Session["content"] == null)
            {
                Response.Redirect("Workflow");
            }
            string content = Session["content"].ToString();
            string design = string.Empty;
            switch (content)
            {
                case "BusinessAgility":
                    design = rblDesignBusinessAgility.SelectedValue.ToString();
                    break;
                case "CloudManagement":
                    design = rblDesignCloudManagement.SelectedValue.ToString();
                    break;
                case "CostOptimization":
                    design = rblDesignCostOptimization.SelectedValue.ToString();
                    break;
                case "DigitalTransformation":
                    design = rblDesignDigitalTransformation.SelectedValue.ToString();
                    break;
                case "CloudSecurityResilience":
                    design = rblDesignCloudSecurityResilience.SelectedValue.ToString();
                    break;
            }

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