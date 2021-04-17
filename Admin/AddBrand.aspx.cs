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
    public partial class AddBrand : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anmol\source\repos\Admin\App_Data\WebMall.mdf;Integrated Security=True");
        private void BindBrandRepeater()
        {
            SqlCommand cmd = new SqlCommand("select * from tblBrands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd); 
            DataTable dt = new DataTable();
            sda.Fill(dt);
            rptrBrands.DataSource = dt;
            rptrBrands.DataBind();
                    
            
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrandRepeater();
            }
        }

        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into tblBrands(Name) Values('" + txtBrand.Text + "')", con);
            cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Brand Added Successfully ');  </script>");
            txtBrand.Text = string.Empty;

            con.Close();
            //lblMsg.Text = "Registration Successfully done";
            //lblMsg.ForeColor = System.Drawing.Color.Green;
            txtBrand.Focus();
            BindBrandRepeater();
        }
    }
}