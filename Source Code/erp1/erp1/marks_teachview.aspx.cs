using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class marks_teachview : System.Web.UI.Page
    {
        string a, b, c, d;  
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
            c = Request.QueryString["sub"];
            d = Request.QueryString["scode"];
            Label5.Text = c;
            Label2.Text = b;
            Label3.Text = d;
            Label4.Text = a;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("marks_facultyoptions.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("slog.aspx");
            
        }
    }
}