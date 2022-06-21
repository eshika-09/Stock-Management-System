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
    public partial class Category : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM category", conn);
            DataTable dtbl = new DataTable();
            cmd.Fill(dtbl);
            grdvr.DataSource = dtbl;
            grdvr.DataBind();
        }

        protected void save_Click(object sender, EventArgs e)
        {
            string Category = category.Text.Trim();
            SqlCommand cmd = new SqlCommand("INSERT INTO category(category) VALUES('" + category.Text + "')", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Sucsess");
                Response.Redirect("Category.aspx");

            }
            else
            {
                Response.Write("Fail");
            }
            conn.Close();
        }
    }
}