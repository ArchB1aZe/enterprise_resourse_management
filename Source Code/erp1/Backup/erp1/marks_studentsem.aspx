<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="marks_studentsem.aspx.cs" Inherits="erp1.marks_studentsem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
<br />
<br />

<h1 style="width:1200px; height: 100px; background-color: White; font-family: Comic Sans MS; font-size:12; padding-top:10px; color: Navy; margin-bottom:12px " >GRADES</h1>
  <h2 style="width:1200px; background-color: White; font-family: Comic Sans MS; font-size:8; padding-top:5px; margin-bottom: 20px; color: Navy" align="center">Birla Institute of Technology</h2> 
  <br />

 <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:5px" >
 <tr>
 <td style=" font-size:22px">Name:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
     
 <td style=" font-size:22px">Current Sem:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
 <td style=" font-size:22px">Branch:
     <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
 </tr>
 </table>
  <br />
  <table style=" margin-left:300px; width: 600px;  height: 60px; margin-top:5px" >
  <tr>
  <td style="font-size:large; font-weight:bold;" align="center">
  Select Semester:
  
      <asp:DropDownList Width="100px" ForeColor="Black" ID="DropDownList1" runat="server">
          <asp:ListItem>1</asp:ListItem>
          <asp:ListItem>2</asp:ListItem>
          <asp:ListItem>3</asp:ListItem>
          <asp:ListItem>4</asp:ListItem>
          <asp:ListItem>5</asp:ListItem>
          <asp:ListItem>6</asp:ListItem>
          <asp:ListItem>7</asp:ListItem>
          <asp:ListItem>8</asp:ListItem>
      </asp:DropDownList>
  
  
  </td>
  </tr>
  <tr>
  <td style="font-size:large; font-weight:bold;" align="center">
      <asp:Button ForeColor="Black" ID="Button1" runat="server" Text="Submit" 
          onclick="Button1_Click" />
  </td>
  </tr>
  
  </table>
    
    <asp:Button style="width:90px; height:45px" ID="Button5" runat="server" 
        Text="Logout" onclick="Button5_Click" />
  
  <br />
  <br />
  
  <br />
  <br />
  <h3 style="width:1200px; height:30px; background-color: White; font-family: Comic Sans MS; font-size:5; color: Navy"  align="center">Aayushi Aveg Ruchika Kharanshu </h3>
    </form>
</asp:Content>
