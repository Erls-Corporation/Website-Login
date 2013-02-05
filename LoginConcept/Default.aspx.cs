using System;
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
using System.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["Con"].ConnectionString);
    SqlCommand sqlcmd;
    SqlDataAdapter da;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        sqlcon.Open();
        //Enter default login details username "ravi" and password "test123"
        sqlcmd = new SqlCommand("select * from usr_detail where uname='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "'",sqlcon);
        dt.Clear();
        da = new SqlDataAdapter(sqlcmd);
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["user"] = TextBox1.Text;
            Response.Redirect("Default2.aspx");
        }
        else {
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label1.Text = "Invalid Login Details!";
        }
    }
}
