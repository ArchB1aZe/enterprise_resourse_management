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
    public partial class admin_report : System.Web.UI.Page
    {
        string a, b;
        public static double[] total = new double[10];

        protected void Page_Load(object sender, EventArgs e)
        {
            a = Request.QueryString["branch"];
            b = Request.QueryString["sem"];
            Label1.Text = a;
            Label2.Text = b;
            int sem = Convert.ToInt32(b);
            if (sem % 2 == 0)
            {
                Label3.Text = "SP";
            }
            else
            {
                Label3.Text = "MO";
            }
            SqlDataAdapter ad11 = new SqlDataAdapter("select sid from subject where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds11 = new DataSet();
            ad11.Fill(ds11);
            int count1 = ds11.Tables[0].Rows.Count;

            for (int h = 0; h < count1; h++)
            {

                SqlDataAdapter ad2 = new SqlDataAdapter("select DISTINCT date,lectures from attendance where scode='" + ds11.Tables[0].Rows[h][0] + "' and extra='NO' ", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds2 = new DataSet();
                ad2.Fill(ds2);
                int tot = 0;

                for (int ik = 0; ik < ds2.Tables[0].Rows.Count; ik++)
                {
                    tot = tot + Convert.ToInt32(ds2.Tables[0].Rows[ik][1]);
                }
                total[h] = tot;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_short.aspx?branch=" + a + "&sem=" + b + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}