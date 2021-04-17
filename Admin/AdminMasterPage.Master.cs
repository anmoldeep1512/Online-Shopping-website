using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Admin.Admin
{
    public partial class AdminMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Admin/AdminLogin.aspx");
            }
        }

        protected void btnAdminlogout_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Admin/AdminLogin.aspx");
            Session["username"] = null;
        }
    }
}