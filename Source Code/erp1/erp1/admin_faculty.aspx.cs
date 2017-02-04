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
    public partial class admin_faculty : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["id"]) == null)
            {
                Response.Redirect("slog.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("update Faculty_Mst set name='" + TextBox1.Text + "',s1='" + TextBox3.Text + "', s2='" + TextBox4.Text + "',s3='" + TextBox5.Text + "',s4='" + TextBox6.Text + "',s5='" + TextBox7.Text + "',branch='" + TextBox9.Text + "',num='" + TextBox10.Text + "',email='" + TextBox11.Text + "' where fid='" + TextBox2.Text + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if( (TextBox1.Text=="") || (TextBox2.Text=="") || (TextBox3.Text=="") || (TextBox4.Text=="") || (TextBox5.Text=="") || (TextBox6.Text=="") || (TextBox7.Text=="") || (TextBox11.Text=="") || (TextBox9.Text=="") || (TextBox10.Text==""))
            {
            string str = "<script>alert(\"All fields must be filled.\");</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", str, false);
            }
            else{
            Response.Redirect("admin_inter1.aspx");
            }
            
            
            
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("insert into Faculty_Mst values('" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);

            SqlDataAdapter ad1 = new SqlDataAdapter("insert into Login values('" + TextBox2.Text + "','" + TextBox2.Text + "','" + "FACULTY" + "')", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds1 = new DataSet();
            ad1.Fill(ds1);
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            if ((TextBox1.Text == "") || (TextBox2.Text == "") || (TextBox3.Text == "") || (TextBox4.Text == "") || (TextBox5.Text == "") || (TextBox6.Text == "") || (TextBox7.Text == "") || (TextBox11.Text == "") || (TextBox9.Text == "") || (TextBox10.Text == ""))
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