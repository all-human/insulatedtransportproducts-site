<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Commercial.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.Commercial" %>
<table>
    <tr>
        <td class="twocolleft">
        <div class="section">
            <div class="smallhead"><asp:Label ID="Label2" runat="server" resourcekey="Vendors">
                        </asp:Label></div>
            <asp:DataGrid ID="lstVendor" runat="server" Width="100%" CellSpacing="5" CellPadding="0"
                BorderWidth="0px" AutoGenerateColumns="False" GridLines="None">
                <ItemStyle CssClass="Normal"></ItemStyle>
                <HeaderStyle CssClass="SubHead" />
                <Columns>
                    <asp:TemplateColumn>
                        <ItemTemplate>
                            <a href='<%#NavigateURL(TabId, "", "mid=" + ModuleId.ToString + "&ctl=Vendor&ItemId=" + Container.DataItem.VendorId.ToString) %>'>
                                <asp:Image runat="server" ID="imgEdit" ImageUrl="~/images/view.gif"></asp:Image>
                            </a>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="VendorName" HeaderText="VendorName"></asp:BoundColumn>
                    <asp:TemplateColumn HeaderText="Address">
                        <ItemTemplate>
                            <%#FormatAddress(Container.DataItem.Unit, Container.DataItem.Street, Container.DataItem.City, Container.DataItem.Region, Container.DataItem.Country, Container.DataItem.PostalCode)%>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn DataField="Telephone" HeaderText="Telephone"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Email" HeaderText="Email"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Banners" HeaderText="Commercials" ItemStyle-HorizontalAlign="Center">
                    </asp:BoundColumn>
                </Columns>
                <PagerStyle Mode="NumericPages" HorizontalAlign="center" CssClass="Pager"></PagerStyle>
            </asp:DataGrid>
        </div>
        </td>
        <td>
        <div class="section">
            <div class="smallhead"><asp:Label ID="Label1" runat="server" resourcekey="AboutVendor">
                        </asp:Label></div>
            <asp:Label ID="Label5" resourcekey="AboutVendor.Help" runat="server">
                        </asp:Label>
        </div>
        </td>
    </tr>
</table>
