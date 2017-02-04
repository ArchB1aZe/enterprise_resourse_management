using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class marks_selectenter : System.Web.UI.Page
    {
        String a, b, c, d;
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
            Label1.Text = a;
            Label2.Text = b;
            Label3.Text = d;
            Label4.Text = c;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("marks_facultyoptions.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("marks_midenter.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("marks_endenter.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("marks_assenter.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }
    }
}