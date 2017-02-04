<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="admin_student.aspx.cs" Inherits="erp1.admin_student" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form3" runat="server">
    
  <h1 style="background-color:White; width:1100px; padding-left:50px; margin-bottom:2px; margin-left:100px; padding-top:17px; font-family:Comic Sans MS; height:90px;  font-size:50px; border:2px solid navy; color:Navy; font-weight:bold;">STUDENT RECORD</h1>
     <h2 style="border: 2px solid navy; width:1100px; background-color:#99FFCC; margin-left:100px; color:Navy; font-family:Comic Sans MS"><marquee>Birla Institute of Technology</marquee> </h2>
  <br />
 <br />
 <br />
  <table style="margin-left:500px">
  <tr>
  <td style="width:200px">
  <asp:Label ID="Label1" runat="server" Text="Roll No." Font-Bold="true"></asp:Label>
  </td>
     
  <td>
      <asp:TextBox ID="TextBox1" runat="server" ForeColor="Black"></asp:TextBox>
  </td>
 </tr>
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
      </asp:ToolkitScriptManager>
  <tr>   
  <td style="width:200px">
  <asp:Label ID="Label2" runat="server" Text="Student Name" Font-Bold="true"></asp:Label>
  </td>
      
  <td>
      <asp:TextBox ID="TextBox2" runat="server" ForeColor="Black"></asp:TextBox>
  </td>
      </tr>
  <tr>
  <td style="width:200px">
  <asp:Label ID="Label3" runat="server" Text="Branch" Font-Bold="true"></asp:Label>
  </td>
      
  <td>
      <asp:TextBox ID="TextBox3" runat="server" ForeColor="Black"></asp:TextBox>
  </td>
      
  </tr>
  <tr>   
  <td style="width:200px">
  <asp:Label ID="Label4" Font-Bold="true" runat="server" Text="Semester"></asp:Label>
  </td>
      
  <td>
      <asp:TextBox ID="TextBox4" runat="server" ForeColor="Black"></asp:TextBox>
  </td>
      </tr>
 
  
  </table>
  <br />
  <br />
 
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
  <asp:Button ID="Button1" Font-Bold="true" runat="server" Text="ADD" 
        BackColor="Red" Width="90px" Height="30px" ForeColor="White" 
        onclick="Button1_Click" />


  <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
      Enabled="True" TargetControlID="Button1">
  </asp:DropShadowExtender>


  <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
      BorderColor="AliceBlue" Enabled="True" TargetControlID="Button1">
  </asp:RoundedCornersExtender>


  <asp:Button ID="Button2" runat="server" Font-Bold="true" Text="EDIT" 
        BackColor="Red" Width="90px" Height="30px" ForeColor="White" 
        onclick="Button2_Click" />
  <asp:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" 
      Enabled="True" TargetControlID="Button2">
  </asp:DropShadowExtender>
  <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
      BorderColor="AliceBlue" Enabled="True" TargetControlID="Button2">
  </asp:RoundedCornersExtender>
  <br />
  <br />
  
  <br />
  <br />
 
   <h3 style="background-color:#99FFCC; width:1100px; margin-bottom:10px; color:Navy;  padding-left:200px; margin-left:100px; font-family:Comic Sans MS; height:30px;    font-size:15px; border:2px solid navy; font-weight:bold ">Ruchika Singh, Aayushi Sharma, Aveg Chaudhary, Kharanshu Saini</h3>
    
   
    </form>   
  
</asp:Content>
