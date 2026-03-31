<%@ Control Language="vb" AutoEventWireup="false" Codebehind="PendingVideos.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.PendingVideos" %>

    <div class="section">
    <div class="head"><asp:Label ID="Label5" runat="server" resourcekey="PendingApproval"></asp:Label></div>
    <asp:DataGrid ID="lstVideos" runat="server" Width="100%" CellSpacing="2" CellPadding="0"
                BorderWidth="0px" AutoGenerateColumns="False" PageSize="15" AllowPaging="True"
                GridLines="None" ShowHeader="False">
                <ItemStyle CssClass="Normal"></ItemStyle>
                <Columns>
                    <asp:TemplateColumn ItemStyle-HorizontalAlign="Center">
                        <ItemTemplate>
                <hr id="hrtop" class="uvghr" runat="server" visible="<%# Container.DataSetIndex > 0%>" />
                <table border="0" width="100%">
                    <tr>
                        <td align="center" width="130">
                            <img alt="screenshot" src='<%#Container.DataItem.SafeThumbnail%>' border="1" width="<%=UVGSettings.ScreenshotWidth %>" />
                        </td>
                        <td>
                            <table width="100%" cellpadding="3">
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <asp:label ID="lblTitle" runat="server" CssClass="SubHead" Text='<%# Container.DataItem.Title %>'></asp:label>
                                                    (<asp:HyperLink ID="HyperLink1" runat="server" resourcekey="Play" NavigateUrl='<%#Container.DataItem.PlayUrl() %>'></asp:HyperLink>)
                                                </td>
                                                <td align="right" class="Normal">
                                                    <asp:CheckBox runat="server" ID="chkVideo" ToolTip='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>'>
                                        </asp:CheckBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="62%" class="Normal">
                                        <asp:Label ID="Label4" runat="server" resourcekey="RawFile" CssClass="greytext"></asp:Label> <%#GetRawFile(Container.DataItem)%>                                                                
                                    </td>
                                    <td class="Normal">
                                        <asp:Label ID="Label5" runat="server" resourcekey="Time" CssClass="greytext"></asp:Label> <%#GetFriendlyVideoLength(Container.DataItem.Length)%>
                                                                
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Normal">
                                        <asp:Label ID="Label11" runat="server" resourcekey="SeriesOrCategory" CssClass="greytext"></asp:Label> <%#ShowSeriesOrCategory(Container.DataItem)%>
                                                                
                                    </td>
                                    <td class="Normal">
                                        <asp:Label ID="Label2" runat="server" resourcekey="From" CssClass="GreyText"></asp:Label><%#GetCreatedByUser(Container.DataItem.CreatedByUser)%>
                                                                
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Normal">
                                        <asp:Label ID="Label10" runat="server" resourcekey="Tags" CssClass="taglistlabel greytext"></asp:Label> <%#FormatTags(Container.DataItem.TagString)%>                                                                
                                    </td>
                                    <td class="Normal">
                                        <asp:Label ID="Label14" runat="server" resourcekey="Added" CssClass="greytext"></asp:Label> <%# GetCreatedDate(Container.DataItem.CreatedDate.ToString, SharedResourceFile) %>                                                                
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>

                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <PagerStyle Mode="NumericPages" HorizontalAlign="center" CssClass="datagridpager"></PagerStyle>
            </asp:DataGrid>
    </div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdApprove" runat="server" CssClass="dnnPrimaryAction" resourcekey="Approve" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdReject" runat="server" resourcekey="Reject"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>