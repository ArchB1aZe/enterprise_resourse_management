<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="subatten.aspx.cs" Inherits="erp1.subatten" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; margin-bottom:10px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Navy; font-weight:bold; padding-top:15px; font-family:Comic Sans MS;" width="1200px" height="60px">ATTENDANCE</td>
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
             width="400px" valign="bottom">Subject Code: 
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
    
    </tr>
    <tr style="border:0px; font-size:larger">
   
        <td  align="center"
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
              width="1200px">Subject Name:  
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        <td  align="center"
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
              width="1200px">
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
    </tr>
    
    
    
    </table>
   
    
    
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="390px">
        <table>
        <tr style="background-color:#99FFCC; font-size:large; color:Navy; font-weight:bold; border-color:Navy; border-style:solid; border-width:2px">
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy;" width="100px">S.No.</td>
            
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy;" width="500px">Student Name</td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy;" width="300px">Roll Number</td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy;" width="200px">Attendance(<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>)</td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:Navy;" width="100px">Total %</td>
        </tr>
        </table>
        <table>
        <% 
           String a = Request.QueryString["branch"];
           String b = Request.QueryString["sem"];
           
              String c = Request.QueryString["sub"];
           String d = Request.QueryString["scode"];
           int att = 0;
           double atten = 0;
            SqlDataAdapter ad = new SqlDataAdapter("select * from attendance where scode='" + d + "' and extra='NO'", "server=B1aZe;database=erp;integrated security=true");
      DataSet ds1 = new DataSet();
       ad.Fill(ds1);
       SqlDataAdapter ad1 = new SqlDataAdapter("select * from student where branch='" + a + "' and sem='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
      DataSet ds = new DataSet();
       ad1.Fill(ds);
       for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
       {
           for (int j = 0; j < ds1.Tables[0].Rows.Count; j++)
           {
               
               if (ds1.Tables[0].Rows[j][1].ToString() == ds.Tables[0].Rows[i][0].ToString())
               {
                   att = att + Convert.ToInt32(ds1.Tables[0].Rows[j][3]);
               }
               
           }
           atten = att;
        %>
        <tr style="font-size:large; color:Navy; font-weight:bold; border-color:Black; border-style:solid; border-width:2px;">
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="100px"><%=i+1%></td>
            
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="500px"><%=ds.Tables[0].Rows[i][1] %></td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=ds.Tables[0].Rows[i][0] %></td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="200px"><%=att %></td>
        <td style="border-color:Navy; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="100px"><%=(Math.Round((atten/total),4)*100)%>%</td>
        </tr>
      
    <%
        att = 0;
      
           
}
            %>
      </table>
    </asp:Panel>
    <table width="1200px" style="margin-top:10px;">
   <tr align="right">
    <td align="right">
     <asp:Button ID="Button4" runat="server" Text="Extra Classes" ForeColor="White" 
           Font-Bold="true" BackColor="Red" Font-Name="Verdana" onclick="Button4_Click" 
              />
      <asp:Button ID="Button3" runat="server" Text="ShortAttendance List" ForeColor="White" 
           Font-Bold="true" BackColor="Red" Font-Name="Verdana" onclick="Button3_Click" 
              />
      
        <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" runat="server" 
            Enabled="True" TargetControlID="Button3">
        </asp:RoundedCornersExtender>
        <asp:DropShadowExtender ID="Button3_DropShadowExtender" runat="server" 
            Enabled="True" TargetControlID="Button3">
        </asp:DropShadowExtender>
      
       <asp:Button ID="Button2" runat="server" Text="Back" ForeColor="White" 
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
    
   
       <asp:Button ID="Button1" runat="server" Text="Logout" ForeColor="White" 
           Font-Bold="true" BackColor="Red" Font-Name="Verdana" 
           onclick="Button1_Click"    />
        <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
            Enabled="True" TargetControlID="Button1">
        </asp:RoundedCornersExtender>
        <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
            Enabled="True" TargetControlID="Button1">
        </asp:DropShadowExtender>
    </td>
   </tr>
   </table>  
  <h3 style="margin-top:20px; background-color:#99FFCC; width:1200px; color:Navy; font-weight:bold; border:2px solid navy;">Aveg Chaudhary, Kharanshu Saini, Ruchika Singh, Aayushi Sharma</h3>


    </form>
</asp:Content>
