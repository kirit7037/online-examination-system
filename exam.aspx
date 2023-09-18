<%@ Page Language="C#" MasterPageFile="~/userprofile.master" AutoEventWireup="true" CodeFile="exam.aspx.cs" Inherits="afterulogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="sidemenu" Runat="Server">
    <li class="sidebar-brand">
                    <a href="#">
                        Best of LUCK
                    </a>
                </li>
     
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="image" Runat="Server">
   <asp:Image ImageUrl="~/images/allthebest.gif" runat="server" Width="242px" BorderColor="Black" BorderWidth="5px" 
        Height="216px" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="title" Runat="Server">
    exam
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div>
</div>
    (<asp:Label ID="qid" runat="server" Text="Label"></asp:Label>)
    &nbsp; <asp:Label ID="question" runat="server" Text="Label"></asp:Label>

    <br />
    <br />
    <table >
    <tr>
        <td >
            <asp:RadioButtonList ID="option" runat="server">
            <asp:ListItem Value="1" Text="" Selected="true"></asp:ListItem>
            <asp:ListItem Value="2" Text=""></asp:ListItem>
            <asp:ListItem Value="3" Text=""></asp:ListItem>
            <asp:ListItem Value="4" Text=""></asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="style1">
            <asp:Label ID="o1" runat="server" Text="Label"></asp:Label><br/>
            <asp:Label ID="o2" runat="server" Text="Label"></asp:Label><br/>
            <asp:Label ID="o3" runat="server" Text="Label"></asp:Label><br/>
            <asp:Label ID="o4" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    </table><br /><br />
    <asp:Button ID="next" runat="server" Text="next" onclick="next_Click" />
    <asp:Button ID="finish" runat="server" Text="finish" Visible="false" 
    onclick="finish_Click"/>
</asp:Content>

