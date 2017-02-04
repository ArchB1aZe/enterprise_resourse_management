<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="marks_login.aspx.cs" Inherits="erp1.marks_login" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Form1" runat="server">
        <table style="width: 900; border: 0px solid white" align="center"   >
        <tr>
        <td style= "width:450px; height: 80px; font-weight: bold; font-size: 45px" align="right"  >
          <asp:Label ID="Label3" runat="server" Text="Login Here" ></asp:Label>
      
            <asp:DropShadowExtender ID="Label3_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="Label3">
            </asp:DropShadowExtender>
      
          </td>
        </tr>
      <tr>
      <td style= "width:100px; height: 50px; font-weight: bold; font-size: 25px" >
          <asp:Label ID="Label1" runat="server" Text="Username" ></asp:Label>
      
          </td>
          <td style= "width:100px; height: 50px" >
              <asp:textbox ID="Textbox1" runat="server" ForeColor="Black"></asp:textbox>
              <asp:RoundedCornersExtender ID="Textbox1_RoundedCornersExtender" runat="server" 
                  Enabled="True" TargetControlID="Textbox1">
              </asp:RoundedCornersExtender>
          </td>
          <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
          </asp:ToolkitScriptManager>
      </tr>
      <tr>
      <td style= "width:100px; height: 50px; font-weight: bold; font-size: 25px" >
          <asp:Label ID="Label2" runat="server" text="Password" ></asp:Label>
      
          </td>
          <td style= "width:100px; height: 50px" >
              <asp:textbox ID="Textbox2" runat="server" ForeColor="Black" TextMode="Password"></asp:textbox>
              <asp:RoundedCornersExtender ID="Textbox2_RoundedCornersExtender" runat="server" 
                  Enabled="True" TargetControlID="Textbox2">
              </asp:RoundedCornersExtender>
          </td></tr>
          <tr>
          <td style= "width:450px; height: 80px; font-weight: bold" align="right">
              <asp:button ID="Button1" runat="server" text="Login" BackColor="#3399FF" 
                  width="180" style="font-weight:bold" ForeColor="White" font-size="20px" 
                  align="right" onclick="Button1_Click" />
              <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                  Enabled="True" TargetControlID="Button1">
              </asp:RoundedCornersExtender>
              <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
                  Enabled="True" TargetControlID="Button1">
              </asp:DropShadowExtender>
          </td></tr>
     </table>
       
	</form>

</asp:Content>
