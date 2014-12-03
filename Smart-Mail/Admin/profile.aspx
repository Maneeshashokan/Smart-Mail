<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="Admin_profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            color: #000000;
        }
        .style2
        {
            color: #000000;
            height: 23px;
        }
        .style3
        {
            height: 23px;
            color: #0000FF;
            font-weight: bold;
            font-size: large;
        }
        .style4
        {
            color: #0000FF;
            font-size: large;
            font-weight: bold;
        }
        .style5
        {
            color: #000000;
            height: 23px;
            width: 146px;
        }
        .style6
        {
            color: #000000;
            width: 146px;
            font-weight: bold;
            font-size: large;
        }
        .style8
        {
            font-size: large;
            font-weight: bold;
        }
        .style9
        {
            color: #000000;
            height: 23px;
            width: 113px;
        }
        .style10
        {
            color: #000000;
            width: 113px;
            font-weight: bold;
            font-size: large;
        }
        .style11
        {
            color: #000000;
            height: 23px;
            width: 55px;
        }
        .style12
        {
            color: #000000;
            width: 55px;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main_content">

    <asp:Panel ID="Panel1" runat="server">
    <table class="style1" style="z-index:1;">
        <tr>
            <td style="color: #FFFFFF" class="style9">
                </td>
            <td class="style11" style="color: #FFFFFF">
                &nbsp;</td>
            <td class="style2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td>
                <asp:Panel ID="Panel2" runat="server" Height="143px" Width="148px" 
                    CssClass="style4">
                    <asp:Image ID="Profile_Image" runat="server" Height="143px" 
                        ImageUrl="~/Index/Images/page3-img6.png" Width="148px" />
                    ..</asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style8">
                <asp:Label ID="lblname" runat="server" CssClass="style4"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                Sex </td>
            <td class="style12">
                :</td>
            <td class="style8">
                <asp:Label ID="lblsex" runat="server" CssClass="style4"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
                Date of Birth </td>
            <td class="style12">
                :</td>
            <td class="style8">
                <asp:Label ID="lbldob" runat="server" CssClass="style4"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <tr>
                <td class="style10">
                    Current City </td>
                <td class="style12">
                    :</td>
                <td class="style8">
                    <asp:Label ID="lblcity" runat="server" CssClass="style4"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td class="style12">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <tr>
                    <td class="style10">
                        Address </td>
                    <td class="style12">
                        :</td>
                    <td class="style8">
                        <asp:Label ID="lbladdr" runat="server" CssClass="style4"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style8">
                        &nbsp;</td>
                    <tr>
                        <td class="style10">
                            Mobile No. </td>
                        <td class="style12">
                            :</td>
                        <td class="style8">
                            <asp:Label ID="lblmob" runat="server" CssClass="style4"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td class="style12">
                            &nbsp;</td>
                        <td class="style8">
                            &nbsp;</td>
                        <tr>
                            <td class="style10">
                                Nationality </td>
                            <td class="style12">
                                :</td>
                            <td class="style8">
                                <asp:Label ID="lblnationality" runat="server" CssClass="style4"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style10">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                            <td class="style8">
                                &nbsp;</td>
                            <tr>
                                <td class="style10">
                                    User Name </td>
                                <td class="style12">
                                    :</td>
                                <td class="style8">
                                    <asp:Label ID="lblusername" runat="server" CssClass="style4"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style9">
                                </td>
                                <td class="style11">
                                    &nbsp;</td>
                                <td class="style3">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    Security Type </td>
                                <td class="style12">
                                    :</td>
                                <td class="style8">
                                    <asp:Label ID="lblsecure" runat="server" CssClass="style4"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style10">
                                    &nbsp;</td>
                                <td class="style12">
                                    &nbsp;</td>
                                <td class="style8">
                                    &nbsp;</td>
                                <tr>
                                    <td class="style10">
                                        Date of Join
                                    </td>
                                    <td class="style12">
                                        :</td>
                                    <td class="style8">
                                        <asp:Label ID="lbljoin" runat="server" CssClass="style4"></asp:Label>
                                    </td>
                                </tr>
                            </tr>
                        </tr>
                    </tr>
                </tr>
            </tr>
        </tr>
        <tr>
            <td class="style10">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="btback" runat="server" onclick="Button1_Click" Text="Back" />
            </td>
        </tr>
    </table>
    </asp:Panel>
</div>
</asp:Content>

