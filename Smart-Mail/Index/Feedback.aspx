<%@ Page Title="" Language="C#" MasterPageFile="~/Index/Index.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Index_Feedback" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<link rel="Stylesheet" type="text/css" media="screen" href="css/feedback.css" />
<style>
.style1 td
{
    padding-top:5px; 
        margin-top:5px;
        width:100px;
}

</style>
</head>
<div id="main">
    <asp:Panel ID="mainPanel1" runat="server" >
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager><table class="style1">
            <tr>
                <td class="style2" >
                    User Name</td>
                <td>:</td><td>
                    <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" >
                    Password<br /> </td><td>:</td>
                <td>
                    <asp:TextBox ID="txtmail" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2"  valign="top">
                    Feedback</td><td>:</td>
                <td>
                    <asp:TextBox ID="txtfeedback" runat="server" Height="199px" 
                        TextMode="MultiLine" Width="307px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Send" style="font-weight: 700" />
                    <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="Button1">
                    </asp:RoundedCornersExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        



    </asp:Panel>
    <asp:RoundedCornersExtender ID="mainPanel1_RoundedCornersExtender" 
        runat="server" Enabled="True" Radius="20" TargetControlID="mainPanel1">
    </asp:RoundedCornersExtender>
    </div>
</asp:Content>

