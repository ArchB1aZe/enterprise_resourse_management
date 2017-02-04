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
    public partial class feedback_boom : System.Web.UI.Page
    {
        ListItem[] li = new ListItem[50];
        DataSet ds;
        int l = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"]) == null)
            {

                Response.Redirect("slog.aspx");

            }
            
            if (l == 0)
            {
                SqlDataAdapter ad = new SqlDataAdapter("select name from Faculty_Mst where branch='CSE'", "server=B1aZe;database=erp;integrated security=true");
                ds = new DataSet();
                ad.Fill(ds);
                for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                {
                    li[i] = new ListItem(ds.Tables[0].Rows[i][0].ToString());
                    DropDownList2.Items.Add(li[i]);
                    DropDownList2.ForeColor = System.Drawing.Color.Black;
                }
            }
            l = 1;
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            l = 1;
            DropDownList2.Items.Clear();
            string a = DropDownList1.Text;
            SqlDataAdapter ad1 = new SqlDataAdapter("select name from Faculty_Mst where branch='" + DropDownList1.Text + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds1 = new DataSet();
            ad1.Fill(ds1);
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {


                li[i] = new ListItem(ds1.Tables[0].Rows[i][0].ToString());
                DropDownList2.Items.Add(li[i]);


            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("feedback_dhoom.aspx?branch=" + DropDownList1.Text + " &name=" + DropDownList2.Text + "");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }
    }
}