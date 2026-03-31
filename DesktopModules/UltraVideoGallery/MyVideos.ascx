<%@ Control Language="vb" AutoEventWireup="false" Codebehind="MyVideos.ascx.vb" Inherits="BizModules.UltraVideoGallery.MyVideos" %>
<%@ Register TagPrefix="uc1" TagName="SortByPicker" Src="ucSortByPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SeriesPicker" Src="ucSeriesPicker.ascx" %>

<asp:Panel ID="pnlMyVideos" runat="server">
<table width="100%" class="Normal">
<tr>
<td class="filters" style="width:240px;vertical-align:top;">
    <div class="section">
    <div class="smallhead"><asp:Label ID="Label5" runat="server" resourcekey="Filters"></asp:Label></div>

    <asp:Panel runat="server" ID="pnlLibraries">
    <div class="SubHead second"><asp:Label ID="Label15" runat="server" resourcekey="Library"></asp:Label></div>
    <asp:DropDownList ID="cboLibraries" DataValueField="ItemId" DataTextField="Library" runat="server" AutoPostBack="True" class="Normal" style="min-width:150px;"></asp:DropDownList>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlSuperMode">
    <div class="SubHead second"><asp:Label ID="Label16" runat="server" resourcekey="SuperMode"></asp:Label></div>
    <asp:checkbox id="chkSuperMode" runat="server" resourcekey="SuperMode.Help" checked="False" AutoPostBack="True"></asp:checkbox>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlCategories">
    <div class="SubHead second"><asp:Label ID="Label13" runat="server" resourcekey="Category"></asp:Label></div>
    <div class="verticalMiddle">
    <asp:DropDownList ID="cboCategories" DataValueField="ItemId" DataTextField="Category" runat="server" AutoPostBack="False" class="Normal" style="min-width:150px;"></asp:DropDownList>
    <asp:ImageButton ID="imgFilterCategory" runat="server" ImageUrl="~/Images/login.gif"></asp:ImageButton>
    </div>
    </asp:Panel>

    <div class="SubHead second"><asp:Label ID="Label3" runat="server" resourcekey="Search"></asp:Label></div>
    <div class="verticalMiddle">
    <asp:TextBox ID="txtSearchKey" runat="server" Width="150px" CssClass="NormalTextBox"></asp:TextBox>
    <asp:ImageButton ID="imgSearch" runat="server" ImageUrl="~/Images/view.gif"></asp:ImageButton>
    </div>

    <div class="SubHead second"><asp:Label ID="Label12" runat="server" resourcekey="Series"></asp:Label></div>
    <table border="0" cellpadding="0" cellspacing="0" style="margin:0px;"><tr><td>
    <uc1:seriespicker id="ucSeriespicker1" runat="server" AllowAdd="False"></uc1:seriespicker>
    </td><td>
    <asp:ImageButton ID="imgFilterSeries" runat="server" ImageUrl="~/Images/login.gif"></asp:ImageButton>
    </td></tr></table>
    </div>

    <asp:Panel ID="pnlSeries" runat="server" CssClass="section">
    <div class="smallhead"><asp:Label ID="Label4" runat="server" resourcekey="MySeries"></asp:Label></div>
    <div style="overflow: scroll; overflow-x: hidden;">
    <asp:DataGrid ID="lstSeries" runat="server" Width="100%" CellSpacing="0" CellPadding="0"
        BorderWidth="0px" AutoGenerateColumns="False"
        GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateColumn>
                <ItemTemplate>
                <asp:Hyperlink ID="lnkSeries" runat="server" Text="<%# Container.DataItem.Title %>" NavigateUrl='<%#NavigateURL(TabId, "", "mid=" + ModuleId.ToString + "&ctl=EditSeries&ItemId=" + Container.DataItem.ItemId.ToString) %>' />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle Mode="NumericPages" HorizontalAlign="center" CssClass="datagridpager"></PagerStyle>
    </asp:DataGrid>
    </div>
    </asp:Panel>

    <asp:Panel runat="server" ID="pnlFTP" CssClass="section">
    <div class="smallhead"><asp:Label ID="Label14" runat="server" resourcekey="FTPUpload"></asp:Label> (<asp:linkbutton id="lnkHide" runat="server" resourcekey="Hide" tooltip="Hide this section"></asp:linkbutton>)</div>
    <div class="message"><asp:Label ID="lblFTPUpload" runat="server"></asp:Label></div>
    <asp:DataGrid ID="lstFiles" runat="server" Width="100%" CellSpacing="2" CellPadding="0"
        BorderWidth="0px" AutoGenerateColumns="False" 
        GridLines="None" ShowHeader="False">
        <Columns>
            <asp:TemplateColumn>
                <ItemTemplate>
                <asp:CheckBox ID="chkFile" runat="server" Text="<%# Container.DataItem %>" />
                </ItemTemplate>
            </asp:TemplateColumn>
        </Columns>
        <PagerStyle Mode="NumericPages" HorizontalAlign="center" CssClass="datagridpager"></PagerStyle>
    </asp:DataGrid>

      <ul class="dnnActions dnnClear">
        <li><asp:LinkButton id="btnSync" runat="server" CssClass="dnnPrimaryAction" resourcekey="Synchronize" /></li>
        <li><asp:LinkButton class="dnnSecondaryAction" id="btnDelete" runat="server" resourcekey="cmdDelete"
                    causesvalidation="False"></asp:LinkButton></li>
      </ul>
  </asp:Panel>

</td>
<td style="vertical-align:top;">
    <div class="overall">
        <table cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td width="60" align="right" class="Normal">
                    <asp:Label ID="Label2" runat="server" resourcekey="SortBy" CssClass="greytext"></asp:Label>:
                </td>
                <td style="padding-left: 5px">
                    <uc1:SortByPicker id="ucSortByPicker1" runat="server"></uc1:SortByPicker></td>
                <td align="right" class="Normal">
                    <asp:Label ID="lblXToYOfZ" runat="server" class="greytext"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    <asp:DataGrid ID="lstVideos" runat="server" Width="100%" CellSpacing="2" CellPadding="0"
    BorderWidth="0px" AutoGenerateColumns="False" PageSize="15" AllowPaging="True"
    GridLines="None" ShowHeader="False">
    <ItemStyle CssClass="Normal"></ItemStyle>
    <Columns>
        <asp:TemplateColumn>
            <ItemTemplate>
                <hr id="hrtop" class="uvghr" runat="server" visible="<%# Container.DataSetIndex > 0%>" />
                <table border="0" width="100%">
                    <tr>
                        <td align="center" width="130">
                            <div style="position:relative;">
                            <img alt="screenshot" src='<%#Container.DataItem.SafeThumbnail%>' border="1" width="<%=UVGSettings.ScreenshotWidth %>" />
                            <asp:Label ID="lblPending" runat="server" CssClass="pending" Visible="<%#Not Container.DataItem.Approved%>"></asp:Label>
                            </div>
                        </td>
                        <td>
                            <table width="100%" cellpadding="3">
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td>
                                                    <span class="SubHead">
                                                        <%# Container.DataItem.Title %>
                                                    </span>
                                                </td>
                                                <td align="right" class="Normal">
                                                    <asp:HyperLink ID="lnkPlay" runat="server" Text='<%#Localize("Play") %>' NavigateUrl='<%#Container.DataItem.PlayUrl() %>' Target="_blank"></asp:HyperLink>
                                                    &nbsp;
                                                    <asp:HyperLink ID="lnkEdit" runat="server" Text='<%#Localize("Edit") %>' NavigateUrl='<%#NavigateURL(TabId, "", "mid=" + ModuleId.ToString + "&ctl=Edit&ItemId=" + Container.DataItem.ItemId.ToString) %>' Target="_blank"></asp:HyperLink>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:Label ID="Label8" runat="server" resourcekey="RawFile" CssClass="greytext"></asp:Label> <%#GetRawFile(Container.DataItem)%>                                                                
                                    </td>
                                </tr>
                                <tr>
                                    <td class="Normal" style="width:62%;">
                                        <asp:Label ID="Label9" runat="server" resourcekey="Date" CssClass="greytext"></asp:Label><%# GetCreatedDate(Container.DataItem.CreatedDate.ToString, SharedResourceFile) %>
                                                                
                                    </td>
                                    <td class="Normal">
                                        <asp:Label ID="Label1" runat="server" resourcekey="Length" CssClass="greytext"></asp:Label> <%#GetFriendlyVideoLength(Container.DataItem.Length)%>
                                                                
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
</td>
</tr>
</table>
</asp:Panel>
