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
    public partial class Ad_Item : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select * from ItemTable", conn);
                DataTable dtbl = new DataTable();
                cmd.Fill(dtbl);
                grdvr.DataSource = dtbl;
                grdvr.DataBind();
                BindCategory();
                BindBrand();
            }
        }

        protected void BindBrand()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from BrandTable", conn);
            ItemBrndList.DataSource = cmd.ExecuteReader();
            ItemBrndList.DataTextField = "Brand";
            ItemBrndList.DataValueField = "brand";
            ItemBrndList.DataBind();
            ItemBrndList.Items.Insert(0, new ListItem("--Select Brand--", "0"));

            conn.Close();
        }

        public void BindCategory()
        {

            SqlCommand cmd = new SqlCommand ("select * from category",conn);
            CategoryList.DataSource = cmd.ExecuteReader();
            CategoryList.DataTextField = "Category";
            CategoryList.DataValueField = "category";
            CategoryList.DataBind();
            CategoryList.Items.Insert(0, new ListItem("--Select Category--", "0"));
            conn.Close();
        }


        protected  void edit_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("UPDATE ItemTable SET category = '" + CategoryList.Text + "',brand_name = '" + ItemBrndList.Text + "',item_name = '" + ItemName.Text + "',unit ='" + unitDDL.Text + "',tax ='" + taxTxt.Text + "' WHERE id='" + txt.Text + "'", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Update Sucess");
                Response.Redirect("Ad_Item.aspx");
            }
            else
            {
                Response.Write("Update Fail");
            }

            conn.Close();
            grdvr.DataBind();
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM ItemTable WHERE id='" + txt.Text + "'", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("delete success");
                Response.Redirect("Ad_Item.aspx");
            }
            else
            {
                Response.Write("delete fail");
            }

            conn.Close();
            grdvr.DataBind();
        }

        protected void save_Click(object sender, EventArgs e)
        {
            conn.Open();

            string category = CategoryList.Text.Trim();
            string brand = ItemBrndList.Text.Trim();
            string item_name = ItemName.Text.Trim();
            string unit = unitDDL.Text.Trim();
            string tax = taxTxt.Text.Trim();
            SqlCommand cmd = new SqlCommand("insert into ItemTable (category,brand_name,item_name,unit,tax) values ('"+CategoryList.Text+"','" + ItemBrndList.Text + "','" + ItemName.Text + "','" + unitDDL.Text + "','" + taxTxt.Text + "')", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Success");
                Response.Redirect("Ad_Item.aspx");
            }
            else
            {
                Response.Write("Fail");
            }
            conn.Close();
            grdvr.DataBind();
        }
    }
}

       