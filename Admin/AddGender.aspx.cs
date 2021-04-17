using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Admin.Admin
{
    public partial class AddGender : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anmol\source\repos\Admin\App_Data\WebMall.mdf;Integrated Security=True");

        private void BindGenderRepeater()
        {
            SqlCommand cmd = new SqlCommand("select * from tblGender", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrGender.DataSource = dt;
            rptrGender.DataBind();
                    
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGenderRepeater();
        }

        protected void btnAddGender_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblGender(GenderName) Values('" + txtGender.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Gender Added Successfully ');  </script>");
            txtGender.Text = string.Empty;

            con.Close();
            txtGender.Focus();
            BindGenderRepeater();
        }
    }
}