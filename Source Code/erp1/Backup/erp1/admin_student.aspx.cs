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
    public partial class admin_student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"]) == null)
            {
                Response.Redirect("slog.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("insert into student values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            SqlDataAdapter ad1 = new SqlDataAdapter("insert into Login values('" + TextBox1.Text + "','" + TextBox1.Text + "','" + "STUDENT" + "')", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds1 = new DataSet();
            ad1.Fill(ds1);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox3.Text == "") || (TextBox4.Text == ""))
            {
                string str = "<script>alert(\"All fields must be filled.\");</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", str, false);
            }
            else
            {
                Response.Redirect("admin_inter1.aspx");
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("update student set stname='" + TextBox2.Text + "',branch='" + TextBox3.Text + "', sem='" + TextBox4.Text + "' where rno='" + TextBox1.Text + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox3.Text == "") || (TextBox4.Text == ""))
            {
                string str = "<script>alert(\"All fields must be filled.\");</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", str, false);
            }
            else
            {
                Response.Redirect("admin_inter1.aspx");
            }
        }
    }
}