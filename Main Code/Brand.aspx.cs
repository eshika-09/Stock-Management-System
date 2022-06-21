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
    public partial class Brand : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM BrandTable", conn);
                DataTable dtbl = new DataTable();
                cmd.Fill(dtbl);
                grdvr.DataSource = dtbl;
                grdvr.DataBind();
                Bind();
            }
        }

        protected void Bind()
        
            
           {
                SqlCommand cmd = new SqlCommand("SELECT * FROM category", conn);
                cateList.DataSource = cmd.ExecuteReader();
                cateList.DataTextField = "Category";
                cateList.DataValueField = "category";
                cateList.DataBind();
                cateList.Items.Insert(0, new ListItem("--Select Category--", "0"));
                conn.Close();
            }
        
  

        protected void save_Click(object sender, EventArgs e)
        {
            conn.Open();
            string Brand = brndName.Text.Trim();
            SqlCommand cmd = new SqlCommand("INSERT INTO BrandTable(category,brand) VALUES('" + cateList.Text + "','" + brndName.Text + "')", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Sucsess");
                Response.Redirect("Brand.aspx");

            }
            else
            {
                Response.Write("Fail");
            }
            conn.Close();

        }
        
    }
}