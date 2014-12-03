<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Viewuser.aspx.cs" Inherits="Admin_Viewuser" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="main_content">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Panel ID="Panel1" runat="server">
        <asp:GridView ID="Gvview" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="6" 
            onpageindexchanging="Gvview_PageIndexChanging" 
            onrowcommand="Gvview_RowCommand">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="Cb" runat="server" />
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("reg_id") %>' 
                            Visible="False"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField HeaderText="First Name" DataField="name" />
                <asp:BoundField HeaderText="Last Name" DataField="lname" />
                <asp:BoundField DataField="mob" HeaderText="Contact" />
                <asp:BoundField DataField="city" HeaderText="City" />
                <asp:BoundField DataField="secur_type" HeaderText="Securiy Type" />
                <asp:BoundField DataField="date" HeaderText="Signup Date" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="btview" runat="server" ForeColor="#000066" 
                             Text="Profile" CommandArgument='<%# Bind("reg_id") %>' 
                            CommandName="view" />
                        <asp:RoundedCornersExtender ID="btview_RoundedCornersExtender" runat="server" 
                            Enabled="True" Radius="10" TargetControlID="btview">
                        </asp:RoundedCornersExtender>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:Button ID="btmark" runat="server" Text="Mark All" onclick="btmark_Click" 
             />
        &nbsp;<asp:Button ID="btunmark" runat="server" Text="Unmark All" Height="26px" 
            onclick="btunmark_Click" />
        &nbsp;<asp:Button ID="btblock" runat="server" Text="Block" 
            onclick="btblock_Click" />
    </asp:Panel>

</div>
</asp:Content>

