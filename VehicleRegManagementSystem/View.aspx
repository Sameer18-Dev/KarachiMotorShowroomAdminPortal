<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="View.aspx.cs" Inherits="VehicleRegManagementSystem.View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Vehicle Registration - View Records</title> 
<meta name="keywords" content="gray host, web theme, free templates, website templates, CSS, HTML" /> 
<meta name="description" content="Gray Host Theme is a free website template provided by tooplate.com" /> 
<link href="tooplate_style.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <div id="tooplate_wrapper">
	
	<div id="tooplate_header">
		<div id="site_title"><h1>Vehicle Registration Management System</h1></div>
        <div id="tooplate_menu">
            <ul>
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="InsertData.aspx">Add Record</a></li>
                <li><a href="View.aspx">View</a></li>
                <li><a href="Update.aspx">Update</a></li>
                <li><a href="LoginForm.aspx">Log Out</a></li>
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of tooplate_header -->
    
    <div id="tooplate_middle">
		<h2>Specialized Registration Platform</h2>
        <em>Pakistan's most trusted Vehicle Registration Service</em>
        <div class="col_w220 float_l">
            <ul class="tooplate_list">
                <li>Annual Vehicle Registration Renewal</li>
                <li>Replace Lost Sticker</li>
                <li>Registration Card</li>
                <li>Vehicle Title Transfer</li>
            </ul>
        </div>
        <div class="col_w220 float_r">
            <ul class="tooplate_list">
            	<li>24/7 Registration Service</li>
                <li>Competitive Prices</li>
                <li>24/7 Technical Support</li>
            </ul>
        </div>
        <div class="cleaner"></div>
        <div class="cleaner"></div>
	</div> <!-- end of tooplate_middle -->
    
    <div id="tooplate_main">
    
    	<center><h3><b><u>Vehicle Details:</u></b></h3></center>        
        
        
		<div class="col_w450 float_l"> 
        	
        </div>
        
            <center><asp:GridView ID="xGrid" runat="server">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                 <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                 <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                 <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                 <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    </asp:GridView></center><br /><br /><br />

                    <center><b><label for="CuID">Enter Customer ID:</label></b></center><br />
                    <center><asp:TextBox ID="CustID" runat="server" CommandName="Delete"></asp:TextBox></center><br />
                    <center><asp:Button Text="Delete" ID="btndelete" runat="server" CssClass="btnsave" OnClick="Deletebtn_Click" Height="45px" Width="109px" /></center>

        
           
        
        
		<div class="cleaner"></div>
    </div> <!-- end of tooplate_main -->
    
</div> <!-- end of tooplate_wrapper -->

<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	 	Copyright © 2020 <a href="#">Vehicle Registration System</a> - Designed by <a rel="nofollow" href="http://www.tooplate.com" target="_parent">Website Templates</a>
        <div class="cleaner"></div>
	</div><!--end of tooplate_footer-->
</div><!--end of tooplate_footer_wrapper-->

    </form>
</body>
</html>
