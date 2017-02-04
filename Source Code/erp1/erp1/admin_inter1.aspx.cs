using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class admin_inter1 : System.Web.UI.Page
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
            Response.Redirect("admin_student.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_faculty.aspx"); 
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_subject.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["id"] = "";
            Response.Redirect("slog.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_mo.aspx");
        }
    }
}