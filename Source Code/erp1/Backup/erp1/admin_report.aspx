<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="admin_report.aspx.cs" Inherits="erp1.admin_report" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; margin-bottom:10px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Navy; font-weight:bold; padding-top:15px; font-family:Comic Sans MS;" width="1200px" height="60px">Report</td>
    </tr>
    </table>
    <h3 style="margin-bottom:10px; background-color:#99FFCC; width:1200px; color:Navy; font-weight:bold; border:2px solid navy;"><marquee>Birla Institute Of Technology</marquee></h3>
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; background-color:transparent; ">
    <tr  valign="bottom" align="center" style="border:0px; font-size:larger">
    <td  align="right" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
             valign="bottom">Branch: 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    <td  align="center" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger;" 
             width="400px" valign="bottom">Sem: 
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    <td  align="left" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger;" 
             width="400px" valign="bottom">Session: 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
    
    </tr>
       
    </table> 
    
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="390px">
        <table>
        <tr style="background-color:#99FFCC; font-size:large; color:Navy; font-weight:bold; border-color:Navy; border-style:solid; border-width:2px">
       <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy;" width="100px">Roll No.</td>   
       <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy;" width="150px">Student Name</td>

       <% 
           String a = Request.QueryString["branch"];
           String b = Request.QueryString["sem"];

           SqlDataAdapter ad = new SqlDataAdapter("select * from subject where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
           DataSet ds1 = new DataSet();
           ad.Fill(ds1);
           int i = 0;
           int count = ds1.Tables[0].Rows.Count;
           
            %>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy; width:300px;"><%=ds1.Tables[0].Rows[0][1].ToString()%></td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy; width:300px;"><%=ds1.Tables[0].Rows[1][1].ToString()%></td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy; width:300px;"><%=ds1.Tables[0].Rows[2][1].ToString()%></td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy; width:300px;"><%=ds1.Tables[0].Rows[3][1].ToString()%></td>
        
        
       
       
  </tr>
  <%
      int[] att = new int[10];

      SqlDataAdapter ad11 = new SqlDataAdapter("select sid from subject where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
      DataSet ds11 = new DataSet();
      ad11.Fill(ds11);

                
                SqlDataAdapter ad1 = new SqlDataAdapter("select * from student where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds = new DataSet();
                ad1.Fill(ds);
                SqlDataAdapter ad77 = new SqlDataAdapter("select * from attendance where scode='" + ds11.Tables[0].Rows[0][0] + "' and extra='NO'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds17 = new DataSet();
                ad77.Fill(ds17);
                SqlDataAdapter ad771 = new SqlDataAdapter("select * from attendance where scode='" + ds11.Tables[0].Rows[1][0] + "' and extra='NO'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds171 = new DataSet();
                ad771.Fill(ds171);
                SqlDataAdapter ad772 = new SqlDataAdapter("select * from attendance where scode='" + ds11.Tables[0].Rows[2][0] + "' and extra='NO'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds172 = new DataSet();
                ad772.Fill(ds172);
                SqlDataAdapter ad773 = new SqlDataAdapter("select * from attendance where scode='" + ds11.Tables[0].Rows[3][0] + "' and extra='NO'", "server=B1aZe;database=erp;integrated security=true");
                DataSet ds173 = new DataSet();
                ad773.Fill(ds173);
                for (int ia = 0; ia < ds.Tables[0].Rows.Count; ia++)
                {
                   
                      
                    for (int j = 0; j < ds17.Tables[0].Rows.Count; j++)
                    {
                    
                        if (ds17.Tables[0].Rows[j][1].ToString() == ds.Tables[0].Rows[ia][0].ToString())
                        {
                            att[0] = att[0] + Convert.ToInt32(ds17.Tables[0].Rows[j][3]);
                        }

                    
                    }
                    for (int j = 0; j < ds171.Tables[0].Rows.Count; j++)
                    {

                        if (ds171.Tables[0].Rows[j][1].ToString() == ds.Tables[0].Rows[ia][0].ToString())
                        {
                            att[1] = att[1] + Convert.ToInt32(ds171.Tables[0].Rows[j][3]);
                        }


                    }
                    for (int j = 0; j < ds172.Tables[0].Rows.Count; j++)
                    {

                        if (ds172.Tables[0].Rows[j][1].ToString() == ds.Tables[0].Rows[ia][0].ToString())
                        {
                            att[2] = att[2] + Convert.ToInt32(ds172.Tables[0].Rows[j][3]);
                        }


                    }
                    for (int j = 0; j < ds173.Tables[0].Rows.Count; j++)
                    {

                        if (ds173.Tables[0].Rows[j][1].ToString() == ds.Tables[0].Rows[ia][0].ToString())
                        {
                            att[3] = att[3] + Convert.ToInt32(ds173.Tables[0].Rows[j][3]);
                        }


                    }
      
               
          
        %>
        <tr style="font-size:large; color:Navy; font-weight:bold; border-color:Black; border-style:solid; border-width:2px;">
        
            
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="500px"><%=ds.Tables[0].Rows[ia][0]%></td>
        
       <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="500px"><%=ds.Tables[0].Rows[ia][1]%></td>
     

     
           <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="500px"><%=att[0]%>/<%=total[0]%></td>
           <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="500px"><%=att[1]%>/<%=total[1]%></td>
           <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="500px"><%=att[2]%>/<%=total[2]%></td>
           <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="500px"><%=att[3]%>/<%=total[3]%></td>
        
 
            
        </tr>
      
    <%
att[0] = 0;
att[1] = 0;
att[2] = 0;
att[3] = 0;
                


                    

                
            }
            %>
      </table>
    </asp:Panel>
    <table width="550px" style="margin-top:10px; margin-left:300px">
   <tr align="right">
    <td align="right">
      <asp:Button ID="Button3" runat="server" Text="ShortAttendance List" ForeColor="White" 
           Font-Bold="true" BackColor="Red" Font-Name="Verdana" onclick="Button3_Click" 
              />
      
        <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" runat="server" 
            Enabled="True" TargetControlID="Button3">
        </asp:RoundedCornersExtender>
        <asp:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" 
            Enabled="True" TargetControlID="Button3">
        </asp:DropShadowExtender>
        </td>
      <td>
       <asp:Button ID="Button2" runat="server" Text="View Medical list" ForeColor="White" 
           Font-Bold="true" BackColor="Red" Font-Name="Verdana" onclick="Button2_Click" 
              />
        <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
            Enabled="True" TargetControlID="Button2">
        </asp:RoundedCornersExtender>
        <asp:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" 
            Enabled="True" TargetControlID="Button2">
        </asp:DropShadowExtender>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
              </asp:ToolkitScriptManager>
    
   </td>
    <td>
       <asp:Button ID="Button1" runat="server" Text="Extra Class" ForeColor="White" 
           Font-Bold="true" BackColor="Red" Font-Name="Verdana" onclick="Button3_Click" 
              />
      
        <asp:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
            Enabled="True" TargetControlID="Button3">
        </asp:RoundedCornersExtender>
        <asp:DropShadowExtender ID="DropShadowExtender1" runat="server" 
            Enabled="True" TargetControlID="Button1">
        </asp:DropShadowExtender>
        </td>
        
    
 
  
   </tr>
   </table>  
  </form>

</asp:Content>

