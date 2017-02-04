using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class feedback_dhoom : System.Web.UI.Page
    {
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"]) == null)
            {

                Response.Redirect("slog.aspx");

            }
            
            a = Request.QueryString["branch"];
            b = Request.QueryString["name"];
            Label1.Text = b;
            Label2.Text = a;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Session["type"] = null;
            Response.Redirect("slog.aspx");
        }
    }
}