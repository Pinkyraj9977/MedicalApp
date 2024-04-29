using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_AppointmentList : System.Web.UI.Page
{
    SqlConnection c = ConnectionString.getConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            disp();
        }

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int id = Convert.ToInt32(btn.CommandArgument);
        c.Open();
        SqlCommand cmd = new SqlCommand("delete from Appointment  where Id=" + id + "", c);
        cmd.ExecuteNonQuery();
        c.Close();
        disp();

    }
    protected void disp()
    {
        SqlCommand cmd = new SqlCommand("select * from Appointment", c);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}