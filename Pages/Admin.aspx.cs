using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skyblock_website.Pages
{
    public partial class Admin : System.Web.UI.Page
    {
        public string sqlmsg = "";
        public string st = "";
        public string msg = "";
        public string sqlSelect = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string filename = "usersDB.mdf";
            string tablename = "usersTbl";
            sqlSelect = "SELECT * FROM " + tablename;
            DataTable table = Helper.ExecuteDataTable(filename, sqlSelect);
            int length = table.Rows.Count;
            if (length == 0)
            { st = "אין נרשמים בטבלה"; }
            else
            {
                for (int i = 0; i < length; i++)
                {
                    st += "<tr> ";
                    st += "<td> " + table.Rows[i]["uName"] + " </td>";
                    st += "<td> " + table.Rows[i]["fName"] + " </td>";
                    st += "<td> " + table.Rows[i]["lName"] + " </td>";
                    st += "<td> " + table.Rows[i]["email"] + " </td>";
                    st += "<td> " + table.Rows[i]["pw"] + " </td>";
                    st += "<td> " + table.Rows[i]["gender"] + " </td>";
                    st += "<td> " + table.Rows[i]["city"] + " </td>";
                    st += "<td> " + table.Rows[i]["year"] + " </td>";
                    st += "<td> " + table.Rows[i]["prefix"] + " </td>";
                    st += "<td> " + table.Rows[i]["phone"] + " </td>";
                    st += "<td> " + table.Rows[i]["hob1"] + " </td>";
                    st += "<td> " + table.Rows[i]["hob2"] + " </td>";
                    st += "<td> " + table.Rows[i]["hob3"] + " </td>";
                    st += "<td> " + table.Rows[i]["hob4"] + " </td>";
                    st += "</tr>";
                }
            }
        }
    }
}