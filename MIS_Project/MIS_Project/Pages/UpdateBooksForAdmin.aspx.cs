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
    public partial class UpdateBooksForAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OleDbConnection Obj1 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            Obj1.Open();
            int ID = int.Parse(BooksList.Text);
            OleDbCommand BookNameQuery = new OleDbCommand("SELECT [Book_Name] FROM [Book] WHERE [Book_ID] = " + ID, Obj1);
            bookname.Text = BookNameQuery.ExecuteScalar().ToString();
            OleDbCommand BookAuthorQuery = new OleDbCommand("SELECT [Author] FROM [Book] WHERE [Book_ID] = " + ID, Obj1);
            author.Text = BookAuthorQuery.ExecuteScalar().ToString();
            OleDbCommand BookPublisherQuery = new OleDbCommand("SELECT [Publisher] FROM [Book] WHERE [Book_ID] = " + ID, Obj1);
            publisher.Text = BookPublisherQuery.ExecuteScalar().ToString();
            OleDbCommand BookYearQuery = new OleDbCommand("SELECT [Year] FROM [Book] WHERE [Book_ID] = " + ID, Obj1);
            year.Text = BookYearQuery.ExecuteScalar().ToString();
            OleDbCommand BookPriceQuery = new OleDbCommand("SELECT [Price] FROM [Book] WHERE [Book_ID] = " + ID, Obj1);
            price.Text = BookPriceQuery.ExecuteScalar().ToString();
            Obj1.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int ID = int.Parse(BooksList.Text);
            OleDbConnection Obj1 = new OleDbConnection(ConfigurationManager.ConnectionStrings["DATABASE"].ConnectionString);
            OleDbCommand UpdateBookQuery = new OleDbCommand("UPDATE [Book] Set [Book_Name]='"+bookname.Text+"', [Author] = '"+author.Text+"',[Publisher] = '"+publisher.Text+"', [Year] = '"+year.Text+"' , [Price] = '"+price.Text+"' WHERE [Book_ID] = " + ID, Obj1);
            Obj1.Open();
            UpdateBookQuery.ExecuteNonQuery();
            Response.Write("<h4 style='text-align:center;background-color:rgba(0,255,0,0.5);padding:10px'>Updating Book Is Completed Successfully</h4>");
            Obj1.Close();
        }
    }
}