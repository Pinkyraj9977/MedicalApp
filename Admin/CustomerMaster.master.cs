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
            if(Session["CustomerLogin"]==null)
            {
                Response.Redirect("~/Login.aspx");
            }
        }

    }
    protected void lbnLogOut_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
        
    }
}
