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
    public partial class CustomerDetail : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                conn.Open();
                SqlDataAdapter cmd = new SqlDataAdapter("select * from customer", conn);
                DataTable dtbl = new DataTable();
                cmd.Fill(dtbl);
                grdvr.DataSource = dtbl;
                grdvr.DataBind();
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            conn.Open();
            string Name = nameTxt.Text.Trim();
            string Phone = contact.Text.Trim();
            string Type = customerType.Text.Trim();
            string Address = CAddress.Text.Trim();
            string Remark = CRemark.Text.Trim();
            string Company = CusCompany.Text.Trim();
            SqlCommand cmd = new SqlCommand("INSERT INTO customer(names,mobile,types,addre,remark,company) VALUES('" + nameTxt.Text + "','" + contact.Text + "','"+customerType.Text+"','"+CAddress.Text +"','"+CRemark.Text+"','"+CusCompany.Text+"')", conn);
            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("Sucsess");
                Response.Redirect("CustomerDetail.aspx");

            }
            else
            {
                Response.Write("Fail");
            }
            conn.Close();
        }
    }
}