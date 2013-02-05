using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        { 
        //Check whether user directly access this page or come from Login page.
            if (Session["user"] == null)
            {
                //user access directly so not permit to view this page content
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.Text = "Welcome " + Session["user"].ToString();
            }
        }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        //After click Log out we need to delete all session values
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }
}
