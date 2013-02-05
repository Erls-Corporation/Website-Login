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
	/// Summary description for Login.
	/// </summary>
	public class Login : System.Web.UI.Page
	{
		protected System.Web.UI.WebControls.RequiredFieldValidator Requiredfieldvalidator1;
		protected System.Web.UI.WebControls.Label MessageLabel;
		protected System.Web.UI.WebControls.Label UserNameLabel;
		protected System.Web.UI.WebControls.TextBox UserNametxt;
		protected System.Web.UI.WebControls.Label PasswordLabel;
		protected System.Web.UI.WebControls.TextBox Passwordtxt;
		protected System.Web.UI.WebControls.Button LogInBtn;
		protected System.Web.UI.WebControls.RequiredFieldValidator Requiredfieldvalidator2;

		private void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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
			this.Passwordtxt.TextChanged += new System.EventHandler(this.LogInBtn_Click);
			this.Passwordtxt.DataBinding += new System.EventHandler(this.LogInBtn_Click);
			this.LogInBtn.Click += new System.EventHandler(this.LogInBtn_Click);
			this.Load += new System.EventHandler(this.Page_Load);

		}
		#endregion

		private void LogInBtn_Click(object sender, System.EventArgs e)
		{
			//Check if the Username, and Password are correct or not
			//Ofcourse you can connect to database where the Username & Password are stored
			if(UserNametxt.Text.Trim()=="Abdallah" && Passwordtxt.Text.Trim()=="Fayez")
			{
				//Change the Session called "Logged" value into "Yes"
				Session["Logged"]="Yes";

				//Store the Username in one of the Sessions, so it can be used later
				Session["User"]="Abdallah";

				//Redirect to the requested page
				//If there is no requested page, then it will be redirected to the Default.aspx WebForm
				Response.Redirect(Session["URL"].ToString());
			}
			else
			{
				MessageLabel.Visible=true;
			}
		}

	}
}
