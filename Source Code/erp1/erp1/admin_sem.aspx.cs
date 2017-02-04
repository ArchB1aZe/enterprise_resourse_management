using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace erp1
{
    public partial class admin_sem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string k = Request.QueryString["s"];
            if (k == "MO")
            {
                ListItem l1 = new ListItem("1");
                ListItem l2 = new ListItem("3");
                ListItem l3 = new ListItem("5");
                ListItem l4 = new ListItem("7");
                DropDownList2.Items.Add(l1);
                DropDownList2.Items.Add(l2);
                DropDownList2.Items.Add(l3);
                DropDownList2.Items.Add(l4);
            }
            else
            {
                ListItem l1 = new ListItem("2");
                ListItem l2 = new ListItem("4");
                ListItem l3 = new ListItem("6");
                ListItem l4 = new ListItem("8");
                DropDownList2.Items.Add(l1);
                DropDownList2.Items.Add(l2);
                DropDownList2.Items.Add(l3);
                DropDownList2.Items.Add(l4);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("slog.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string a = DropDownList1.Text;
            string b = DropDownList2.Text;

            Response.Redirect("admin_report.aspx?branch=" + a + "&sem=" + b + "");

        }
    }
}