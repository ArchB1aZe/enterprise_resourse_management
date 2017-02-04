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
    public partial class marks_assenter : System.Web.UI.Page
    {
        String a, b, c, d;
        int count;
        DataSet ds;
        TextBox[] tb11 = new TextBox[100];
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
            Label4.Visible = false;
            if (Request.QueryString["check"] == "1")
            {
                Label4.Visible = true;
                Label4.Text = "Only integer values less than 25 are allowed.";
                Label4.ForeColor = System.Drawing.Color.Yellow;
            }
            a = Request.QueryString["branch"];
            b = Request.QueryString["sem"];
            c = Request.QueryString["sub"];
            d = Request.QueryString["scode"];
            Label1.Text = a;
            Label2.Text = b;
            Label3.Text = d;
            Label5.Text = c;
            SqlDataAdapter ad = new SqlDataAdapter("select * from student where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
            ds = new DataSet();
            ad.Fill(ds);
            count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)
            {
                coolster(i);
            }
        }
        public void coolster(int j)
        {
            TableCell tc1 = new TableCell();
            tc1.Text = (j + 1).ToString();
            TableRow tr1 = new TableRow();
            tr1.Cells.Add(tc1);
            tr1.BorderColor = System.Drawing.Color.Black;
            tr1.BorderStyle = BorderStyle.Solid;
            tr1.BorderWidth = 2;
            TableCell tc2 = new TableCell();
            tc2.Text = ds.Tables[0].Rows[j][1].ToString();
            tr1.Font.Bold = true;
            tr1.Cells.Add(tc2);
            TableCell tc3 = new TableCell();
            tc3.Text = ds.Tables[0].Rows[j][0].ToString();

            tr1.Cells.Add(tc3);

            tb11[j] = new TextBox();
            tb11[j].ForeColor = System.Drawing.Color.Black;
            TableCell tc4 = new TableCell();
            tc4.Controls.Add(tb11[j]);
            tb11[j].Font.Bold = true;
            tr1.Cells.Add(tc4);
            tb.Rows.Add(tr1);
            tc1.BorderColor = System.Drawing.Color.Black;
            tc1.BorderStyle = BorderStyle.Solid;
            tc1.BorderWidth = 2;
            tc2.BorderColor = System.Drawing.Color.Black;
            tc2.BorderStyle = BorderStyle.Solid;
            tc2.BorderWidth = 2;
            tc3.BorderColor = System.Drawing.Color.Black;
            tc3.BorderStyle = BorderStyle.Solid;
            tc3.BorderWidth = 2;
            tc4.BorderColor = System.Drawing.Color.Black;
            tc4.BorderStyle = BorderStyle.Solid;
            tc4.BorderWidth = 2;

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int ll = 0; ll < count; ll++)
            {
                
                try
                {
                    int.Parse(tb11[ll].Text);
                }
                catch
                {
                    int check=1;
                    Response.Redirect("marks_assenter.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "&check="+check+"");
                }
                if (Convert.ToInt32(tb11[ll].Text) > 15 || Convert.ToInt32(tb11[ll].Text) < 0)
                {
                    int check = 1;
                    Response.Redirect("marks_assenter.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "&check=" + check + "");
                }

                
            }
            for (int j = 0; j < count; j++)
            {

                SqlDataAdapter ad = new SqlDataAdapter("select * from marks where rno='" + ds.Tables[0].Rows[j][0] + "' and scode='" + d + "'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds1 = new DataSet();
                ad.Fill(ds1);
                if (ds1.Tables[0].Rows.Count != 0)
                {
                    SqlDataAdapter ad1 = new SqlDataAdapter("update marks set assessment='" + tb11[j].Text + "' where rno='" + ds.Tables[0].Rows[j][0] + "' and scode='" + d + "'", "server=B1aZe;database=erp;integrated security=true");
                    DataSet ds2 = new DataSet();
                    ad1.Fill(ds2);
                }
                else
                {
                    SqlDataAdapter ad2 = new SqlDataAdapter("insert into marks values('" + ds.Tables[0].Rows[j][0] + "','NULL','NULL','" + tb11[j].Text + "','" + d + "','" + ds.Tables[0].Rows[j][3] + "')", "server=B1aZe;database=erp;integrated security=true");
                    DataSet ds3 = new DataSet();
                    ad2.Fill(ds3);
                }
            }
            Response.Redirect("marks_facultyoptions.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }
    }
}
    