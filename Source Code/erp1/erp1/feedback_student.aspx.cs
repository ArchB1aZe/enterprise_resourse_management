using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace erp1
{
    public partial class feedback_student : System.Web.UI.Page
    {
        string a, b;
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
            SqlDataAdapter ad = new SqlDataAdapter("select * from student where rno='" + Session["id"] + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            a = ds.Tables[0].Rows[0][2].ToString();
            b = ds.Tables[0].Rows[0][3].ToString();
            Label1.Text = a;
            Label2.Text = b;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback_update.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback_view_classwise.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback_suggestions.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("feedback_boom.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void b1_Click(object sender, EventArgs e)
        {

        }

        protected void b2_Click(object sender, EventArgs e)
        {

        }
    }
}