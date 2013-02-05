<%@ Page Language="C#" %>

<html>
  <body>
    <h1>Protected Page</h1>
    <hr><br>
     <% Response.Write (Context.User.Identity.Name + ": "); %>
    Be careful investing your money in dot-coms.
  </body>
</html>
<script language="C#" runat="server">
    void OnViewSecret (Object sender, EventArgs e)
    {
        Response.Redirect ("Secret/ProtectedPage.aspx");
    }
</script>
