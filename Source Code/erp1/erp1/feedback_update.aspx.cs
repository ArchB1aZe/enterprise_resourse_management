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
    public partial class feedback_update : System.Web.UI.Page
    {
        int count;
        DataSet ds, ds1;
        string a, b;
        DropDownList[,] dd1 = new DropDownList[12, 12];
        TableCell[] tc1 = new TableCell[15];
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

            SqlDataAdapter ad = new SqlDataAdapter("select * from subject where sem='" + b + "' and branch='" + a + "'", "server=B1aZe;database=erp;integrated security=true");
            ds = new DataSet();
            ad.Fill(ds);

            SqlDataAdapter ad1 = new SqlDataAdapter("select * from Faculty_Mst where branch='" + a + "'", "server=B1aZe;database=erp;integrated security=true");
            ds1 = new DataSet();
            ad1.Fill(ds1);
            count = ds.Tables[0].Rows.Count;
            for (int i = 0; i < count; i++)
            {
                coolster(i);
            }
        }

        public void coolster(int j)
        {

            tc1[0] = new TableCell();
            tc1[0].Text = (j + 1).ToString();
            TableRow tr1 = new TableRow();
            tr1.Cells.Add(tc1[0]);
            tr1.BorderColor = System.Drawing.Color.Black;
            tr1.BorderStyle = BorderStyle.Solid;
            tr1.BorderWidth = 2;
            tc1[1] = new TableCell();
            tc1[1].Text = ds.Tables[0].Rows[j][1].ToString();
            tr1.Cells.Add(tc1[1]);


            for (int k = 0; k < ds1.Tables[0].Rows.Count; k++)
            {

                if (ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][2].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][3].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][4].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][5].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][6].ToString())
                {

                    tc1[2] = new TableCell();
                    tc1[2].Text = ds1.Tables[0].Rows[k][1].ToString();
                    tr1.Cells.Add(tc1[2]);

                }


            }

            for (int x = 0; x < 9; x++)
            {
                dd1[j, x] = new DropDownList();
                dd1[j, x].Width = 80;
                dd1[j, x].ForeColor = System.Drawing.Color.Black;
                ListItem l1 = new ListItem("1");
                ListItem l2 = new ListItem("2");
                ListItem l3 = new ListItem("3");
                ListItem l4 = new ListItem("4");
                ListItem l5 = new ListItem("5");
                ListItem l6 = new ListItem("6");
                ListItem l7 = new ListItem("7");
                ListItem l8 = new ListItem("8");
                ListItem l9 = new ListItem("9");
                ListItem l10 = new ListItem("10");

                dd1[j, x].Items.Add(l1);
                dd1[j, x].Items.Add(l2);
                dd1[j, x].Items.Add(l3);
                dd1[j, x].Items.Add(l4);
                dd1[j, x].Items.Add(l5);
                dd1[j, x].Items.Add(l6);
                dd1[j, x].Items.Add(l7);
                dd1[j, x].Items.Add(l8);
                dd1[j, x].Items.Add(l9);
                dd1[j, x].Items.Add(l10);
                dd1[j, x].SelectedIndex = 9;
                dd1[j, x].Font.Name = "Veranda";
                dd1[j, x].Font.Bold = true;
                tc1[x + 3] = new TableCell();

                tc1[x + 3].Controls.Add(dd1[j, x]);

                tr1.Cells.Add(tc1[x + 3]);


            }
            tb.Rows.Add(tr1);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
             SqlDataAdapter adx = new SqlDataAdapter("select * from feedback where rno='" + Session["id"] + "'", "server=B1aZe;database=erp;integrated security=true");
           DataSet dsx = new DataSet();
            adx.Fill(dsx);

            if (dsx.Tables[0].Rows.Count != 0)
            {
                for (int j = 0; j < count; j++)
                {
                    for (int k = 0; k < ds1.Tables[0].Rows.Count; k++)
                    {

                        if (ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][2].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][3].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][4].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][5].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][6].ToString())
                        {

                            SqlDataAdapter ad = new SqlDataAdapter("update feedback set q1='" + dd1[j, 0].Text + "',q2='" + dd1[j, 1].Text + "',q3='" + dd1[j, 2].Text + "',q4='" + dd1[j, 3].Text + "',q5='" + dd1[j, 4].Text + "',q6='" + dd1[j, 5].Text + "',q7='" + dd1[j, 6].Text + "',q8='" + dd1[j, 7].Text + "',q9='" + dd1[j, 8].Text + "' where rno='"+Session["id"]+"'", "server=B1aZe;database=erp;integrated security=true");
                            DataSet ds11 = new DataSet();
                            ad.Fill(ds11);
                        }


                    }



                }
            }
            else
            {

                for (int j = 0; j < count; j++)
                {
                    for (int k = 0; k < ds1.Tables[0].Rows.Count; k++)
                    {

                        if (ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][2].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][3].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][4].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][5].ToString() || ds.Tables[0].Rows[j][0].ToString() == ds1.Tables[0].Rows[k][6].ToString())
                        {

                            SqlDataAdapter ad = new SqlDataAdapter("insert into feedback values('" + ds.Tables[0].Rows[j][0] + "','" + ds1.Tables[0].Rows[k][0] + "','" + dd1[j, 0].Text + "','" + dd1[j, 1].Text + "','" + dd1[j, 2].Text + "','" + dd1[j, 3].Text + "','" + dd1[j, 4].Text + "','" + dd1[j, 5].Text + "','" + dd1[j, 6].Text + "','" + dd1[j, 7].Text + "','" + dd1[j, 8].Text + "','" + a + "','" + ds1.Tables[0].Rows[k][1] + "','"+Session["id"]+"')", "server=B1aZe;database=erp;integrated security=true");
                            DataSet ds11 = new DataSet();
                            ad.Fill(ds11);
                        }


                    }



                }
                
            }
            Response.Redirect("feedback_student.aspx?branch=" + a + "&sem=" + b + "");
                
            }
        }
        }
    
