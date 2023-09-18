using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


public partial class afterulogin : System.Web.UI.Page
{
    static int i = 0;
    static int mark = 0;
    SqlConnection con = new SqlConnection();
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        qid.Visible = false;
        question.Visible = false;
        o1.Visible = false;
        o2.Visible = false;
        o3.Visible = false;
        o4.Visible = false;
        option.Visible = false;
        next.Text = "start exam";

        
    }
    protected void next_Click(object sender, EventArgs e)
    {
        qid.Visible = true;
        question.Visible = true;
        o1.Visible = true;
        o2.Visible = true;
        o3.Visible = true;
        o4.Visible = true;
        option.Visible = true;
        next.Text = "Next";

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand com = new SqlCommand("SELECT * from question", conn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds, "question");
            qid.Text = ds.Tables["question"].Rows[i]["questionid"].ToString();
            question.Text = ds.Tables["question"].Rows[i]["question"].ToString();
            o1.Text = ds.Tables["question"].Rows[i]["ans1"].ToString();
            o2.Text = ds.Tables["question"].Rows[i]["ans2"].ToString();
            o3.Text = ds.Tables["question"].Rows[i]["ans3"].ToString();
            o4.Text = ds.Tables["question"].Rows[i]["ans4"].ToString();
            string m = ds.Tables["question"].Rows[i]["currectans"].ToString();
            i++;
            if (i == 30)
            {
                finish.Visible = true;
                next.Visible = false;
                i = 0;
            }
            
                if (option.SelectedItem.Value == ds.Tables["question"].Rows[i]["currectans"].ToString())
                {
                    mark++;
                }
           
    }
    protected void finish_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand com = new SqlCommand("SELECT * from question", conn);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds, "question");
        if (option.SelectedItem.Value == ds.Tables["question"].Rows[i]["currectans"].ToString())
        {
            mark++;
        }
        mark--;
        con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.MDF;Integrated Security=True;User Instance=True";
        cmd.CommandText = "update users set marks =' " + mark + "'where UserName= '" + Session["userName"].ToString() + "'";
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
        mark = 0;
        Response.Redirect("afterulogin.aspx");
    }
}
