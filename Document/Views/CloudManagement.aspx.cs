﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersWebApplication1.Document.Views
{
    public partial class CloudManagement : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string doc = Request.QueryString["doc"].ToString();
                int documentDetailId = 0;
                int.TryParse(doc, out documentDetailId);

                DataTable documentTable = LoadDocumentDetail(documentDetailId);
                if (documentTable.Rows.Count > 0)
                {
                    string Design = documentTable.Rows[0].ItemArray[1].ToString();
                    lblFrontCoverHeadline.Text = documentTable.Rows[0].ItemArray[2].ToString();
                    lblFrontCoverSubheading.Text = documentTable.Rows[0].ItemArray[3].ToString();
                    lblInsideFrontCoverCopy.Text = documentTable.Rows[0].ItemArray[4].ToString();
                    lblBackCoverCopy.Text = documentTable.Rows[0].ItemArray[5].ToString();
                    lblBackCoverLink.Text = documentTable.Rows[0].ItemArray[6].ToString();

                    imgSlide1.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/Shared/" + Design + "/Slide1.PNG";

                    imgSlide2.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide2.PNG";
                    imgSlide3.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide3.PNG";
                    imgSlide4.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide4.PNG";
                    imgSlide5.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide5.PNG";
                    imgSlide6.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide6.PNG";
                    imgSlide7.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide7.PNG";
                    imgSlide8.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide8.PNG";
                    imgSlide9.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide9.PNG";
                    imgSlide10.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide10.PNG";
                    imgSlide11.Src = ConfigurationManager.AppSettings["Host"].ToString() + "Images/CloudManagement/Slide11.PNG";

                }
            }
        }

        private DataTable LoadDocumentDetail(int Id)
        {
            DataTable table = new DataTable();
            using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            using (var cmd = new SqlCommand("usp_GetDocumentDetail", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.Parameters.Add(new SqlParameter("@Id", Id));
                cmd.CommandType = CommandType.StoredProcedure;
                da.Fill(table);
            }

            return table;
        }
    }
}