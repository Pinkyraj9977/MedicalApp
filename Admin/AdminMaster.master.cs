using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AdminMaster : System.Web.UI.MasterPage
{
    SqlConnection c = ConnectionString.getConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["AdminLogin"] == null)
            {
                Response.Redirect("~/AdminLogin.aspx");
            }
        }

    }
    protected void lbnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/AdminLogin.aspx");

    }
}
