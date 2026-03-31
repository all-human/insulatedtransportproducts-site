<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlAutoIncrementField.ascx.cs" Inherits="DNNCentric.MultilanguageForms.Controls.CtrlAutoIncrementField" %>

<table cellpadding="2" cellspacing="2" border="0" width="100%">
 <tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
 <tr>
   <td style="width:35%">
    <asp:Label ID="lblPrefix" runat="server" ResourceKey="lblPrefix" class="CF_Admin_NormalText"></asp:Label>
   </td>
   <td>
    <asp:TextBox ID="txtPrefix" runat="server" Width="300px" CssClass="CFC_NormalTextBox" ></asp:TextBox>
   </td>
 </tr>
  <tr>
   <td style="width:35%">
    <asp:Label ID="lblStartNumber" ResourceKey="lblStartNumber" runat="server" class="CF_Admin_NormalText"></asp:Label>
   
   </td>
   <td>
    <asp:TextBox ID="txtStartNumber" runat="server" Width="300px" CssClass="CFC_NormalTextBox"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvNumber" runat="server" ErrorMessage="*" CssClass="NormalRed" ControlToValidate="txtStartNumber" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="revNumericVal" runat="server" ControlToValidate="txtStartNumber"
            ErrorMessage="Enter only Numbers" ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator>
   </td>
 </tr>
  <tr>
   <td style="width:35%">
    <asp:Label ID="lblsuffix" runat="server" ResourceKey="lblsuffix" class="CF_Admin_NormalText"></asp:Label>
   </td>
   <td>
    <asp:TextBox ID="txtSuffix" runat="server" Width="300px" CssClass="CFC_NormalTextBox"></asp:TextBox>
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
        <td colspan="2">
            <asp:DataList ID="dlstTextBox" runat="server" width="100%" BackColor="White" BorderWidth="0px" CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <ItemTemplate>
                    <table id="tblML" runat="server" width="99%">
                        <tr>
                            <td style="width:35%">
                                <asp:Label ID="lblCaptionText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaption.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="CF_Admin_NormalText"></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtCaptionValue" runat="server" TextMode="MultiLine" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).Caption %>" Width="100%"></asp:TextBox>
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
</table>