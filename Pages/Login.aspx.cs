using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Skyblock_website.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string wrong;
        public string msg;
        public string sqlLogin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Form["submit"] != null)
            {
                string uName = Request.Form["uName"];
                string pw = Request.Form["pw"];

                string fileName = "usersDB.mdf";
                string tableName = "usersTbl";

                sqlLogin = "SELECT * FROM " + tableName + " WHERE uName = '" + uName + "' AND pw = '" + pw + "'";

                DataTable table = Helper.ExecuteDataTable(fileName, sqlLogin);
                int length = table.Rows.Count;
                if (length == 0)
                {
                    msg = "<p style=\"color:orange; position: fixed; top: 50px; right: 0px; \">Need an account? ^^</p>";
                    wrong = @"<h7 style=""color:red; font-style:oblique; margin-top: 30px "">No account was found</h7>";
                }
                else
                {
                    Session["uName"] = table.Rows[0]["uName"];
                    Session["fName"] = table.Rows[0]["fName"];
                    if (uName == "Admin")
                    {
                        Response.Redirect("Admin.aspx");
                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                }
            }

        }
    }
}
