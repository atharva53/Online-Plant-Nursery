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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\athar\OneDrive\Desktop\New folder\Secret_Gardening - Copy\Secret_Gardening\App_Data\Database.mdf;Integrated Security=True");
        string tot;


        //Update stock method

        private void UpdateStock()
        {
            if (cat.Text == "Flowering")
            {
                SqlCommand cmd = new SqlCommand("Update Flowering SET pquant=pquant-'" + Convert.ToInt32(Label14.Text) + "' where pnm= '" + Label11.Text + "' ", con);
                cmd.ExecuteNonQuery();
            }

            if (cat.Text == "Fruit")
            {
                SqlCommand cmd1 = new SqlCommand("Update Fruit SET pquant=pquant-'" + Convert.ToInt32(Label14.Text) + "' where pnm= '" + Label11.Text + "' ", con);
                cmd1.ExecuteNonQuery();
            }

            if (cat.Text == "Indoor")
            {
                SqlCommand cmd2 = new SqlCommand("Update Indoor SET pquant=pquant-'" + Convert.ToInt32(Label14.Text) + "' where pnm= '" + Label11.Text + "' ", con);
                cmd2.ExecuteNonQuery();
            }

            if (cat.Text == "Medicinal")
            {
                SqlCommand cmd3 = new SqlCommand("Update Medicinal SET pquant=pquant-'" + Convert.ToInt32(Label14.Text) + "' where pnm= '" + Label11.Text + "' ", con);
                cmd3.ExecuteNonQuery();
            }
        }




        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;


            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();



            cmd.CommandText = "select pprice from " + Request.QueryString["pcat"] + " WHERE Id='" + Request.QueryString["id"] + "'";
            int price = (int)(cmd.ExecuteScalar());

            int qut;
            int.TryParse(Request.QueryString["quantity"], out qut);

            int c = price * qut;
            string total = c.ToString();

            tot = total;
            Label15.Text = total;

            //ImagePage start
            cmd.CommandText = "select pimg from " + Request.QueryString["pcat"] + " WHERE Id='" + Request.QueryString["id"] + "'";
            string image1 = (string)(cmd.ExecuteScalar());
            Image2.ImageUrl = image1;
            //Imagepage end

            //Name Label
            cmd.CommandText = "select pnm from " + Request.QueryString["pcat"] + " WHERE Id='" + Request.QueryString["id"] + "'";
            string name = (string)(cmd.ExecuteScalar());
            Label11.Text = name;
            //Name LAbel end

            //Information start
            cmd.CommandText = "select pspc from " + Request.QueryString["pcat"] + " WHERE Id='" + Request.QueryString["id"] + "'";
            string info = (string)(cmd.ExecuteScalar());
            Label12.Text = info;
            //Information End

            //product category
            cat.Text = Request.QueryString["pcat"];
            //cat end

            //Price start
            cmd.CommandText = "select pprice from " + Request.QueryString["pcat"] + " WHERE Id='" + Request.QueryString["id"] + "'";
            string pri = Convert.ToString(cmd.ExecuteScalar());
            Label13.Text = pri;
            //Price End

            //Quantity start

            Label14.Text = Request.QueryString["quantity"];
            //Quantity End
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //update stock method calling
            UpdateStock();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;






                cmd.CommandText = "select id from Login ";

                int aw = (int)(cmd.ExecuteScalar());
                if (aw > 0)
                {

                    cmd.CommandText = "select UserId from Login ";
                    string userid = (string)(cmd.ExecuteScalar());

                    cmd.CommandText = "select Password from Login ";
                    string password = (string)(cmd.ExecuteScalar());


                    String s = System.DateTime.Now.ToString("yyyy-MM-dd");
                    DateTime now = System.DateTime.Now;



                    String s1 = System.DateTime.Now.ToString("dd");
                    String s2 = System.DateTime.Now.ToString("MM");
                    String s3 = System.DateTime.Now.ToString("yyyy");


                    cmd.CommandText = "insert into OrderDetails values('" + Image2.ImageUrl + "','" + Label11.Text + "','" + Label12.Text + "','" + Label14.Text + "','" + Label13.Text + "','" + Label15.Text + "','" + tbShipping.Text + "','" + tbNm.Text + "','" + tbCardNo.Text + "','" + tbExp.Text + "','" + tbCVV.Text + "','" + now + "','" + s1 + "','" + s2 + "','" + s3 + "','" + userid + "','" + password + "','" + Request.QueryString["id"] + "','" + Request.QueryString["pcat"] + "','" + s + "')";
                    cmd.ExecuteNonQuery();


                   
                    



                    Response.Redirect("PaymentComplete.aspx?C_Name=" + tbNm.Text + "&C_Number=" + tbCardNo.Text + "&C_Shipping=" + tbShipping.Text);


                }


               
        }
    }
}