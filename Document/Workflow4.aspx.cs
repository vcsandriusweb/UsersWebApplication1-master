using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast;

namespace UsersWebApplication1.Document
{
    public partial class Workflow4 : System.Web.UI.Page
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
                    if ((Session["assetName"] == null) || (Session["content"] == null) || (Session["design"] == null))
                    {
                        Response.Redirect("Workflow");
                    }
                    string assetName = Session["assetName"].ToString();
                    string content = Session["content"].ToString();
                    string design = Session["design"].ToString();
                    //add space between words
                    lblContent.Text = string.Concat(content.Select(c => char.IsUpper(c) ? " " + c.ToString() : c.ToString())).TrimStart(); ;

                    switch (design)
                    {
                        case "1":
                            lblDesign.Text = "Option one";
                            break;
                        case "2":
                            lblDesign.Text = "Option two";
                            break;
                        case "3":
                            lblDesign.Text = "Option three";
                            break;
                        case "4":
                            lblDesign.Text = "Option four";
                            break;
                        case "5":
                            lblDesign.Text = "Option five";
                            break;
                        case "6":
                            lblDesign.Text = "Option six";
                            break;
                        case "7":
                            lblDesign.Text = "Option seven";
                            break;
                        case "8":
                            lblDesign.Text = "Option eight";
                            break;
                        case "9":
                            lblDesign.Text = "Option nine";
                            break;
                        case "10":
                            lblDesign.Text = "Option ten";
                            break;
                    }


                }
            }
        }

        protected void btnPreview_Click(object sender, EventArgs e)
        {
            int documentDetailId = 0;
            if ((Session["assetName"] == null) || (Session["content"] == null) || (Session["design"] == null))
            {
                Response.Redirect("Workflow");
            }
            string Name = Session["assetName"].ToString();

            //Save values to db to retrieve when scraping html
            documentDetailId = SaveDocumentDetail(Name, Session["content"].ToString(), Session["design"].ToString(),
                txtFrontCoverHeadline.Text, txtFrontCoverSubheading.Text,
                txtInsideFrontCoverCopy.Text, txtBackCoverCopy.Text, txtBackCoverLink.Text);

            if (documentDetailId > 0)
            {
                if (Session["content"] == null)
                {
                    Response.Redirect("Workflow");
                }
                //Open in new window
                string pageName = Session["content"].ToString();
                //Add Id to query string
                pageName = ConfigurationManager.AppSettings["Host"].ToString() + "Document/Views/" + pageName + ".aspx?doc=" + documentDetailId.ToString();
                Session["pageName"] = pageName;

                //Reset 
                Session["htmlString"] = null;

                Response.Redirect("WorkflowPreview");
            }
        }

        #region SQL
        private int SaveDocumentDetail(string Name, string Content, string Design, string FrontCoverHeadline, string FrontCoverSubheading, string InsideFrontCoverCopy, string BackCoverCopy, string BackCoverLink)
        {
            int Id = 0;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("usp_SaveDocumentDetail", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add(new SqlParameter("@Name", Name));
                command.Parameters.Add(new SqlParameter("@Content", Content));
                command.Parameters.Add(new SqlParameter("@Design", Design));
                command.Parameters.Add(new SqlParameter("@FrontCoverHeadline", FrontCoverHeadline));
                command.Parameters.Add(new SqlParameter("@FrontCoverSubheading", FrontCoverSubheading));
                command.Parameters.Add(new SqlParameter("@InsideFrontCoverCopy", InsideFrontCoverCopy));
                command.Parameters.Add(new SqlParameter("@BackCoverCopy", BackCoverCopy));
                command.Parameters.Add(new SqlParameter("@BackCoverLink", BackCoverLink));

                command.Parameters.Add(new SqlParameter("@Id", SqlDbType.Int)).Direction = ParameterDirection.Output;

                command.Connection.Open();
                command.ExecuteNonQuery();

                Id = Convert.ToInt32(command.Parameters["@Id"].Value);
            }
            return Id;
        }
        #endregion

    }
}