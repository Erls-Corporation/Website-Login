<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <%--  <script type="text/javascript" language="javascript" src="scripts/jquery-1.7.1.js"></script>--%>
    <script type="text/javascript" language="Javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript">

        function GetInformaion() {
            //  this.Loginservce.AuthenticateUser($get("txtUsername").value, $get("txtPassword").value, Success, OnError);

            var pageUrl = '<%=ResolveUrl("~/Loginservce.asmx")%>'

            $.ajax({
                type: "POST",
                url: pageUrl + "/AuthenticateUser",
                data: '{username:"' + $("#txtUsername").val() + '",password:"' + $("#txtPassword").val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: Success,
                error: OnError
            });


        }
        function Success(result) {


            if (result.d == 'Success') {

                window.location = "Account/Register.aspx";
            } else {
                $("#successMessage").fadeIn(2000);
                $('#<%=lblOutput.ClientID%>').html(result.d);
                $("#successMessage").fadeOut(10000);
            }

        }

        function OnError(result) {
            $('#<%=lblOutput.ClientID%>').html(result.d);
            $("#successMessage").fadeOut(5000);
        }

        function HideMe() {
            $("#successMessage").hide(); ;
            
        }


    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <%--       <asp:Button ID="btnGetMsg" runat="server" Text="Click Me" OnClientClick="DisplayMessageCall();return false;" />--%><br />
            <h2>
                Welcome to ASP.NET!
            </h2>
            <p>
                To learn more about ASP.NET visit <a href="http://www.asp.net" title="ASP.NET Website">
                    www.asp.net</a>.
            </p>
            <p>
                You can also find <a href="http://go.microsoft.com/fwlink/?LinkID=152368&amp;clcid=0x409"
                    title="MSDN ASP.NET Docs">documentation on ASP.NET at MSDN</a>.
            </p>
            <br />
            <div id="successMessage" style="width: 300px; background-color: Lime; height: 30px;
                display: none;" onclick="JavaScript:HideMe();">
                <asp:Label ID="lblOutput" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
            <div>
                <table class="style1">
                    <tr>
                        <td>
                            User Name
                        </td>
                        <td>
                            <input type="text" id="txtUsername" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password
                        </td>
                        <td>
                            <input type="password" id="txtPassword" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <%--   <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>--%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Click Me" OnClientClick="GetInformaion();return false;" /><br />
                        </td>
                    </tr>
                </table>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
