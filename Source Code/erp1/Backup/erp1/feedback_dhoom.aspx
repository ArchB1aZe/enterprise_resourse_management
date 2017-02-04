<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="feedback_dhoom.aspx.cs" Inherits="erp1.feedback_dhoom" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; margin-bottom:10px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Black; font-weight:bold; padding-top:15px; font-family:Comic Sans MS;" width="1200px" height="60px">FEEDBACK</td>
    </tr>
    </table>
    <h3 style="margin-bottom:10px; background-color:Silver; width:1200px; color:Black; font-weight:bold; border:2px solid navy;"><marquee>Birla Institute Of Technology</marquee></h3>
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; background-color:transparent; ">
    <tr  valign="bottom" align="center" style="border:0px; font-size:larger">
    <td  align="right" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
             valign="bottom">Faculty Name:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    <td  align="center" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger;" 
             width="400px" valign="bottom">Branch: 
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
    </tr>
    
    
    
    </table>
   
    
    
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="390px">
        
    
    
    
        <table>
        
        <tr style="font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px;">
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="100px">S.No</td>
           
                
           
            
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="400px">Subject Name</td>
       
                
       
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If teacher comes well prepared and is confident in class</td>
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">Do you find the lecture interesting</td>
      
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If teacher comes on time and has engaged all allotted periods</td>
      
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If content on board is readable and teacher's voice is loud & clear</td>
      
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If syllabus is covered at appropriate pace</td>
      
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If teacher has excellent control over the class and discipline is maintained</td>
      
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If students are encouraged to ask questions and teacher answers them satisfactorily during class</td>
      
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If enough assignments are given and evaluated in time</td>
      
      
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px">If teacher evaluates performance impartially and without bias</td>
      <%
          int l = 0;
          String a = Request.QueryString["branch"];
          String b = Request.QueryString["name"];
          SqlDataAdapter ad1 = new SqlDataAdapter("select * from Faculty_Mst where branch='" + a + "' and name='" + b + "'", "server=B1aZe;database=erp;integrated security=true");
          DataSet ds1 = new DataSet();
          ad1.Fill(ds1);
          String[] sx = new String[5];
          sx[0] = ds1.Tables[0].Rows[0][2].ToString();
          sx[1] = ds1.Tables[0].Rows[0][3].ToString();
          sx[2] = ds1.Tables[0].Rows[0][4].ToString();
          sx[3] = ds1.Tables[0].Rows[0][5].ToString();
          sx[4] = ds1.Tables[0].Rows[0][6].ToString();
          Double total = 0;
          Double[] counthaha =new Double[9];

          for (int i = 0; i < 5; i++)
          {
              if (sx[i] != "" && sx[i] != "NULL")
              {
                  SqlDataAdapter ad = new SqlDataAdapter("select * from feedback where sid='" + sx[i] + "' and branch='" + a + "'", "server=B1aZe;database=erp;integrated security=true");
                  DataSet ds = new DataSet();
                  ad.Fill(ds);
                  total = ds.Tables[0].Rows.Count;
                  SqlDataAdapter ad4 = new SqlDataAdapter("select * from subject where sid='" + sx[i] + "'", "server=B1aZe;database=erp;integrated security=true");
                  DataSet ds4 = new DataSet();
                  ad4.Fill(ds4);
                  for (int j = 0; j < ds.Tables[0].Rows.Count; j++)
                  {
                      counthaha[0] = counthaha[0] + Convert.ToDouble(ds.Tables[0].Rows[j][2]);
                      counthaha[1] = counthaha[1] + Convert.ToDouble(ds.Tables[0].Rows[j][3]);
                      counthaha[2] = counthaha[2] + Convert.ToDouble(ds.Tables[0].Rows[j][4]);
                      counthaha[3] = counthaha[3] + Convert.ToDouble(ds.Tables[0].Rows[j][5]);
                      counthaha[4] = counthaha[4] + Convert.ToDouble(ds.Tables[0].Rows[j][6]);
                      counthaha[5] = counthaha[5] + Convert.ToDouble(ds.Tables[0].Rows[j][7]);
                      counthaha[6] = counthaha[6] + Convert.ToDouble(ds.Tables[0].Rows[j][8]);
                      counthaha[7] = counthaha[7] + Convert.ToDouble(ds.Tables[0].Rows[j][9]);
                      counthaha[8] = counthaha[8] + Convert.ToDouble(ds.Tables[0].Rows[j][10]);
                  }
              
           %>
      
       </tr>
        <tr style="font-size:large; color:Black; font-weight:bold; border-color:Black; border-style:solid; border-width:2px;">
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="100px"><%=l + 1%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="400px"><%=ds4.Tables[0].Rows[0][1]%></td>

        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[0], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[1], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[2], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[3], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[4], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[5], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[6], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[7], 4) / total%></td>
        <td style="border-color:Black; border-width:2px; border-style:solid; font-weight:bold; color:White;" width="300px"><%=Math.Round(counthaha[8], 4) / total%></td>
        </tr>
      
    <%
counthaha[0] = 0;
counthaha[1] = 0;
counthaha[2] = 0;
counthaha[3] = 0;
counthaha[4] = 0;
counthaha[5] = 0;
counthaha[6] = 0;
counthaha[7] = 0;
counthaha[8] = 0;
l++;
              }
          }
        %>
      </table>
    
    </asp:Panel>
    <table width="1200px" style="margin-top:10px;">
   <tr align="right">
    <td align="right">
     
    
   
       <asp:Button ID="Button1" runat="server" Text="Logout" ForeColor="Black" 
           Font-Bold="true" BackColor="Silver" Font-Name="Verdana" 
           onclick="Button1_Click"    />
    </td>
   </tr>
   </table>  
  <h3 style="margin-top:20px; background-color:Silver; width:1200px; color:Black; font-weight:bold; border:2px solid navy;">Aveg Chaudhary, Kharanshu Saini, Ruchika Singh, Aayushi Sharma</h3>


    </form>
</asp:Content>
