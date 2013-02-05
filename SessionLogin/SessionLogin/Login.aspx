<%@ Page language="c#" Codebehind="Login.aspx.cs" AutoEventWireup="false" Inherits="SessionLogin.Login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Login</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<br>
			<br>
			<br>
			<table cellSpacing="5" cellPadding="5" align="center" border="0">
				<TR>
					<TD><asp:label id="MessageLabel" Visible="False" ForeColor="Red" Runat="server">Username or Password may be incorrect.</asp:label></TD>
				</TR>
				<TR>
					<TD>
						<table>
							<TR>
								<TD><asp:label id="UserNameLabel" runat="server">Username</asp:label></TD>
								<TD><asp:textbox id="UserNametxt" runat="server" Width="150px"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator1" runat="server" ErrorMessage="*" ControlToValidate="UserNametxt"></asp:requiredfieldvalidator></TD>
							</TR>
							<TR>
								<TD><asp:label id="PasswordLabel" runat="server">Password</asp:label></TD>
								<TD><asp:textbox id="Passwordtxt" runat="server" TextMode="Password" Width="150"></asp:textbox><asp:requiredfieldvalidator id="Requiredfieldvalidator2" runat="server" ErrorMessage="*" ControlToValidate="Passwordtxt"></asp:requiredfieldvalidator></TD>
								<TD><asp:button id="LogInBtn" runat="server" Text="Login"></asp:button></TD>
							</TR>
						</table>
					</TD>
				</TR>
			</table>
		</form>
	</body>
</HTML>
