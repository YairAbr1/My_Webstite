using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Skyblock_website.Pages
{
    public partial class About : System.Web.UI.Page
    {
        public string hellomsg;
        public string msg1;
        public string msg2;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["uName"] != null)
            {
                hellomsg = @"<h4 style=""color: #ffffff;"">Hello ";
                hellomsg += $"{Session["uName"]}</h4>";

            }

            if (Session["uName"] == "Guest")
            {
                msg1 = "<a href=\"Signup.aspx\">Signup</a>";
                msg2 = "<a href=\"Login.aspx\">Login</a>";
            }
            else
            {
                msg1 = "<a href=\"Disconnect.aspx\">Disconnect</a>";
                msg2 = "<a href=\"Guides.aspx\">Guides</a>";
            }

        }
    }
}