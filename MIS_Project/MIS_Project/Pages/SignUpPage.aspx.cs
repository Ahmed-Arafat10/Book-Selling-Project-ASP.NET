using System;
using System.Configuration;
using System.Data.OleDb;
namespace MIS_Project
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            OleDbConnection obj1 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            OleDbCommand InsertQuery = new OleDbCommand("INSERT INTO [User] ([name],[email],[password],[confirmpassword],[phone],[address]) VALUES('" + username.Text + "', '" + email.Text + "', '" + password.Text + "', '" + confpassword.Text + "', '" + phone.Text + "', '" + address.Text + "')", obj1);
            obj1.Open();
            InsertQuery.ExecuteNonQuery();
            // Response.Write("Done Inserting to Database");
            Response.Redirect("LogInUserPage.aspx");
            obj1.Close();
        }
    }
}