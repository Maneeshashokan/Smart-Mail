<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Sent_item.aspx.cs" Inherits="User_Sent_item" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-weight: bold;
        }
        .style2
        {
            font-size: medium;
        }
        .style3
        {
            font-weight: bold;
            font-size: medium;
        }
        .style4
        {
            width: 30px;
        }
        .style5
        {
            width: 114px;
        }
        .style6
        {
            width: 468px;
        }
        .style9
        {
            width: 132px;
        }
        .style10
        {
            width: 395px;
        }
        .style12
        {
            width: 406px;
        }
        .style13
        {
            width: 1112px;
        }
        .style14
        {
            width: 1555px;
        }
        .style15
        {
            width: 699px;
        }
        .style16
        {
            font-size: medium;
            width: 699px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/User/images.jpg" 
                    onclick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/User/images.jpg" 
                    onclick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/User/images.jpg" 
                    onclick="ImageButton3_Click" />
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Panel ID="Panel1" runat="server" BorderColor="Red" BorderStyle="Solid" 
                    BorderWidth="2px">
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <asp:GridView ID="gvinbox0" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False" PageSize="13" BackColor="White" 
                                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                                GridLines="Horizontal" onpageindexchanging="gvinbox0_PageIndexChanging" 
                                onrowcommand="gvinbox0_RowCommand">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbcheched0" runat="server" />
                                            <asp:Label ID="lblcheck0" runat="server" Text='<%# Bind("msg_id") %>' 
                                                Visible="False"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="to1" />
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton8" runat="server" 
                                                CommandArgument='<%# Bind("msg_id") %>' CommandName="subject" 
                                                Text='<%# Eval("subject") %>' ></asp:LinkButton>
                                            <asp:ModalPopupExtender ID="LinkButton8_ModalPopupExtender" runat="server" CancelControlID="imgclose1" 
                                                DynamicServicePath="" Enabled="True" PopupControlID="Panel4" 
                                                TargetControlID="LinkButton8" BackgroundCssClass="modalBackground">
                                            </asp:ModalPopupExtender>
                                            <br />
                                            <asp:Panel ID="Panel4" runat="server" Height="273px" Width="873px" 
                                                                BackColor="#CCFFCC" BorderColor="#000066" 
                                                BorderStyle="Solid">
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            To</td>
                                                        <td class="style2">
                                                            :</td>
                                                        <td class="style9">
                                                            <asp:Label ID="lblfrom0" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("to1") %>' style="font-size: medium"></asp:Label>
                                                        </td>
                                                        <td class="style14">
                                                            &nbsp; &nbsp;</td>
                                                        <td class="style13">
                                                            &nbsp;</td>
                                                        <td class="style6">
                                                            <asp:Image ID="imgclose1" runat="server" ImageUrl="~/Images/cute_ball_stop.png" 
                                                                Width="28px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            Subject
                                                        </td>
                                                        <td class="style2">
                                                            :</td>
                                                        <td class="style9">
                                                            <asp:Label ID="lblsub0" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("subject") %>' style="font-size: medium"></asp:Label>
                                                        </td>
                                                        <td class="style14">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style14">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style12">
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("msg_id") %>' 
                                                                Visible="False" CssClass="style2"></asp:Label>
                                                        </td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style9">
                                                            <asp:Label ID="lbldate0" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("date") %>' style="font-size: medium"></asp:Label>
                                                        </td>
                                                        <td class="style14">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style14">
                                                            &nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style2" colspan="5">
                                                            <asp:Label ID="Label3" runat="server" CssClass="style4" 
                                                                Text='<%# Bind("msg") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td class="style10" colspan="2">
                                                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                                DataKeyNames="id" DataSourceID="SqlDataSource1" ShowHeader="False" 
                                                                CssClass="style2">
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
                                                            <asp:LinkButton ID="LinkButton9" runat="server" CommandName="forward" 
                                                                style="color: #000099; font-weight: 700; font-size: large" 
                                                                CommandArgument='<%# Bind("msg_id") %>'>Forward</asp:LinkButton>
                                                        </td>
                                                        <td class="style9">
                                                            &nbsp;&nbsp;
                                                            </td>
                                                        <td class="style14">
                                                            &nbsp;</td>
                                                        <td colspan="2">
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <br />
                                                <br />
                                            </asp:Panel>
                                            <asp:DropShadowExtender ID="Panel1_DropShadowExtender0" runat="server" 
                                                Enabled="True" TargetControlID="Panel4">
                                            </asp:DropShadowExtender>
                                            <asp:RoundedCornersExtender ID="Panel1_RoundedCornersExtender0" runat="server" 
                                                Enabled="True" Radius="10" TargetControlID="Panel4">
                                            </asp:RoundedCornersExtender>
                                            <br />
                                            <br />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="date" />
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#275353" />
                            </asp:GridView>
                            <asp:Button ID="Btmark0" runat="server" onclick="Btmark_Click" 
                                Text="Mark All" />
                            <asp:RoundedCornersExtender ID="Btmark0_RoundedCornersExtender" runat="server" 
                                Enabled="True" Radius="10" TargetControlID="Btmark0">
                            </asp:RoundedCornersExtender>
                            <asp:RoundedCornersExtender ID="Btmark_RoundedCornersExtender" runat="server" 
                                Enabled="True" Radius="10" TargetControlID="Btmark">
                            </asp:RoundedCornersExtender>
                            &nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                Text="Unmark All" />
                            <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
                                Enabled="True" Radius="10" TargetControlID="Button2">
                            </asp:RoundedCornersExtender>
                            &nbsp;<asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                                Text="Delete" />
                            &nbsp;<asp:RoundedCornersExtender ID="Button3_RoundedCornersExtender" runat="server" 
                                Enabled="True" Radius="10" TargetControlID="Button3">
                            </asp:RoundedCornersExtender>
                            <br />
                        </asp:View>
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:View ID="View3" runat="server">
                            <table class="style1">
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td class="style45">
                                        Enter Your Secret Key :</td>
                                    <td class="style27">
                                        <asp:TextBox ID="txtkey" runat="server" CssClass="style21" Height="25px" 
                                            style="font-weight: bold; font-size: large; color: #FF0000;" 
                                            TextMode="Password" Width="205px"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td class="style46">
                                        </td>
                                    <td class="style43">
                                    </td>
                                    <td class="style44">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td class="style47">
                                        &nbsp;</td>
                                    <td class="style27">
                                        <asp:Button ID="Button7" runat="server" CommandName="key" 
                                            onclick="Button7_Click" style="font-weight: 700" Text="Submit" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        &nbsp;</td>
                                    <td class="style48">
                                        </td>
                                    <td class="style39">
                                    </td>
                                    <td class="style40">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="style26" colspan="3">
                                        <asp:Panel ID="plsecure" runat="server" Height="352px" Visible="False">
                                            <asp:GridView ID="gvsecure" runat="server" AutoGenerateColumns="False" 
                                                BackColor="#FFFFCC" BorderColor="#000066" BorderStyle="Solid" BorderWidth="4px" 
                                                CellPadding="4" GridLines="Horizontal" onrowcommand="gvsecure_RowCommand" 
                                                onpageindexchanging="gvsecure_PageIndexChanging">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:CheckBox ID="CheckBox2" runat="server" />
                                                            <asp:Label ID="lblck" runat="server" Text='<%# Bind("msg_id") %>' 
                                                                Visible="False"></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="to1" />
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Bind("subject") %>'></asp:LinkButton>
                                                            <asp:ModalPopupExtender ID="LinkButton1_ModalPopupExtender" runat="server" 
                                                                BackgroundCssClass="modalBackground " CancelControlID="imgclose" 
                                                                DynamicServicePath="" Enabled="True" PopupControlID="Panel2" 
                                                                TargetControlID="LinkButton1">
                                                            </asp:ModalPopupExtender>
                                                            <br />
                                                            <asp:Panel ID="Panel2" runat="server" BackColor="#CCFFCC" BorderColor="#000066" 
                                                                BorderStyle="Solid" Height="311px" Width="821px">
                                                                <table class="style30">
                                                                    <tr>
                                                                        <td class="style3">
                                                                            To</td>
                                                                        <td class="style3">
                                                                            :</td>
                                                                        <td class="style15">
                                                                            <asp:Label ID="lblname" runat="server" Text='<%# Bind("to1") %>' 
                                                                                CssClass="style2"></asp:Label>
                                                                        </td>
                                                                        <td>
                                                                            <asp:Image ID="imgclose" runat="server" Height="26px" 
                                                                                ImageUrl="~/Images/cute_ball_stop.png" Width="28px" />
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style3">
                                                                            &nbsp;</td>
                                                                        <td class="style3">
                                                                            &nbsp;</td>
                                                                        <td class="style15">
                                                                            <asp:Label ID="lblid" runat="server" Text='<%# Bind("msg_id") %>' 
                                                                                Visible="False" CssClass="style2"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style3">
                                                                            Subject</td>
                                                                        <td class="style3">
                                                                            :</td>
                                                                        <td class="style15">
                                                                            <asp:Label ID="lblsubject" runat="server" Text='<%# Bind("subject") %>' 
                                                                                CssClass="style2"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style3">
                                                                            &nbsp;</td>
                                                                        <td class="style3">
                                                                            &nbsp;</td>
                                                                        <td class="style16">
                                                                            &nbsp;</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style31">
                                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("msg_id") %>' 
                                                                                Visible="False" CssClass="style2"></asp:Label>
                                                                        </td>
                                                                        <td class="style2">
                                                                            &nbsp;</td>
                                                                        <td class="style15">
                                                                            <asp:Label ID="lblbody" runat="server" Text='<%# Bind("msg") %>' 
                                                                                CssClass="style2"></asp:Label>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style2">
                                                                            &nbsp;</td>
                                                                        <td class="style2">
                                                                            &nbsp;</td>
                                                                        <td class="style15">
                                                                            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                                                                DataKeyNames="id" DataSourceID="SqlDataSource1" ShowHeader="False" 
                                                                                CssClass="style2">
                                                                                <Columns>
                                                                                    <asp:TemplateField>
                                                                                        <ItemTemplate>
                                                                                            <asp:HyperLink ID="HyperLink4" runat="server" 
                                                                                                NavigateUrl='<%# Eval("attchment") %>'>Dounload</asp:HyperLink>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                </Columns>
                                                                                <EmptyDataTemplate>
                                                                                    <asp:HyperLink ID="HyperLink3" runat="server" 
                                                                                        NavigateUrl='<%# Eval("attchment") %>'>Dounload</asp:HyperLink>
                                                                                </EmptyDataTemplate>
                                                                            </asp:GridView>
                                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                                                ConnectionString="Data Source=.\SQLEXPRESS;Initial Catalog=smart_mail;Integrated Security=True" 
                                                                                ProviderName="System.Data.SqlClient" 
                                                                                SelectCommand="SELECT * FROM [attach] WHERE ([m_id] = @m_id)">
                                                                                <SelectParameters>
                                                                                    <asp:ControlParameter ControlID="Label4" Name="m_id" PropertyName="Text" 
                                                                                        Type="Int32" />
                                                                                </SelectParameters>
                                                                            </asp:SqlDataSource>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="style31">
                                                                            &nbsp;</td>
                                                                        <td class="style35">
                                                                            &nbsp;</td>
                                                                        <td class="style15">
                                                                            &nbsp;<tb>
                                                                            </tb>
                                                                            <asp:LinkButton ID="LinkButton3" runat="server" 
                                                                                CommandArgument='<%# Bind("msg_id") %>' CommandName="forward" 
                                                                                style="font-weight: 700">Forward</asp:LinkButton>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </asp:Panel>
                                                            <asp:DropShadowExtender ID="Panel2_DropShadowExtender" runat="server" 
                                                                Enabled="True" Opacity="2" Radius="10" TargetControlID="Panel2">
                                                            </asp:DropShadowExtender>
                                                            <asp:RoundedCornersExtender ID="Panel2_RoundedCornersExtender" runat="server" 
                                                                Enabled="True" Radius="10" TargetControlID="Panel2">
                                                            </asp:RoundedCornersExtender>
                                                            <br />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:BoundField DataField="date" />
                                                </Columns>
                                                <FooterStyle BackColor="White" ForeColor="#333333" />
                                                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="White" ForeColor="#333333" />
                                                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                                <SortedAscendingHeaderStyle BackColor="#487575" />
                                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                                <SortedDescendingHeaderStyle BackColor="#275353" />
                                            </asp:GridView>
                                            <asp:Button ID="btmark" runat="server" onclick="btmark_Click" Text="Mark All" />
                                            <asp:Button ID="btunmark" runat="server" onclick="btunmark_Click" 
                                                Text="Unmark All" />
                                            <asp:Button ID="btdelete" runat="server" onclick="btdelete_Click" 
                                                Text="Delete" />
                                        </asp:Panel>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </asp:View>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:View ID="View2" runat="server">
                            Group Mail
                        </asp:View>
                    </asp:MultiView>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

