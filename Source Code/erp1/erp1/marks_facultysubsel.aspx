﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="marks_facultysubsel.aspx.cs" Inherits="erp1.marks_facultysubsel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">



    <h1 style="background-color:White; padding-left:30px; margin-top:10px; padding-top:17px; font-family:Comic Sans MS; height:100px;  font-size:50px; border:2px solid navy; color:Navy; font-weight:bold;">GRADES</h1>
     <marquee style="border: 2px solid navy; margin-top:10px; background-color:#99FFCC; color:Navy; font-family:Comic Sans MS">Birla Institute of Technology </marquee>
   
    <table style="border:2px solid white; margin-top:40px; margin-left:280px; width:600px; height:31px">
    <tr>
        
       
    <th style="font-family:Arial">
    Select Subject 
    </th>
    </tr>
    </table>
    

   
    <table style="border:2px solid white; margin-top:3px; margin-bottom:80px; width:600px; margin-left:280px; height:150px">
   
        
    

    <tr>
    <td style="width: 243px; padding-left:50px; height: 14px; font-family:Lucida Sans Typewriter">Subjects 
        :</td> 
     <td style="height: 14px">  
     
      <asp:DropDownList ForeColor="Black"  
             ID="DropDownList1"  runat="server" Width="200px">
       
        </asp:DropDownList>
       
     
    </td>
    </tr>

    <tr style="height:34px">
    <td>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="Orange" 
            ForeColor="Black" Height="32px" 
            Width="102px" onclick="Button1_Click"  />
    </td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="Red" Text="Logout" 
                ForeColor="Black" Height="32px" 
                Width="102px" onclick="Button2_Click" />
        </td>
    </tr>
    </table>
<asp:label runat="server" id="lb1" text=""></asp:label>
<asp:label runat="server" id="lb2" text=""></asp:label>

   <h3 style="background-color:#99FFCC; margin-bottom:10px; color:Navy;  padding-left:30px; font-family:Comic Sans MS; height:40px;    font-size:15px; border:2px solid navy; font-weight:bold ">Ruchika Singh, Aayushi Sharma, Aveg Chaudhary, Kharanshu Saini</h3>
    
    </form>
</asp:Content>
