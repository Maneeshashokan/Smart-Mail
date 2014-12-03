<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 745px;
            height: 333px;
        }
        .style2
        {
        }
        .style4
        {
            width: 104px;
        }
        .style7
        {
            width: 224px;
        }
        .style8
        {
            width: 532px;
        }
        .style9
        {
            width: 733px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    </div>
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
            Enabled="True" TargetControlID="TextBox1">
        </asp:CalendarExtender>
    </p>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
                            <asp:GridView ID="gvinbox" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" BackColor="#CCCCFF" BorderColor="#000066" 
                                BorderStyle="Solid" BorderWidth="3px" 
        CellPadding="4" ForeColor="Black" 
                                GridLines="Horizontal" PageSize="13">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbcheched" runat="server" />
                                            <asp:Label ID="lblcheck" runat="server" Text='<%# Bind("msg_id") %>' 
                                                Visible="False"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Bind("imp_path") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="frm" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton7" runat="server" 
                                                CommandArgument='<%# Bind("msg_id") %>' CommandName="subject" 
                                                Text='<%# Eval("subject") %>' onclick="LinkButton7_Click"></asp:LinkButton>
                                            <asp:ModalPopupExtender ID="LinkButton7_ModalPopupExtender" runat="server" 
                                                DynamicServicePath="" Enabled="True" 
                                                TargetControlID="LinkButton7" PopupControlID="Panel3" CancelControlID="imgclose0">
                                            </asp:ModalPopupExtender>
                                            <br />
                                            <br />
                                            <br />
                                            <br />
                                            <asp:Panel ID="Panel3" runat="server" BackColor="#CDF8F8" BorderColor="#000066" 
                                                Height="373px" ScrollBars="Auto" Width="761px">
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style12">
                                                            From
                                                        </td>
                                                        <td class="style2">
                                                            :</td>
                                                        <td class="style9">
                                                            <asp:Label ID="lblfrom" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("frm") %>'></asp:Label>
                                                        </td>
                                                        <td class="style8">
                                                            &nbsp; &nbsp;</td>
                                                        <td class="style7">
                                                            &nbsp;</td>
                                                        <td>
                                                            <asp:Image ID="imgclose0" runat="server" ImageUrl="~/Images/cute_ball_stop.png" 
                                                                Width="28px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            Subject
                                                        </td>
                                                        <td class="style2">
                                                            :</td>
                                                        <td class="style9">
                                                            <asp:Label ID="lblsub" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("subject") %>'></asp:Label>
                                                        </td>
                                                        <td class="style8">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style9">
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("msg_id") %>' 
                                                                Visible="False"></asp:Label>
                                                        </td>
                                                        <td class="style8">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style9">
                                                            <asp:Label ID="lbldate" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("date") %>'></asp:Label>
                                                        </td>
                                                        <td class="style8">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style9">
                                                            &nbsp;</td>
                                                        <td class="style8">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            &nbsp;</td>
                                                        <td class="style2" colspan="3">
                                                            <asp:Label ID="Label1" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("msg") %>'></asp:Label>
                                                        </td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style10" colspan="2">
                                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                DataKeyNames="id" DataSourceID="SqlDataSource1" ShowHeader="False">
                                                                <Columns>
                                                                    <asp:TemplateField>
                                                                        <ItemTemplate>
                                                                            <asp:HyperLink ID="HyperLink2" runat="server" 
                                                                                NavigateUrl='<%# Eval("attchment") %>'>Download</asp:HyperLink>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                            </asp:GridView>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                ConnectionString="Data Source=.\SqlExpress;Initial Catalog=smart_mail;Integrated Security=True" 
                                                                ProviderName="System.Data.SqlClient" 
                                                                SelectCommand="SELECT * FROM [attach] WHERE ([m_id] = @m_id)">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="Label2" Name="m_id" PropertyName="Text" 
                                                                        Type="Int32" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            <asp:LinkButton ID="LinkButton6" runat="server" CommandName="forward" 
                                                                style="color: #000099; font-weight: 700; font-size: large">Forward</asp:LinkButton>
                                                        </td>
                                                        <td class="style9">
                                                            &nbsp;&nbsp;
                                                            <asp:LinkButton ID="LinkButton5" runat="server" 
                                                                CommandArgument='<%# Bind("msg_id") %>' CommandName="replay" 
                                                                style="font-weight: 700; font-size: large; color: #000099">Replay</asp:LinkButton>
                                                        </td>
                                                        <td class="style8">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <br />
                                                <br />
                                            </asp:Panel>
                                            <asp:DropShadowExtender ID="Panel1_DropShadowExtender" runat="server" 
                                                Enabled="True" TargetControlID="Panel3">
                                            </asp:DropShadowExtender>
                                            <asp:RoundedCornersExtender ID="Panel1_RoundedCornersExtender" runat="server" 
                                                Enabled="True" Radius="10" TargetControlID="Panel3">
                                            </asp:RoundedCornersExtender>
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
    </form>
    
    <p>
        &nbsp;</p>
    
</body>
</html>
