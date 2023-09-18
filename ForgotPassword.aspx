<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenttitle" Runat="Server">
Forgot Password
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
 
<div class='container'>
<asp:Label ID="lblEmail" runat="server" Text="Email Address: " CssClass="lbl"/>
<asp:TextBox ID="txtEmail" runat="server" Height="22px"/>
<asp:RequiredFieldValidator ID="RV1" runat="server" 
                            ControlToValidate="txtEmail" 
                            ErrorMessage="Please Enter Email ID" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator>
<asp:Button ID="btnPass" runat="server" Text="Submit" onclick="btnPass_Click"/>
</div>
<asp:ValidationSummary ID="ValidationSummary1" 
                       runat="server" CssClass="error"/>
<div class='container'><asp:Label ID="lblMessage" runat="server" Text="" CssClass="lbl"/></div>
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidemenu" Runat="Server">
        <li><a href="Login.aspx">User log-in</a></li>
        <li><a href="#">Result</a></li>
        <li><a href="Registration.aspx">Registration</a></li>
</asp:Content>


