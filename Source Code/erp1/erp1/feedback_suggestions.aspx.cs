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
    public partial class feedback_suggestions : System.Web.UI.Page
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
            label3.Text = "";
        }
        protected void Unnamed4_Click(object sender, EventArgs e)
        {

            Response.Redirect("feedback_stud_sugg.aspx?branch=" + a + "&sem=" + b + "");

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {


            if (t1.Text != "")
            {
                label3.Text = "";
                SqlDataAdapter ad = new SqlDataAdapter("insert into feedback_suggest values('" + t1.Text + "')", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds11 = new DataSet();
                ad.Fill(ds11);
                t1.Text = "";

            }
            else
            {
                label3.Text = "Please enter suggestions!!";

            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Session["type"] = null;
            Response.Redirect("slog.aspx");
        }
    }
}