<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlMLCountryListBox.ascx.cs" Inherits="DNNCentric.MultilanguageForms.Controls.CtrlMLCountryListBox" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table style="background-color: White" width="100%">
 <tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
<tr>
        <td>
            <asp:Label ID="lblControlType" runat="server" resourcekey="lblControlType.Text"  CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:RadioButtonList ID="rdlControlType" CssClass="Normal" runat="server" EnableTheming="True" 
                RepeatDirection="Horizontal">
            <asp:ListItem Text="DropDownList" Value="DropDownList" Selected="True"></asp:ListItem>
            <asp:ListItem Text="ListBox" Value="ListBox"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblWidth" runat="server" resourcekey="lblWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth" MaxLength="3" runat="server" Width="71px" CssClass="CFC_NormalTextBox" ></asp:TextBox>&nbsp;<asp:Label ID="lblPix" runat="server" resourcekey="PixWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
    </tr>
   
    <tr>
        <td>
            <asp:Label ID="lblIsReadOnly" runat="server" resourcekey="lblIsReadOnly.Text" CssClass="CF_Admin_NormalText">           </asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadOnly" runat="server" />
        </td>
    </tr>
    <tr>
        <td colspan="2" class="CF_Header">
            Validation Rule</td>
        
    </tr>
     <tr>
        <td>
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
            <asp:DataList ID="dlstCountryLst" runat="server" Width="100%" BackColor="White"
                BorderWidth="0px" CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" Wrap="false" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table width="100%">
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
                            <td style="width: 35%;white-space:nowrap">
                                <asp:Label ID="lblSelectItemText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblSelectItemText.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="CF_Admin_NormalText"></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtSelectItemText" runat="server" TextMode="SingleLine" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).SelectItemText %>"
                                    Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 35%">
                                <asp:Label ID="lblDefaultCountry" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblDefaultCountry.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="CF_Admin_NormalText"></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtDefaultCountry" runat="server" TextMode="SingleLine" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).DefaultCountry %>"
                                    Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblreqiredfieldtext" ResourceKey="lblreqiredfieldtext"  CssClass="CF_Admin_NormalText"   Text='<%#string.Format("{0} ({1})",Localization.GetString("lblreqiredfieldtext.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
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
    <dnn:Label runat="server"  ID="lblMLHelpText" Visible="false" CssClass="CFC_NormalTextBox" Text="Tip to Enable MultiLanguage Features." HelpText="<b>Tip:</b> Since you have enabled more than one language on your site,<br/>you can keep Field Properties in different languages.<br/>Go to [Form Layout] page to Enable MultiLanguage Features."/>
    </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="Small" ForeColor="Red"
                Visible="false"></asp:Label>
        </td>
    </tr>
</table>
