using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Text;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Secret_Gardening.Dashboard
{
    public partial class Dashboard : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\athar\OneDrive\Desktop\New folder\Secret_Gardening - Copy\Secret_Gardening\App_Data\Database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }
        protected void LogOut_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;


            try
            {

                try
                {
                    cmd.CommandText = "select Id from Login";

                    int a = (int)(cmd.ExecuteScalar());
                    if (a > 0)
                    {

                        cmd.CommandText = "DELETE FROM Login";
                        cmd.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Log Out successfull..');window.location ='../Customer/Home.aspx';",
true);

                  

                    }


                }
                catch
                {
                    Response.Write("<script>alert('Log In First')</script>");

                }




            }
            catch (Exception e0)
            {
                Response.Write("<script>alert('Log In First')</script>");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyProfile.aspx?UserId=" + Request.QueryString["UserId"]);

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyOrders.aspx?UserId=" + Request.QueryString["UserId"]);

        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Customer/Home.aspx");
        }

        

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("EditProfile.aspx?UserId=" + Request.QueryString["UserId"]);
        }

    }
}