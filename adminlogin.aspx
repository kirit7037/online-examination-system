<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <link href="adminlogin.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
    function preventBack()
    {
        window.history.forward();}  
        setTimeout("preventBack()",0);
        window.onunload=function(){null};
    </script>
    <script type="text/javascript">
        window.history.forward(1);
    </script>
</head>
<body>
    <form id="form1" runat="server">
   
  <div class="login">
  <div class="login-screen">
  <div class="app-title">
    <h3 style="font-size:25px">Admin Login</h3>
  </div>
  <div class="login-form">
  <div class="control-group">

<asp:TextBox ID="txtUserName" CssClHeight="22px" placeholder="username" runat="server" />

				
<asp:RequiredFieldValidator ID="RV1" runat="server" 
                            ControlToValidate="txtUserName" 
                            ErrorMessage="Please Enter User Name" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator><br />
</div>

<div class="control-group">
<asp:TextBox ID="txtPwd" placeholder="password" runat="server" TextMode="Password" 
                         CssClHeight="22px"/>
<asp:RequiredFieldValidator ID="RV2" runat="server" 
                            ControlToValidate="txtPwd" 
                            ErrorMessage="Your Password" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator>

</div>
<asp:Button ID="btnLogIn" CssClass="btn btn-primary btn-large btn-block" runat="server" Text="Sign In"  
                          onclick="btnLogIn_Click"/>

<asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"/>
</div>
</div>
</div>
</form>
</body>
</html>
