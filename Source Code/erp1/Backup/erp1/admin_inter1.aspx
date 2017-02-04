<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="admin_inter1.aspx.cs" Inherits="erp1.admin_inter1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form2" runat="server">
    
    <h1 style="background-color:White; width:1100px; padding-left:50px; margin-bottom:2px; margin-left:100px; padding-top:17px; font-family:Comic Sans MS; height:90px;  font-size:50px; border:2px solid navy; color:Navy; font-weight:bold;">ADMINISTRATOR</h1>
     <h2 style="border: 2px solid navy; width:1100px; background-color:#99FFCC; margin-left:100px; color:Navy; font-family:Comic Sans MS"><marquee>Birla Institute of Technology</marquee> </h2>
  <br />
  <br /> 
  <br />
  <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:1px" >
  <tr>
  <td style="width:200px"><asp:image ID="Image1" runat="server"  imageurl="~/image/studentic.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image1_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image1">
      </asp:RoundedCornersExtender>
  </td>
  <td style="width:200px"> 
      <asp:Button  ID="Button1" runat="server" BackColor="Purple" ForeColor="White"  
          Width="150px" Height="30px" Text="Student Records" onclick="Button1_Click"></asp:Button>
      <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button1">
      </asp:RoundedCornersExtender>
   </td>
  <td style="width:200px"><asp:image ID="Image2" runat="server"  imageurl="~/image/facultyic.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image2_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image2">
      </asp:RoundedCornersExtender>
  </td>
  <td style="width:200px"> 
       
      <asp:Button ID="Button2" Width="150px" runat="server" ForeColor="White" 
          Height="30px" BackColor="Purple" Text="Faculty Records" 
          onclick="Button2_Click" />
      <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button2">
      </asp:RoundedCornersExtender>
   </td>

<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>
  <td style="width:200px"><asp:image ID="Image3" runat="server"  imageurl="~/image/subjectic.jpg" height="100px" 
          width="150px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image3_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image3">
      </asp:RoundedCornersExtender>
  </td>
  <td style="width:200px">
      
      <asp:Button ID="Button3"  Width="150px" runat="server" BackColor="Purple" 
          ForeColor="White" Height="30px" Text="Add Subjects" onclick="Button3_Click" />
  
      <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button3">
      </asp:RoundedCornersExtender>
  
  </td>
  </tr>
  
  <tr>    
  
  <td></td>
 <td></td>
 <td><asp:image ID="Image4" runat="server"  imageurl="~/image/report.jpg" height="100px" 
          width="150px" ></asp:image> </td>
  <td> 
   <asp:Button ID="Button5"  Width="150px" runat="server" BackColor="Purple" 
          ForeColor="White" Height="30px" Text="Generate Report" onclick="Button5_Click" />
  
      <asp:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
          Enabled="True" TargetControlID="Button5">
      </asp:RoundedCornersExtender>
  </td>
  </tr>
  </table>
  <br />
        <asp:Button ID="Button4" runat="server" Text="Logout" BackColor="Red" 
        Width="60px" Height="30px" ForeColor="White" onclick="Button4_Click" />
    <asp:DropShadowExtender ID="Button4_DropShadowExtender" runat="server" 
        Enabled="True" TargetControlID="Button4">
    </asp:DropShadowExtender>
    <asp:RoundedCornersExtender ID="Button4_RoundedCornersExtender" runat="server" 
        Enabled="True" TargetControlID="Button4">
    </asp:RoundedCornersExtender>
   <br />
  <br />
 <br />
   <h3 style="background-color:#99FFCC; width:1100px; margin-bottom:10px; color:Navy;  padding-left:200px; margin-left:100px; font-family:Comic Sans MS; height:30px;    font-size:15px; border:2px solid navy; font-weight:bold ">Ruchika Singh, Aayushi Sharma, Aveg Chaudhary, Kharanshu Saini</h3>
    
    </form>
</asp:Content>
