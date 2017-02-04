using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace erp1
{
    public partial class themes : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {
            
                ImageButton1.ImageUrl = "~/css/images/1.jpg";
                ImageButton2.ImageUrl = "~/css/images/2.jpg";
                ImageButton3.ImageUrl = "~/css/images/3.jpg";
                ImageButton4.ImageUrl = "~/css/images/4.jpg";
                ImageButton5.ImageUrl = "~/css/images/5.jpg";
                ImageButton6.ImageUrl = "~/css/images/6.jpg";
                
               

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           
            string dpath = Server.MapPath("~/") + "/css/" + "/images/" + "/bg.jpg";
            string dpath1 = Server.MapPath("~/") + "/css/" + "/images/" + "/1.jpg";
            string dpath2 = "xxx.jpg";
            string dpath3 = "bg.jpg";
            string dir1 = Path.GetDirectoryName(dpath);
            string dir2 = Path.GetDirectoryName(dpath1);
            string dest1 = Path.Combine(dir1, dpath2);
            string dest2 = Path.Combine(dir2, dpath3);
            File.Move(dpath, dest1);
            File.Move(dpath1, dest2);
            string dpathx = Server.MapPath("~/") + "/css/" + "/images/" + "/xxx.jpg";
            string dpathxx = "1.jpg";
            string dirx = Path.GetDirectoryName(dpathx);
            string destx = Path.Combine(dirx, dpathxx);
            File.Move(dpathx, destx);
            Response.Redirect("slog.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            
            string dpath = Server.MapPath("~/") + "/css/" + "/images/" + "/bg.jpg";
            string dpath1 = Server.MapPath("~/") + "/css/" + "/images/" + "/2.jpg";
            string dpath2 = "xxx.jpg";
            string dpath3 = "bg.jpg";
            string dir1 = Path.GetDirectoryName(dpath);
            string dir2 = Path.GetDirectoryName(dpath1);
            string dest1 = Path.Combine(dir1, dpath2);
            string dest2 = Path.Combine(dir2, dpath3);
            File.Move(dpath, dest1);
            File.Move(dpath1, dest2);
            string dpathx = Server.MapPath("~/") + "/css/" + "/images/" + "/xxx.jpg";
            string dpathxx = "2.jpg";
            string dirx = Path.GetDirectoryName(dpathx);
            string destx = Path.Combine(dirx, dpathxx);
            File.Move(dpathx, destx);
            Response.Redirect("slog.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
           
            string dpath = Server.MapPath("~/") + "/css/" + "/images/" + "/bg.jpg";
            string dpath1 = Server.MapPath("~/") + "/css/" + "/images/" + "/3.jpg";
            string dpath2 = "xxx.jpg";
            string dpath3 = "bg.jpg";
            string dir1 = Path.GetDirectoryName(dpath);
            string dir2 = Path.GetDirectoryName(dpath1);
            string dest1 = Path.Combine(dir1, dpath2);
            string dest2 = Path.Combine(dir2, dpath3);
            File.Move(dpath, dest1);
            File.Move(dpath1, dest2);
            string dpathx = Server.MapPath("~/") + "/css/" + "/images/" + "/xxx.jpg";
            string dpathxx = "3.jpg";
            string dirx = Path.GetDirectoryName(dpathx);
            string destx = Path.Combine(dirx, dpathxx);
            File.Move(dpathx, destx);
            Response.Redirect("slog.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            
            string dpath = Server.MapPath("~/") + "/css/" + "/images/" + "/bg.jpg";
            string dpath1 = Server.MapPath("~/") + "/css/" + "/images/" + "/4.jpg";
            string dpath2 = "xxx.jpg";
            string dpath3 = "bg.jpg";
            string dir1 = Path.GetDirectoryName(dpath);
            string dir2 = Path.GetDirectoryName(dpath1);
            string dest1 = Path.Combine(dir1, dpath2);
            string dest2 = Path.Combine(dir2, dpath3);
            File.Move(dpath, dest1);
            File.Move(dpath1, dest2);
            string dpathx = Server.MapPath("~/") + "/css/" + "/images/" + "/xxx.jpg";
            string dpathxx = "4.jpg";
            string dirx = Path.GetDirectoryName(dpathx);
            string destx = Path.Combine(dirx, dpathxx);
            File.Move(dpathx, destx);
            Response.Redirect("slog.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            string dpath = Server.MapPath("~/") + "/css/" + "/images/" + "/bg.jpg";
            string dpath1 = Server.MapPath("~/") + "/css/" + "/images/" + "/5.jpg";
            string dpath2 = "xxx.jpg";
            string dpath3 = "bg.jpg";
            string dir1 = Path.GetDirectoryName(dpath);
            string dir2 = Path.GetDirectoryName(dpath1);
            string dest1 = Path.Combine(dir1, dpath2);
            string dest2 = Path.Combine(dir2, dpath3);
            File.Move(dpath, dest1);
            File.Move(dpath1, dest2);
            string dpathx = Server.MapPath("~/") + "/css/" + "/images/" + "/xxx.jpg";
            string dpathxx = "5.jpg";
            string dirx = Path.GetDirectoryName(dpathx);
            string destx = Path.Combine(dirx, dpathxx);
            File.Move(dpathx, destx);
            Response.Redirect("slog.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            string dpath = Server.MapPath("~/") + "/css/" + "/images/" + "/bg.jpg";
            string dpath1 = Server.MapPath("~/") + "/css/" + "/images/" + "/6.jpg";
            string dpath2 = "xxx.jpg";
            string dpath3 = "bg.jpg";
            string dir1 = Path.GetDirectoryName(dpath);
            string dir2 = Path.GetDirectoryName(dpath1);
            string dest1 = Path.Combine(dir1, dpath2);
            string dest2 = Path.Combine(dir2, dpath3);
            File.Move(dpath, dest1);
            File.Move(dpath1, dest2);
            string dpathx = Server.MapPath("~/") + "/css/" + "/images/" + "/xxx.jpg";
            string dpathxx = "6.jpg";
            string dirx = Path.GetDirectoryName(dpathx);
            string destx = Path.Combine(dirx, dpathxx);
            File.Move(dpathx, destx);
            Response.Redirect("slog.aspx");
        }

        

        
    }
}