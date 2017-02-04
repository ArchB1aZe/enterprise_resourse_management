using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class attend_interface : System.Web.UI.Page
    {
        string a, b, c, d;     
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"]) == null)
            {

                Response.Redirect("slog.aspx");

            }
            if (Session["type"].ToString() == "STUDENT")
            {
                Session["id"] = null;
                Response.Redirect("slog.aspx");
            }
            a=Request.QueryString["branch"];
            b = Request.QueryString["sem"];
            c = Request.QueryString["sub"];
            d = Request.QueryString["scode"];
            Label1.Text = a;
            Label2.Text = b;
            Label3.Text = d;
            Label4.Text = c;
            int ch = Convert.ToInt32(b);
            if (ch % 2 == 0)
            {
                Label5.Text = "SP-" + DateTime.Now.Year.ToString();
            }
            else
            {
                Label5.Text = "MO-" + DateTime.Now.Year.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ee = DateTime.Now.Date.ToShortDateString();
            Response.Redirect("enterattn.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "&date=" + ee + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("subatten.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("tstuattn.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("attendance_teachersubs.aspx");
        }
    }
}