﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="marks_assenter.aspx.cs" Inherits="erp1.marks_assenter" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; margin-bottom:10px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Navy; font-weight:bold; padding-top:15px; font-family:Comic Sans MS;" width="1200px" height="60px">ENTER ASSESSMENT MARKS</td>
    </tr>
    </table>
    <h3 style="margin-bottom:10px; background-color:#99FFCC; width:1200px; color:Navy; font-weight:bold; border:2px solid navy;"><marquee>Birla Institute Of Technology</marquee></h3>
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; background-color:transparent; ">
    <tr  valign="bottom" align="center" style="border:0px; font-size:larger">
    <td  align="right" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
             valign="bottom">Branch: 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
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
              width="1200px"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
        
        <td 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px; padding-Right:400px;" 
             colspan="2" width="1200px">Subject Name:  
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
    </tr>
    
    
    
    </table>
    
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="320px">
        
    
    <asp:Table ID="tb" runat="server" BackColor="White" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px" ForeColor="Black">
           <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True"
            ForeColor="Black" BackColor="#99FFCC" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px" Font-Size="Large">
              <asp:TableHeaderCell Width="100px" ForeColor="Navy" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">S.No</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="500px" ForeColor="Navy" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">Student Name</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px" ForeColor="Navy" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">Roll Number</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px" ForeColor="Navy" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">Marks(MM:15)</asp:TableHeaderCell>
              </asp:TableRow>
         </asp:Table>
    </asp:Panel>
   <table width="1200px" style="margin-top:10px;">
   <tr align="right">
   <td align="right">
       <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="White" 
           Font-Bold="true" BackColor="Red" Font-Name="Verdana" 
           onclick="Button1_Click"    />
       <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
           Enabled="True" TargetControlID="Button1">
       </asp:RoundedCornersExtender>
       <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
           Enabled="True" TargetControlID="Button1">
       </asp:DropShadowExtender>
    </td>
   </tr>
   </table>  
  <h3 style="margin-top:20px; background-color:#99FFCC; width:1200px; color:Navy; font-weight:bold; border:2px solid navy;">Aveg Chaudhary, Kharanshu Saini, Ruchika Singh, Aayushi Sharma</h3>
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
</asp:ToolkitScriptManager>

    </form>
</asp:Content>