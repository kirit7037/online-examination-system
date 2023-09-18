using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        //Create Connection String And SQL Statement
        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string strSelect = "SELECT COUNT(*) FROM Users WHERE UserName = @Username AND Password = @Password";

        SqlConnection con = new SqlConnection(strCon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strSelect;

        SqlParameter username = new SqlParameter("@Username", SqlDbType.VarChar, 50);
        username.Value = txtUserName.Text.Trim().ToString();
        cmd.Parameters.Add(username);

        SqlParameter password = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        password.Value = txtPwd.Text.Trim().ToString();
        cmd.Parameters.Add(password);

        con.Open();
        int result = (Int32)cmd.ExecuteScalar();
        con.Close();

        if (result >= 1)
        {
            Session["userName"] = txtUserName.Text.ToString().Trim();
            Response.Redirect("~/afterulogin.aspx");
        }
        else
            lblMsg.Text = "Incorrect Username or Password";

    }
}
