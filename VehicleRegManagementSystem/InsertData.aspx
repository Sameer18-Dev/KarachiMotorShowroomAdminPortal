<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsertData.aspx.cs" Inherits="VehicleRegManagementSystem.InsertData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Vehicle Registration - Insert Records</title> 
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
    
    	<h3><b><u>Vehicle Details:</u></b></h3>       
        
        
		<div class="col_w450 float_l"> 
        	<div id="contact_form">
        		<h4>Enter the information for vehicle registration.</h4>
                
               
					<b><label for="author">Owner Name:</label></b><br />
                    <asp:TextBox ID="txtName" runat="server" Required></asp:TextBox>
					<div class="cleaner h10"></div>
									
					<b><label for="cnic">Owner C-N-I-C</label></b><br />
                    <asp:TextBox ID="txtNic" runat="server" maxlength="40" Required></asp:TextBox>
					<div class="cleaner h10"></div>
									
					<b><label for="phone">Phone No:</label></b><br />
                    <asp:TextBox ID="txtPhone" runat="server" maxlength="40" Required></asp:TextBox>
					<div class="cleaner h10"></div>

                    <b><label for="vehName">Vehicle Name:</label></b><br />
                    <asp:TextBox ID="txtVehicle" runat="server" maxlength="40" Required></asp:TextBox>
					<div class="cleaner h10"></div>

                    <b><label for="engineNo">Engine No:</label></b><br />
                    <asp:TextBox ID="txtEngine" runat="server" maxlength="40" Required></asp:TextBox>
					<div class="cleaner h10"></div>

                    <b><label for="chasisNo">Chasis No:</label></b><br />
                    <asp:TextBox ID="txtChasis" runat="server" maxlength="40" Required></asp:TextBox>
					<div class="cleaner h10"></div>

                    <b><label for="NoPlate">Number Plate:</label></b><br />
                    <asp:TextBox ID="txtNoPlate" runat="server" maxlength="40" Required></asp:TextBox>
					<div class="cleaner h10"></div>

                    <b><label for="regFees">Registration Fees:</label></b><br />
                    <asp:TextBox ID="RegFees" runat="server" maxlength="40" Required></asp:TextBox>
					<div class="cleaner h10"></div>
					
					<asp:Button Text="Save" ID="btnsave" runat="server" CssClass="btnsave" OnClick="Savebtn_Click" Height="45px" Width="109px"/><br /><br />
					<asp:Button Text="Reset" ID="btnreset" runat="server" align="right" CssClass="btnreset" OnClick="Resetbtn_Click" Height="45px" Width="109px" />
				
            </div> 
        </div>
        
        <div class="col_w450 float_r">
            
        </div>
        
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
