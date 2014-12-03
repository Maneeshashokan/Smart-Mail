<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Trash.aspx.cs" Inherits="User_Trash" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<link rel="Stylesheet" type="text/css" href="css/trash.css" media="screen" />

<link rel="Stylesheet" type="text/css" href="css/home.css" media="screen" />

</head>
<div id="Main_content">
    <asp:Panel ID="Main_content_Panel" runat="server">
<asp:GridView ID="gvtrash" runat="server" AutoGenerateColumns="False" 
            AllowPaging="True" PageSize="6" BackColor="White" BorderColor="#CCCCCC" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
            GridLines="Horizontal">
           <Columns>
               <asp:TemplateField>
                   <ItemTemplate>
                       <asp:CheckBox ID="CheckBox1" runat="server" />
                       <asp:Label ID="lblcheck" runat="server" Text="Label"></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
               <asp:BoundField DataField="to1" />
               <asp:BoundField DataField="subject" />
               <asp:BoundField DataField="date" />
           </Columns>
           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
           <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
           <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
           <SortedAscendingCellStyle BackColor="#F7F7F7" />
           <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
           <SortedDescendingCellStyle BackColor="#E5E5E5" />
           <SortedDescendingHeaderStyle BackColor="#242121" />
       </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Mark All" 
            onclick="Button1_Click" />
        &nbsp;<asp:Button ID="Button2" runat="server" Text="Unmark All" 
            onclick="Button2_Click" />
        &nbsp;<asp:Button ID="Button3" runat="server" Text="Delete" 
            onclick="Button3_Click" />





    </asp:Panel>


</div>
</asp:Content>

