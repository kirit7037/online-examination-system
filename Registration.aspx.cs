using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //Create ConnectionString and Inser Statement
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string insertSql = "INSERT INTO Users (FirstName,LastName,UserName,Password,Email,Enrollment,Phone) values (@FirstName,@LastName,@UserName,@Password,@Email,@Enrollment,@Phone)";
        //Create SQL connection
        SqlConnection con = new SqlConnection(connectionString);

        //Create SQL Command And Sql Parameters

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = txtFirstName.Text.ToString();
        cmd.Parameters.Add(firstName);

        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = txtLastName.Text.ToString();
        cmd.Parameters.Add(lastName);



        SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        pwd.Value = txtPwd.Text.ToString();
        cmd.Parameters.Add(pwd);

        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        email.Value = txtEmailID.Text.ToString();
        cmd.Parameters.Add(email);

        SqlParameter phone = new SqlParameter("@Phone", SqlDbType.VarChar, 10);
        phone.Value = txtPhone.Text.ToString();
        cmd.Parameters.Add(phone);

        string strSelect = "SELECT COUNT(*) FROM Users WHERE UserName = @Username";

        SqlCommand cmd1 = new SqlCommand();
        cmd1.Connection = con;
        cmd1.CommandType = CommandType.Text;
        cmd1.CommandText = strSelect;

        SqlParameter username = new SqlParameter("@Username", SqlDbType.VarChar, 50);
        username.Value = txtUserName.Text.Trim().ToString();
        cmd1.Parameters.Add(username);

        con.Open();
        int result = (Int32)cmd1.ExecuteScalar();
        con.Close();

        if (result >= 1)
        {
            Label1.Text = "Username is already exits";
        }
        else
        {
            SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
            userName.Value = txtUserName.Text.ToString();
            cmd.Parameters.Add(userName);
            Label1.Text = "";
        }

        string strSelect1 = "SELECT COUNT(*) FROM Users WHERE Enrollment = @Enrollment";

        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = con;
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = strSelect1;

        SqlParameter enrollment1 = new SqlParameter("@Enrollment", SqlDbType.VarChar, 50);
        enrollment1.Value = txtEnrollment.Text.Trim().ToString();
        cmd2.Parameters.Add(enrollment1);

        con.Open();
        int result1 = (Int32)cmd2.ExecuteScalar();
        con.Close();

        if (result1 >= 1)
        {
            Label2.Text = "Enrollment Number is already exits";
        }
        else
        {
            SqlParameter enrollment = new SqlParameter("@Enrollment", SqlDbType.VarChar, 50);
            enrollment.Value = txtEnrollment.Text.ToString();
            cmd.Parameters.Add(enrollment);
            Label2.Text = "";
        }

        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "User Registration successful,you can now <a href='Login.aspx'>Login</a>";
            ClearControls(this);
        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in registring user";
            errorMessage += ex.Message;
            //   throw new Exception(errorMessage);

        }
        finally
        {
            con.Close();
        }
    }

    private void ClearControls(Control ctrl)
    {
        foreach (Control tb in ctrl.Controls)
            if (tb is TextBox)
            {
                ((TextBox)tb).Text = "";
            }
            else
            {
                if (tb.Controls.Count > 0)
                {
                    ClearControls(tb);
                }
            }
    }
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {
    }
    protected void txtEnrollment_TextChanged(object sender, EventArgs e)
    {

    }
}
