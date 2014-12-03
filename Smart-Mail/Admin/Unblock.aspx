<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Unblock.aspx.cs" Inherits="Admin_Unblock" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="main content">
<asp:Panel ID="Panel1" runat="server">
    <asp:ToolkitScriptManager runat="server">
    </asp:ToolkitScriptManager>
        <asp:GridView ID="Gvblock" runat="server" AutoGenerateColumns="False" 
        AllowPaging="True" onpageindexchanging="Gvblock_PageIndexChanging" 
        onrowcommand="Gvblock_RowCommand" PageSize="6">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Cb" runat="server" />
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("reg_id") %>' 
                            Visible="False"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="First Name" DataField="name" />
                <asp:BoundField DataField="lname" HeaderText="Last Name" />
                <asp:BoundField DataField="mob" HeaderText="Contact" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btview" runat="server" CommandArgument='<%# Bind("reg_id") %>' 
                            CommandName="view"  Text="Profile" />
                        <asp:RoundedCornersExtender ID="btview_RoundedCornersExtender" runat="server" 
                            Enabled="True" Radius="10" TargetControlID="btview">
                        </asp:RoundedCornersExtender>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Mark All" 
        onclick="Button1_Click" />
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Unmark All" 
        onclick="Button2_Click" />
        &nbsp;<asp:Button ID="Button3" runat="server" Text="Unblock" 
        onclick="Button3_Click" />
        &nbsp;<asp:Button ID="Button4" runat="server" Text="Delete" 
        onclick="Button4_Click" />
    </asp:Panel>
</div>
</asp:Content>

