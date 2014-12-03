<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Notifications.aspx.cs" Inherits="Admin_Notifications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
            color: #FFFFFF;
        }
        .style6
        {
            color: #000000;
        }
        .style8
        {
            width: 54px;
        }
        .style11
        {
            width: 68px;
        }
        .style12
        {
            width: 14px;
        }
        .style13
        {
            width: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <asp:Panel ID="Panel1" runat="server">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" 
            BackColor="Black" BorderColor="#000066" BorderWidth="5px" CellSpacing="2" 
            Font-Bold="True" ForeColor="White" onitemdeleting="FormView1_ItemDeleting" 
            onpageindexchanging="FormView1_PageIndexChanging" Width="406px">
            <FooterStyle Font-Bold="False" ForeColor="#000066" />
            <ItemTemplate>
                <table class="style1">
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style8">
                            <asp:Label ID="lblid" runat="server" Text='<%# Bind("contact_id") %>' 
                                Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Name</td>
                        <td>
                            :</span></td>
                        <td class="style8">
                            <asp:Label ID="lblname" runat="server" 
                                Text='<%# Bind("name") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <span class="style6"></span>
                        </td>
                        <td>
                            </span>
                        </td>
                        <td class="style8">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Contact Number</td>
                        <td>
                            :</span></td>
                        <td class="style8">
                            <asp:Label ID="lblcontact" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <span class="style6"></span>
                        </td>
                        <td>
                            </span>
                        </td>
                        <td class="style8">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            Comment</td>
                        <td>
                            :</span></td>
                        <td class="style8">
                            <asp:Label ID="lblcomment" runat="server" Text='<%# Bind("comment") %>' 
                                style="color: #FF0000"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style8">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style8">
                            <asp:Label ID="lbldate" runat="server" 
                                Text='<%# Bind("date") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style8">
                            <asp:Button ID="btdelete" runat="server" Text="Delete" CommandName="delete" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:FormView>

    </asp:Panel>
</div>
</asp:Content>

