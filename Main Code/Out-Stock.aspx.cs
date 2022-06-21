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
    public partial class Out_Stock : System.Web.UI.Page
    {
     protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }

        protected void BindData()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            SqlDataAdapter cmd = new SqlDataAdapter("Select * from Customer_Bill where type = 'Customer'", conn);
            DataTable dtbl = new DataTable();
            cmd.Fill(dtbl);
            grdvr.DataSource = dtbl;
            grdvr.DataBind();
        }


    }
}