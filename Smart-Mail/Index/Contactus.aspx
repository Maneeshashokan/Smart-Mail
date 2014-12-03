<%@ Page Title="" Language="C#" MasterPageFile="~/Index/Index.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Index_Contactus" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
<div id="main_content">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Panel ID="Maincontent_Panel1" runat="server">
    <style>
    .contact_us td
    {
        padding-top:5px; 
        margin-top:5px;
        width:100px;
        
    }
    .main
    {
        height:500px;
    }
    </style>
   <div class="main">
    <table class="contact_us" style="z-index:10;padding-top:5px; margin-top:5px;">
        <tr>
            <td class="style2" >
                Name</td><td>:</td>
            <td class="style3">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td rowspan="4" class="style4">
                &nbsp;</td>
            <td class="style8">
                CONTACT US......</td>
        </tr>
        <tr>
            <td class="style2" >
                Contact Number</td><td>:</td>
            <td class="style3">
                <asp:TextBox ID="txtnumber" runat="server"></asp:TextBox>
            </td>
            <td class="style9">
                Maneeshashokan@smartmail.com</td>
        </tr>
        <tr>
            <td class="style5"  valign="top">
                Comment</td><td>:</td>
            <td class="style6">
                <asp:TextBox ID="txtcomment" runat="server" Height="233px" TextMode="MultiLine" 
                    Width="268px"></asp:TextBox>
            </td>
            <td class="style7" valign="top">
                Contact no.<br /> 8907312574
                
                <a href="Register.aspx"><img src="../Images/register_now_button_2.png" style="width:400px;height:200px;" /></a>
                </td>
                
                    
                    
                        
            
                   
            
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                <asp:Button ID="Button1" runat="server" style="font-weight: 700" 
                    Text="Submit" />
            </td>
            <td class="style9">
                &nbsp;</td>
        </tr>
    </table>
    </div>
    </asp:Panel>

    <asp:RoundedCornersExtender ID="Maincontent_Panel1_RoundedCornersExtender" 
        runat="server" Enabled="True" Radius="20" TargetControlID="Maincontent_Panel1">
    </asp:RoundedCornersExtender>

</div>

</asp:Content>

