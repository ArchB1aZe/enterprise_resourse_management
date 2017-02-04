<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="attend_interface.aspx.cs" Inherits="erp1.attend_interface" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<br />
<br />

<h1 style="width:1200px; height: 100px; background-color: White; font-family: Comic Sans MS; font-size:12; padding-top:10px; color: Navy; margin-bottom:12px " >ATTENDANCE</h1>
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
 <td style=" font-size:22px"><asp:Label id="Label5" runat="server" text="-  "></asp:Label>
 </td>
     
 </tr></table>
  <br />
  <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:5px" >
  <tr>
  <td><asp:image ID="Image1" runat="server"  imageurl="~/images1/index.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image1_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image1">
      </asp:RoundedCornersExtender>
  </td>
  <td> 
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
      </asp:ToolkitScriptManager>
  <asp:Button style=" width:150px; margin-bottom:20px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button1" runat="server" Text="ENTER ATTENDANCE" onclick="Button1_Click" 
          Width="100px" />
      <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button1">
      </asp:RoundedCornersExtender>
  </td>
  <td><asp:image ID="Image2" runat="server"  imageurl="~/images1/index22.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image2_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image2">
      </asp:RoundedCornersExtender>
  </td>
  <td> 
      <asp:Button style=" width:150px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button2" runat="server" Text="GENERATE REPORT" Width="100px" 
          onclick="Button2_Click" />

      <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button2">
      </asp:RoundedCornersExtender>

  </td>
  <td><asp:image ID="Image3" runat="server"  imageurl="~/images1/images.jpg" height="100px" 
          width="100px" ></asp:image>
      <asp:RoundedCornersExtender ID="Image3_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Image3">
      </asp:RoundedCornersExtender>
  </td>
  <td> 
      <asp:Button style=" width:150px; margin-bottom:20px; margin-right:5px; margin-left:5px; height:32px; background-color:Purple; padding-bottom:10px; color: White" 
          ID="Button3" runat="server" Text="STUDENTWISE CHART" Width="100px" 
          onclick="Button3_Click" />


      <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" runat="server" 
          Enabled="True" TargetControlID="Button3">
      </asp:RoundedCornersExtender>


  </td>
  </tr>
  
  </table>
    <asp:Button style="width:90px; height:45px" ID="Button4" runat="server" 
        Text="Back" BackColor="Red" ForeColor="White" onclick="Button4_Click" />
    <asp:RoundedCornersExtender ID="Button4_RoundedCornersExtender" runat="server" 
        Enabled="True" TargetControlID="Button4">
    </asp:RoundedCornersExtender>
    <asp:DropShadowExtender ID="Button4_DropShadowExtender" runat="server" 
        Enabled="True" TargetControlID="Button4">
    </asp:DropShadowExtender>
    <asp:Button style="width:90px; height:45px" ID="Button5" runat="server" 
        Text="Logout" BackColor="Red" ForeColor="White" onclick="Button5_Click" />
  
    <asp:RoundedCornersExtender ID="Button5_RoundedCornersExtender" runat="server" 
        Enabled="True" TargetControlID="Button5">
    </asp:RoundedCornersExtender>
    <asp:DropShadowExtender ID="Button5_DropShadowExtender" runat="server" 
        Enabled="True" TargetControlID="Button5">
    </asp:DropShadowExtender>
  
  <br />
  <br />
  
  <br />
  <br />
  <h3 style="width:1200px; height:30px; background-color: White; font-family: Comic Sans MS; font-size:5; color: Navy"  align="center">Aayushi Aveg Ruchika Kharanshu </h3>
    </form>

   
</asp:Content>
