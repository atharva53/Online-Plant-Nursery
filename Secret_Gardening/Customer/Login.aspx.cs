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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\athar\OneDrive\Desktop\New folder\Secret_Gardening - Copy\Secret_Gardening\App_Data\Database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;


            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            if (tbUserid.Text == "" ||tbPass.Text == "") {


                Response.Write("<script>alert('please fill all the contents...')</script>");
            }




            else
            {





                try
                {
                    cmd.CommandText = "DELETE FROM Login";
                    cmd.ExecuteNonQuery();
                }
                catch (Exception e0)
                {
                    Response.Write("<script>alert('delete opration failed')</script>");

                }

                try
                {

                cmd.CommandText = "select Id from UserRegistration WHERE userid='" + tbUserid.Text + "' AND  password='" + tbPass.Text + "'";

                    int a = (int)(cmd.ExecuteScalar());
                    if (a > 0)
                    {
                        cmd.CommandText = "insert into Login values('" + tbUserid.Text + "','" + tbPass.Text + "')";
                        cmd.ExecuteNonQuery();


                        ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Log In successfull..');window.location ='Home.aspx';",
true);


                    }
              }
                catch (Exception e2)
                {

                    Response.Write("<script>alert('User id and password does not match')</script>");


                }



            }






        }




    }
}