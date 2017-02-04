<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="enterattn.aspx.cs" Inherits="erp1.enterattn" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1200px; margin-bottom:10px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Navy; font-weight:bold; padding-top:15px; font-family:Comic Sans MS;" width="1200px" height="60px">ENTER ATTENDANCE</td>
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
              width="1200px">Date: 
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
        <td 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px; " 
              ">Subject Name:  
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        <td 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
              >
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
    </tr>
    
    
    
    </table>
    
     <asp:Panel ID="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="320px">
        
    
    <asp:Table ID="tb" runat="server" BackColor="White" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px" ForeColor="Navy">
           <asp:TableRow ID="TableRow1" Runat="server" Font-Bold="True"
            ForeColor="Navy" BackColor="#99FFCC" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px" Font-Size="Large">
              <asp:TableHeaderCell Width="100px" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">S.No</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="500px" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">Student Name</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">Roll Number</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px" BorderColor="Navy" BorderStyle="Solid" BorderWidth="2px">ExtraClass<asp:DropDownList Width="60px" ID="DropDownList123123" runat="server">
                  </asp:DropDownList>/Lectures<asp:DropDownList Width="50px" ID="DropDownList11111" runat="server">
                  </asp:DropDownList>
              </asp:TableHeaderCell>
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
       <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
       </asp:ToolkitScriptManager>
   </tr>
   </table>  
  <h3 style="margin-top:20px; background-color:#99FFCC; width:1200px; color:Navy; font-weight:bold; border:2px solid navy;">Aveg Chaudhary, Kharanshu Saini, Ruchika Singh, Aayushi Sharma</h3>


    </form>
</asp:Content>