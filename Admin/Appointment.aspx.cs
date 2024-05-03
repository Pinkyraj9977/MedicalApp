using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Data;

public partial class Customer_Appointment : System.Web.UI.Page
{
    SqlConnection c = ConnectionString.getConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["CustomerLogin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
        }
         
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd = new SqlCommand("insert into Appointment values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtMobileNo.Text + "','" + ddlTime.SelectedValue + "','Active')", c);
        cmd.ExecuteNonQuery();
        lblMessage.Text = " Successfully Appointment Booked ";
        c.Close();

    }
    protected void lbnDash_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }
}