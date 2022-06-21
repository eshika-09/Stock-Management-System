using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

namespace StockManagementSystems
{
    public class SqlClass
    {
        public SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        public SqlCommand cmd = new SqlCommand();
        public SqlDataAdapter adp = new SqlDataAdapter();
        public SqlDataReader dr;
        public DataSet ds = new DataSet();

        public int calculate(string qry)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            int total = 0;
            conn.Open();
            cmd.Connection = conn;
            cmd.CommandText = qry;
            try
            {
                total = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch (Exception)
            {
                total = 0;
            }
            conn.Close();
            return total;
        }
       
    }
}