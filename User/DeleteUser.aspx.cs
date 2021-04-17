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
   public partial class DeleteUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anmol\source\repos\Admin\App_Data\WebMall.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            UserHeading.Text = Session["username"].ToString() + ", Enter your password to delete you account";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand com = con.CreateCommand();
                string uname = Session["username"].ToString();
                string pass = Password.Text;
                string upass = Session["password"].ToString();
                if (string.Equals(pass, upass))
                {
                    com.CommandType = CommandType.Text;
                    com.CommandText = "DELETE from Customer WHERE username='" + uname + "'";
                    com.ExecuteNonQuery();
                    Session["username"] = null;
                    Session["password"] = null;
                    Response.Redirect("LoginPage.aspx");
                }
                else
                {
                    Label1.Text = "Password incorrect. Try again";
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