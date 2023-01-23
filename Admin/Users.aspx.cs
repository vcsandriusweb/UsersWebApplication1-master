using Microsoft.AspNet.Identity;
using Microsoft.Owin;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Security.Cryptography;
using System.Web;
using System.Web.Helpers;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UsersWebApplication1.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (User.Identity.IsAuthenticated)
                {
                    if (User.IsInRole("Admin"))
                    {
                        LoadUsers();
                        //Bind data to the GridView control.
                        BindData();
                    }
                    else
                    {
                        Response.Redirect("../Default.aspx");
                    }
                }
                else
                {
                    Response.Redirect("~/Account/Login");
                }
            }
        }

        private void BindData()
        {
            if (Session["UserTable"] != null)
            {
                gvUsers.DataSource = Session["UserTable"];
                gvUsers.DataBind();
            }
            else
            {
                LoadUsers();
                gvUsers.DataSource = Session["UserTable"];
                gvUsers.DataBind();
            }
        }

        private void LoadUsers()
        {
            DataTable dt = LoadUserData();
            Session["UserTable"] = dt;
        }

        private DataTable LoadUserData()
        {
            DataTable table = new DataTable();
            using (var con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            using (var cmd = new SqlCommand("usp_GetUserData", con))
            using (var da = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                da.Fill(table);
            }

            return table;
        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            //Set the edit index.
            gvUsers.EditIndex = e.NewEditIndex;
            //Bind data to the GridView control.
            BindData();

        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //Reset the edit index.
            gvUsers.EditIndex = -1;
            //Bind data to the GridView control.
            BindData();
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string Id, Email, UserName, FirstName, Surname, Role;
            GridViewRow row = gvUsers.Rows[e.RowIndex];
            Id = gvUsers.DataKeys[e.RowIndex]["Id"].ToString();

            FirstName = ((TextBox)(row).Cells[1].Controls[0]).Text;
            Surname = ((TextBox)(row).Cells[2].Controls[0]).Text;
            Email = ((TextBox)(row).Cells[3].Controls[0]).Text;
            Role = ((TextBox)(row).Cells[4].Controls[0]).Text;
            UserName = Email;
            string Password = Models.Crypto.HashPassword(ConfigurationManager.AppSettings["DefaultUserPassword"].ToString());

            //Save to db
            if (!SaveUser(Id, Email, UserName, FirstName, Surname, Role, Password))
            {
                Response.Write("User not saved");
            }

            //Reset the edit index.
            gvUsers.EditIndex = -1;
            //get new values from db
            LoadUsers();
            //Bind data to the GridView control.
            BindData();
        }

        private bool SaveUser(string Id, string Email, string UserName, string FirstName, string Surname, string Role, string Password)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("usp_SaveUserData", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add(new SqlParameter("@Id", Id));
                command.Parameters.Add(new SqlParameter("@Email", Email));
                command.Parameters.Add(new SqlParameter("@UserName", UserName));
                command.Parameters.Add(new SqlParameter("@FirstName", FirstName));
                command.Parameters.Add(new SqlParameter("@Surname", Surname));
                command.Parameters.Add(new SqlParameter("@Role", Role));
                command.Parameters.Add(new SqlParameter("@Password", Password));

                command.Connection.Open();
                command.ExecuteNonQuery();
            }

            return true;
        }

        protected void gvUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUsers.PageIndex = e.NewPageIndex;
            //Bind data to the GridView control.
            BindData();
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = gvUsers.Rows[e.RowIndex];
            string Id = gvUsers.DataKeys[e.RowIndex]["Id"].ToString();

            //Delete from db
            if (!DeleteUser(Id))
            {
                Response.Write("User not saved");
            }

            //get new values from db
            LoadUsers();
            //Bind data to the GridView control.
            BindData();
        }

        private bool DeleteUser(string Id)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("usp_DeleteUserData", connection);
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add(new SqlParameter("@Id", Id));

                command.Connection.Open();
                command.ExecuteNonQuery();
            }

            return true;
        }

        protected void btnAddRow_Click(object sender, EventArgs e)
        {
            DataTable dt = LoadUserData();
            Session["UserTable"] = dt;

            DataRow NewRow = dt.NewRow();

            dt.Rows.Add(NewRow);
            gvUsers.DataSource = dt; //specify the source
            gvUsers.DataBind();

        }
    }
}