<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System.Data.SqlClient" %>
<html>
  <body>
    <h1>Please Log In</h1>
    <hr>
    <form runat="server">
   <table cellpadding="8">
    <tr>
      <td>
        User Name:
      </td>
      <td>
        <asp:TextBox ID="UserName" RunAt="server" />
      </td>
    </tr>
    <tr>
      <td>
        Password:
      </td>
      <td>
        <asp:TextBox ID="Password" RunAt="server" />
      </td>
    </tr>
    <tr>
      <td>
       <asp:Button Text="Submit" OnClick="OnSubmit" RunAt="server" />
      </td>
      <td>
        <asp:CheckBox Text="Remember me" ID="RememberMe" RunAt="server" />
      </td>
    </tr>
  </table>
</form>
    <hr>
    <h3><asp:Label ID="Output" RunAt="server" /></h3>
  </body>
</html>

<script language="C#" runat="server">
bool CustomAuthenticate (string username, string password)
{
    SqlConnection connection = new SqlConnection
        ("server=localhost;database=weblogin;uid=sa;pwd=");

    try {
        connection.Open ();

        StringBuilder builder = new StringBuilder ();
        builder.Append ("select count (*) from users " + "where username = \'");
        builder.Append (username);
        builder.Append ("\' and cast (rtrim (password) as " + "varbinary) = cast (\'");
        builder.Append (password);
        builder.Append ("\' as varbinary)");

        SqlCommand command = new SqlCommand (builder.ToString (), connection);

        int count = (int) command.ExecuteScalar ();
        return (count > 0);
    }
    catch (SqlException) {
        return false;
    }
    finally {
        connection.Close ();
    }
}

  void OnSubmit (Object sender, EventArgs e)
{
     string url = FormsAuthentication.GetRedirectUrl (UserName.Text, RememberMe.Checked);
FormsAuthentication.SetAuthCookie (UserName.Text, RememberMe.Checked);

if (RememberMe.Checked) {
    HttpCookie cookie = Response.Cookies[FormsAuthentication.FormsCookieName];
    cookie.Expires = DateTime.Now + new TimeSpan (7, 0, 0, 0);
}

Response.Redirect (url);
}


</script>
