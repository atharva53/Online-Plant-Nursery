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

using System.Security.Cryptography;

namespace Secret_Gardening.Admin
{
    public partial class Report : System.Web.UI.Page
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

        protected void btnFlower_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Flowering", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/FloweringStock.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
       
        }

        protected void btnFruit_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Fruit", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/FruitStock.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }

        protected void btnMedicinal_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Medicinal", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/MedicinalStock.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }

        protected void btnIndoor_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from Indoor", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/IndoorStock.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }

        protected void btnEnquiry_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from ContactUS", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/Enquiries.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }

        protected void btnCustomers_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from UserRegistration", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/RegisteredCustomers.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }

        protected void btnOrders_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from OrderDetails", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);



            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/Orders.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }





















        protected void Button3_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from Booked_Packages2", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../reports/CrystalReport2.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from " + NumberOfPeoples.Text, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/FloweringStock.rpt"));
            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string[] catagiry = { "Flowering", "Fruit", "Indoor", "Medicinal"};

            DataSet ds = new DataSet();
            for (int i = 0; i < catagiry.Length; i++)
            {
                SqlCommand cmd = new SqlCommand("select * from " + catagiry[i], con);

                SqlDataAdapter sda = new SqlDataAdapter(cmd);

                sda.Fill(ds);



            }

            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/FruitStock.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");





        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from OrderDetails WHERE UserId='" + DropDownList1.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/UserOrders.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from OrderDetails WHERE month=" + DropDownList2.SelectedValue + "AND  year=" + DropDownList4.SelectedValue, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/Orders.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");





        }



        protected void Button7_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from OrderDetails WHERE year=" + DropDownList5.SelectedValue, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/Orders.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");



        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from OrderDetails WHERE dd_mm_yyyy='" + day.Text + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/Orders.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");


        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from OrderDetails ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/Orders.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");



        }

        protected void ReachCustomers_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from UserRegistration ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/RegisteredCustomers.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }

        protected void CustomerYearwise_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from UserRegistration WHERE year=" + DropDownList3.SelectedValue, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/RegisteredCustomers.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");
        }

        protected void CustomerMonthwise_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from UserRegistration WHERE month=" + DropDownList6.SelectedValue + "AND  year=" + DropDownList7.SelectedValue, con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);


            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("../Reports/RegisteredCustomers.rpt"));

            crp.SetDataSource(ds.Tables["table"]);


            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Booked Packages Information");


        }


















    }
}