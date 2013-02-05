<!--RAHUL MAHAJAN -->
<!--SCRIPT DESIGNED AND DEVELOPED BY RAHUL MAHAJAN -->
<!--MULTI-USER LOGIN WITH DATABASE CONNECTION-->
<!--FEEL FREE TO MAKE CHANGES ACCORDINGLY-->
<!--If you face any problem, Please mail me anytime-->
<!--E-MAIL:mahajan_rahul@hotmail.com-->
<!--Date: 5th May, 2005-->
<!--Please rate it on www.planetsourcecode.com-->

<%
Dim Body,Subject
Dim YourEmail, FromEmail
Dim FromName, Mailserver
Dim EmailType

' ###### Your Email system details ####

YourEmail = "Me@atmysite.com" ' your email address
Mailserver = "mail.thmysite.com" ' this is your mail server address, if you dont know ask your webhost

'####### Choose a email system #####
'EmailType ="ASPmail"
EmailType ="cdonts"
'EmailType ="jmail"
'EmailType ="ASPEmail"
'EmailType ="OCXMail" 

'Request the form elements from the last page
Body = request.form("body")

Subject = request.form("subject")

FromName = request.form("name")

FromEmail = request.form("email")


' Now lets send the email by using the include file 
%>
<!--#include file ="email-functions.asp"--->
<html>
<head>
<title>Contact Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF">

</body>
</html>
