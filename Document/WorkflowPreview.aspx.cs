using HtmlAgilityPack;
using SelectPdf;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast;

namespace UsersWebApplication1.Document
{
    public partial class WorkflowPreview : System.Web.UI.Page
    {
        string htmlString = string.Empty;
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
                    string design = Session["design"].ToString();
                    txtAssetName.Text = assetName;
                    imgPreview.Src = "../Images/Shared/Thumbnail/" + design + "/Slide1.PNG";
                }
            }
        }

        protected void btnViewPreview_Click(object sender, EventArgs e)
        {
            string assetName = txtAssetName.Text;
            Session["assetName"] = assetName;

            if (Session["pageName"] == null)
            {
                Response.Redirect("Workflow");
            }
            string pageName = Session["pageName"].ToString();
            //The preview was opening too big so needed to create a normal size preview
            pageName = pageName.Replace("Views", "Preview");
            string newWin = "window.open('" + pageName + "','_blank');";
            ClientScript.RegisterStartupScript(this.GetType(), "pop", newWin, true);

        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            string assetName = txtAssetName.Text;
            Session["assetName"] = assetName;

            htmlString = GetHTML();

            string pdf_page_size = "A4";
            PdfPageSize pageSize = (PdfPageSize)Enum.Parse(typeof(PdfPageSize),
                pdf_page_size, true);

            string pdf_orientation = "Landscape";
            PdfPageOrientation pdfOrientation =
                (PdfPageOrientation)Enum.Parse(typeof(PdfPageOrientation),
                pdf_orientation, true);


            // instantiate a html to pdf converter object
            HtmlToPdf converter = new HtmlToPdf();

            // set converter options
            converter.Options.PdfPageSize = pageSize;
            converter.Options.PdfPageOrientation = pdfOrientation;
            //stop cutting images
            converter.Options.AutoFitWidth = HtmlToPdfPageFitMode.AutoFit;
            SelectPdf.GlobalProperties.LicenseKey = ConfigurationManager.AppSettings["SelectPDFLicenseKey"].ToString();
            // create a new pdf document converting a url
            SelectPdf.PdfDocument doc = converter.ConvertHtmlString(htmlString);

            // save pdf document
            doc.Save(ConfigurationManager.AppSettings["downloadPath"].ToString() + Session["assetName"].ToString() + ".pdf");

            // close pdf document
            doc.Close();


            //download file to user's browser
            #region Response.ContentType
            string filePath = ConfigurationManager.AppSettings["downloadPath"].ToString()
                 + Session["assetName"].ToString() + ".pdf";
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


        private string RemoveStrings(string html)
        {
            //Remove __VIEWSTATE
            int indexOfStart = html.IndexOf("<input type=hidden");
            int indexOfEnd = html.Substring(indexOfStart).IndexOf(">") + 1; //+1 to include end character
            html = html.Remove(indexOfStart, indexOfEnd);

            //reset indexes
            indexOfStart = indexOfEnd = 0;

            //Remove __VIEWSTATEGENERATOR
            indexOfStart = html.IndexOf("<input type=hidden");
            indexOfEnd = html.Substring(indexOfStart).IndexOf(">") + 1; //+1 to include end character
            html = html.Remove(indexOfStart, indexOfEnd);

            return html;
        }

        private string GetHTML()
        {
            if (Session["pageName"] == null)
            {
                Response.Redirect("Workflow");
            }
            htmlString = string.Empty;
            //HTMLAgilityPack
            HtmlDocument document2 = new HtmlDocument();
            string url = Session["pageName"].ToString();


            #region Get HTML HttpClient
            HttpClient client = new HttpClient();
            var response = client.GetStringAsync(url).Result;
            htmlString = response.ToString();
            #endregion

            htmlString = htmlString.Replace(System.Environment.NewLine, string.Empty).Replace("\"", string.Empty);

            //remove hidden fields in html
            htmlString = RemoveStrings(htmlString);

            Session["htmlString"] = htmlString;
            return htmlString;
        }


    }
}