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
    public partial class student_attend : System.Web.UI.Page
    {
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
        }
        String a, b;
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from student where rno='" + Session["id"] + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            a = ds.Tables[0].Rows[0][2].ToString();
            b = ds.Tables[0].Rows[0][3].ToString();
            Response.Redirect("perattn.aspx?branch="+a+"&sem="+b+"");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from student where rno='" + Session["id"] + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            a = ds.Tables[0].Rows[0][2].ToString();
            b = ds.Tables[0].Rows[0][3].ToString();
            Response.Redirect("percent_wise.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from student where rno='" + Session["id"] + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            a = ds.Tables[0].Rows[0][2].ToString();
            b = ds.Tables[0].Rows[0][3].ToString();
            Response.Redirect("date_wise.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }
    }
}