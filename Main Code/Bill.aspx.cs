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

    public partial class Bill : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("SELECT * FROM Customer_Bill", conn);
                DataTable dtbl = new DataTable();
                cmd.Fill(dtbl);
                grdvr.DataSource = dtbl;
                grdvr.DataBind();
                CateBind();
                BrandBind();
            }
        }
        protected void BrandBind()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from BrandTable", conn);
            brand_name.DataSource = cmd.ExecuteReader();
            brand_name.DataTextField = "Brand";
            brand_name.DataValueField = "brand";
            brand_name.DataBind();
            brand_name.Items.Insert(0, new ListItem("--Select Brand--", "0"));
        }
        protected void CateBind()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM category", conn);
            category.DataSource = cmd.ExecuteReader();
            category.DataTextField = "Category";
            category.DataValueField = "category";
            category.DataBind();
            category.Items.Insert(0, new ListItem("--Select Category--", "0"));
            conn.Close();
        }

        protected void add_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                conn.Open();
                SqlClass obj = new SqlClass();
                string Names = CName.Text.Trim();
                string ItemName = item_name.Text.Trim();
                string Category = category.Text.Trim();
                string Brand = brand_name.Text.Trim();
                string Tax = tax.Text.Trim();
                int Price = Convert.ToInt32(price.Text);
                int Quantity = Convert.ToInt32(quant.Text);
                int Total = obj.calculate(total.Text);
            }

            SqlCommand cmd = new SqlCommand("INSERT INTO Customer_Bill(names,type,item_name,category,brand_name,tax,price,quant,total) VALUES('" + CName.Text + "','" + type.Text + "','" + item_name.Text + "','" + category.Text + "','" + brand_name.Text + "','" + tax.Text + "','" + price.Text + "','" + quant.Text + "','" + total.Text + "')", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Sucsess");
                Response.Redirect("Bill.aspx");

            }
            else
            {
                Response.Write("Fail");
            }
            conn.Close();
            }
        }
            
        }
    

