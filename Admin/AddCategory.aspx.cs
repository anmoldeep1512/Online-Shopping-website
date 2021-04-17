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
    public partial class AddCategory : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anmol\source\repos\Admin\App_Data\WebMall.mdf;Integrated Security=True");

        private void BindCategoryRepeater()
        {
            SqlCommand cmd = new SqlCommand("select * from tblCategory", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrCategory.DataSource = dt;
            rptrCategory.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BindCategoryRepeater();
        }

        protected void btnAddtxtCategory_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblCategory(CatName) Values('" + txtCategory.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Category Added Successfully ');  </script>");
            txtCategory.Text = string.Empty;

            con.Close();
            //lblMsg.Text = "Registration Successfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Green;
            txtCategory.Focus();
            BindCategoryRepeater();
        }
    }
}