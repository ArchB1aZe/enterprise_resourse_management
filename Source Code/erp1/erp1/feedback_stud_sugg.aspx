<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="feedback_stud_sugg.aspx.cs" Inherits="erp1.feedback_stud_sugg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
 <form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; margin-bottom:10px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Black; font-weight:bold; padding-top:15px; font-family:Comic Sans MS;" width="1200px" height="60px">Student's Suggestions</td>
    </tr>
    </table>
    <h3 style="margin-bottom:10px; background-color:Silver; width:1200px; color:Black; font-weight:bold; border:2px solid navy;"><marquee>Birla Institute Of Technology</marquee></h3>
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; background-color:transparent; ">
    <tr  valign="bottom" align="center" style="border:0px; font-size:larger">
    <td  align="right" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
             valign="bottom">Course: 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    <td  align="center" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger;" 
             width="400px" valign="bottom">Sem: 
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    
    </tr>
    
    
    
    </table>
    
    <br />
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="340px">
        
    <table>   
    <tr style="font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px;">
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="200px">S.No</td>
         
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="1000px">Suggestions</td>
        <%
          String a = Request.QueryString["branch"];
          String b = Request.QueryString["sem"];
          SqlDataAdapter ad = new SqlDataAdapter("select * from feedback_suggest order by cid DESC", "server=B1aZe;database=erp;integrated security=true");
          DataSet ds= new DataSet();
          ad.Fill(ds);
          int count = ds.Tables[0].Rows.Count;
          for (int i = 0; i < count; i++)
          {
                
            %>
       </tr>
       <tr style="font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px;">
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="100px"><%=i+1%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=ds.Tables[0].Rows[i][1]%></td>
       </tr>
       <%
} %>
         </table>
 
    </asp:Panel>
   <br />

       <asp:Button ID="Button1" runat="server" Text="Logout" ForeColor="Black" 
           Font-Bold="true" BackColor="Silver" Font-Name="Verdana" onclick="Button1_Click" 
            />
            
    
  <h3 style="margin-top:20px; background-color:Silver; width:1200px; color:Black; font-weight:bold; border:2px solid navy;">Aveg Chaudhary, Kharanshu Saini, Ruchika Singh, Aayushi Sharma</h3>


    </form>
</asp:Content>
