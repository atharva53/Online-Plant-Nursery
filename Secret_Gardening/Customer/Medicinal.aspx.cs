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
    public partial class Medicinal : System.Web.UI.Page
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


        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            try
            {

                cmd.CommandText = "select pcat from Medicinal ";

                string cat = (string)(cmd.ExecuteScalar());

                 cmd.CommandText = "select Id from Login ";

                int a = (int)(cmd.ExecuteScalar());


                if (a > 0)
               {

                if (e.CommandName == "Buy")
                {
                    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    Response.Redirect("Payment.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString() + "&pcat=" + cat);
                }

                }
            }
            catch (Exception e2)
            {

                Response.Write("<script>alert('Please LogIn first..')</script>");




            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }


    }
}