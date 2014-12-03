<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="Admin_feedback" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style1
        {
            color: #FFFFFF;
            font-weight: 700;
            font-size: large;
        }
        .style3
        {
            width: 233px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main_content">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table class="style2">
        <tr>
            <td class="style3">
                <asp:Panel ID="Panel3" runat="server" Height="126px" Width="222px">
                    <asp:ListBox ID="ListBox1" runat="server" 
    AutoPostBack="True" Height="122px" 
    onselectedindexchanged="ListBox1_SelectedIndexChanged" 
    style="font-weight: 700; font-size: large" Width="219px"></asp:ListBox>
                </asp:Panel>
            </td>
            <td rowspan="2">
                <asp:Panel ID="Panel1" runat="server" style="margin-left: 0px" Visible="False">
                <table class="style1" bgcolor="Black">
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblname" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Contact</td>
                <td class="style1">
                    :</td>
                <td>
                    <asp:Label ID="lblmob" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style1">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
            <tr>
                <td class="style1" valign="top">
                    Feedback</td>
                <td class="style1" valign="top">
                    :</td>
                <td>
                    <asp:Panel ID="Panel2" runat="server" Height="118px" ScrollBars="Auto" 
                        Width="254px">
                        <asp:Label ID="lblfb" runat="server" style="color: #FF0000"></asp:Label>
                    </asp:Panel>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btmark" runat="server" onclick="btmark_Click" 
                        Text="Mark As Read" />
                    <asp:RoundedCornersExtender ID="btmark_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="14" TargetControlID="btmark">
                    </asp:RoundedCornersExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        style="color: #0066FF">View Profile</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
                </asp:Panel>
        

            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>

</div>
</asp:Content>

