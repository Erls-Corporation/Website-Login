using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace SessionLogin
{
	/// <summary>
	/// Summary description for WebForm1.
	/// </summary>
	public class WebForm1 : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.Button SignOutBtn;
		protected System.Web.UI.WebControls.Label UserLabel;
	
		private void Page_Load(object sender, System.EventArgs e)
		{
			//Check if the user is logged in or not
			if(Session["Logged"].Equals("No"))
			{
				//It store the address of this WebForm as the requested WebForm
				Session["URL"]="Default.aspx";

				//Redirect the user to the Login.aspx
				Response.Redirect("Login.aspx");
			}
			else
			{
				//Preview the user's name in the page
				UserLabel.Text="Welcome, "+Session["User"];
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    
			this.SignOutBtn.Click += new System.EventHandler(this.SignOutBtn_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void SignOutBtn_Click(object sender, System.EventArgs e)
		{
			//Reset the Sessions to its first case where no data stored in i
			//And then redirect to the Login.aspx WebForm
			Session["Logged"]="No";
			Session["URL"]="";
			Session["User"]="";
			Response.Redirect("Login.aspx");
		}
	}
}
