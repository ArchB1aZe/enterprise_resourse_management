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
    public partial class marks_studentsem : System.Web.UI.Page
    {
        String a, b, c,d;
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
            a = ds.Tables[0].Rows[0][1].ToString();
            b = ds.Tables[0].Rows[0][3].ToString();
            c=ds.Tables[0].Rows[0][2].ToString();
            Label1.Text = a;
            Label2.Text = b;
            Label3.Text = c;
        }

       

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            d=DropDownList1.Text;
            Response.Redirect("marks_student.aspx?name=" + a + "&sem=" + d + "&branch="+c+"");
        }
    }
}