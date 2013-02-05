using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data.SqlClient;
using System.Data;
using System.Web.Script.Serialization;

using System.Web.Script.Services;

/// <summary>
/// Summary description for Loginservce
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
 [System.Web.Script.Services.ScriptService]
public class Loginservce : System.Web.Services.WebService {

    public Loginservce () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld()
    {
        return "Hello World";
    }



    [WebMethod]
    public string AuthenticateUser(string username ,string password)
    {
        string result = "Invalid Username or Password";
              string connectionString = "server=server;uid=sa;pwd=123;database=AutoSaveTesting;";

              SqlConnection connection = new SqlConnection(connectionString);


              string sql = "select * from login where username='" + username + "' and password='" + password + "'";
            connection.Open();
            SqlCommand command = new SqlCommand(sql, connection);
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read())
            {
                result = "Success";
            }
            connection.Close();



         //   JavaScriptSerializer js = new JavaScriptSerializer();// Use this when formatting the data as JSON

           // return js.Serialize("Hello World");
            return result;
    }
}
