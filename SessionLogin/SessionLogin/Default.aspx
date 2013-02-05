<%@ Page language="c#" Codebehind="Default.aspx.cs" AutoEventWireup="false" Inherits="SessionLogin.WebForm1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Default</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table width="100%">
				<tr>
					<td align="right"><asp:button id="SignOutBtn" runat="server" Text="SignOut"></asp:button></td>
				</tr>
				<tr>
					<td align="left"><asp:label id="UserLabel" Runat="server"></asp:label></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
