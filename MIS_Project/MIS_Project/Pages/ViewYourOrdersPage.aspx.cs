using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MIS_Project
{
    public partial class ViewYourOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "Select * FROM [Order] WHERE [User_Email] = '" + USER_DATA.USER_EMAIL + "'";
        }


    }
}