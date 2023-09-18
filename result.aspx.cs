using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;

public partial class result : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand com = new SqlCommand("SELECT * from users where Enrollment='" + TextBox1.Text + "'", conn);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "users");
        re.Text = ds.Tables["users"].Rows[0]["marks"].ToString();
        name.Text = ds.Tables["users"].Rows[0]["FirstName"].ToString();
        lname.Text = ds.Tables["users"].Rows[0]["LastName"].ToString();
        er.Text = ds.Tables["users"].Rows[0]["Enrollment"].ToString();
        
    }
}
