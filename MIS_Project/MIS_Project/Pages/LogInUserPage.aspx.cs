using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
namespace MIS_Project
{
    //User-Defined Class
    public static class USER_DATA
    {
        public static string USER_EMAIL;
        public static int cnt;
    }


    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection obj1 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            OleDbCommand InsertQuery = new OleDbCommand("SELECT COUNT(*) FROM [User] WHERE [name] = '" +  username.Text +"' ", obj1);
            obj1.Open();
            int NoOfRows = int.Parse(InsertQuery.ExecuteScalar().ToString());
            if (NoOfRows >= 1)
            {
                OleDbCommand PasswordQuery = new OleDbCommand("SELECT [password] FROM [User] WHERE [name] = '" + username.Text + "'", obj1);
                string Password = PasswordQuery.ExecuteScalar().ToString();
                if (password.Text == Password)
                {
                    OleDbCommand EmailQuery = new OleDbCommand("SELECT [email] FROM [User] WHERE [name] = '" + username.Text + "' AND [password] = '" + password.Text + "'", obj1);
                    USER_DATA.USER_EMAIL = EmailQuery.ExecuteScalar().ToString();
                    Response.Redirect("HomeUserPage.aspx");
                }
                else Response.Write("<h4 style='text-align:center;background-color:rgba(255,0,0,0.5);padding:10px'>Password Is Incorrect<h4>");
            }  
            else   Response.Write("<h4 style='text-align:center;background-color:rgba(255,0,0,0.5);padding:10px'>Username Is Incorrect<h4>");
            obj1.Close();
        }
    }
}