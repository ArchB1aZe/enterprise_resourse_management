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
    public partial class enterattn : System.Web.UI.Page
    {
        int count;
        DataSet ds;
        string a, b, c, d,ee;
        DropDownList[] ddl = new DropDownList[100];

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
            a = Request.QueryString["branch"];
            b = Request.QueryString["sem"];
            c = Request.QueryString["sub"];
            d = Request.QueryString["scode"];
            ee=Request.QueryString["date"];
            Label1.Text = a;
            Label2.Text = b;
            Label3.Text = d;
            Label4.Text = ee;
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
            DropDownList11111.ForeColor = System.Drawing.Color.Black;
            DropDownList123123.ForeColor = System.Drawing.Color.Black;
           
            ListItem l2 = new ListItem("1");
            ListItem l3 = new ListItem("2");
            ListItem l4 = new ListItem("3");
            ListItem l5 = new ListItem("4");
            ListItem l6 = new ListItem("5");
          
            DropDownList11111.Items.Add(l2);
            DropDownList11111.Items.Add(l3);
            DropDownList11111.Items.Add(l4);
            DropDownList11111.Items.Add(l5);
            DropDownList11111.Items.Add(l6);
           
            DropDownList11111.Font.Name = "Veranda";
            ListItem l7 = new ListItem("NO");
            ListItem l8 = new ListItem("YES");
            DropDownList123123.Items.Add(l7);
            DropDownList123123.Items.Add(l8);
            DropDownList123123.Font.Name = "Veranda";
            SqlDataAdapter ad = new SqlDataAdapter("select * from student where branch='"+a+"' and sem='"+b+"'", "server=B1aZe;database=erp;integrated security=true");
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
            tc1.Text=(j+1).ToString();
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

            ddl[j] = new DropDownList();
            ddl[j].Width = 200;
            ddl[j].ForeColor = System.Drawing.Color.Black;
            ListItem l1 = new ListItem("0");
            ListItem l2 = new ListItem("1");
            ListItem l3 = new ListItem("2");
            ListItem l4 = new ListItem("3");
            ListItem l5 = new ListItem("4");
            ListItem l6 = new ListItem("5");
            ddl[j].Items.Add(l1);
            ddl[j].Items.Add(l2);
            ddl[j].Items.Add(l3);
            ddl[j].Items.Add(l4);
            ddl[j].Items.Add(l5);
            ddl[j].Items.Add(l6);
            ddl[j].SelectedIndex = 1;
            ddl[j].Font.Name = "Veranda";
            TableCell tc4 = new TableCell();
            tc4.Controls.Add(ddl[j]);
            ddl[j].Font.Bold = true;
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
            for (int j = 0; j < count; j++)
            {


               
                SqlDataAdapter ad = new SqlDataAdapter("insert into attendance values('"+ds.Tables[0].Rows[j][1]+"','"+ds.Tables[0].Rows[j][0]+"','"+c+"','"+ddl[j].Text+"','"+ee+"','"+a+"','"+b+"','"+d+"','"+Session["id"].ToString()+"','"+DropDownList11111.Text+"','"+DropDownList123123.Text+"')", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds1 = new DataSet();
                ad.Fill(ds1);
            }
            Response.Redirect("attend_interface.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }
    }
}