using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace erp1
{
    public partial class percent_wise : System.Web.UI.Page
    {
        String a, b;

        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"]) == null)
            {

                Response.Redirect("slog.aspx");

            }
            if (Convert.ToString(Session["type"]) == "FACULTY")
            {
                Session["id"] = null;
                Response.Redirect("slog.aspx");
            }
            a = Request.QueryString["branch"];
            b = Request.QueryString["sem"];
            Label1.Text = a;
            Label2.Text = b;
            int ch = Convert.ToInt32(b);
            if (ch % 2 == 0)
            {
                Label3.Text = "SP-" + DateTime.Now.Year.ToString();
            }
            else
            {
                Label3.Text = "MO-" + DateTime.Now.Year.ToString();
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("student_attend.aspx");
        }
    }
}