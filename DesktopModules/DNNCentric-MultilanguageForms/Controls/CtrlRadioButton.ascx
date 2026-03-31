<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlRadioButton.ascx.cs" Inherits="DNNCentric.MultilanguageForms.Controls.CtrlRadioButton" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table style="background-color: White" width="90%">
   <tr>
        <td>
            <asp:Label ID="lblIsReadOnly" runat="server" resourcekey="lblIsReadOnly.Text" CssClass="DCC_NormalText">           </asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadOnly" runat="server" />
        </td>
    </tr>
    <tr >
        <td colspan="2" align="left">
            <asp:Label ID="lbllangDependTxt" resourcekey="lbllangDependTxt.Text" runat="server"
                CssClass="DCC_NormalText"></asp:Label>
        </td>
    </tr>
<tr>
<td colspan="2">
 <asp:DataList ID="dlstRdBtn" runat="server" Width="100%" BackColor="White" BorderWidth="2px"
                CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black"  />
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
             <table width="99%">
             <tr>
                        <td style="width: 35%">
                            <asp:Label ID="lblCaptionText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaption.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                CssClass="DCC_NormalText"></asp:Label>
                        </td>
                        <td style="width: 65%">
                            <asp:TextBox ID="txtCaptionValue" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Text="<%# ((mlContent)Container.DataItem).Caption %>" Width="100%"></asp:TextBox>
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
<tr >
    <td align="center" colspan="2">
        <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="X-Small" ForeColor="Red"  Visible="false"></asp:Label>
        </td>
    </tr>
</table>