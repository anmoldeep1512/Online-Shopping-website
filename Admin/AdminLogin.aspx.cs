using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Proj1
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\lat\source\repos\Proj1\App_Data\WebMall.mdf;Integrated Security=True";
            con.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = UserName.Text.Trim();
            cmd.CommandText = "select * from admin where username =  '" + UserName.Text + "' and password= '" + Password.Text + "' ";
            cmd.Connection = con;
            SQLAdapter.SelectCommand = cmd;
            SQLAdapter.Fill(DT);
            if (DT.Rows.Count == 1)
            {
                Session["username"] = user;
                Response.Redirect("AdminHome.aspx");
            }
            else
            {
                Label1.Text = "LOGIN UNSUCCESSFUL";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    
    }
}