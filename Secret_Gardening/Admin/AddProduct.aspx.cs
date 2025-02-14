using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;



namespace Secret_Gardening.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\athar\OneDrive\Desktop\New folder\Secret_Gardening - Copy\Secret_Gardening\App_Data\Database.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            LoadRecord();
            LoadRecord1();
            LoadRecord2();
            LoadRecord3();

        }

        //void ClearControl()
        //{
        //    TextBox2.Text = "";
        //    TextBox3.Text = "";
        //    TextArea1.Text = "";
        //    TextBox4.Text = "";
        //}



        void LoadRecord()
        {

            SqlCommand cmd = new SqlCommand("select * from Flowering", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView5.DataSource = dt;
            GridView5.DataBind();

}

        void LoadRecord1()
        {
            SqlCommand cmd = new SqlCommand("select * from Fruit", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        void LoadRecord2()
        {
            SqlCommand cmd = new SqlCommand("select * from Medicinal", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }

        void LoadRecord3()
        {
            SqlCommand cmd = new SqlCommand("select * from Indoor", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }




        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;

            if (TextBox2.Text == "" || TextBox3.Text == "" || Image1.ImageUrl == "" || TextArea1.Text == "")
            {
                Response.Write("<script>alert('please fill all the contents...')</script>");
            }
            else
            {

                cmd.CommandText = "insert into " + DropDownList1.SelectedValue + " values('" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + Image1.ImageUrl + "','" + TextArea1.Text + "','" + Convert.ToInt64(TextBox4.Text) + "')";
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Data inserted successfully')</script>");

                ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('New Plant Saved Successfully ');window.location ='AddProduct.aspx';",
true);




                TextBox2.Text = "";
                TextBox3.Text = "";
                TextArea1.Text = "";
                TextBox4.Text = "";



            }






          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             Image1.Visible = true;
             if (FileUpload1.HasFile)
             {
                 try
                 {
                     if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png")
                     {
                         if (FileUpload1.PostedFile.ContentLength < 20971520)
                         {
                             string filename = Path.GetFileName(FileUpload1.FileName);
                             FileUpload1.SaveAs(Server.MapPath("~/") + filename);
                             Image1.ImageUrl = "~/" + FileUpload1.FileName;
                             Label7.Text = "Upload Status : File Uploaded !";
                         }
                         else
                         {
                             Label7.Text = "Upload Status : The File should be less than 20kb!";
                         }
                     }
                     else
                     {
                         Label7.Text = "Upload Status : Only .jpeg files are accepted !";
                     }

                 }
                 catch (Exception ex)
                 {
                     Label7.Text = "upload Status : The file could not be uploaded" + ex.Message;

                 }
             }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }










        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = GridView5.SelectedRow.Cells[1].Text;
            DropDownList1.SelectedValue = GridView5.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView5.SelectedRow.Cells[3].Text;
            Image1.ImageUrl = GridView5.SelectedRow.Cells[4].Text;
            Label7.Text = Image1.ImageUrl;

            TextArea1.Text = GridView5.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView5.SelectedRow.Cells[6].Text;



        


            btnUpdate.Enabled = true;
        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView5, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row ";
            }
        }





        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = GridView1.SelectedRow.Cells[1].Text;
            DropDownList1.SelectedValue = GridView1.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
            Image1.ImageUrl = GridView1.SelectedRow.Cells[4].Text;
            Label7.Text = Image1.ImageUrl;

            TextArea1.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView1.SelectedRow.Cells[6].Text;






            btnUpdate.Enabled = true;
        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView1, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row ";
            }
        }







        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = GridView2.SelectedRow.Cells[1].Text;
            DropDownList1.SelectedValue = GridView2.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView2.SelectedRow.Cells[3].Text;
            Image1.ImageUrl = GridView2.SelectedRow.Cells[4].Text;
            Label7.Text = Image1.ImageUrl;

            TextArea1.Text = GridView2.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView2.SelectedRow.Cells[6].Text;






            btnUpdate.Enabled = true;
        }

        protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView2, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row ";
            }
        }






        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox2.Text = GridView3.SelectedRow.Cells[1].Text;
            DropDownList1.SelectedValue = GridView3.SelectedRow.Cells[2].Text;
            TextBox3.Text = GridView3.SelectedRow.Cells[3].Text;
            Image1.ImageUrl = GridView3.SelectedRow.Cells[4].Text;
            Label7.Text = Image1.ImageUrl;

            TextArea1.Text = GridView3.SelectedRow.Cells[5].Text;
            TextBox4.Text = GridView3.SelectedRow.Cells[6].Text;






            btnUpdate.Enabled = true;
        }

        protected void GridView5_RowDataBound(object sender, GridViewRowEventArgs e)
        {

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Attributes["onclick"] = Page.ClientScript.GetPostBackClientHyperlink(GridView3, "Select$" + e.Row.RowIndex);
                e.Row.ToolTip = "Click to select this row ";
            }
        }






        protected void btnUpdate_Click1(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand("update " + DropDownList1.SelectedValue + " set  pcat=@pcat , pquant=@pquant , pimg=@pimg , pspc=@pspc , pprice=@pprice where pnm=@pnm", con);
            
            cmd.Parameters.AddWithValue("@pnm", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pcat", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@pquant", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pimg", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@pspc", TextArea1.Text);
            cmd.Parameters.AddWithValue("@pprice", TextBox4.Text);

            cmd.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Plant Updated Successfully');window.location ='AddProduct.aspx';",
true);

           

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from " + DropDownList1.SelectedValue + " where pnm=@pnm", con);
            cmd.Parameters.AddWithValue("@pnm", TextBox2.Text);

            cmd.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, this.GetType(),
"alert",
"alert('Plant Deleted Successfully');window.location ='AddProduct.aspx';",
true);

        }

       

}
}