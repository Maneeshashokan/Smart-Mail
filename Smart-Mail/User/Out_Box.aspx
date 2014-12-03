<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Out_Box.aspx.cs" Inherits="User_Out_Box" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <head>
  
  <link rel="Stylesheet" type="text/css" href="css/outbox.css" media="screen" />
  <link rel="Stylesheet" type="text/css" href="css/home.css" media="screen" />
  </head> 
  <div id="Main_content">
      <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
      </asp:ToolkitScriptManager>
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
        <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
           Enabled="True" Radius="10" TargetControlID="Button1">
       </asp:RoundedCornersExtender>
        <asp:Button ID="Button2" runat="server" Text="Unmark All" />
         <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" 
           runat="server" Enabled="True" Radius="10" TargetControlID="Button2">
       </asp:RoundedCornersExtender>
         <asp:Button ID="Button3" runat="server" Text="Delete" />
          <asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" 
           runat="server" Enabled="True" Radius="10" TargetControlID="Button3">
       </asp:RoundedCornersExtender>
          <asp:Button ID="Button4" runat="server" Text="Resend" />
       <asp:RoundedCornersExtender ID="Button4_RoundedCornersExtender" runat="server" 
           Enabled="True" Radius="10" TargetControlID="Button4">
       </asp:RoundedCornersExtender>
    </asp:Panel>

</div>
</asp:Content>

