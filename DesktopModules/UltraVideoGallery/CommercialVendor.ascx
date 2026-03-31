<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CommercialVendor.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.CommercialVendor" %>
<table width="100%">
    <tr>
        <td class="twocolleft">
        <div class="section">
            <div class="smallhead"><asp:Label ID="Label8" runat="server" resourcekey="VendorCommercials">
                        </asp:Label></div>
                <asp:DataGrid ID="lstCommercial" runat="server" Width="100%" CellSpacing="5" CellPadding="0"
                    BorderWidth="0px" AutoGenerateColumns="False" GridLines="None">
                    <ItemStyle CssClass="Normal"></ItemStyle>
                    <HeaderStyle CssClass="SubHead" />
                    <Columns>
                        <asp:TemplateColumn>
                            <ItemTemplate>
                                <a href='<%#NavigateURL(TabId, "", "mid=" + ModuleId.ToString + "&ctl=Commercial&VendorId=" + ItemId.ToString + "&ItemId=" + Container.DataItem.ItemId.ToString) %>'>
                                    <asp:Image runat="server" ID="imgEdit" ImageUrl="~/images/edit.gif"></asp:Image>
                                </a>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="Title" HeaderText="Name"></asp:BoundColumn>
                        <asp:TemplateColumn HeaderText="Type">
                            <ItemTemplate>
                                <%#ShowType(Container.DataItem.Type.ToString)%>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:TemplateColumn HeaderText="Scope">
                            <ItemTemplate>
                                <%#ShowScope(Container.DataItem.Scope.ToString) %>
                            </ItemTemplate>
                        </asp:TemplateColumn>
                        <asp:BoundColumn DataField="MaxImpressions" HeaderText="MaxImpressions" DataFormatString="{0:N0}"
                            ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundColumn DataField="CPM" HeaderText="CPM" DataFormatString="{0:C}" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundColumn DataField="Impressions" HeaderText="Impressions" DataFormatString="{0:N0}"
                            ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundColumn DataField="Clicks" HeaderText="Clicks" DataFormatString="{0:N0}"
                            ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundColumn DataField="StartDate" DataFormatString="{0:d}" HeaderText="Start" />
                        <asp:BoundColumn DataField="EndDate" DataFormatString="{0:d}" HeaderText="End" />
                    </Columns>
                    <PagerStyle Mode="NumericPages" HorizontalAlign="center" CssClass="Pager"></PagerStyle>
                </asp:DataGrid>
        </div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdAdd" runat="server" CssClass="dnnPrimaryAction" resourcekey="Add" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>

        </td>
        <td style="vertical-align:top;">
        <div class="section">
            <div class="smallhead"><asp:Label ID="lblVendorName" runat="server">
                        </asp:Label></div>
            <table cellpadding="3" cellspacing="0" width="100%">
                <tr>
                    <td>
                        <asp:Label ID="lblAddress" runat="server">
                        </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" resourcekey="Telephone">
                        </asp:Label>:
                        <asp:Label ID="lblTelephone" runat="server">
                        </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" resourcekey="Email">
                        </asp:Label>:
                        <asp:Label ID="lblEmail" runat="server">
                        </asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" resourcekey="Status">
                        </asp:Label>:
                        <asp:DropDownList ID="cboStatus" runat="server" AutoPostBack="True" Width="120px" class="NormalTextBox">
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>

        </td>
    </tr>
</table>
