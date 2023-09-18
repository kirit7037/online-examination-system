<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Contenttitle" Runat="Server">
    User Registration     
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
 
                                <p>
                                    <asp:ScriptManager ID="ScriptManager1" runat="server" >
                                    </asp:ScriptManager>
                                    <br />
                                </p>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" >
                                    <ContentTemplate>
                                    <asp:Label ID="Label3" runat="server" Text="Label">First Name:</asp:Label>
                                        
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label11" runat="server" Text="Label">Last Name:</asp:Label>
                                        
                                        <br />
                                        
                                        <asp:TextBox ID="txtFirstName" runat="server" CssClass="TextinputText" 
                                            Height="25px" MaxLength="50"  Width="157px" placeholder=""></asp:TextBox>
                                        &nbsp;&nbsp;
                                        <asp:TextBox ID="txtLastName" runat="server" CssClass="TextinputText" 
                                            Height="25px" MaxLength="50" Width="157px"></asp:TextBox>
                                        <br />
                                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                                            ControlToValidate="txtFirstName">First Name can&#39;t be left blank.</asp:RequiredFieldValidator>
                                        &nbsp;&nbsp;
                                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                                            ControlToValidate="txtLastName">Last Name can&#39;t be left blank.</asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="revFirstNamr" runat="server" 
                                            ControlToValidate="txtFirstName" ForeColor="#FF0000" 
                                            ValidationExpression="^[a-zA-Z]+$">enter only latters.
                                        </asp:RegularExpressionValidator>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:RegularExpressionValidator ID="revLastName0" runat="server" 
                                            ControlToValidate="txtLastName" ForeColor="#FF0000" 
                                            ValidationExpression="^[a-zA-Z]+$">enter only latters.
                                        </asp:RegularExpressionValidator>
                                        
                                        <br />
                                           
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                       <asp:Label ID="Label5" runat="server" Text="Label">User Name:</asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtUserName" runat="server" MaxLength="12" 
                                    CssClass="TextinputText" ontextchanged="txtUserName_TextChanged" 
                                    Width="333px" Height="25px"></asp:TextBox>
                                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:RequiredFieldValidator ID="rfvUserName" runat="server" 
                                            ControlToValidate="txtUserName">UserName can&#39;t be left blank.</asp:RequiredFieldValidator>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>
                                        <asp:Label ID="Label6" runat="server" Text="Label">Password:</asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" CssClass="TextinputText" 
                                    TextMode="Password" Width="333px" Height="25px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvPwd" runat="server" 
                                            ControlToValidate="txtPwd">Password can&#39;t be left blank.</asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="revpassword" runat="server" ControlToValidate="txtPwd"
                        ForeColor="#FF0000" ValidationExpression="^[a-zA-Z0-9~@#\^\$&\*\(\)-_\+=\{\}\[\]\|\,\.\?\s]{4,15}$">Password 
                                        must be contain 4 digit.
                                        </asp:RegularExpressionValidator>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                    <ContentTemplate>
                                     <asp:Label ID="Label7" runat="server" Text="Label">Confirm Password:</asp:Label>   
                                        <br />
                                        <asp:TextBox ID="txtRePwd" runat="server" MaxLength="15" 
                                    CssClass="TextinputText" TextMode="Password" Width="333px" Height="25px"></asp:TextBox>
                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                            ControlToCompare="txtRePwd" ControlToValidate="txtPwd" Operator="Equal">confirm password not matched.
                                            </asp:CompareValidator>
                                        <br />
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                    <ContentTemplate>
                                    <asp:Label ID="Label8" runat="server" Text="Label">Enrollment Number:</asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtEnrollment" runat="server" TextMode="SingleLine" 
                                    CssClass="TextinputText" Width="333px" Height="25px"></asp:TextBox>
                                        <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
                                        <asp:RequiredFieldValidator ID="rfvEnrollment" runat="server" 
                                            ControlToValidate="txtEnrollment">Enrollment no. can&#39;t be left blank.</asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="revEnrollment" runat="server" ControlToValidate="txtEnrollment"
                        ForeColor="#FF0000" ValidationExpression="^([1-9]{1})([0-9]{1})(663)([0-9]{7})">Invalid enrollment Number.
                                        </asp:RegularExpressionValidator>
                                        &nbsp;
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                    <ContentTemplate>
                                    <asp:Label ID="Label9" runat="server" Text="Label">Mobile Number:</asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtPhone" runat="server" TextMode="SingleLine" 
                                    CssClass="TextinputText"  Width="333px" Height="25px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server" 
                                            ControlToValidate="txtPhone">Mobile no. can&#39;t be left blank.</asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RxvPhone" runat="server" ControlToValidate="txtPhone"
                        ForeColor="#FF0000" ValidationExpression="^([7-9]{1})([0-9]{9})$">Invalid Mobile Number.
                                        </asp:RegularExpressionValidator>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                    <ContentTemplate>
                                  <asp:Label ID="Label10" runat="server" Text="Label">Email ID:</asp:Label>
                                        <br />
                                        <asp:TextBox ID="txtEmailID" runat="server" MaxLength="70" 
                                    CssClass="TextinputText" Width="333px" Height="25px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                            ControlToValidate="txtEmailID">Email can&#39;t be left blank.</asp:RequiredFieldValidator>
                                        <br />
                                        <asp:RegularExpressionValidator ID="RxvEmailID" runat="server" ControlToValidate="txtEmailID"
                         ForeColor="#FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid 
                                        E-mail.
                                        </asp:RegularExpressionValidator>
                                        
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="false"
                                    ShowSummary="False" Width="669px" />
                           <asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label>
         
                                <p>
                           
         
                                <asp:Button ID="btnSave" runat="server" Text="Sign Up" CssClass="Button" 
                                    onclick="btnSave_Click" Height="26px" Width="107px" />
                                </p>
                                <br />
                                <br />
                                <br />
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="sidemenu" Runat="Server">
         <li><a href="Login.aspx">User log-in</a></li>
        <li><a href="result.aspx">Result</a></li>
</asp:Content>

