<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="compose.aspx.cs" Inherits="User_compose" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
<link rel="Stylesheet" type="text/css" href="css/compose.css" media="screen" />

<link rel="Stylesheet" type="text/css" href="css/home.css" media="screen" />
</head>
<div id="Main_content">

    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"> 
    </asp:ToolkitScriptManager>

    <asp:Panel ID="Main_content_Panel" runat="server">
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="2" 
            Height="729px" Width="801px" >
            <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="TabPanel1"><HeaderTemplate>Compose</HeaderTemplate>
                <ContentTemplate>
                    <table class="style1">
                        <tr>
                            <td>
                                To</td>
                            <td>
                                <asp:TextBox ID="txtcmpto" runat="server" Height="24px" Width="439px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                Subject</td>
                            <td>
                                <asp:TextBox ID="txtcmpsub" runat="server" Height="22px" Width="440px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top">
                                Body</td>
                            <td rowspan="2">
                                <asp:TextBox ID="txtcmpbody" runat="server" Height="314px" TextMode="MultiLine" 
                                    Width="446px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Attatchments</td>
                            <td class="style2">
                            </td>
                            <td class="style2">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:FileUpload ID="FileUpload3" runat="server" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btcmpup" runat="server" Text="Upload" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="txtcmpsave" runat="server" Text="Save" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="txtcmpcancel" runat="server" Text="Cancel" />
                                &nbsp;&nbsp;
                                <asp:Button ID="txtcmpsend" runat="server" Text="Send" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="TabPanel2"><HeaderTemplate>Secure Compose</HeaderTemplate>
                <ContentTemplate>
                    <asp:Panel ID="Panel2" runat="server">
                        <table class="style1">
                            <tr>
                                <td>
                                    To</td>
                                <td>
                                    <asp:TextBox ID="txtsecto" runat="server" Height="21px" Width="177px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    Subject</td>
                                <td>
                                    <asp:TextBox ID="txtsecsub" runat="server" Height="22px" Width="440px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td valign="top">
                                    Body</td>
                                <td rowspan="2">
                                    <asp:TextBox ID="txtsecbody" runat="server" Height="314px" TextMode="MultiLine" 
                                        Width="446px"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    Attatchments</td>
                                <td class="style2">
                                </td>
                                <td class="style2">
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:FileUpload ID="FileUpload2" runat="server" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btsecup" runat="server" Text="Upload" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    <asp:Button ID="btsecsave" runat="server" Text="Save" />
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="btseccancel" runat="server" Text="Cancel" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="btsecsend" runat="server" Text="Send" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel ID="TabPanel3" runat="server" HeaderText="TabPanel3"><HeaderTemplate>
                Secure Group Compose</HeaderTemplate><ContentTemplate>              
                <asp:Panel ID="Panel1" runat="server">
                                       
                    <table class="style1">
                        <tr>
                            <td valign="top">
                                To</td>
                            <td valign="top">
                                <asp:DropDownList ID="ddlto" runat="server" Height="16px" Width="121px">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:ListBox ID="lbto" runat="server" Height="127px" Width="217px">
                                </asp:ListBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Subject</td>
                            <td>
                                <asp:TextBox ID="txtgpsub" runat="server" Height="21px" Width="375px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td valign="top">
                                Body</td>
                            <td rowspan="2">
                                <asp:TextBox ID="txtgpbody" runat="server" Height="314px" TextMode="MultiLine" 
                                    Width="446px"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">
                                Attatchments</td>
                            <td class="style2">
                            </td>
                            <td class="style2">
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btgpupload" runat="server" Text="Upload" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="btgpsave" runat="server" Text="Save" />
                                &nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btgpcancel" runat="server" Text="Cancel" />
                                &nbsp;&nbsp;
                                <asp:Button ID="btgpsend" runat="server" Text="Send" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                </ContentTemplate></asp:TabPanel>
        </asp:TabContainer>


    </asp:Panel>


</div>

</asp:Content>

