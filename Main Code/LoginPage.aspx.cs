using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace StockManagementSystems
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
        }

        protected void login_Click(object sender, EventArgs e)
        {
            string check = ("SELECT count (*) FROM [dbo].[Signup] where username = '" + username.Text + "'and password = '" + pass.Text + "'");
            SqlCommand cmd = new SqlCommand(check, conn);
                int a= Convert.ToInt32(cmd.ExecuteScalar().ToString());
                conn.Close();
                if (a == 1)
                {
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    error.Text = "Your Username or password in Invalid";
                }

        }
    }
}