<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
       
    <style>
        table {
  border-collapse: collapse;
            margin-left: 35px;
        }

th, td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {background-color: #f2f2f2;}

        body {
            background-color:aquamarine;
        }

</style>
</head>
<body>
    <form id="form1" runat="server">
        
<h2>Responsive Table</h2>
<p>A responsive table will display a horizontal scroll bar if the screen is too 
small to display the full content. Resize the browser window to see the effect:</p>
<p>To create a responsive table, add a container element (like div) with <strong>overflow-x:auto</strong> around the table element:</p>

<div style="overflow-x: auto;">
  <table>
    <tr>
      <th>First Name</th>
      <th>Last Name</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
      <th>Points</th>
    </tr>
    <tr>
      <td>Jill</td>
      <td>Smith</td>
      <td></td>
      <td>50</td>
      <td>50</td>
      <td>50</td>
      <td>50</td>
      <td>50</td>
      <td>50</td>
      <td>50</td>
      <td>50</td>
      <td>50</td>
    </tr>
    <tr>
      <td>Eve</td>
      <td>Jackson</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
      <td>94</td>
    </tr>
    <tr>
      <td>Adam</td>
      <td>Johnson</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
      <td>67</td>
    </tr>
  </table>
</div>

    <div>
       <a href="WebForm2.aspx">  <h1>Erickson Salunga</h1></a>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>


                </td>
            </tr>
            <tr>
                <td>Salunga</td>
                <td>
                  <a href="WebForm2.aspx">  <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></a></td>
                <td><img src="about.ico"/></td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebForm2.aspx">HyperLink</asp:HyperLink></td>
                <asp:Image ID="Image1" runat="server" src="about.ico"/>
               
            </tr>
        </table>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> <br /><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br /><br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /><br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br /><br />
        <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>

    
<div class="container mt-3">
  <h2>Stacked form</h2>
    <div class="mb-3 mt-3">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"/>
    </div>
    <div class="mb-3">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd"/>
    </div>
    <div class="form-check mb-3">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"/> Remember me
      </label>
    </div>
      
</div>
  
        <asp:GridView ID="GridView1" runat="server" Height="204px" Width="879px">
        </asp:GridView>
    </form>

    
</body>
</html>
