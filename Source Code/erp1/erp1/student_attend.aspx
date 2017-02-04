<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="student_attend.aspx.cs" Inherits="erp1.student_attend" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="Form1" runat="server">
<br />
<br />

<h1 style="width:1200px; height: 100px; background-color: White; font-family: Comic Sans MS; font-size:12; padding-top:10px; color: Navy; border: 2px solid navy; margin-bottom:12px " >ATTENDANCE</h1>
  <h2 style="width:1200px; background-color:#99FFCC; font-family: Comic Sans MS; font-size:8; padding-top:5px; margin-bottom: 20px; border: 2px solid navy; color: Navy" align="center">Birla Institute of Technology</h2> 
  <br />

 
  <br />
  <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:5px" >
  <tr>
  <td><asp:image ID="Image1" runat="server"  imageurl="~/images1/attendance.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image1_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image1">
      </asp:RoundedCornersExtender>
  </td>
  <td>      <asp:Button ID="Button1" 
          style=" width:150px; margin-bottom:20px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          runat="server" Text="Total Attendance" onclick="Button1_Click" />
      <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button1">
      </asp:RoundedCornersExtender>
  </td>
  <td><asp:image ID="Image2" runat="server"  imageurl="~/images1/datewise.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image2_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image2">
      </asp:RoundedCornersExtender>
  </td>
  <td> <asp:Button ID="Button2" 
          style=" width:150px; margin-bottom:20px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          runat="server" Text="DateWise" onclick="Button2_Click" />
      <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button2">
      </asp:RoundedCornersExtender>
  </td>
  <td><asp:image ID="Image3" runat="server"  imageurl="~/images1/percentage.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image3_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image3">
      </asp:RoundedCornersExtender>
  </td>
  <td> <asp:Button ID="Button3" 
          style=" width:150px; margin-bottom:20px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          runat="server" Text="Percentage wise" onclick="Button3_Click" />
      <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button3">
      </asp:RoundedCornersExtender>
  </td>
  </tr>
  
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
  </table>
<asp:Button style="width:90px; height:45px" ID="Button5" runat="server" 
    Text="Logout" BackColor="Red" ForeColor="White" onclick="Button5_Click" />
 
  <asp:RoundedCornersExtender ID="Button5_RoundedCornersExtender" 
    runat="server" Enabled="True" TargetControlID="Button5">
</asp:RoundedCornersExtender>
<asp:DropShadowExtender ID="Button5_DropShadowExtender" runat="server" 
    Enabled="True" TargetControlID="Button5">
</asp:DropShadowExtender>
 
  <br />
  <br />
  
  <br />
  <br />
  <h3 style="width:1200px; height:30px; background-color:#99FFCC; border: 2px solid navy; font-family: Comic Sans MS; font-size:5; color: Navy"  align="center">Aayushi Aveg Ruchika Kharanshu </h3>
</form>

</asp:Content>
