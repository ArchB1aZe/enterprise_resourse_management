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
    public partial class tstuattn : System.Web.UI.Page
    {
        public static int flag = 0;
        string a, b, c, d;
        ListItem[] li = new ListItem[100];
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
            Label6.Text = c;
            int ch = Convert.ToInt32(b);
            if (ch % 2 == 0)
            {
                Label4.Text = "SP-" + DateTime.Now.Year.ToString();
            }
            else
            {
                Label4.Text = "MO-" + DateTime.Now.Year.ToString();
            }
            if (flag == 0)
            {
                
                SqlDataAdapter ad1 = new SqlDataAdapter("select * from student where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds = new DataSet();
                ad1.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    li[i] = new ListItem(ds.Tables[0].Rows[i][1].ToString() + " (" + ds.Tables[0].Rows[i][0].ToString() + ")");
                    DropDownList1.Items.Add(li[i]);
                }
                String[] x = new String[2];
                String ddt = DropDownList1.Text;

                x = ddt.Split('(');
                int len = x[1].Length;
                String final = x[1].Substring(0, len - 1);
                SqlDataAdapter ad = new SqlDataAdapter("select * from attendance where scode='" + d + "' and rno='" + final + "'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds1 = new DataSet();
                ad.Fill(ds1);
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
                        tc2.Text = ac.ToShortDateString() + "*";
                    }
                    tr1.Font.Bold = true;
                    tr1.Cells.Add(tc2);
                    TableCell tc3 = new TableCell();
                    tc3.Text = ds1.Tables[0].Rows[k][3].ToString();

                    tr1.Cells.Add(tc3);
                    tb.Rows.Add(tr1);
                }
                flag = 1;
            }
            
        }
        DataSet ds;
        public void aayumoti(int j)
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
                tc2.Text = ac.ToShortDateString()+"*";
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
           
            String[] x = new String[2];
            String ddt = DropDownList1.Text;
            
            x = ddt.Split('(');
            int len = x[1].Length;
            String final = x[1].Substring(0, len - 1);
            
            SqlDataAdapter ad = new SqlDataAdapter("select * from attendance where scode='" + d + "' and rno='" + final + "' ", "server=B1aZe;database=erp;integrated security=true");
            ds = new DataSet();
            ad.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                aayumoti(i);
            }
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            flag = 0;
            Session["id"] = null;
            Response.Redirect("slog.aspx");
            
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {
            flag = 0;
            Response.Redirect("attend_interface.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
        }
    }
}