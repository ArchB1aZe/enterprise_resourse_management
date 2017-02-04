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
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from Login where uid='" + Textbox1.Text + "' and pass='" + Textbox2.Text + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if (ds.Tables.Count != 0)
            {
                if (Textbox1.Text == "" || Textbox2.Text == "")
                {
                   
                        string str = "<script>alert(\"All fields must be filled.\");</script>";
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", str, false);
                    
                    
                }
                else
                {
                    String x = ds.Tables[0].Rows[0][2].ToString();
                    if (x.Equals("ADMIN"))
                    {
                        Session["type"] = "ADMIN";
                        Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                        Response.Redirect("admin_inter1.aspx");

                    }
                    if (x.Equals("STUDENT"))
                    {
                        
                        Response.Redirect("slog.aspx");
                    }
                    if (x.Equals("FACULTY"))
                    {
                       
                        Response.Redirect("slog.aspx");





                    }
                }
            }
        }
    }
}