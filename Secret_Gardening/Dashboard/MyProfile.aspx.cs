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
    public partial class MyProfile : System.Web.UI.Page
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


            //Name Label
            cmd.CommandText = "select name from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string name = (string)(cmd.ExecuteScalar());
            Label4.Text = name;
            //Name LAbel end



            //Email Label
            cmd.CommandText = "select email from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string email = (string)(cmd.ExecuteScalar());
            email1.Text = email;
            //Name LAbel end


            

            //UserId Label
            cmd.CommandText = "select userid from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string userid = (string)(cmd.ExecuteScalar());
            Label6.Text = userid;
            //Name LAbel end



            //UserId Label
            cmd.CommandText = "select contact from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string contact = (string)(cmd.ExecuteScalar());
            conta.Text = contact;
            //Name LAbel end

            //UserId Label
            cmd.CommandText = "select dob from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string dobb = (string)(cmd.ExecuteScalar());
            dobb1.Text = dobb;
            //Name LAbel end



            //UserId Label
            cmd.CommandText = "select city from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string city = (string)(cmd.ExecuteScalar());
            city11.Text = city;
            //Name LAbel end


            //UserId Label
            cmd.CommandText = "select pincode from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string pincode = (string)(cmd.ExecuteScalar());
            pincode1.Text = pincode;
            //Name LAbel end


            //UserId Label
            cmd.CommandText = "select address from UserRegistration   WHERE userid='" + Request.QueryString["UserId"] + "'";
            string add = (string)(cmd.ExecuteScalar());
            addre.Text = add;
            //Name LAbel end

        }




    }
}