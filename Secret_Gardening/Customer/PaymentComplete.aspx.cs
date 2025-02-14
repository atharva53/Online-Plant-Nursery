using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Xml.Linq;
using System.Configuration;

namespace Secret_Gardening.Customer
{
    public partial class PaymentComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label6.Text = Request.QueryString["C_Name"];
            Label8.Text = Request.QueryString["C_Number"];
            Label10.Text = Request.QueryString["C_Shipping"];


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Home.aspx");
        }
    }
}