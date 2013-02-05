<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <script language="JavaScript" type="text/javascript">
           window.history.forward();
    </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table width="100%" align="center">
        <tr>
        <td width="50%" align="left"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        <td align="right"><asp:LinkButton ID="LinkButton1" runat="server" 
                onclick="LinkButton1_Click">Log Out</asp:LinkButton></td>
        </tr>
        </table>       
    </div>
    </form>
</body>
</html>
