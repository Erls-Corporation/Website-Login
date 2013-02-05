<%Response.Expires = -1 %>
<%Response.ExpiresAbsolute = Now() - 1 %>
<%Response.AddHeader "pragma", "no-cache" %>
<%Response.AddHeader "cache-control", "private" %>
<%Response.CacheControl = "no-cache" %>

<% 
Response.Expires = -1000
Response.Buffer = True
Response.Clear 
%>

<!--RAHUL MAHAJAN -->
<!--SCRIPT DESIGNED AND DEVELOPED BY RAHUL MAHAJAN -->
<!--MULTI-USER LOGIN WITH DATABASE CONNECTION-->
<!--FEEL FREE TO MAKE CHANGES ACCORDINGLY-->
<!--If you face any problem, Please mail me anytime-->
<!--E-MAIL:mahajan_rahul@hotmail.com-->
<!--Date: 5th May, 2005-->
<!--Please rate it on www.planetsourcecode.com-->

<!--THE BELOW CODE IS USED TO STORE COOKIE INFORMATION IN THE USER BROWSER-->

<%Your_UserName = request.cookies("UserName")%>
<%Date_In = request.cookies("still")%>

<!--THE BELOW CODE IS USED TO CHECK WHETHER THE USER HAS LOGIN OR NOT -->

<%
Response.Expires = -1000
Response.ExpiresAbsolute = Now() - 1
If request.cookies("UserName") = "" AND Session("UserName") = "" then
	Response.Redirect ("unauthorized.asp")
	Response.End
End If
%>

<%
Response.Expires = -1000
Response.ExpiresAbsolute = Now() - 1
If Session("UserName") = "" then
	Response.Redirect ("unauthorized.asp")
	Response.End
End If
%>

<!--END OF THE CODE -->

<div align="right">
  <table border="0" width="365" cellspacing="0" cellpadding="0" height="24">
    <tr>
      <td width="444" valign="middle" align="right" height="24"><b><font face="Verdana" size="2" color="#FF0000"><% =Your_UserName%>&nbsp;&nbsp;</font></b></td>
      <td width="104" valign="middle" align="center" height="24"><a href="information.asp?UserLoggedIn=<% =Your_UserName %>" target="_top"><font face="Verdana" size="2" color="#0000FF">MyAccount</font></a></td>
      <td width="82" valign="middle" align="center" height="24"><a href="logout.asp" target="_top"><font face="Verdana" size="2" color="#0000FF">Logout</font></a></td>
    </tr>
    <tr>
      <td width="565" valign="middle" align="right" height="19" colspan="3"><font face="Verdana" size="1" color="#000080"> There are currently <font face="Verdana" color="#FF0000" size="1"><%= Application("ActiveUsers") %></font> visitors on our site.</font></td>
    </tr>
  </table>
</div>