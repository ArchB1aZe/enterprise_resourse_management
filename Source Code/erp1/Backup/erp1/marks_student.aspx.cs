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
    public partial class marks_student : System.Web.UI.Page
    {
        String a, b, c;
        public static int cgpaflag=0;
        public static double totcg = 0;
        public static double calccg = 0;
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
           a=Request.QueryString["name"];
           b = Request.QueryString["branch"];
           c = Request.QueryString["sem"];
           Label1.Text = a;
           Label2.Text = b;
           Label3.Text = c;
            
            
        }

        

        protected void Button1_Click(object sender, EventArgs e)
        {
            calccg = 0;
            totcg = 0;
            cgpaflag = 0;
            Session["id"] = null;
            Response.Redirect("slog.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            calccg = 0;
            totcg = 0;
            cgpaflag = 0;
            Response.Redirect("marks_studentsem.aspx");
        }

        
    }
}