<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlRadioButtonList.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.Controls.CtrlRadioButtonList" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table style="background-color: White" width="100%">
<tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblIsReadOnly" runat="server" resourcekey="lblIsReadOnly.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadOnly" runat="server" />
        </td>
    </tr>
   
    <tr>
        <td>
            <asp:Label ID="lblRepeatDirectionText" runat="server" resourcekey="lblRepeatDirectionText.Text"
                CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlRepeatDirection" runat="server" CssClass="CFC_NormalTextBox">
                <asp:ListItem Selected="True" Value="0">Vertical</asp:ListItem>
                <asp:ListItem Value="1">Horizontal</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblRepeatCloumnsTxt" runat="server" resourcekey="lblRepeatCloumnsTxt.Text"
                CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtRepeatCloumnsNum" Width="30px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblWidth" runat="server" resourcekey="lblWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth" MaxLength="3" runat="server" Width="71px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;<asp:Label
                ID="lblPix" runat="server" resourcekey="PixWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
    </tr>
     <tr>
        <td colspan="2" class="CF_Header">
            Validation Rule</td>
        
    </tr>
     <tr>
        <td style="width: 35%">
            <asp:Label ID="lblRequired" runat="server" resourcekey="lblRequiredField.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkRequired" runat="server" />
        </td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
     <tr align="left">
        <td colspan="2" class="CF_Header" >
            <asp:Label ID="lbllangDependTxt" resourcekey="lbllangDependTxt.Text" runat="server"
                ></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:DataList ID="dlstRDBOption" runat="server" Width="100%" BackColor="White" BorderWidth="0px"
                CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table width="99%">
                        <tr>
                            <td style="width: 35%">
                                <asp:Label ID="lblCaptionText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaption.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="CF_Admin_NormalText"></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtCaptionValue" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Text="<%# ((mlContent)Container.DataItem).Caption %>"
                                    Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%-- <asp:Label ID="lblCultureText" runat="server" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCultureText.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'></asp:Label>--%>
                                <dnn:Label ID="lblCultureTextlst" runat="server" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCultureTextlst.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtOptionlist" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Text="<%# ((mlContent)Container.DataItem).Options %>"
                                    Width="100%" Height="80px"></asp:TextBox>
                                <br />
                                <asp:Label ID="lblOptionMsg" runat="server" resourcekey="lblOptionMsg.Text" CssClass="Normal"
                                    ForeColor="Gray"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <%-- <asp:Label ID="lblDefault" runat="server" Text='<%#string.Format("{0} ({1})","Default Item",((mlContent)Container.DataItem).Culture) %>' CssClass="CF_Admin_NormalText"></asp:Label>--%>
                                <dnn:Label runat="server" ID="lblDefault" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblDefault.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtDefault" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).DefaultValue %>"
                                    Width="100%"></asp:TextBox>
                                <asp:Label ID="lbldefaultmsg" runat="server" Visible="false" CssClass="CF_Admin_NormalText"
                                    ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblreqiredfieldtext" ResourceKey="lblreqiredfieldtext"
                                    CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblreqiredfieldtext.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtreqiredfieldtext" Width="100%" CssClass="CFC_NormalTextBox" runat="server" Text="<%# ((mlContent)Container.DataItem).Requiredfieldtext %>"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td align="left" colspan="2">
            <dnn:Label runat="server" ID="lblMLHelpText" Visible="false" CssClass="CFC_NormalTextBox"
                Text="Tip to Enable MultiLanguage Features." HelpText="<b>Tip:</b> Since you have enabled more than one language on your site,<br/>you can keep Field Properties in different languages.<br/>Go to [Form Layout] page to Enable MultiLanguage Features." />
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="X-Small" ForeColor="Red"
                Visible="false"></asp:Label>
        </td>
    </tr>
</table>
