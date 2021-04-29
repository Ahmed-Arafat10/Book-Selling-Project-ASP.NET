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
    public partial class MakeOrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            email.Text = USER_DATA.USER_EMAIL;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           OleDbConnection obj2 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            obj2.Open();
            int ID = int.Parse(DropDownList1.Text);
             OleDbCommand BookNameQuery = new OleDbCommand("SELECT [Book_Name] FROM [Book] WHERE [Book_ID] = " + ID, obj2);
            string BookName = BookNameQuery.ExecuteScalar().ToString();
            //Response.Write(BookName);
            OleDbCommand BookAuthorQuery = new OleDbCommand("SELECT [Author] FROM [Book] WHERE [Book_ID] = " + ID, obj2);
            string BookAuthor = BookAuthorQuery.ExecuteScalar().ToString();
            OleDbCommand BookPriceQuery = new OleDbCommand("SELECT [Price] FROM [Book] WHERE [Book_ID] = " + ID, obj2);
            string BookPrice = BookPriceQuery.ExecuteScalar().ToString();
            OleDbCommand InsertIntoOrderDB = new OleDbCommand("INSERT INTO [Order] ([User_Email],[Book_ID],[Book_Name],[Author],[Order_Price],[PaymentMethod]) VALUES('" + email.Text + "','" + ID+ "','" +BookName+ "','" + BookAuthor + "','" + BookPrice + "','" + Payments.Text + "')", obj2);
            InsertIntoOrderDB.ExecuteNonQuery();
             Response.Write("<h4 style='text-align:center;background-color:rgba(0,255,0,0.5);padding:10px'>Order Is Completed Successfully</h4>");
            obj2.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("HomeUserPage.aspx");
        }
    }
}