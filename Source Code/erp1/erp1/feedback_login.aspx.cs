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
    public partial class feedback_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataAdapter ad = new SqlDataAdapter("select * from Login where uid='" + Textbox1.Text + "' and pass='" + Textbox2.Text + "'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
            if (ds.Tables[0].Rows.Count != 0)
            {

                String x = ds.Tables[0].Rows[0][2].ToString();
                if (x.Equals("FACULTY"))
                {
                    Session["type"] = "FACULTY";
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Response.Redirect("feedback_teacherselect.aspx");




                }
                if (x.Equals("STUDENT"))
                {
                    Session["type"] = "STUDENT";
                    Session["id"] = ds.Tables[0].Rows[0][0].ToString();
                    Response.Redirect("feedback_student.aspx");




                }
            }
            else
            {
                string str = "<script>alert(\"Incorrect Loging ID or Password\");</script>";
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Script", str, false);
            }
        }
    }
}