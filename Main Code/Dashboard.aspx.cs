using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StockManagementSystems
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void admin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void bill_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bill.aspx");
        }

        protected void contacts_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void item_Click(object sender, EventArgs e)
        {
            Response.Redirect("Ad_Item.aspx");
        }

        protected void Category_Click(object sender, EventArgs e)
        {
            Response.Redirect("Category.aspx");
        }

        protected void Email_Click(object sender, EventArgs e)
        {
            Response.Redirect("Email.aspx");
        }

        protected void brand_Click(object sender, EventArgs e)
        {
            Response.Redirect("Brand.aspx");
        }

        protected void in_Click(object sender, EventArgs e)
        {
            Response.Redirect("In-Stock.aspx");
        }

        protected void out_Click(object sender, EventArgs e)
        {
            Response.Redirect("Out-Stock.aspx");
        }
    }
}