<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlMLSubmitText.ascx.cs" Inherits="DNNCentric.MultilanguageForms.MiscControls.CtrlMLSubmitText" %>

 <table width="100%">
                    <tr>
                        <td align="left">
                            <asp:DataList ID="DLButtonText" runat="server" Visible="true" Width="100%" BackColor="White"
                                BorderWidth="2px" CellPadding="2" GridLines="Vertical">
                                <ItemStyle Wrap="false" />
                                <ItemTemplate>
                                    <table width="100%">
                                        <tr>
                                            <td align="left" style="width: 35%">
                                                <asp:Label ID="lblSubmitBtnText"  runat="server" CssClass="DCC_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblSubmitCaption.Text", UserResourceFile),((ButtonText)Container.DataItem).Culture) %>'></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtSubmitBtn" CssClass="CFC_NormalTextBox" Width="220px" runat="server" Text="<%# ((ButtonText)Container.DataItem).SubmitButtonText %>"></asp:TextBox>
                                                <asp:HiddenField ID="hfCulture" runat="server" Value="<%# ((ButtonText)Container.DataItem).Culture %>" />
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
            <asp:Label ID="lblUserMsg" runat="server" Font-Size="Small" ForeColor="Red"
                Visible="false"></asp:Label>
        </td>
    </tr>
                    <tr>
                        <td align="center">
                            <asp:LinkButton ID="lnkSavePnlButtonText" runat="server" resourcekey="lblbtnSave.Text" CssClass="NormalBold"
                                OnClick="lnkSavePnlButtonText_Click"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="lnkBackPnlButtonText" runat="server" OnClick="lnkBackPnlButtonText_Click"
                                resourcekey="lblBtnBack.Text"  CssClass="NormalBold"></asp:LinkButton>
                        </td>
                    </tr>
                </table>