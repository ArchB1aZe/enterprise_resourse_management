using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class feedback_teacher : System.Web.UI.Page
    {
        string a, b;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"]) == null)
            {

                Response.Redirect("slog.aspx");

            }
            if (Convert.ToString(Session["type"]) == "STUDENT")
            {
                Session["id"] = null;
                Response.Redirect("slog.aspx");
            }
            a = Request.QueryString["branch"];
            b = Request.QueryString["sem"];

            Label1.Text = a;
            Label2.Text = b;
           
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("feedback_view_classwise.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {
            Response.Redirect("feedback_tech_wala_sugg.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button5_Click1(object sender, EventArgs e)
        {
            Response.Redirect("feedback_boom.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void b2_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Session["type"] = null;
            Response.Redirect("slog.aspx");
        }

        protected void b1_Click(object sender, EventArgs e)
        {

        }
    }
}