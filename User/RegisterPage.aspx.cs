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
    public partial class RegisterPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anmol\source\repos\Admin\App_Data\WebMall.mdf;Integrated Security=True");

        void display()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Customer", con);
            SqlDataReader dataFromDatabase = cmd.ExecuteReader();
            GridView1.DataSource = dataFromDatabase;
            GridView1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            string checkuser = "select count(*) from Customer where username='" + UserName.Text + "'";

            SqlCommand com = new SqlCommand(checkuser, con);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            if (temp == 1)
            {

                Label1.Text = "User Already Exists. Login or choose new username.";
            }
            else
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Customer values(@uname, @fname, @lname, @email, @phone, @city, @pin, @address, @pwd)";
                cmd.Parameters.AddWithValue("@uname", UserName.Text);
                cmd.Parameters.AddWithValue("@fname", FirstName.Text);
                cmd.Parameters.AddWithValue("@lname", LastName.Text);
                cmd.Parameters.AddWithValue("@email", Email.Text);
                cmd.Parameters.AddWithValue("@phone", Phone.Text);
                cmd.Parameters.AddWithValue("@city", City.Text);
                cmd.Parameters.AddWithValue("@pin", Pincode.Text);
                cmd.Parameters.AddWithValue("@address", Address.Text);
                cmd.Parameters.AddWithValue("@pwd", Password.Text);
                cmd.ExecuteNonQuery();
                Label1.Text = "Record added successfully.";
            }
            FirstName.Text = "";
            LastName.Text = "";
            UserName.Text = "";
            Email.Text = "";
            Phone.Text = "";
            City.Text = "";
            Pincode.Text = "";
            Address.Text = "";
            Password.Text = "";
            ConPassword.Text = "";
            con.Close();
            Response.Redirect("LoginPage.aspx");
        }
    }
}