<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlFileUpLoad.ascx.cs" Inherits="DNNCentric.MultilanguageForms.Controls.CtrlFileUpLoad" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table style="background-color: White" width="100%">
<tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="lblIsReadOnly" runat="server" resourcekey="lblIsReadOnly.Text" CssClass="DCC_NormalText">           </asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadOnly" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblWidth" runat="server" resourcekey="lblWidth.Text" CssClass="DCC_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth" MaxLength="3" runat="server" Width="71px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;<asp:Label ID="lblPix" runat="server" resourcekey="PixWidth.Text" CssClass="DCC_NormalText"></asp:Label>
        </td>
    </tr>
    <tr><td colspan="2"></td></tr>
   <tr>
        <td colspan="2" class="CF_Header">
            Validation Rule</td>
        
    </tr>
    <tr>
        <td align="left" valign="top" style="width:35%">
            <asp:Label ID="lblMaxFileSize" runat="server" resourcekey="lblMaxFileSize.Text" CssClass="DCC_NormalText"></asp:Label>
        </td>
        <td align="left" valign="top">
            <asp:DropDownList ID="ddlMaxFileSize" runat="server" CssClass="CFC_NormalTextBox">
                <asp:ListItem Value="1">1 MB</asp:ListItem>
                <asp:ListItem Value="2">2 MB</asp:ListItem>
                <asp:ListItem Value="3">3 MB</asp:ListItem>
                <asp:ListItem Value="4">4 MB</asp:ListItem>
                <asp:ListItem Value="8">8 MB</asp:ListItem>
                <asp:ListItem Value="16">16 MB</asp:ListItem>
                <asp:ListItem Value="32">32 MB</asp:ListItem>
                <asp:ListItem Value="64">64 MB</asp:ListItem>
                <asp:ListItem Value="128">128 MB</asp:ListItem>
            </asp:DropDownList>
           <asp:Label ID="lblFileSizeNote" runat="server" ResourceKey="lblFileSizeNote" CssClass="normal"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <asp:Label ID="lblValidationType" runat="server" resourcekey="lblAllowFileType.Text"  CssClass="DCC_NormalText"></asp:Label>
        </td>
        <td align="left" valign="top">
            <asp:TextBox ID="txtFiletype" runat="server" Text="pdf,doc,txt,jpg,png,gif" Width="90%" CssClass="CFC_NormalTextBox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVFileType" ControlToValidate="txtFiletype" runat="server" ErrorMessage="*" CssClass="NormalRed"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="lblCommaSeperatedTxt" runat="server" Text="Seperated by (,)comma Only" CssClass="Normal"
                                ForeColor="Gray"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <asp:Label ID="lblRequired" runat="server" resourcekey="lblRequiredField.Text" CssClass="DCC_NormalText"></asp:Label>
        </td>
        <td align="left" valign="top">
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
    <tr align="left">
        <td colspan="2" align="left" valign="top">
            <asp:DataList ID="dlstFileUpload" Width="100%" runat="server" BackColor="White" BorderWidth="0px"
                CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <ItemTemplate>
                    <table width="99%">
                        <tr>
                            <td style="width:35%">
                                <asp:Label ID="lblCaptionText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaption.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="DCC_NormalText"></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtCaptionValue" runat="server" TextMode="MultiLine" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).Caption %>" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblreqiredfieldtext" ResourceKey="lblreqiredfieldtext"  CssClass="DCC_NormalText"   Text='<%#string.Format("{0} ({1})",Localization.GetString("lblreqiredfieldtext.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtreqiredfieldtext" Width="100%" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).Requiredfieldtext %>"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblvalidationerrortext" ResourceKey="lblvalidationerrortext" CssClass="DCC_NormalText"  Text='<%#string.Format("{0} ({1})",Localization.GetString("lblvalidationerrortext.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtvalidationerrortext" Width="100%" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).Validationerrortext %>"></asp:TextBox>
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
    <dnn:Label runat="server"  ID="lblMLHelpText" Visible="false" CssClass="CFC_NormalTextBox" Text="Tip to Enable MultiLanguage Features." HelpText="<b>Tip:</b> Since you have enabled more than one language on your site,<br/>you can keep Field Properties in different languages.<br/>Go to [Form Layout] page to Enable MultiLanguage Features."/>
    </td>
    </tr>
    <tr >
    <td align="center" colspan="2">
        <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="X-Small" ForeColor="Red" Visible="false"></asp:Label>
        </td>
    </tr>
</table>
