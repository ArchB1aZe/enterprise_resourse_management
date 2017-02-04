<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="marks_teachview.aspx.cs" Inherits="erp1.marks_teachview" %>
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
             valign="bottom">&nbsp;Branch:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
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
    <td align="right" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
              width="1200px">&nbsp;</td>
        <td 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px; padding-Right:400px;" 
             colspan="2" width="1200px">Subject Name:  
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
    </tr>
    
    
    </table>
    
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="390px">
        <table>
        <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px">
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">S.No.</td>
            
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="400px">Student Name</td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="400px">Roll Number</td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">Mid Sem (MM:25)</td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">Assessment(MM:15)</td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px">End Sem (MM:60)</td>
        
        

       
        </tr>
        
      <% 
          String a = Request.QueryString["branch"];
          String b = Request.QueryString["sem"];

          String c = Request.QueryString["sub"];
          String d = Request.QueryString["scode"];
          
          SqlDataAdapter ad = new SqlDataAdapter("select * from marks where scode='" + d + "' and sem='"+b+"'", "server=B1aZe;database=erp;integrated security=true");
          DataSet ds1 = new DataSet();
          ad.Fill(ds1);
          for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
          {
              SqlDataAdapter ad1 = new SqlDataAdapter("select * from student where rno='" + ds1.Tables[0].Rows[i][0] + "'", "server=B1aZe;database=erp;integrated security=true");
              DataSet ds2 = new DataSet();
              ad1.Fill(ds2);
          %>
        <tr style="background-color:Silver; font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px">
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=i+1 %></td>
            
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="400px"><%=ds2.Tables[0].Rows[0][1] %></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="400px"><%=ds1.Tables[0].Rows[i][0] %></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=ds1.Tables[0].Rows[i][1] %></td>
        <td valign="middle" style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=ds1.Tables[0].Rows[i][3] %></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:Black;" width="100px"><%=ds1.Tables[0].Rows[i][2] %></td>
         </tr>
         <%
          
          }
             
              %>
        </table>

    </asp:Panel>
     <table width="1200px" style="margin-top:10px;">
   <tr align="right">
   <td align="right">
       <asp:Button ID="Button2" runat="server" Text="Back" ForeColor="Black" 
           Font-Bold="true" BackColor="Silver" Font-Name="Verdana" onclick="Button2_Click" 
             />
   
   
       <asp:Button ID="Button1" runat="server" Text="Logout" ForeColor="Black" 
           Font-Bold="true" BackColor="Silver" Font-Name="Verdana" 
           onclick="Button1_Click"    />
    </td>
   </tr>
   </table>  
  <h3 style="margin-top:20px; background-color:Silver; width:1200px; color:Black; font-weight:bold; border:2px solid navy;">Aveg Chaudhary, Kharanshu Saini, Ruchika Singh, Aayushi Sharma</h3>


    </form>
</asp:Content>
