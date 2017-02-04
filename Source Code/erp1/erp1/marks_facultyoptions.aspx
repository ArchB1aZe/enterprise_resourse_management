<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="marks_facultyoptions.aspx.cs" Inherits="erp1.marks_facultyoptions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
<br />
<br />

<h1 style="width:1200px; height: 100px; background-color: White; font-family: Comic Sans MS; font-size:12; padding-top:10px; color: Navy; margin-bottom:12px " >GRADES</h1>
  <h2 style="width:1200px; background-color: White; font-family: Comic Sans MS; font-size:8; padding-top:5px; margin-bottom: 20px; color: Navy" align="center">Birla Institute of Technology</h2> 
  <br />

 <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:5px" >
 <tr>
 <td style=" font-size:22px">Branch: <asp:Label id="Label1" runat="server" text="-  "></asp:Label>
 </td>
 <td style=" font-size:22px">Sem:<asp:Label id="Label2" runat="server" text="-  "></asp:Label>
 </td>
 <td style=" font-size:22px">Subject Code:<asp:Label id="Label3" runat="server" text="-  "></asp:Label>
  </td>
 </tr>
 <tr>
 <td style=" font-size:22px">Subject Name:<asp:Label id="Label4" runat="server" text="-  "></asp:Label>
 </td>
     
 </tr></table>
  <br />
  <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:5px" >
  <tr>
  <td><asp:image ID="Image1" runat="server"  imageurl="~/images1/right-check-mark.jpg" height="100px" 
          width="100px" ></asp:image>
  </td>
  <td> 
  <asp:Button style=" width:150px; margin-bottom:20px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button1" runat="server" Text="ENTER MARKS" onclick="Button1_Click" 
          Width="100px" />
  </td>
  <td><asp:image ID="Image2" runat="server"  imageurl="~/images1/view.png" height="100px" 
          width="100px" ></asp:image>
  </td>
  <td> 
      <asp:Button style=" width:150px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button2" runat="server" Text="VIEW MARKS" Width="100px" 
          onclick="Button2_Click" />

  </td>
  
  </tr>
  
  </table>
    <asp:Button style="width:90px; height:45px" ID="Button4" runat="server" 
        Text="Back" onclick="Button4_Click" />
    <asp:Button style="width:90px; height:45px" ID="Button5" runat="server" 
        Text="Logout" onclick="Button5_Click" />
  
  <br />
  <br />
  
  <br />
  <br />
  <h3 style="width:1200px; height:30px; background-color: White; font-family: Comic Sans MS; font-size:5; color: Navy"  align="center">Aayushi Aveg Ruchika Kharanshu </h3>
    </form>
</asp:Content>
