<%@ Register TagPrefix="uc1" TagName="CategoryPicker" Src="ucCategoryPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="EditSeries.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.EditSeries" %>

<div class="section">
    <div class="head"><asp:Label ID="Label2" runat="server" resourcekey="Videos"></asp:Label></div>
    <div>
        <asp:DataGrid ID="lstVideos" runat="server" Width="100%" CellSpacing="2" CellPadding="0"
        BorderWidth="0px" AutoGenerateColumns="False" GridLines="None" ShowHeader="False">
        <ItemStyle CssClass="Normal"></ItemStyle>
        <Columns>
            <asp:TemplateColumn>
                <ItemTemplate>
                    <hr id="hrtop" class="uvghr" runat="server" visible="<%# Container.DataSetIndex > 0%>" />
                    <table border="0" width="100%">
                        <tr>
                            <td align="center" width="130">
                                <img alt="screenshot" src='<%#Container.DataItem.Thumbnail%>' border="1" width="<%=UVGSettings.ScreenshotWidth %>" />
                            </td>
                            <td>
                                <table width="100%" cellpadding="5">
                                    <tr>
                                        <td colspan="2">
                                        <div style="float:left;"><asp:label ID="lblTitle" runat="server" CssClass="SubHead" Text='<%# Container.DataItem.Title %>'></asp:label>
                                        (<asp:HyperLink ID="lnkPlay" runat="server" resourcekey="Play" NavigateUrl='<%#Container.DataItem.PlayUrl() %>'></asp:HyperLink>)
                                        </div>
                                        <div style="text-align:right;">
                                        <asp:ImageButton runat="server" ID="cmdUp" ImageUrl="~/DesktopModules/UltraVideoGallery/images/up.png" CssClass='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>' OnClick="cmdButton_Click" />
                                        <asp:ImageButton runat="server" ID="cmdTop" ImageUrl="~/DesktopModules/UltraVideoGallery/images/top.png" CssClass='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>' OnClick="cmdButton_Click" />
                                        <asp:ImageButton runat="server" ID="cmdDown" ImageUrl="~/DesktopModules/UltraVideoGallery/images/down.png" CssClass='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>' OnClick="cmdButton_Click" />
                                        <asp:ImageButton runat="server" ID="cmdBottom" ImageUrl="~/DesktopModules/UltraVideoGallery/images/bottom.png" CssClass='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>' OnClick="cmdButton_Click" />

                                        <asp:ImageButton runat="server" ID="cmdStop" ImageUrl="~/DesktopModules/UltraVideoGallery/images/UnLink.gif" CssClass='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>' OnClick="cmdButton_Click" />
                                        </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="62%" class="Normal">
                                        <asp:Label ID="Label7" runat="server" resourcekey="Added" CssClass="greytext"></asp:Label>: 
                                                <%# Container.DataItem.CreatedDate.ToString %>
                                        </td>
                                        <td class="Normal">
                                            <asp:Label ID="Label6" runat="server" resourcekey="Time" CssClass="greytext"></asp:Label>: 
                                                <%#GetFriendlyVideoLength(Container.DataItem.Length)%>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="Normal">
                                            <asp:Label ID="Label8" runat="server" resourcekey="RawFile" CssClass="greytext"></asp:Label>: 
                                                <%# GetRawFile(Container.DataItem)%>
                                        </td>
                                        <td class="Normal">
                                            <asp:Label ID="Label9" runat="server" resourcekey="Views" CssClass="greytext"></asp:Label>: 
                                                <%# Container.DataItem.Views.ToString %>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle Mode="NumericPages" HorizontalAlign="center" CssClass="Pager"></PagerStyle>
    </asp:DataGrid>

    </div>
</div>

<div class="section">
<div class="head"><asp:Label ID="Label7" runat="server" resourcekey="plSeriesTitle"></asp:Label></div>
<div>
    <div class="SubHead">
    <asp:Label ID="Label4" runat="server" resourcekey="plSeriesTitle">
                                    </asp:Label>
    </div>
    <asp:TextBox ID="txtSeriesTitle" runat="server" CssClass="NormalTextBox" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtSeriesTitle"></asp:RequiredFieldValidator>
    <div class="SubHead second">
    <asp:Label ID="Label10" runat="server" resourcekey="NoOfVideos"></asp:Label>
    </div>
    <asp:Label ID="lblNoOfVideos" runat="server"></asp:Label>
    </div>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="btnSave" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="btnDelete" runat="server" resourcekey="cmdDelete"
                causesvalidation="False"></asp:LinkButton></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="btnCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>
