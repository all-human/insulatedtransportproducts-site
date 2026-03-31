<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlRichTextBox.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.Controls.CtrlRichTextBox" %>
<%@ Register TagPrefix="dnn" TagName="RTextEditor" Src="~/controls/texteditor.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table style="background-color: White" width="100%">
    <%--<tr>
      <td>
            <asp:Label ID="lblIsReadOnly" runat="server" resourcekey="lblIsReadOnly.Text" CssClass="CF_Admin_NormalText">           </asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadOnly" runat="server" />
        </td>
    </tr>--%>
    <tr>
        <td colspan="2">
            &nbsp;
        </td>
    </tr>
    <tr>
        <td class="CF_Header" colspan="2">
            Properties
        </td>
    </tr>
    <tr>
        <td style="width: 35%">
            <asp:Label ID="lblHeight" runat="server" resourcekey="lblHeight.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtHeight" MaxLength="3" runat="server" Width="90px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;<asp:Label
                ID="lblHeightinPixals" CssClass="CF_Admin_NormalText" runat="server" resourcekey="lblHeightinPixals.Text"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 35%">
            <asp:Label ID="lblwidth" runat="server" resourcekey="lblWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth" MaxLength="3" runat="server" Width="90px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;<asp:Label
                ID="lblwidthinprecnt" CssClass="CF_Admin_NormalText" runat="server" resourcekey="PixWidth.Text"></asp:Label>
        </td>
    </tr>
    <tr align="left">
        <td colspan="2" class="CF_Header">
            <asp:Label ID="lbllangDependTxt" resourcekey="lbllangDependTxt.Text" runat="server"></asp:Label>
        </td>
    </tr>
    <tr align="left">
        <td colspan="2">
            <asp:DataList ID="dlstRichTextBox" runat="server" Width="100%" BackColor="White"
                BorderWidth="0px" CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <ItemTemplate>
                    <table id="tblML" runat="server" width="99%">
                        <tr>
                            <td style="width: 35%">
                                <asp:Label ID="lblCaptionText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaption.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="CF_Admin_NormalText"></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtRichTextBox" runat="server" Width="100%" TextMode="MultiLine"
                                    Text="<%# ((mlContent)Container.DataItem).Caption %>" Height="50px" CssClass="CFC_NormalTextBox"></asp:TextBox>
                                <%-- <dnn:RTextEditor ID="RTEditor" runat="server" ChooseRender="false" HtmlEncode="true" Width="100%" Height="350px" />--%>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblDefault" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblDefault.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    ResourceKey="lblDefault" />
                            </td>
                            <td>
                                <asp:TextBox ID="txtDefault" runat="server" Text="<%# ((mlContent)Container.DataItem).DefaultValue %>"
                                    Width="100%" TextMode="MultiLine" Height="100px" CssClass="CFC_NormalTextBox"></asp:TextBox>
                                <%--<asp:Label ID="lbldefaultmsg" runat="server" resourcekey="DefaultError.Text" Visible="false"
                                    CssClass="CF_Admin_NormalText" ForeColor="#FF3300"></asp:Label>--%>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="2">
                                <dnn:Label runat="server" ID="lblMLHelpText" ResourceKey="lblMLHelpText" Visible="false"
                                    CssClass="CFC_NormalTextBox"></dnn:Label>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="X-Small" ForeColor="Red"
                                    Visible="false"></asp:Label>
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
        <td align="left" colspan="2">
            <dnn:Label runat="server" ID="lblMLHelpText" ResourceKey="lblMLHelpText" Visible="false"
                CssClass="CFC_NormalTextBox"></dnn:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="X-Small" ForeColor="Red"
                Visible="false"></asp:Label>
        </td>
    </tr>
</table>
