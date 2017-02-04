<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="feedback_suggestions.aspx.cs" Inherits="erp1.feedback_suggestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="fo" runat="server">
<br />
<br />

<h1 style="width:1200px; height: 100px; background-color: White; font-family: Comic Sans MS; font-size:12; padding-top:10px; color: Navy; margin-bottom:12px " >Student's Suggestions</h1>
  <h2 style="width:1200px; background-color: White; font-family: Comic Sans MS; font-size:8; padding-top:5px; margin-bottom: 20px; color: Navy" align="center"><marquee>Birla Institute of Technology</marquee></h2> 
  <br />

 <table style=" margin-left:300px; width: 600px;  height: 60px" >
 <tr>
 <td style=" font-size:22px">Course: <asp:Label id="Label1" runat="server" text="-  "></asp:Label>
 </td>
 <td style=" font-size:22px">Sem:<asp:Label id="Label2" runat="server" text="-  "></asp:Label>
 </td>

 </tr>
     </table>

     
<p>Enter your Suggestions here :</p>
<br />

<asp:textbox id="t1" runat="server" 
    style="width: 600px; color:Black; height: 100px" TextMode="MultiLine"></asp:textbox>

 <br />


<asp:label id="label3" ForeColor="Red" FontSize="100%" runat="server"  text=""></asp:label>
<br />

 <br />
<asp:button ID="Button1" runat="server" style="width:110px;  color:Black; height:45px" 
    text="OK" onclick="Unnamed1_Click" />
  
  <asp:button ID="Button2" runat="server" 
    style="width:110px; color:Black; height:45px" text="Logout" 
    onclick="Button2_Click" />
  <br />
  <asp:button ID="Button3" runat="server" style="width:180px;  color:Black; height:45px" 
    text="View All Suggestions" onclick="Unnamed4_Click" />
  <br />
  
  
  <br />
  <h3 style="width:1200px; height:30px; background-color: White; font-family: Comic Sans MS; font-size:5; color: Navy"  align="center"> Aayushi Sharma, Kharanshu Saini, Ruchika Singh, Aveg Chaudhary </h3>
</form>
</asp:Content>
