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
    public partial class marks_facultysubsel : System.Web.UI.Page
    {
        String a, b, c, d;
        static String[] bra = new string[5];
        static String[] se = new string[5];
        static String[] sco = new string[5];
        static String[] sna = new string[5];

        static int superflag = 0;
        static int y;
        int x = 0;
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
            SqlDataAdapter ad = new SqlDataAdapter("select * from Faculty_Mst where fid='" + Session["id"] + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            SqlDataAdapter ad1 = new SqlDataAdapter("select * from subject", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds1 = new DataSet();
            ad1.Fill(ds1);
            if (superflag == 0)
            {
                for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
                {
                    for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                    {
                        if ((ds.Tables[0].Rows[j][2].ToString() == ds1.Tables[0].Rows[i][0].ToString()) || (ds.Tables[0].Rows[j][3].ToString() == ds1.Tables[0].Rows[i][0].ToString()) || (ds.Tables[0].Rows[j][4].ToString() == ds1.Tables[0].Rows[i][0].ToString()) || (ds.Tables[0].Rows[j][5].ToString() == ds1.Tables[0].Rows[i][0].ToString()) || (ds.Tables[0].Rows[j][6].ToString() == ds1.Tables[0].Rows[i][0].ToString()))
                        {
                            ListItem li = new ListItem(ds1.Tables[0].Rows[i][1].ToString());
                            DropDownList1.Items.Add(li);
                            bra[x] = ds1.Tables[0].Rows[i][3].ToString();
                            se[x] = ds1.Tables[0].Rows[i][2].ToString();
                            sco[x] = ds1.Tables[0].Rows[i][0].ToString();
                            sna[x] = ds1.Tables[0].Rows[i][1].ToString();
                            x++;
                        }
                    }


                }
                y = DropDownList1.Items.Count;
                superflag = 1;
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            c = DropDownList1.Text;

            for (int k = 0; k < y; k++)
            {

                if (c == sna[k])
                {
                    a = bra[k];
                    b = se[k];
                    d = sco[k];
                    for (int m = 0; m < y; m++)
                    {
                        bra[m] = "";
                        se[m] = "";
                        sco[m] = "";
                        sna[m] = "";
                    }
                    superflag = 0;
                    y = 0;

                    Response.Redirect("marks_facultyoptions.aspx?branch=" + a + "&sem=" + b + "&sub=" + c + "&scode=" + d + "");
                }



            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            superflag = 0;
            for (int m = 0; m < y; m++)
            {
                bra[m] = "";
                se[m] = "";
                sco[m] = "";
                sna[m] = "";
            }
            superflag = 0;
            y = 0;
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }
    }
}