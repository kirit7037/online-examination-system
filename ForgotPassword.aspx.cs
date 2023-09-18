﻿using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPass_Click(object sender, EventArgs e)
    {
        //Create Connection String And SQL Statement
        string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string strSelect = "SELECT UserName,Password FROM Users WHERE Email = @Email";

        SqlConnection connection = new SqlConnection(strConnection);
        SqlCommand command = new SqlCommand();
        command.Connection = connection;
        command.CommandType = CommandType.Text;
        command.CommandText = strSelect;

        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        email.Value = txtEmail.Text.Trim().ToString();
        command.Parameters.Add(email);

        //Create Dataset to store results and DataAdapter to fill Dataset 
        DataSet dsPwd = new DataSet();
        SqlDataAdapter dAdapter = new SqlDataAdapter(command);
        connection.Open();
        dAdapter.Fill(dsPwd);
        connection.Close();
        if (dsPwd.Tables[0].Rows.Count > 0)
        {
            MailMessage loginInfo = new MailMessage();
            loginInfo.To.Add(txtEmail.Text.ToString());
            loginInfo.From = new MailAddress("kiritsardhara7037@gmail.com");
            loginInfo.Subject = "Forgot Password Information";

            loginInfo.Body = "Username: " + dsPwd.Tables[0].Rows[0]["UserName"] + "<br /><br />Password: " + dsPwd.Tables[0].Rows[0]["Password"] + "<br /><br />";
            loginInfo.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Credentials = new System.Net.NetworkCredential("kiritsardhara7037@gmail.com", "kirit7037");
            smtp.Send(loginInfo);
            lblMessage.Text = "Password is sent to you email id,you can now <a href='Login.aspx'>Login</a>";
        }
        else
        {
            lblMessage.Text = "Email Address Not Registered";
        }

    }
}
