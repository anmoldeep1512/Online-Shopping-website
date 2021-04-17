using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Proj1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anmol\source\repos\Admin\App_Data\WebMall.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label2.Text = "";
            try
            {
                string uname = UserName.Text;
                string pass = Password.Text;
                Session["username"] = uname;
                Session["password"] = pass;
                con.Open();
                string qry = "select * from Customer where username='" + uname + "' and password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    Label2.Text = "Login Sucess";
                    Response.Redirect("UserHome.aspx");
                }
                else
                {
                    Label1.Text = "Username or Password incorrect. Try again";

                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }
    }
}