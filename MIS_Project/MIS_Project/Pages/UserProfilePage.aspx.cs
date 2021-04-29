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
    public partial class ProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (USER_DATA.cnt == 0)
            {
                OleDbConnection obj2 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
                OleDbCommand EmailQuery = new OleDbCommand("SELECT [email] FROM [User] WHERE [email] = '" + USER_DATA.USER_EMAIL + "' ", obj2);
                OleDbCommand UsernameQuery = new OleDbCommand("SELECT [name] FROM [User] WHERE [email] = '" + USER_DATA.USER_EMAIL + "' ", obj2);
                OleDbCommand PasswordQuery = new OleDbCommand("SELECT [password] FROM [User] WHERE [email] = '" + USER_DATA.USER_EMAIL + "' ", obj2);
                OleDbCommand ConPasswordQuery = new OleDbCommand("SELECT [confirmpassword] FROM [User] WHERE [email] = '" + USER_DATA.USER_EMAIL + "' ", obj2);
                OleDbCommand PhoneQuery = new OleDbCommand("SELECT [phone] FROM [User] WHERE [email] = '" + USER_DATA.USER_EMAIL + "' ", obj2);
                OleDbCommand AddressQuery = new OleDbCommand("SELECT [address] FROM [User] WHERE [email] = '" + USER_DATA.USER_EMAIL + "' ", obj2);
                obj2.Open();
                email.Text = EmailQuery.ExecuteScalar().ToString();
                username.Text = UsernameQuery.ExecuteScalar().ToString();
                password.Text = PasswordQuery.ExecuteScalar().ToString();
                confpassword.Text = ConPasswordQuery.ExecuteScalar().ToString();
                phone.Text = PhoneQuery.ExecuteScalar().ToString();
                address.Text = AddressQuery.ExecuteScalar().ToString();
                obj2.Close();
            }
            USER_DATA.cnt++;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection obj2 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            OleDbCommand UpdateQuery = new OleDbCommand("UPDATE [User] SET [name] = '" + username.Text + "' , [password]= '" + password.Text + "',[confirmpassword] ='" + confpassword.Text + "', [phone] = '" + phone.Text + "',[address] = '" + address.Text + "' WHERE [ID] =" + 1, obj2);
            obj2.Open();
            UpdateQuery.ExecuteNonQuery();
            Response.Write("<h4 style='text-align:center;background-color:rgba(0,255,0,0.5);padding:10px'>Updating Data Is Completed Successfully</h4>");
            //Response.Redirect("HomePage.aspx");
        }
    }
}
