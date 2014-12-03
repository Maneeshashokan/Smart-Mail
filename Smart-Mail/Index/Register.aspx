<%@ Page Title="" Language="C#" MasterPageFile="~/Index/Index.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Index_Register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
input
{
    
}


</style>
    <div id="Index" 
        style="background-image:url('../images/lock.jpg'); background-repeat: no-repeat; z-index: auto;">
   
    

    <table class="registration" style="z-index:1;width:100%;">
        <tr>
            <td  class="style2">
                </td>
            <td  class="style9">
                &nbsp;</td>
            <td class="style5" colspan="2">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style8">
                First Name</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtname" runat="server" CssClass="style3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="txtlname" ErrorMessage="*" ForeColor="Red" 
                    style="font-weight: 700; font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Last Name</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtlname" runat="server" 
                    CssClass="style3" 
                    ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Sex</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:RadioButtonList ID="rblsex" runat="server" 
                    RepeatDirection="Horizontal"  Width="170px">
                    <asp:ListItem Selected="True">Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Date of Birth</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtdob" runat="server" ontextchanged="TextBox1_TextChanged" 
                    AutoPostBack="True" CssClass="style3" ValidationGroup="group_a"></asp:TextBox>
                        <asp:CalendarExtender ID="txtdob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtdob">
                        </asp:CalendarExtender>
                        <asp:Label ID="lbldob" runat="server" style="color: #FF0000"></asp:Label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Current City</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtcity" runat="server" CssClass="style3" 
                    ValidationGroup="group_a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcity" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Address</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine" 
                    CssClass="style3" ValidationGroup="group_a"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Mobile No.</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtmobile" runat="server" CssClass="style3" 
                    ValidationGroup="group_a"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtmobile" ErrorMessage="10 Digits" ForeColor="Red" 
                    ValidationExpression="\d{10}" CssClass="style3"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Nationality</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtnationality" runat="server" CssClass="style3" 
                    ValidationGroup="group_a" ></asp:TextBox>
                <b>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtnationality" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style4"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtnationality" ErrorMessage="only string" ForeColor="Red" 
                    ValidationExpression="^[a-zA-Z]+$" CssClass="style4">
                 </asp:RegularExpressionValidator>
                </b>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Security Question</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtqst" runat="server" CssClass="style3" 
                    ValidationGroup="group_a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtqst" ErrorMessage="*" Font-Bold="True" ForeColor="Red" 
                    style="font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Answer</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtans" runat="server" CssClass="style3" 
                    ValidationGroup="group_a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="txtans" ErrorMessage="*" Font-Bold="True" ForeColor="Red" 
                    style="font-size: large"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8" valign="bottom">
                Upload Photo</td>
            <td  class="style10" valign="bottom">
                :</td>
            <td class="style6" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Height="143px" Width="148px" 
                    CssClass="style3">
                    <asp:Image ID="Profile_Image" runat="server" Height="143px" Width="148px" 
                        ImageUrl="../images/page3-img6.png" Visible="true"/>
                   
                    </asp:Panel>
                                <asp:FileUpload ID="Profile_upload" runat="server" 
                    EnableTheming="True" CssClass="style3" />
                <td valign="bottom">
                    &nbsp;</td>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                &nbsp;</td>
            <td  class="style10">
                &nbsp;</td>
            <td class="style6" colspan="2">
                <asp:Button ID="Button1" runat="server" style="background-color: rgb(234, 229, 229); border-color: rgb(160, 157, 157); border-style: Double; width: 102px; height: 32px; border-radius: 6px; z-index:10;" onclick="Button1_Click" Text="Upload" 
                    CssClass="style3" ValidationGroup="group_a" />
                </td>
        </tr>
        <tr>
            <td  class="style8" valign="bottom">
                <span class="style4">User Name</span><br class="style4" />
                <br class="style4" />
                <span class="style4">&nbsp;</span></td>
            <td  class="style10" valign="top">
                :</td>
            <td class="style6" valign="top" colspan="2">
                <asp:TextBox ID="txtuid" runat="server" CssClass="style3" 
                    ValidationGroup="group_a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtuid" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Password</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" 
                    CssClass="style3" ValidationGroup="group_a"></asp:TextBox>
                <asp:PasswordStrength ID="txtpassword_PasswordStrength" runat="server" 
                    Enabled="True" TargetControlID="txtpassword">
                </asp:PasswordStrength>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red" 
                    CssClass="style3"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Confirm Password</td>
            <td  class="style10">
                :</td>
            <td class="style6" colspan="2">
                <asp:TextBox ID="txtconfirm" runat="server" TextMode="Password" 
                    CssClass="style3" ValidationGroup="group_a"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtconfirm" 
                    ErrorMessage="Mismatch..........." ForeColor="Red" CssClass="style3"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td  class="style8">
                Security Type</td>
            <td  class="style10">
                :</td>
            <td class="style6">
                <asp:Panel ID="Panel2" runat="server" Height="49px">
                    <asp:RadioButtonList ID="rblsecure" runat="server" 
    RepeatDirection="Horizontal" AutoPostBack="True" 
                        onselectedindexchanged="rblsecure_SelectedIndexChanged">
                        <asp:ListItem Selected="True">Normal</asp:ListItem>
                        <asp:ListItem>USB Security</asp:ListItem>                        
                    </asp:RadioButtonList>
                   
                    <asp:TextBox ID="txtmsg" runat="server">hero..........</asp:TextBox>
                    <asp:RoundedCornersExtender ID="txtmsg_RoundedCornersExtender" runat="server" 
                        Enabled="True" Radius="14" TargetControlID="txtmsg">
                    </asp:RoundedCornersExtender>
                </asp:Panel>
                <asp:BalloonPopupExtender ID="Panel2_BalloonPopupExtender" runat="server" 
                    BalloonSize="Medium" CustomCssUrl="" 
                    DisplayOnMouseOver="True" DynamicServicePath="" Enabled="True" 
                    ExtenderControlID="" TargetControlID="Panel2" 
                    BalloonPopupControlID="txtmsg">
                </asp:BalloonPopupExtender>
                
            </td>
            
        </tr>
        <tr>
            <td  class="style8">
                &nbsp;</td>
            <td  class="style10">
                &nbsp;</td>
            <td class="style11">
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:panel id="plusb" runat="server" Height="93px" 
    Visible="False">
                            <table class="style1">
                                <tr>
                                    <td  class="style14">
                                        Enter your USB key :</td>
                                    <td colspan="2">
                                        <asp:TextBox ID="txtusbkey" runat="server" 
                                    CssClass="style3" TextMode="Password" ValidationGroup="group_a"></asp:TextBox>
                                        <asp:Label ID="lblerror" runat="server" 
                                    style="color: #FF0000"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Submit" />
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style15">
                                        &nbsp;</td>
                                    <td>
                                        <asp:LinkButton ID="LinkButton1" runat="server" 
                                    >Download</asp:LinkButton>
                                    </td>
                                    <td>
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </asp:panel>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
            </td>
            <td class="style6">
                &nbsp;</td>
        </tr>
        <tr>
            <td  class="style8">
                &nbsp;</td>
            <td  class="style10">
                &nbsp;</td>
            <td class="style12">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="140px" 
                    Width="163px" ImageUrl="../Images/register_button.png" 
                    onclick="ImageButton1_Click" CssClass="style3" />
            </td>
            <td class="style7">
               
                &nbsp;</td>
        </tr>
        <tr>
            <td  class="style8">
                &nbsp;</td>
            <td  class="style10">
                &nbsp;</td>
            <td class="style7" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
     
       
</div>

</asp:Content>

