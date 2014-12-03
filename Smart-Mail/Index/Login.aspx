<%@ Page Title="" Language="C#" MasterPageFile="~/Index/Index.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Index_Login" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="color: #FFFFFF">
            Username</td>
        <td>
            <asp:TextBox ID="txtuname" runat="server" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            Password</td>
        <td>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Login" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

