<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="feedback_update.aspx.cs" Inherits="erp1.feedback_update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1300px; margin-bottom:5px; border:2px solid navy; ">
    <tr align="center" style="border:0px;" bgcolor="White">
    <td valign="middle" align="center" style="font-size:xx-large; color:Black; font-weight:bold; padding-top:15px; font-family:Comic Sans MS; width:1300px; height:60px">ENTER FEEDBACK</td>
    </tr>
    </table>
    <h3 style="margin-bottom:10px; background-color:Silver; width:1300px; color:Black; font-weight:bold; border:2px solid navy;"><marquee>Birla Institute Of Technology</marquee></h3>
    <table style="border-style: none; border-color: inherit; border-width: 0px; width: 1500px; background-color:transparent; ">
    <tr  valign="bottom" align="center" style="border:0px; font-size:larger">
    <td  align="right" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger; width: 400px;" 
             valign="bottom">Course: 
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
    <td  align="center" 
            style="border-style: none; border-color: inherit; border-width: 0px; font-size:larger;" 
             width="400px" valign="bottom">Sem: 
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
 
    </tr>
    
    </table>
    
     <asp:Panel id="Panel1" runat="server" ScrollBars="Vertical" Wrap="True" Height="420px">
        
    
    <asp:Table ID="tb" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" ForeColor="Black">
           <asp:TableRow style="height:150px" ID="TableRow1" Runat="server" Font-Bold="True"
            ForeColor="Black" BackColor="Silver" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" Font-Size="Large">
              <asp:TableHeaderCell Width="100px" style=" vertical-align:middle" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">S.No</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px" style=" vertical-align:middle" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">Subject </asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px" style=" vertical-align:middle" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">Faculty </asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If teacher comes well prepared and is confident in class</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">Do you find the lecture interesting</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If teacher comes on time and has engaged all allotted periods</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If content on board is readable and teacher's voice is loud & clear</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If syllabus is covered at appropriate pace</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If teacher has excellent control over the class and discipline is maintained</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If students are encouraged to ask questions and teacher answers them satisfactorily during class</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If enough assignments are given and evaluated in time</asp:TableHeaderCell>
              <asp:TableHeaderCell Width="300px"  BorderColor="Black" BorderStyle="Solid" BorderWidth="2px">If teacher evaluates performance impartially and without bias </asp:TableHeaderCell>

              </asp:TableRow>
         </asp:Table>
    </asp:Panel>
   <table width="1200px" style="margin-top:5px;">
   <tr align="right">
   <td align="right">
       <asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="Black" 
           Font-Bold="true" BackColor="Silver" Font-Name="Verdana" onclick="Button1_Click"  
             />
    </td>
   </tr>
   </table>  
  


    </form>
</asp:Content>
