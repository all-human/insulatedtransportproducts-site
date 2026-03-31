<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlMLSubmitImage.ascx.cs" Inherits="DNNCentric.MultilanguageForms.MiscControls.CtrlMLSubmitImage" %>
<%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>
<script language="javascript" type="text/javascript">
function getvalue(par)
{
var msg="Are u sure want to delete " + par +" Image? " ;
return confirm(msg);

}
</script>


 <table width="100%" >
                    
                    <tr>
                        <td >
                            <asp:GridView ID="gvSubmitBtnImage" Width="100%" AutoGenerateColumns="false" EmptyDataText="No Record(s) Found!" 
                                runat="server" CellPadding="3" ForeColor="#333333" GridLines="None">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <EmptyDataRowStyle CssClass="Normal" BorderColor="Blue" BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderStyle-Wrap="false" HeaderStyle-Width="35%" HeaderText="Submit Button Image">
                                    <ItemStyle HorizontalAlign="Center"  Wrap="false"/>
                                        <ItemTemplate >
                                        <img alt="Image Missing" id="imgSubmitImage"  src="<%# ((SubmitBtnImage)Container.DataItem).ImagePath %>"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Culture">
                                     <ItemStyle HorizontalAlign="Center"  Wrap="false" />
                                     <ItemTemplate>
                                        <asp:Label ID="lblCulture" runat="server" Text="<%# ((SubmitBtnImage)Container.DataItem).Culture %>"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                     <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Delete">
                                     <ItemStyle HorizontalAlign="Center" />
                                     <ItemTemplate>
                                         <asp:ImageButton ID="imgbtnDelete" OnClick="delete_click" runat="server" CommandArgument="<%# ((SubmitBtnImage)Container.DataItem).ImageName %>" OnClientClick=<%#"return getvalue('" + ((SubmitBtnImage)Container.DataItem).Culture + ","+ "');"%> ImageUrl='<%# Common.GetImagePath("delete-icon.jpg")%>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#999999" />
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td style="white-space: nowrap">
                            <asp:DropDownList ID="ddlShowCulture" runat="server" CssClass="CFC_NormalTextBox">
                            </asp:DropDownList>
                            <asp:FileUpload ID="fupldButtonImage" runat="server" />
                            <asp:Button ID="btnUploadImage" runat="server" resourcekey="btnUploadImage.Text"  OnClick="btnUploadImage_Click" />
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
                            &nbsp;<asp:LinkButton ID="lnkBackPnlImageButtonText" runat="server" OnClick="lnkBackPnlImageButtonText_Click"
                                resourcekey="lblBtnBack.Text"  CssClass="NormalBold"></asp:LinkButton>
                    </td>
                    </tr>
                </table>
                <table>
                </table>