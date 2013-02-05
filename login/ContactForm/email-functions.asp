
<!--RAHUL MAHAJAN -->
<!--SCRIPT DESIGNED AND DEVELOPED BY RAHUL MAHAJAN -->
<!--MULTI-USER LOGIN WITH DATABASE CONNECTION-->
<!--FEEL FREE TO MAKE CHANGES ACCORDINGLY-->
<!--If you face any problem, Please mail me anytime-->
<!--E-MAIL:mahajan_rahul@hotmail.com-->
<!--Date: 5th May, 2005-->
<!--Please rate it on www.planetsourcecode.com-->

<%

' ASPMail sender
' on error resume next
Select case emailtype
case  "ASPmail"
		Set objNewMail = Server.CreateObject("SMTPsvg.Mailer")
		objNewMail.FromName = FromName
		objNewMail.FromAddress = FromEmail
		
		' the mail server goes below
		objNewMail.RemoteHost = MailServer
		objNewMail.AddRecipient YourEmail, YourEmail
		objNewMail.Subject = Subject
		objNewMail.BodyText = Body
	
		SendOk = objNewMail.SendMail
		


case  "cdonts"  
		Set objNewMail = Server.CreateObject ("CDONTS.NewMail")
		objNewMail.BodyFormat = 1
		objNewMail.MailFormat = 0
		'on error resume next '## Ignore Errors
		objNewMail.Send FromEmail, YourEmail, Subject, Body
		
		


case  "jmail" 

   set objNewMail = server.createobject("JMail.SMTPMail")
   objNewMail.Sender = FromEmail
   objNewMail.ServerAddress = MailServer
   objNewMail.AddRecipient   YourEmail
   objNewMail.Subject  = Subject
   objNewMail.Body = body
   objNewMail.execute
   
 

case "ASPEmail"
Set objNewMail = CreateObject("Persits.MailSender") 
   objNewMail.From = FromEmail
   objNewMail.Host = MailServer
   objNewMail.AddAddress  YourEmail
   objNewMail.Subject = Subject
   objNewMail.Body = body
   
   objNewMail.Send 
   
case "OCXmail"
Set objNewMail = Server.CreateObject("ASPMail.ASPMailCtrl.1")
   SendEmail =  objNewMail.SendMail(MailServer, YourEmail, FromEmail, Subject, body) 
   
Set objNewMail = Nothing


end select

'response.write err.number
%>
