using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class changequestion : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.MDF;Integrated Security=True;User Instance=True";
        cmd.CommandText = "insert into Question values('" + txtquestionid.Text + "','" + txtquestion.Text + "','" + txtans1.Text + "','" + txtans2.Text + "','" + txtans3.Text + "','" + txtans4.Text + "','" + txtcurrectans.Text + "') ";
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void btndelete_Click(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.MDF;Integrated Security=True;User Instance=True";
        cmd.CommandText = "delete from Question where QuestionID='" + txtquestionid.Text + "'";
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.MDF;Integrated Security=True;User Instance=True";
        cmd.CommandText = "update question set question =' " + txtquestion.Text + "', ans1= '" + txtans1.Text + "', ans2= '" + txtans2.Text + "',ans3= '" + txtans3.Text + "',ans4= '" + txtans4.Text + "',currectans= '" + txtcurrectans.Text + "'where QuestionID= '" + txtquestionid.Text + "'";
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void btncancle_Click(object sender, EventArgs e)
    {
        txtquestionid.Text = "";
        txtquestion.Text = "";
        txtans1.Text = "";
        txtans2.Text = "";
        txtans3.Text = "";
        txtans4.Text = "";
        txtcurrectans.Text = "";
    }
}
