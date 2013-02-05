<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <script language="JavaScript" type="text/javascript">
           window.history.forward();
    </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="80%" align="center">
    <tr>
    <td colspan="2" align="center"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
    </tr>
    <tr>
    <td colspan="2"><b>Login Details</b></td>
    </tr>
    <tr>
    <td align="left">Enter User Name</td>
    <td align="left"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="left">Enter Password</td>
    <td align="left"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td colspan="2" align="center"><asp:Button ID="Button1" runat="server" 
            Text="Sign In" onclick="Button1_Click" /></td>
    </tr>
    </table>
    </div>
    </form>
</body>
</html>
