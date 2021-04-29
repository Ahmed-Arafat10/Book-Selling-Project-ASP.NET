using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
namespace MIS_Project.Pages
{
    public partial class LogInAdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection obj1 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            OleDbCommand Query = new OleDbCommand("SELECT * FROM [Admin] WHERE [Admin_Name] = '" + adminusername.Text + "' AND [Password] = '" + adminpassword.Text + "'", obj1);
            obj1.Open();
            OleDbDataReader is_exist = Query.ExecuteReader();
            if (is_exist.HasRows)
                Response.Redirect("HomeAdminPage.aspx");
            else
                Response.Write("<h4 style='text-align:center;background-color:rgba(255,0,0,0.5);padding:10px'>Password/Name Of Admin Is Incorrect</h4>");
            obj1.Close();
        }
    }
}