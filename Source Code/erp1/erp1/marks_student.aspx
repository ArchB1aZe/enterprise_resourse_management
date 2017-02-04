<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="marks_student.aspx.cs" Inherits="erp1.marks_student" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; margin-bottom:10px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Black; font-weight:bold; padding-top:15px; font-family:Comic Sans MS;" width="1200px" height="60px">GRADES</td>
    </tr>
    </table>
    <h3 style="margin-bottom:10px; background-color:Silver; width:1200px; color:Black; font-weight:bold; border:2px solid navy;"><marquee>Birla Institute Of Technology</marquee></h3>
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; background-color:transparent; ">
    <tr  valign="bottom" align="center" style="border:0px; font-size:larger">
    <td  align="right" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
             valign="bottom">Name: 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    <td  align="center" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger;" 
             width="400px" valign="bottom">Branch: 
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    <td  align="left" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger;" 
             width="400px" valign="bottom">Sem: 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
    
    </tr>
    

   
    
    
    </table>
    
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="390px">
     <table>
     <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px">
     <td>
        <table>

      
        <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px">
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">S.No.</td>
            
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="200px">Subject Code</td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="400px">Subject Name</td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">Mid Sem (MM:25)</td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">Assessment(MM:15)</td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">End Sem (MM:60)</td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">GRADE</td>
        </tr>
          <%
            String a=Request.QueryString["sem"];
            
            SqlDataAdapter ad = new SqlDataAdapter("select * from marks where rno='" + Session["id"] + "' and sem='"+a+"'", "server=B1aZe;database=erp;integrated security=true");
            DataSet ds = new DataSet();
            ad.Fill(ds);
              
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                if (ds.Tables[0].Rows[i][1].ToString() != "NULL" && ds.Tables[0].Rows[i][2].ToString() != "NULL" && ds.Tables[0].Rows[i][3].ToString() != "NULL")
                {
                    int x = Convert.ToInt32(ds.Tables[0].Rows[i][1]);
                    int y = Convert.ToInt32(ds.Tables[0].Rows[i][3]);
                    int z = Convert.ToInt32(ds.Tables[0].Rows[i][2]);
                    int cal = (x + y + z);
                    String grade = "";

                    SqlDataAdapter ad2 = new SqlDataAdapter("select * from grades ", "server=B1aZe;database=erp;integrated security=true");
                    DataSet ds2 = new DataSet();
                    ad2.Fill(ds2);
                    for (int j = 0; j < ds2.Tables[0].Rows.Count; j++)
                    {
                        if (cal >= Convert.ToInt32(ds2.Tables[0].Rows[j][2]) && cal <= Convert.ToInt32(ds2.Tables[0].Rows[j][3]))
                        {
                            grade = ds2.Tables[0].Rows[j][0].ToString();
                        }

                    }


                    SqlDataAdapter ad1 = new SqlDataAdapter("select * from subject where sid='" + ds.Tables[0].Rows[i][4] + "'", "server=B1aZe;database=erp;integrated security=true");
                    DataSet ds1 = new DataSet();
                    ad1.Fill(ds1);
             %>
        <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px">
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=i + 1%></td>
            
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="200px"><%=ds.Tables[0].Rows[i][4]%></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="400px"><%=ds1.Tables[0].Rows[0][1]%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=x%></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=y%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=z%></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=grade%></td>
        </tr>
        <%
}
                else
                {
                    cgpaflag = 1;
                  SqlDataAdapter ad1 = new SqlDataAdapter("select * from subject where sid='" + ds.Tables[0].Rows[i][4] + "'", "server=B1aZe;database=erp;integrated security=true");
                    DataSet ds1 = new DataSet();
                    ad1.Fill(ds1);
             %>
        <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px">
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=i + 1%></td>
            
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="200px"><%=ds.Tables[0].Rows[i][4]%></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="400px"><%=ds1.Tables[0].Rows[0][1]%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=ds.Tables[0].Rows[i][1]%></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=ds.Tables[0].Rows[i][3]%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=ds.Tables[0].Rows[i][2]%></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">NULL</td>
        </tr>
        <%
}

                
                }
                
              
                 %>

       </table>
       </td>
      <td>
      <table>
      <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px">
      <td  style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="200px" height="61px">CGPA(MAX:10)</td>
      </tr>
      <%if (cgpaflag == 1)
        { %>
      <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold;">
      <td colspan="inherit" valign="middle" style="font-weight:bold; color:Black;" width="200px">
      NULL
      </td>
      </tr>
      <%}
        else
        {


            for (int xx = 0; xx < ds.Tables[0].Rows.Count; xx++)
            {
                SqlDataAdapter ad1 = new SqlDataAdapter("select * from subject where sid='" + ds.Tables[0].Rows[xx][4] + "'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds1 = new DataSet();
                ad1.Fill(ds1);
                totcg = totcg + Convert.ToDouble(ds1.Tables[0].Rows[0][4]);

                int x = Convert.ToInt32(ds.Tables[0].Rows[xx][1]);
                int y = Convert.ToInt32(ds.Tables[0].Rows[xx][3]);
                int z = Convert.ToInt32(ds.Tables[0].Rows[xx][2]);
                int cal = (x + y + z);
                String grade = "";

                SqlDataAdapter ad2 = new SqlDataAdapter("select * from grades ", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds2 = new DataSet();
                ad2.Fill(ds2);
                for (int j = 0; j < ds2.Tables[0].Rows.Count; j++)
                {
                    if (cal >= Convert.ToInt32(ds2.Tables[0].Rows[j][2]) && cal <= Convert.ToInt32(ds2.Tables[0].Rows[j][3]))
                    {
                        grade = ds2.Tables[0].Rows[j][0].ToString();
                        calccg = calccg + Convert.ToDouble(ds2.Tables[0].Rows[j][1]) * Convert.ToDouble(ds1.Tables[0].Rows[0][4]);
                    }


                }
            }
        
        %>
       
        <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold;">
      <td colspan="inherit" valign="middle" style="font-weight:bold; color:Black;" width="200px">
      <%=Math.Round(calccg / totcg, 4)%>
      </td>
      </tr>
      <%
        }
           %>
        
        
           
      
      </table>
      </td>
    </tr>
    </table>
    </asp:Panel>
     <table width="1200px" style="margin-top:10px;">
   <tr align="right">
   <td align="right">
       <asp:Button ID="Button2" runat="server" Text="Back" ForeColor="Black" 
           Font-Bold="true" BackColor="Silver" Font-Name="Verdana" 
           onclick="Button2_Click" />
   
   
       <asp:Button ID="Button1" runat="server" Text="Logout" ForeColor="Black" 
           Font-Bold="true" BackColor="Silver" Font-Name="Verdana" 
           onclick="Button1_Click"    />
    </td>
   </tr>
   </table>  
  <h3 style="margin-top:20px; background-color:Silver; width:1200px; color:Black; font-weight:bold; border:2px solid navy;">Aveg Chaudhary, Kharanshu Saini, Ruchika Singh, Aayushi Sharma</h3>


    </form>
</asp:Content>
