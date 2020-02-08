<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="VehicleRegManagementSystem.LoginForm" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="LoginStyle.css" rel="stylesheet"/>
    <link href="tooplate_style.css" rel="stylesheet" type="text/css" />
</head>

<body>
    <form id="form1" runat="server">
        <br /><br />
        <center><h1>Vehicle Registration Management System</h1></center><br /><br />
       <div class="loginbox">
           <img src="user.jpg" alt="Alternate Text" class="user"/>
           <h2>Admin Portal</h2>
           <asp:Label Text="Username" CssClass="lblemail" runat="server" />
           <asp:TextBox runat="server" ID="emailtxt" CssClass="txtemail" placeholder="Enter here"></asp:TextBox>
           <asp:Label Text="Password" CssClass="lblpass" runat="server" />
           <asp:TextBox runat="server" ID="pwdtxt" CssClass="txtpass" placeholder="********"></asp:TextBox>
           <asp:Button Text="Sign In" ID="Submitbtn" CssClass="btnsubmit" runat="server" OnClick="Submitbtn_Click" />
           <br />
           
           

</div>
    </form>
</body>
</html>
