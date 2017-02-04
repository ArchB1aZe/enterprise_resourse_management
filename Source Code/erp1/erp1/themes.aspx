<%@ Page Title="" Language="C#" MasterPageFile="~/Aveg.Master" AutoEventWireup="true" CodeBehind="themes.aspx.cs" Inherits="erp1.themes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
    <p>
        <br />
    </p>
    <table style="margin-left: 300px">
    <tr>
     <td>
         <asp:ImageButton ID="ImageButton1" runat="server" Height="160px" 
             onclick="ImageButton1_Click" Width="205px" />
        </td>
        
        <td><asp:ImageButton ID="ImageButton5" runat="server" Height="160px" Width="205px" 
                onclick="ImageButton5_Click" /> </td>
        <td>
            <asp:ImageButton ID="ImageButton2" runat="server" Height="160px" 
                onclick="ImageButton2_Click" Width="205px" />
        </td>
        </tr>
        <tr>
        <td align="center" style="font-size:200% ; font-weight:bold">Theme 1</td>
        <td align="center" style="font-size:200% ; font-weight:bold">Theme 2</td>
        <td align="center" style="font-size:200% ; font-weight:bold">Theme 3</td></tr>
        <tr>
        <td> &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
        </td>
        </tr>
        <tr>
        <td></td>
        <td align="center" style="font-size:200% ; font-weight:bold">&nbsp;</td>
        </tr>
        <tr>
        <td>
            <asp:ImageButton ID="ImageButton3" runat="server" Height="160px" 
                onclick="ImageButton3_Click" Width="205px" />
            </td>
       
            
        <td> <asp:ImageButton ID="ImageButton6" runat="server" Width="205px" Height="160px" 
                onclick="ImageButton6_Click" /> </td>
        <td>
            <asp:ImageButton ID="ImageButton4" runat="server" Height="160px" 
                onclick="ImageButton4_Click" Width="205px" />
            </td>
        
        </tr>
        <tr>
        <td align="center" style="font-size:200% ; font-weight:bold">Theme 4</td>
        <td align="center" style="font-size:200% ; font-weight:bold">Theme 5</td>
        <td align="center" style="font-size:200% ; font-weight:bold">Theme 6</td></tr>
    </table>
   
    
    
   
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    </form>

</asp:Content>
