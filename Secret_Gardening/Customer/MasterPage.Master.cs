using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace Secret_Gardening.Customer
{
    public partial class MasterPage : System.Web.UI.MasterPage
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


        protected void Dashboard_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            try
            {

                cmd.CommandText = "select UserId from Login";

                string UserId = (string)cmd.ExecuteScalar();

                cmd.CommandText = "select Id from Login ";

                int a = (int)(cmd.ExecuteScalar());


                if (a > 0)
                {

                    Response.Redirect("../Dashboard/MyProfile.aspx?UserId=" + UserId);


                }
            }
            catch (Exception e2)
            {

                Response.Write("<script>alert('Please LogIn first..')</script>");




            }
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
"alert('Log Out successfull..');window.location ='Home.aspx';",
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

        protected void Login_Click(object sender, EventArgs e)
        {

                    Response.Redirect("Login.aspx");

        }
    }
}