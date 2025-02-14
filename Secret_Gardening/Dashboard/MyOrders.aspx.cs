using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace Secret_Gardening.Dashboard
{
    public partial class MyOrders : System.Web.UI.Page
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

                cmd.CommandText = "select pcat from Fruit ";

                string cat = (string)(cmd.ExecuteScalar());

                cmd.CommandText = "select Id from Login ";

                int a = (int)(cmd.ExecuteScalar());


                if (a > 0)
                {

                    if (e.CommandName == "Buy")
                    {


                        SqlCommand cmd2 = new SqlCommand("select * from OrderDetails where Id=" + e.CommandArgument.ToString(), con);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd2);
                        DataSet ds = new DataSet();
                        sda.Fill(ds);



                        ReportDocument crp = new ReportDocument();
                        crp.Load(Server.MapPath("../Reports/BillReport.rpt"));
                        crp.SetDataSource(ds.Tables["table"]);


                        crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
       




                     
                    }

                }
            }
            catch (Exception e2)
            {

                Response.Write("<script>alert('Please LogIn first..')</script>");




            }
        }

    }
}