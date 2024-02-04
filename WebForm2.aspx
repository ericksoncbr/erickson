﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   

     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link href="css/bootstrap.min.css" rel="stylesheet"/>
  <script src="js/bootstrap.bundle.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
   
    
        <div class="container mt-3">
  <h2>Stacked form</h2>
  <form action="/action_page.php">
    <div class="mb-3 mt-3">
      <label for="email">Email:</label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter email" Font-Names="email"></asp:TextBox>
    
    </div>
    <div class="mb-3">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div>

      <asp:Button ID="Button1" CssClass="btn btn-primary"  runat="server" Text="Submit" OnClick="Button1_Click" />
  </form>
</div>


         </form>
       
        





</body>
</html>
