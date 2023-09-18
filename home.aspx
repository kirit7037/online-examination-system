<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="oeshome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Contenttitle" Runat="Server">
home
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" Runat="Server">
<div style="">
    <div id="slider"> 
            <img src="images/image-slider-1.jpg" alt="#cap1" />
            <img src="images/image-slider-2.jpg" alt="#cap1" />
            <img src="images/image-slider-3.jpg" alt="#cap1" />
            <img src="images/image-slider-4.jpg" alt="#cap2" />
            <img src="images/image-slider-5.jpg" alt="#cap1" />
    </div>
        <div style="display: none;">
            <div id="cap1">
                Welcome to Online Examination System.
            </div>
            <div id="cap2">
                Welcome to Online Examination System.
            </div>
        </div>
</div>
<br/>
<br/>
<br/>
<h2 style="color:#434242">About Online Examination System(OES)</h2>
<div class="article">
<p>Online Examination System(OES) is a Multiple Choice Questions(MCQ) based examination
 system that provides an easy to use environment for both Test Conducters and Students 
 appearing for Examination. The main objective of OES is to provide all the features that 
 an Examination System must have, with the &quot;interfaces that doesn't Scare it's Users!&quot;. </p>
</div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="sidemenu" Runat="Server">
        <li><a href="Login.aspx">User log-in</a></li>
        
        <li><a href="result.aspx">Result</a></li>
        <li><a href="Registration.aspx">Registration</a></li>
</asp:Content>


