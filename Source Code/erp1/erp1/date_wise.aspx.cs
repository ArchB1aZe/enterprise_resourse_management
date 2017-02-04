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
    public partial class date_wise : System.Web.UI.Page
    {
        String a, b;
        ListItem[] li = new ListItem[10];
        public static int flag1 = 0;
        
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

            if (flag1 == 0)
            {

                SqlDataAdapter ad = new SqlDataAdapter("select * from subject where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds = new DataSet();
                ad.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    li[i] = new ListItem(ds.Tables[0].Rows[i][1].ToString());
                    DropDownList1.Items.Add(li[i]);
                }
              
                SqlDataAdapter ad1 = new SqlDataAdapter("select * from attendance where sname='" + ds.Tables[0].Rows[0][1].ToString() + "' and rno='"+Session["id"].ToString()+"'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds1 = new DataSet();
                ad1.Fill(ds1);
                for (int k = 0; k < ds1.Tables[0].Rows.Count; k++)
                {

                    TableRow tr1 = new TableRow();

                    tr1.BorderColor = System.Drawing.Color.Black;
                    tr1.BorderStyle = BorderStyle.Solid;
                    tr1.BorderWidth = 2;
                    TableCell tc2 = new TableCell();
                    DateTime ac = Convert.ToDateTime(ds1.Tables[0].Rows[k][4]);
                    if (ds1.Tables[0].Rows[k][10].ToString() == "NO")
                    {
                        tc2.Text = ac.ToShortDateString();
                    }
                    else
                    {
                        tc2.Text = ac.ToShortDateString()+"*";
                    }
                    tr1.Font.Bold = true;
                    tr1.Cells.Add(tc2);
                    TableCell tc3 = new TableCell();
                    tc3.Text = ds1.Tables[0].Rows[k][3].ToString();

                    tr1.Cells.Add(tc3);
                    tb.Rows.Add(tr1);
                }
                flag1 = 1;
            }
        }
        DataSet ds;
        public void ruchikamoti(int j)
        {

            TableRow tr1 = new TableRow();

            tr1.BorderColor = System.Drawing.Color.Black;
            tr1.BorderStyle = BorderStyle.Solid;
            tr1.BorderWidth = 2;
            TableCell tc2 = new TableCell();
            DateTime ac = Convert.ToDateTime(ds.Tables[0].Rows[j][4]);
            if (ds.Tables[0].Rows[j][10].ToString() == "NO")
            {
                tc2.Text = ac.ToShortDateString();
            }
            else
            {
                tc2.Text = ac.ToShortDateString() + "*";
            }
            tr1.Font.Bold = true;
            tr1.Cells.Add(tc2);
            TableCell tc3 = new TableCell();
            tc3.Text = ds.Tables[0].Rows[j][3].ToString();

            tr1.Cells.Add(tc3);
            tb.Rows.Add(tr1);
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from attendance where sname='" + DropDownList1.Text + "' and rno='"+Session["id"].ToString()+"'", "server=B1aZe;database=erp;integrated security=true");
            ds = new DataSet();
            ad.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                ruchikamoti(i);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            flag1 = 0;
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            flag1 = 0;
            Response.Redirect("student_attend.aspx");
        }

        
    }
}