using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace StockManagementSystems
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            showData();
            //SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM AdminPage", conn);
            //DataTable dtbl = new DataTable();
            //cmd.Fill(dtbl);
            //grdvr.DataSource = dtbl;
            //grdvr.DataBind();
        }

        private void showData()
        {
            //string query = "select * from AdminPage";
            //SqlDataAdapter da = new SqlDataAdapter(query, conn);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //grdvr.DataSource = ds;
            //grdvr.DataBind();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM AdminPage", conn);
            DataTable dtbl = new DataTable();
            cmd.Fill(dtbl);
            grdvr.DataSource = dtbl;
            grdvr.DataBind();
        }

        protected void save_Click(object sender, EventArgs e)
        {
            string Username = username.Text.Trim();
            string User_Id = ID.Text.Trim();
            string Password = pass.Text.Trim();
            string Grade = grade.Text.Trim();
            SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[AdminPage](username,user_id,password,user_grade) VALUES('" + username.Text + "', '" + ID.Text + "','" + pass.Text + "','" + grade.Text + "')", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Sucsess");
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Write("Fail");
            }
            showData();
            conn.Close();
            
        }


        protected void btnupdate_Click(object sender, EventArgs e)
        {
            {
                SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[AdminPage] SET [username] = '" + username.Text + "',[user_id] = '" + ID.Text + "',[password] = '" + pass.Text + "',[user_grade] ='" + grade.Text + "' where id='" + lblmsg.Text + "' ", conn);
                int a = cmd.ExecuteNonQuery();
                if (a > 0)
                {

                    Response.Write("Update Sucess");
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Write("Update Fail");
                }

                showData();
                conn.Close();
                
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[AdminPage] WHERE id='" + lblmsg.Text + "'", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("delete success");
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Response.Write("delete fail");
            }
            showData();
            conn.Close();
            
        }

    }
}