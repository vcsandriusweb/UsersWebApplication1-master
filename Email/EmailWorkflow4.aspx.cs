using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ToolTip;

namespace UsersWebApplication1.Email
{
    public partial class EmailWorkflow4 : System.Web.UI.Page
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

                    string designfriendlyname = design.Replace("-", " ").Replace(".html", "");
                    lblDesign.Text = FirstCharToUpper(designfriendlyname);
                }

            }
        }
        public static string FirstCharToUpper(string input)
        {
            if (String.IsNullOrEmpty(input))
                throw new ArgumentException("ARGH!");
            return input.First().ToString().ToUpper() + input.Substring(1);
        }


        protected void btnPreview_Click(object sender, EventArgs e)
        {
            string email = string.Empty;
            string phone = string.Empty;
            string jobtitle = string.Empty;
            string userfullname = string.Empty;
            string customclosetext = string.Empty;
            string customgreetingheader = string.Empty;
            string customgreetingtext = string.Empty;
            string htmlString = string.Empty;

            if (Session["userDetails"] != null)
            {
                DataTable userDetails = new DataTable();
                userDetails = (DataTable)Session["userDetails"];
                email = userDetails.Rows[0].ItemArray[3].ToString();
                userfullname = userDetails.Rows[0].ItemArray[1].ToString()
                    + " "
                    + userDetails.Rows[0].ItemArray[2].ToString();
            }

            phone = txtPhone.Text;
            jobtitle = txtJobTitle.Text;
            customclosetext = txtCustomCloseText.Text;
            customgreetingheader = txtCustomGreetingHeader.Text;
            customgreetingtext = txtCustomGreetingText.Text;

            int emailDetailId = 0;
            if (Session["assetName"] == null)
            {
                Response.Redirect("Workflow");
            }
            string Name = Session["assetName"].ToString();

            htmlString = GetHTML(Name, Session["content"].ToString(), Session["design"].ToString(), email, phone,
                jobtitle, userfullname, customclosetext, customgreetingheader, customgreetingtext);

            //Save values to db to retrieve when scraping html
            emailDetailId = SaveEmailDetail(Name, Session["content"].ToString(), Session["design"].ToString(), email, phone,
                jobtitle, userfullname, customclosetext, customgreetingheader, customgreetingtext, htmlString);


            if (emailDetailId > 0)
            {
                //File.WriteAllText(@"C:/temp/" + Session["assetName"].ToString() + ".html", htmlString);
                var htmlDoc = new HtmlDocument();
                htmlDoc.LoadHtml(htmlString);

                htmlDoc.Save(ConfigurationManager.AppSettings["downloadPath"].ToString() + Session["assetName"].ToString() + ".html");

                //download file to user's browser
                #region Response.ContentType
                string filePath = ConfigurationManager.AppSettings["downloadPath"].ToString()
                     + Session["assetName"].ToString() + ".html";
                FileInfo file = new FileInfo(filePath);
                if (file.Exists)
                {
                    Response.Clear();
                    Response.ClearHeaders();
                    Response.ClearContent();
                    Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                    Response.AddHeader("Content-Length", file.Length.ToString());
                    Response.ContentType = "text/plain";
                    Response.Flush();
                    Response.TransmitFile(file.FullName);
                    Response.End();
                }
                #endregion

            }
        }

        private string GetHTML(string Name, string Content, string Design, string email, string phone, string jobtitle, string userfullname, string customclosetext, string customgreetingheader, string customgreetingtext)
        {
            string htmlString = string.Empty;

            //HTMLAgilityPack
            #region Get HTML from file
            var path = ConfigurationManager.AppSettings["path"].ToString() + "/" + Session["content"].ToString() + "/" + Session["design"].ToString();

            var doc = new HtmlDocument();
            doc.Load(path);

            htmlString = doc.Text;
            #endregion

            //insert user values into html
            htmlString = htmlString.Replace("{email}", email);
            htmlString = htmlString.Replace("{phone}", phone);
            htmlString = htmlString.Replace("{job-title}", jobtitle);
            htmlString = htmlString.Replace("{user-fullname}", userfullname);
            htmlString = htmlString.Replace("{custom-close-text}", customclosetext);
            htmlString = htmlString.Replace("{custom-greeting-header}", customgreetingheader);
            htmlString = htmlString.Replace("{custom-greeting-text}", customgreetingtext);


            return htmlString;
        }

        #region SQL
        private int SaveEmailDetail(string Name, string Content, string Design, string email, string phone, string jobtitle, string userfullname, string customclosetext, string customgreetingheader, string customgreetingtext, string htmlString)
        {
            int Id = 0;
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("usp_SaveEmailDetail", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add(new SqlParameter("@Name", Name));
                command.Parameters.Add(new SqlParameter("@Content", Content));
                command.Parameters.Add(new SqlParameter("@Design", Design));
                command.Parameters.Add(new SqlParameter("@email", email));
                command.Parameters.Add(new SqlParameter("@phone", phone));
                command.Parameters.Add(new SqlParameter("@jobtitle", jobtitle));
                command.Parameters.Add(new SqlParameter("@userfullname", userfullname));
                command.Parameters.Add(new SqlParameter("@customclosetext", customclosetext));
                command.Parameters.Add(new SqlParameter("@customgreetingheader", customgreetingheader));
                command.Parameters.Add(new SqlParameter("@customgreetingtext", customgreetingtext));
                command.Parameters.Add(new SqlParameter("@htmlString", htmlString));

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