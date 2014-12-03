<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Important.aspx.cs" Inherits="User_Important" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<link rel="Stylesheet" type="text/css" media="screen" href="css/important.css" />

<link rel="Stylesheet" type="text/css" media="screen" href="css/home.css" />
</head>
<div id="Main_content">
    <asp:Panel ID="Main_content_Panel" runat="server">

  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
           <Columns>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:CheckBox ID="CheckBox1" runat="server" />
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:BoundField HeaderText="To" />
               <asp:BoundField HeaderText="Subject" />
               <asp:BoundField HeaderText="Date-Time" />
           </Columns>
       </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Mark All" />
            <asp:Button ID="Button3" runat="server" Text="Unmark All" />
        <asp:Button ID="Button2" runat="server" Text="Delete" />
    
    </asp:Panel>

</div>
</asp:Content>

