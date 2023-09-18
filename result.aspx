<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 24px;
        }
        .style2
        {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenttitle" Runat="Server">
    results 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Enrollment No:"></asp:Label> : 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
    <asp:Button ID="Button1" runat="server" Text="Show Result" onclick="Button1_Click" />   
    <br />
    <br />
    <table border="1" style="border-color:#000000" height="119" width="271">
        <tr>
            <th height="33" scope="row" width="156">
                Enrollment No.</th>
            <td width="99">
                <asp:Label ID="er" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <th height="33" scope="row" class="style1">
                Name</th>
            <td>
                <asp:Label ID="name" runat="server" Text=""></asp:Label>
                &nbsp;<asp:Label ID="lname" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <th height="32" scope="row" class="style2">
                Result</th>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="re" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sidemenu" Runat="Server">
 <li><a href="Login.aspx">User log-in</a></li>
 <li><a href="Registration.aspx">Registration</a></li>
</asp:Content>

