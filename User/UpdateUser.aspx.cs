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
    public partial class UpdateUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anmol\source\repos\Admin\App_Data\WebMall.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            string uname = Session["username"].ToString();
            UserHeading.Text = uname + ", update your profile";
            con.Open();
            string qry = "select * from Customer where username='" + uname + "'";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    FirstName.Text = dr["fname"].ToString();
                    LastName.Text = dr["lname"].ToString();
                    Email.Text = dr["email"].ToString();
                    Phone.Text = dr["phone"].ToString();
                    City.Text = dr["city"].ToString();
                    Pincode.Text = dr["pincode"].ToString();
                    Address.Text = dr["address"].ToString();
                }
            }
            con.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE Customer SET fname=@fname, lname=@lname, email=@email, phone=@phone, city=@city, pincode=@pin, address=@address WHERE username=@uname";
            cmd.Parameters.AddWithValue("@fname", FirstName.Text);
            cmd.Parameters.AddWithValue("@lname", LastName.Text);
            cmd.Parameters.AddWithValue("@email", Email.Text);
            cmd.Parameters.AddWithValue("@phone", Phone.Text);
            cmd.Parameters.AddWithValue("@city", City.Text);
            cmd.Parameters.AddWithValue("@pin", Pincode.Text);
            cmd.Parameters.AddWithValue("@address", Address.Text);
            cmd.Parameters.AddWithValue("@uname", Session["username"].ToString());
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Text = "Record updated successfully.";
            Response.Redirect("UserProfile.aspx");
        }
    }
}