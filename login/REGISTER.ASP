<%@ Language=VBScript %>

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

<head>
<title>Resigtration Form.</title>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<STYLE TYPE="text/css"> 

BODY 
{ 
scrollbar-base-color: #7782C3; 
scrollbar-arrow-color: #ffffff;
scrollbar-DarkShadow-Color: #000000; 
}
</STYLE>
</head>

<body bgcolor="#FFFFFF">

<div align="center">
  <center>
  <table border="0" width="550" cellspacing="0" cellpadding="0" height="627">
   <form action="First_Time.asp" method="POST" name="form1">
    <tr>
      <td width="544" valign="top" align="center" height="74" colspan="3">
        <div align="center">
          <center>
          <table border="0" width="550" cellspacing="0" cellpadding="0" height="62">
            <tr>
              <td width="100%" valign="middle" align="center" height="33" bgcolor="#E0E0E0"><b><font face="Arial" size="4" color="#FF0000">Registration
                Form</font></b></td>
            </tr>
            <tr>
              <td width="100%" valign="middle" align="center" height="29"><font face="Verdana" size="2" color="#FF0000">*
                </font><font face="Verdana" color="#0000FF" size="1">mark fields
                are mandatory.</font></td>
            </tr>
          </table>
          </center>
        </div>
      </td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">First
        Name</font></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"><input type="text" name="txtName" size="20"></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">Last
        Name</font></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"><input type="text" name="txtLastName" size="20"></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">E-Mail</font></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"><input type="text" name="txtEmail" size="20"></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">Username</font></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"><input type="text" name="txtUserName" size="20"></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">Password</font></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"><input type="password" name="txtPassword" size="20" maxlength="10"></td>
    </tr>
    <tr>
      <td width="544" valign="middle" align="right" height="45" colspan="3"><font face="Verdana" color="#0000FF" size="1">Password
        can be Alpha-Numeric but not more than 10 words.</font></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">Secret
        Question</font></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"> <select size="1" name="txtQuestion">
        <option></option>
        <option>Your Favorite Time-Pass</option>
        <option>Your Favorite Movie Star</option>
        <option>Yours Pet Name</option>
        <option>Favorite Playback Singer</option>
      </select></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">Answer</font></td>
      <td width="31" valign="middle" align="center" height="30"><font face="Verdana" size="2" color="#000080">-</font></td>
      <td width="257" valign="middle" align="left" height="30"><input type="text" name="txtAnswer" size="20" maxlength="10"></td>
    </tr>
    <tr>
      <td width="544" valign="middle" align="right" height="45" colspan="3"><font face="Verdana" color="#0000FF" size="1">Answer
        can be Alpha-Numeric but no more than 10 words.</font></td>
    </tr>
    <tr>
      <td width="544" valign="middle" align="left" height="45" colspan="3"><font face="Verdana" size="2" color="#000080"><b>Personal
        Details</b> -</font></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">Address</font></td>
      <td width="31" valign="middle" align="center" height="30">-</td>
      <td width="257" valign="middle" align="left" height="30"><input type="text" name="txtAddress" size="20"></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">City</font></td>
      <td width="31" valign="middle" align="center" height="30">-</td>
      <td width="257" valign="middle" align="left" height="30"><input type="text" name="txtCity" size="20"></td>
    </tr>
    <tr>
      <td width="256" valign="middle" align="left" height="30"><font face="Verdana" size="2" color="#FF0000">*
        </font><font face="Verdana" size="2" color="#000080">Country</font></td>
      <td width="31" valign="middle" align="center" height="30">-</td>
      <td width="257" valign="middle" align="left" height="30">
      <select size="1" name="txtCountry">
<option></option>
<option>United States of America</option>
<option>America Latina</option>
<option>Belgique</option>
<option>Belgie</option>
<option>Brazil</option>
<option>Burma</option>
<option>Bangladesh</option>
<option>Canada</option>
<option>Denmark</option>
<option>Dutchland</option>
<option>England</option>
<option>Ethopia</option>
<option>France</option>
<option>Ireland</option>
<option>Italy</option>
<option>India</option>
<option>Luxemburg</option>
<option>Mexico</option>
<option>Netherland</option>
<option>Norway</option>
<option>Nambia</option>
<option>Portugal</option>
<option>Pakistan</option>
<option>Russia</option>
<option>Spain</option>
<option>South Africa</option>
<option>United Kingdom</option>
<option>UAE</option>
<option>Other</option>
</select></font>
      </td>
    </tr>
    <tr>
      <td width="544" valign="middle" align="center" height="118" colspan="3"><input type="submit" value="Submit" name="submit">
        &nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="Reset"></td>
    </tr>
  </table>
  </center>
</div>
</form>

</body>
</html>

