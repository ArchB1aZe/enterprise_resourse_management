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
    public partial class shortatten : System.Web.UI.Page
    {
        string a, b, c, d;
        public static double total;
        int tot;
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
            a = Request.QueryString["branch"];
            b = Request.QueryString["sem"];
            c = Request.QueryString["sub"];
            d = Request.QueryString["scode"];
            Label1.Text = a;
            Label2.Text = b;
            Label3.Text = d;
            Label5.Text = c;
            int ch = Convert.ToInt32(b);
            if (ch % 2 == 0)
            {
                Label6.Text = "SP-" + DateTime.Now.Year.ToString();
            }
            else
            {
                Label6.Text = "MO-" + DateTime.Now.Year.ToString();
            }
            SqlDataAdapter ad = new SqlDataAdapter("select DISTINCT date,lectures from attendance where scode='" + d + "' and extra='NO'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds2 = new DataSet();
            ad.Fill(ds2);
            int tot = 0;

            for (int i = 0; i < ds2.Tables[0].Rows.Count; i++)
            {
                tot = tot + Convert.ToInt32(ds2.Tables[0].Rows[i][1]);
            }
            total = tot;
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            total = 0;
            Response.Redirect("subatten.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            total = 0;
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }
    }
}