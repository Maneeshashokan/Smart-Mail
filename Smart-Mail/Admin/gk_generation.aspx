<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="gk_generation.aspx.cs" Inherits="Admin_gk_generation" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
        .style2
        {
            font-size: large;
        }
        .style4
        {
            font-weight: normal;
        }
        .style5
        {
            font-size: large;
            height: 24px;
        }
        .style6
        {
            font-weight: normal;
            height: 24px;
        }
        .style7
        {
            height: 24px;
        }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            height: 23px;
            width: 142px;
        }
        .style10
        {
            width: 503px;
        }
        .style12
        {
            height: 23px;
            width: 244px;
            font-weight: bold;
            font-size: large;
        }
        .style14
        {
            height: 23px;
            font-weight: bold;
            font-size: large;
            width: 17px;
        }
        .style16
        {
            width: 503px;
            height: 287px;
        }
        .style17
        {
            height: 287px;
        }
        .style26
        {
            width: 244px;
        }
        .style27
        {
            width: 244px;
            font-weight: bold;
            font-size: large;
        }
        .style28
        {
            width: 17px;
        }
        .style29
        {
            font-size: large;
            font-weight: bold;
            width: 17px;
        }
        .style31
        {
            width: 142px;
        }
        .style32
        {
            font-size: medium;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main_content">
    <asp:Panel ID="Panel1" runat="server">
        <table class="style8">
            <tr>
                <td class="style16">
                    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                    <asp:FormView ID="fvgroup" runat="server" AllowPaging="True" 
                        Caption="Requests For " onitemcommand="fvgroup_ItemCommand" 
                        onpageindexchanging="fvgroup_PageIndexChanging" BorderColor="#0000CC" 
                        BorderWidth="4px" Height="287px">
                        <ItemTemplate>
                            <table class="style1">
                                <tr>
                                    <td class="style2">
                                        From</td>
                                    <td class="style2">
                                        :</td>
                                    <td class="style4">
                                        <asp:Label ID="lblfrm" runat="server" CssClass="style3" 
                                            Text='<%# Bind("sender") %>' style="font-size: medium"></asp:Label>
                                        <span class="style32">&nbsp; </span>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("gp_id") %>' 
                                            Visible="False" CssClass="style32"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style2">
                                        Group Members</td>
                                    <td class="style2">
                                        :</td>
                                    <td>
                                        <asp:ListBox ID="lbgmembers" runat="server" CssClass="style3" Height="122px" 
                                            Width="204px" DataSourceID="SqlDataSource1" DataTextField="uname" 
                                            DataValueField="uname" style="font-size: medium"></asp:ListBox>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=smart_mail;Integrated Security=True" 
                                            ProviderName="System.Data.SqlClient" 
                                            SelectCommand="SELECT [uname] FROM [gp_member] WHERE ([id] = @id)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="Label1" Name="id" PropertyName="Text" 
                                                    Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        Date</td>
                                    <td class="style5">
                                        :</td>
                                    <td class="style6">
                                        <asp:Label ID="lbldate" runat="server" CssClass="style3" 
                                            Text='<%# Bind("date") %>' style="font-size: medium"></asp:Label>
                                    </td>
                                    <td class="style7">
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" CommandArgument='<%# Bind("gp_id") %>' 
                                            CommandName="master" Text="Approve" />
                                        <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                                            Enabled="True" Radius="10" TargetControlID="Button1">
                                        </asp:RoundedCornersExtender>
                                        &nbsp;
                                        <asp:Button ID="Button2" runat="server" CommandName="block" Text="Block" 
                                            CommandArgument='<%# Bind("gp_id") %>' />
                                        <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
                                            Enabled="True" Radius="10" TargetControlID="Button2">
                                        </asp:RoundedCornersExtender>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </td>
                <td class="style17">
                    <asp:FormView ID="fvupdate" runat="server" AllowPaging="True" 
                        BorderColor="#0000CC" 
                        BorderWidth="4px" Height="287px" Caption="gp_update reqst" 
                        onpageindexchanging="FormView2_PageIndexChanging" 
                        onitemcommand="fvupdate_ItemCommand" Width="418px"  >
                        <ItemTemplate>
                            <table class="style8">
                                <tr>
                                    <td class="style26">
                                        &nbsp;</td>
                                    <td class="style28">
                                        &nbsp;</td>
                                    <td class="style31">
                                        <asp:Label ID="lblid" runat="server" Text='<%# Bind("gp_id") %>' 
                                            Visible="False" CssClass="style32"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        From</td>
                                    <td class="style14">
                                        :</td>
                                    <td class="style9">
                                        <asp:Label ID="lblfrm" runat="server" Text='<%# Bind("sender") %>' 
                                            CssClass="style32"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style27">
                                        Group Members</td>
                                    <td class="style29">
                                        :</td>
                                    <td class="style31">
                                        <asp:ListBox ID="ListBox1" runat="server" Height="122px" 
                                            Width="204px" CssClass="style32" DataSourceID="SqlDataSource2" 
                                            DataTextField="uname" DataValueField="uname">
                                        </asp:ListBox>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                            ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=smart_mail;Integrated Security=True" 
                                            ProviderName="System.Data.SqlClient" 
                                            SelectCommand="SELECT [uname] FROM [gp_member] WHERE ([id] = @id)">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="lblid" Name="id" PropertyName="Text" 
                                                    Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style27">
                                        Date
                                    </td>
                                    <td class="style29">
                                        :</td>
                                    <td class="style31">
                                        <asp:Label ID="lblfrm0" runat="server" CssClass="style32" 
                                            Text='<%# Bind("date") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style26">
                                        &nbsp;</td>
                                    <td class="style28">
                                        &nbsp;</td>
                                    <td class="style31">
                                        <asp:Button ID="Button3" runat="server" CommandName="update" Text="Approve" 
                                            CommandArgument='<%# Bind("gp_id") %>' />
                                        <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" runat="server" 
                                            Enabled="True" Radius="10" TargetControlID="Button3">
                                        </asp:RoundedCornersExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style26">
                                        &nbsp;</td>
                                    <td class="style28">
                                        &nbsp;</td>
                                    <td class="style31">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>

</div>
</asp:Content>

