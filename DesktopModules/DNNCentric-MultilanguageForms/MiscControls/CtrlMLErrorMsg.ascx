<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlMLErrorMsg.ascx.cs" Inherits="DNNCentric.MultilanguageForms.MiscControls.CtrlMLErrorMsg" %>

 <table width="100%"  cellpadding="0" cellspacing="0">
                    <tr style="height: 10px">
                        <td colspan="2" >
                        </td>
                    </tr>
                    <tr >
                        <td align="right">
                            <asp:Label ID="lblFieldValue" runat="server" CssClass="SubHead" resourcekey="lblFieldValue.Text" ></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlDefaultErrorMsg" CssClass="CFC_NormalTextBox" runat="server" Width="170px" AutoPostBack="True"
                                OnSelectedIndexChanged="ddlFieldType_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr style="height: 15px" >
                        <td colspan="2">
                        &nbsp;
                        </td>
                    </tr>
                    <tr >
                        <td align="left" valign="top" colspan="2">
                            <asp:Label ID="lblTitleMessage" runat="server" CssClass="SubHead" resourcekey="lblTitleMessage.Text"></asp:Label>
                        </td>
                    </tr>
                    <tr style="height: 10px;">
                        <td colspan="2">
                        </td>
                    </tr>
                    <tr >
                        <td align="left" colspan="2">
                            <asp:DataList ID="DLErrorMsg" runat="server" Visible="true" Width="100%" BackColor="White"
                                BorderWidth="2px" CellPadding="4" GridLines="Vertical">
                                <ItemStyle Wrap="false" />
                                <ItemTemplate>
                                    <asp:TextBox ID="txtErrorMsg" Width="85%" runat="server" Text="<%# ((ErrorMessage)Container.DataItem).ErrorMessageText %>"></asp:TextBox>
                                    <asp:Label ID="lblCultureTxt"  runat="server" CssClass="DCC_NormalText" Text="<%# ((ErrorMessage)Container.DataItem).Culture %>"></asp:Label>
                                </ItemTemplate>
                                <AlternatingItemStyle BackColor="#DCDCDC" />
                                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr >
                        <td colspan="2" align="center" valign="top">
                            <asp:Label ID="lblErrorMessage" Visible="false" ForeColor="Red" runat="server" Font-Size="Smaller"></asp:Label>
                        </td>
                    </tr>
                     <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblUserMsg" runat="server" Font-Size="Small" ForeColor="Red"
                Visible="false"></asp:Label>
        </td>
    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:LinkButton ID="lnkSave" runat="server" resourcekey="lblbtnSave.Text" CssClass="NormalBold" OnClick="lnkSave_Click"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="lnkBack" runat="server" resourcekey="lblBtnBack.Text"  CssClass="NormalBold"
                                OnClick="lnkBack_Click"></asp:LinkButton>
                        </td>
                    </tr>
                </table>