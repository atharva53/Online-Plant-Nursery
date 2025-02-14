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
    public partial class ContactUs : System.Web.UI.Page
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

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;


            if (tbNm.Text == "" || tbEm.Text == "" || tbSub.Text == "" || tbMes.Text == "")
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





                cmd.CommandText = "insert into ContactUS values('" + tbNm.Text + "','" + tbEm.Text + "','" + tbSub.Text + "','" + tbMes.Text + "','" + s + "','" + s1 + "','" + s2 + "','" + s3 + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data inserted successfully')</script>");

               
                tbNm.Text = "";
                tbEm.Text = "";
                tbSub.Text = "";
                tbMes.Text = "";

            }
        }
    }
}