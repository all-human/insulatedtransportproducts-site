<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlDatePicker.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.Controls.CtrlDatePicker" %>
    <%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
    
 <script language="javascript" type="text/javascript">            
function calendarPicker(strTxtRef)
{
  window.open('./Controls/Calendar.aspx?field=' + strTxtRef   + 
      '','calendarPopup','titlebar=no,left=470,top=100,' + 
      'width=300,height=250,resizable=no');    
}        
</script>
<table style="background-color: White" width="100%">
<tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
     <tr>
        <td style="width:35%">
            <asp:Label ID="lblChooseDateFormatTxt" runat="server" CssClass="CF_Admin_NormalText" resourcekey="lblChooseDateFormatTxt.Text" ></asp:Label>
        </td>
        <td style="white-space:nowrap">
            <%--<asp:DropDownList ID="ddlDateFormat" runat="server">
                <asp:ListItem Selected="True">MM/DD/YYYY</asp:ListItem>
                <asp:ListItem>DD/MM/YYYY</asp:ListItem>
                <asp:ListItem>YYYY/MM/DD</asp:ListItem>
            </asp:DropDownList>--%>
            <asp:Label ID="lblDateFormat" runat="server" CssClass="CF_Admin_NormalText">&nbsp</asp:Label><asp:Label ID="lblDateSample" runat="server" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
        <dnn:Label runat="server" ID="lblDefaultDate"  CssClass="CF_Admin_NormalText" ResourceKey="lblDefaultDate" />
         
        </td>
        <td>
            <asp:TextBox ID="txtDefaultDate" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
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
        <td>
            <asp:Label ID="lblWidth" runat="server" resourcekey="lblWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth" MaxLength="3" runat="server" Width="71px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;<asp:Label ID="lblPix" runat="server" resourcekey="PixWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="CF_Header">
            Validation Rule</td>
        
    </tr>
    <tr>
        <td>
        <dnn:Label runat="server" ID="lblMinDate" CssClass="CF_Admin_NormalText" ResourceKey="lblMinDate"/>
           
        </td>
        <td>
            <asp:TextBox ID="txtMinDate" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
        <dnn:Label runat="server" ID="lblMaxDate" CssClass="CF_Admin_NormalText" ResourceKey="lblMaxDate"/>
            
        </td>
        <td>
            <asp:TextBox ID="txtMaxDate" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
        </td>
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
        <asp:DataList ID="dlstDatePicker" runat="server" BackColor="White" BorderWidth="0px"
            CellPadding="2" GridLines="Vertical" Width="100%">
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
                            <asp:TextBox ID="txtCaptionValue" runat="server" TextMode="MultiLine" Text="<%# ((mlContent)Container.DataItem).Caption %>"
                                Width="100%" CssClass="CFC_NormalTextBox"></asp:TextBox>
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
                        <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblvalidationdatepickertext" ResourceKey="lblvalidationdatepickertext" CssClass="CF_Admin_NormalText"  Text='<%#string.Format("{0} ({1})",Localization.GetString("lblvalidationerrortext.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtvalidationerrortext" Width="100%" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).Validationerrortext %>"></asp:TextBox>
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
        <asp:Label ID="lblErrMsgRequiredField" Font-Size="Small" ForeColor="Red" runat="server"   Visible="false"></asp:Label>
        </td>
    </tr>
</table>
