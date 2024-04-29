using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Product : System.Web.UI.Page
{
    SqlConnection c = ConnectionString.getConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        c.Open();
        SqlCommand cmd = new SqlCommand("insert into Products values('" + txtPName.Text + "','" + fuPhoto.PostedFile.FileName + "','" + ddlcate.SelectedValue + "','"+ddlStatus.SelectedValue+",'" + txtPrice.Text + "','"+txtSp.Text+"')", c);
        cmd.ExecuteNonQuery();
        c.Close();
        fuPhoto.SaveAs(Server.MapPath("~/" + "Admin/Product/" + fuPhoto.PostedFile.FileName));

        lblMessage.Text = "Product listed successfully";
        

    }
}