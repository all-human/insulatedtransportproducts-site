<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlHiddenField.ascx.cs" Inherits="DNNCentric.MultilanguageForms.Controls.CtrlHiddenField" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table style="background-color: White" width="100%">
   
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr align="left">
        <td colspan="2" class="CF_Header" >
            <asp:Label ID="lbllangDependTxt" resourcekey="lbllangDependTxt.Text" runat="server"
                ></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:DataList ID="dlstHiddenField" runat="server" Width="100%" BackColor="White"
                BorderWidth="0px" CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table width="99%">
                       <tr>
                            <td style="width:30%">
                            <dnn:Label ID="lblValueToInitial" runat="server" ResourceKey="lblValueToInitial"  Text='<%#string.Format("{0} ({1})",Localization.GetString("lblValueToInitialize.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'   CssClass="DCC_NormalText" />
                                <asp:HiddenField runat="server" id="hfCulture" Value="<%# ((mlContent)Container.DataItem).Culture %>" />
                            </td>
                            <td>
                                <asp:TextBox ID="txtDefault" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).DefaultValue %>"  Width="100%"></asp:TextBox>
                    
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