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
    public partial class ViewUsersForAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection Obj1 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            int Num = int.Parse(deleteuser.Text);
            OleDbCommand DeleteQuery = new OleDbCommand("DELETE FROM [User] WHERE [ID] ="+Num, Obj1);
            Obj1.Open();
            DeleteQuery.ExecuteNonQuery();
            Response.Write("<h4 style='text-align:center;background-color:rgba(255,0,0,0.5);padding:10px'>Done Deleting From Database</h4>");
            Obj1.Close();
        }
    }
}