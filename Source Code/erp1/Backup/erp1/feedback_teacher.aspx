<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="feedback_teacher.aspx.cs" Inherits="erp1.feedback_teacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
<br />
<br />

<h1 style="width:1200px; height: 100px; background-color: White; font-family: Comic Sans MS; font-size:12; padding-top:10px; color: Navy; margin-bottom:12px " >FEEDBACK</h1>
  <h2 style="width:1200px; background-color: White; font-family: Comic Sans MS; font-size:8; padding-top:5px; margin-bottom: 5px; color: Navy" align="center"><marquee>Birla Institute of Technology</marquee></h2> 
  
 <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:1px" >
 <tr>
 <td style=" font-size:22px; color:Black">Branch: <asp:Label id="Label1" runat="server" text="-  "></asp:Label>
 </td>
 <td style=" font-size:22px; color:Black">Sem:<asp:Label id="Label2" runat="server" text="-  "></asp:Label>
 </td>
 </tr>
</table>
  <br />
  <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:1px" >
  <tr>
  
  <td><asp:image ID="Image2" runat="server"  imageurl="~/images1/viewfd.jpg" height="100px" 
          width="100px" ></asp:image>
  </td>
  <td> 
      <asp:Button style=" width:150px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button2" runat="server" Text="VIEW FEEDBACKS" Width="100px" onclick="Button2_Click1" 
          />

  </td>
  <td><asp:image ID="Image4" runat="server"  imageurl="~/images1/suggestions.jpg" height="100px" 
          width="100px" ></asp:image>
  </td>
  <td> 
      <asp:Button style=" width:150px; margin-bottom:20px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button4" runat="server" Text="SUGGESTIONS" Width="100px" onclick="Button4_Click1" 
         
      />


  </td>
  <td><asp:image ID="Image5" runat="server"  imageurl="~/images1/facultyfd.jpg" height="100px" 
          width="100px" ></asp:image>
  </td>
  <td><asp:Button style=" width:150px; margin-bottom:20px;  height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button5" runat="server" Text="FACULTY WISE" Width="100px" onclick="Button5_Click1" 
           />
  </td>
  </tr>
  
   </table>
  
  
      
  
  <br />

<asp:button runat="server" id="b1" 
    style="width:90px; height:45px ; color:Black" text="BACK" onclick="b1_Click" />
  
 <asp:button runat="server" id="b2" 
    style="width:90px; height:45px; color:Black" text="LOGOUT" onclick="b2_Click" />
  <br />
 
  <br />
  <h3 style="width:1200px; height:30px; background-color: White; font-family: Comic Sans MS; font-size:5; color: Navy"  align="center">Aayushi Sharma, Aveg Chaudhary, Ruchika Singh, Kharanshu Saini </h3>
    </form>
</asp:Content>
