using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersWebApplication1.Document
{
    public partial class Workflow2 : System.Web.UI.Page
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

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            string content = rblContent.SelectedValue.ToString();
            string assetName = txtAssetName.Text;

            Session["content"] = content;
            Session["assetName"] = assetName;

            if (Session["Type"].ToString() == "PDF")
            {
                Response.Redirect("Workflow3");
            }
            else if (Session["Type"].ToString() == "Email")
            {
                Response.Redirect("../Email/EmailWorkflow3");
            }
            else if (Session["Type"].ToString() == "Landing")
            {
                Response.Redirect("../Landing/LandingWorkflow3");
            }
        }
    }
}