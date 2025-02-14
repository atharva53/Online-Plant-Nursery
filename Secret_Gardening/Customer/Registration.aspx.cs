using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

namespace Secret_Gardening.Customer
{
    public partial class Registration : System.Web.UI.Page
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






//        protected void Button1_Click(object sender, EventArgs e)
//        {
//            Response.Write("<script>alert('please fill all the contents...')</script>");

//            SqlCommand cmd = con.CreateCommand();
//            cmd.CommandType = CommandType.Text;

//            if (tbName.Text == "" || tbUserid.Text == "" || tbContact.Text == "" || tbDob.Text == "" || tbAddr.Text == "" || tbCity.Text == "" || tbEmail.Text == "" || tbPin.Text == "" || tbPassword.Text == "" || tbCnfpass.Text == "")
//            {
//                Response.Write("<script>alert('please fill all the contents...')</script>");
//            }
//            else
//            {


//                String s = System.DateTime.Now.ToString("yyyy-MM-dd");
//                DateTime now = System.DateTime.Now;



//                String s1 = System.DateTime.Now.ToString("dd");
//                String s2 = System.DateTime.Now.ToString("MM");
//                String s3 = System.DateTime.Now.ToString("yyyy");






//                cmd.CommandText = "insert into UserRegistration values('" + tbName.Text + "','" + tbUserid.Text + "','" + Convert.ToInt64(tbContact.Text) + "','" + tbDob.Text + "','" + tbAddr.Text + "','" + tbCity.Text + "','" + tbEmail.Text + "','" + Convert.ToInt64(tbPin.Text) + "','" + tbPassword.Text + "','" + tbCnfpass.Text +  "','" + s + "','" + s1 + "','" + s2 + "','" + s3 + "')";
//                cmd.ExecuteNonQuery();
//                Response.Write("<script>alert('Data inserted successfully')</script>");


//                //TextBox2.Text = "";
//                //TextBox3.Text = "";
//                //TextArea1.Text = "";
//                //TextBox4.Text = "";
//                tbName.Text = "";
//                tbUserid.Text = "";
//                tbContact.Text = "";
//                tbDob.Text = "";
//                tbAddr.Text = "";
//                tbCity.Text = "";
//                tbEmail.Text = "";
//                tbPin.Text = "";
//                tbPassword.Text = "";
//                tbCnfpass.Text = "";


//            }
//}





        protected void Button1_Click1(object sender, EventArgs e)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            if (tbName.Text == "" || tbUserid.Text == "" || tbContact.Text == "" || tbDob.Text == "" || tbAddr.Text == "" || tbCity.Text == "" || tbEmail.Text == "" || tbPin.Text == "" || tbPassword.Text == "" || tbCnfpass.Text == "")
            {
                Response.Write("<script>alert('please fill all the contents...')</script>");
            }
            else
            {

                String s = System.DateTime.Now.ToString("yyyy-MM-dd");
                DateTime now = System.DateTime.Now;


                String s1 = System.DateTime.Now.ToString("dd");
                String s2 = System.DateTime.Now.ToString("MM");
                String s3 = System.DateTime.Now.ToString("yyyy");



                cmd.CommandText = "insert into UserRegistration values('" + tbName.Text + "','" + tbUserid.Text + "','" + Convert.ToInt64(tbContact.Text) + "','" + tbDob.Text + "','" + tbAddr.Text + "','" + tbCity.Text + "','" + tbEmail.Text + "','" + Convert.ToInt64(tbPin.Text) + "','" + tbPassword.Text + "','" + tbCnfpass.Text +  "','" + s + "','" + s1 + "','" + s2 + "','" + s3 + "')";
                cmd.ExecuteNonQuery();
             
                Response.Write("<script>alert('Data inserted successfully')</script>");


                
                tbName.Text = "";
                tbUserid.Text = "";
                tbContact.Text = "";
                tbDob.Text = "";
                tbAddr.Text = "";
                tbCity.Text = "";
                tbEmail.Text = "";
                tbPin.Text = "";
                tbPassword.Text = "";
                tbCnfpass.Text = "";


            }

         }
    }
}