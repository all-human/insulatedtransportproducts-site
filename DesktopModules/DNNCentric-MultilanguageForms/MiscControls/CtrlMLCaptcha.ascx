<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlMLCaptcha.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.MiscControls.CtrlMLCaptcha" %>
<table width="100%">
    <tr>
        <td align="left" style="width: 65%">
            <asp:DataList ID="DLCaptchaText" runat="server" Visible="true" Width="100%" 
                BorderWidth="2px" CellPadding="2" GridLines="Vertical">
                <ItemStyle Wrap="false" />
                <ItemTemplate>
                    <table width="100%">
                        <tr>
                            <td>
                                <asp:Label ID="lblCaption" runat="server" CssClass="DCC_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaptionText.Text", UserResourceFile),((CaptchaMessage)Container.DataItem).Culture) %>'></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCaptionText" Width="100%" runat="server" Text="<%# ((CaptchaMessage)Container.DataItem).Caption %>" CssClass="CFC_NormalTextBox"></asp:TextBox>
                            </td>
                        </tr>
                        <%--<tr>
                            <td style="width: 35%">
                                <asp:Label ID="lblCaptchaText" runat="server" CssClass="DCC_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaptchaText.Text", UserResourceFile),((CaptchaMessage)Container.DataItem).Culture) %>'></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtLnkBtnText" Width="100%" runat="server" Text="<%# ((CaptchaMessage)Container.DataItem).CaptchaText %>"></asp:TextBox>
                                <asp:HiddenField ID="hfCulture" runat="server" Value="<%# ((CaptchaMessage)Container.DataItem).Culture %>" />
                            </td>
                        </tr>--%>
                        <tr><td colspan="2">
                          <asp:HiddenField ID="hfCulture" runat="server" Value="<%# ((CaptchaMessage)Container.DataItem).Culture %>" />
                        </td></tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" CssClass="DCC_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaptchaErrorMsgText.Text", UserResourceFile),((CaptchaMessage)Container.DataItem).Culture) %>'></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtCaptchaErrMsg" Width="100%" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((CaptchaMessage)Container.DataItem).CaptchaErrorText %>"></asp:TextBox>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" CssClass="DCC_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblEmptyCaptchaMsgText.Text", UserResourceFile),((CaptchaMessage)Container.DataItem).Culture) %>'></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtEmptyCaptchaErrMsg" Width="100%" CssClass="CFC_NormalTextBox" runat="server" Text="<%# ((CaptchaMessage)Container.DataItem).EmptyCaptchaErrorText %>"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblUserMsg" runat="server" Font-Size="Small" ForeColor="Red" Visible="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:LinkButton ID="lnkSavePnlCaptcha" runat="server" resourcekey="lblbtnSave.Text" CssClass="NormalBold"
                OnClick="lnkSavePnlCaptcha_Click"></asp:LinkButton>
            &nbsp;<asp:LinkButton ID="lnkBackPnlCaptcha" runat="server" resourcekey="lblBtnBack.Text"  OnClick="lnkBackPnlCaptcha_Click"
                 CssClass="NormalBold"></asp:LinkButton>
        </td>
    </tr>
</table>
