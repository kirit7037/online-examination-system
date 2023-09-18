<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenttitle" Runat="Server">
    User Log-in 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">

<div>
<asp:Label ID="Name" runat="server" Text="UserName:"/>
<br/>
<asp:TextBox ID="txtUserName" runat="server" Height="22px"/>
<asp:RequiredFieldValidator ID="RV1" runat="server" 
                            ControlToValidate="txtUserName" 
                            ErrorMessage="Please Enter User Name" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator><br />
</div>

<div>
<asp:Label ID="lblPwd" runat="server" Text="Password:"/>
<br/>
<asp:TextBox ID="txtPwd" runat="server" TextMode="Password" 
                          Height="22px"/>
<asp:RequiredFieldValidator ID="RV2" runat="server" 
                            ControlToValidate="txtPwd" 
                            ErrorMessage="Your Password" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator>
    <br />
<asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"/>
    <br />
</div>

<div>
<asp:Button ID="btnLogIn" runat="server" Text="Sign In"  
                          onclick="btnLogIn_Click"/>
</div>
                       
<div>
<asp:HyperLink ID="HyperLink1" runat="server" 
NavigateUrl="~/ForgotPassword.aspx">Forgot Password ?</asp:HyperLink>
<br/>
</div>
<div>New User ? 
<asp:HyperLink ID="HyperLink2" runat="server" 
NavigateUrl="~/Registration.aspx">SignUp !</asp:HyperLink></div>
&nbsp;<br /><br /><br /><br /><br />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidemenu" Runat="Server">
        <li><a href="result.aspx">Result</a></li>
        <li><a href="Registration.aspx">Registration</a></li>
</asp:Content>


