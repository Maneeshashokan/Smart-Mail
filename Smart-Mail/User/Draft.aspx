<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Draft.aspx.cs" Inherits="User_Draft" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<link rel="Stylesheet" type="text/css" href="css/draft.css" media="screen" />
</head>
<div id="main_content">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Panel ID="Panel1" runat="server">
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2" 
            Height="16px" Width="506px" >
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1">
                <HeaderTemplate>
                    Inbox
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                    <asp:ImageButton ID="ImageButton1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="From" />
                            <asp:BoundField HeaderText="Subject" />
                            <asp:BoundField HeaderText="DateTime" />
                            <asp:TemplateField></asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:Button ID="Btmark" runat="server" Text="Mark All" />
                     <asp:RoundedCornersExtender ID="Btmark_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="Btmark">
                    </asp:RoundedCornersExtender>
                     <asp:Button ID="Button2" runat="server" Text="Unmark All" />
                      <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" 
                        runat="server" Enabled="True" Radius="10" TargetControlID="Button2">
                    </asp:RoundedCornersExtender>
                      <asp:Button ID="Button3" runat="server" Text="Delete" />
                       <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" 
                        runat="server" Enabled="True" Radius="10" TargetControlID="Button3">
                    </asp:RoundedCornersExtender>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2">
                <HeaderTemplate>
                    Secure Inbox
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" 
                       >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="From" />
                            <asp:BoundField HeaderText="Subject" />
                            <asp:BoundField HeaderText="Date-Time" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:Button ID="Button1" runat="server" Text="Mark All" />
                    <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="Button1">
                    </asp:RoundedCornersExtender>
                    <asp:Button ID="Button5" runat="server" Text="Unmark All" />
                    <asp:RoundedCornersExtender ID="Button5_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="Button5">
                    </asp:RoundedCornersExtender>
                    <asp:Button ID="Button6" runat="server" Text="Delete" />

                    <asp:RoundedCornersExtender ID="Button6_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="Button6">
                    </asp:RoundedCornersExtender>

                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3">
                <HeaderTemplate>
                    Group Inbox
                </HeaderTemplate>
                <ContentTemplate>
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox4" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="From" />
                            <asp:BoundField HeaderText="Subject" />
                            <asp:BoundField HeaderText="Date-Time" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <EmptyDataTemplate>
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:Button ID="btmark6" runat="server" Text="Mark All" />
                    <asp:RoundedCornersExtender ID="btmark6_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="btmark6">
                    </asp:RoundedCornersExtender>
                    <asp:Button ID="btunmark" runat="server" Text="Unmark All" />
                    <asp:RoundedCornersExtender ID="btunmark_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="btunmark">
                    </asp:RoundedCornersExtender>
                    <asp:Button ID="btdelete" runat="server" Text="Delete" />
                    <asp:RoundedCornersExtender ID="btdelete_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="10" TargetControlID="btdelete">
                    </asp:RoundedCornersExtender>
                </ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
    </asp:Panel>

</div>
</asp:Content>

