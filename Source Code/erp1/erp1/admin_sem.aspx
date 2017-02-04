<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="admin_sem.aspx.cs" Inherits="erp1.admin_sem" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<form id="form3" runat="server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>

    

    
    <h1 style="background-color:White; width:1100px; padding-left:50px; margin-bottom:2px;  margin-left:100px; padding-top:10px; font-family:Comic Sans MS; height:70px;  font-size:50px; border:2px solid navy; color:Navy; font-weight:bold;">ADMIN</h1>
     <h2 style="border: 2px solid navy; width:1100px; background-color:#99FFCC; margin-left:100px; color:Navy; height:40px; font-family:Comic Sans MS; height:40px"><marquee>Birla Institute of Technology</marquee> </h2>
 <br />
   
  <br />
  <table style="margin-left:550px; height:100px; width:200px; border:2px solid white" >
  <tr>
  <td style=" border:2px solid white"><asp:Label ID="Label1" runat="server" Text="Branch" ></asp:Label>
  </td>
  <td style=" border:2px solid white">
      <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" ForeColor="Black">
          <asp:ListItem>CSE</asp:ListItem>
          <asp:ListItem>ECE</asp:ListItem>
          <asp:ListItem>EEE</asp:ListItem>
      </asp:DropDownList>
  
  </td>
  </tr>
  <tr style=" border:2px solid white">
  <td style=" border:2px solid white">
  <asp:Label ID="Label2" runat="server" Text="Sem"></asp:Label>
  </td>
  <td>
      <asp:DropDownList ID="DropDownList2" runat="server" Width="100px" ForeColor="Black">
      </asp:DropDownList>
  
  </td>
  </tr>
  </table>
     

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
 <table style="margin-left:570px; width:200px">
 <tr>
 <td>
 <asp:Button ID="Button1" Font-Bold="true" runat="server" Text="LOGOUT" 
         BackColor="Red" Width="90px" Height="30px" ForeColor="White" 
         onclick="Button1_Click" />

  <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
    Enabled="True" TargetControlID="Button1">

</asp:DropShadowExtender>
<asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
    BorderColor="AliceBlue" Enabled="True" TargetControlID="Button1">
</asp:RoundedCornersExtender>
 </td>
 <td>
  <asp:Button ID="Button2" runat="server" Font-Bold="true" Text="SUBMIT" 
         BackColor="Red" Width="90px" Height="30px" ForeColor="White" 
         onclick="Button2_Click" />
    <asp:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" 
    Enabled="True" TargetControlID="Button2">
</asp:DropShadowExtender>
<asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
    BorderColor="AliceBlue" Enabled="True" TargetControlID="Button2">
</asp:RoundedCornersExtender>
 
 </td>
 </tr>
 

    </table> <br />
   
 <h3 style="background-color:#99FFCC; width:1100px; margin-bottom:10px; color:Navy;  padding-left:200px; margin-left:100px; font-family:Comic Sans MS; height:30px;    font-size:15px; border:2px solid navy; font-weight:bold ">Ruchika Singh, Aayushi Sharma, Aveg Chaudhary, Kharanshu Saini</h3>
    
  </form>
</asp:Content>
