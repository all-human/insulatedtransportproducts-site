<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPicker" Src="ucCategoryPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="FreeVideoListSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.FreeVideoListSettings" %>

<div class="section Normal">
    <asp:Label ID="Label1" runat="server" resourcekey="GeneralOptions" CssClass="smallhead block"></asp:Label>
    <table cellpadding="3" width="100%">
        <tr>
            <td width="160" class="SubSubHead">
                <dnn:Label ID="plScope" runat="server" resourcekey="Scope">
                </dnn:Label></td>
            <td class="Normal">
                <asp:dropdownlist id="cboscope" runat="server" AutoPostBack="true">
                    <asp:listitem value="entirednn"></asp:listitem>
                    <asp:listitem value="portal"></asp:listitem>
                    <asp:listitem value="library"></asp:listitem>
                    <asp:listitem value="category"></asp:listitem>
                    <asp:listitem value="series"></asp:listitem>
                </asp:dropdownlist>
            </td>
        </tr>
        <tr id="trLibrary" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plLibrary" runat="server" resourcekey="Library">
                </dnn:Label></td>
            <td><asp:DropDownList ID="cboLibraries" DataValueField="ItemId" DataTextField="Library" runat="server" AutoPostBack="True" style="min-width:150px;"></asp:DropDownList></td>
        </tr>
        <tr id="trCategory" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plCategory" runat="server" resourcekey="Category">
                </dnn:Label></td>
            <td><asp:DropDownList ID="cboCategories" DataValueField="ItemId" DataTextField="Category" runat="server" style="min-width:150px;"></asp:DropDownList></td>
        </tr>
        <tr id="trSeries" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plSeries" runat="server" resourcekey="Series">
                </dnn:Label></td>
            <td><asp:Textbox ID="txtSeriesId" runat="server" style="min-width:150px;"></asp:Textbox></td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plSortBy" runat="server" resourcekey="SortBy"></dnn:Label></td>
            <td>
                <asp:DropDownList ID="cboTypes" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plTimeline" runat="server" resourcekey="Timeline"></dnn:Label></td>
            <td>
                <asp:DropDownList ID="cboTimeline" Width="128" runat="server">
                    <asp:ListItem Text="24Hours" Value="1"></asp:ListItem>
                    <asp:ListItem Text="2Days" Value="2"></asp:ListItem>
                    <asp:ListItem Text="3Days" Value="3"></asp:ListItem>
                    <asp:ListItem Text="4Days" Value="4"></asp:ListItem>
                    <asp:ListItem Text="5Days" Value="5"></asp:ListItem>
                    <asp:ListItem Text="AWeek" Value="7"></asp:ListItem>
                    <asp:ListItem Text="10Days" Value="10"></asp:ListItem>
                    <asp:ListItem Text="2Weeks" Value="14"></asp:ListItem>
                    <asp:ListItem Text="AMonth" Value="30"></asp:ListItem>
                    <asp:ListItem Text="3Months" Value="91"></asp:ListItem>
                    <asp:ListItem Text="HalfAYear" Value="183"></asp:ListItem>
                    <asp:ListItem Text="AYear" Value="365"></asp:ListItem>
                    <asp:ListItem Text="AllTime" Value="0"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plVideoCount" runat="server" resourcekey="VideoCount">
                </dnn:Label></td>
            <td>
                <asp:DropDownList ID="cboMaxResults" Width="128" runat="server">
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="15"></asp:ListItem>
                    <asp:ListItem Value="25"></asp:ListItem>
                    <asp:ListItem Value="50"></asp:ListItem>
                    <asp:ListItem Value="100"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plColumns" runat="server" resourcekey="Columns"></dnn:Label></td>
            <td>
                <asp:DropDownList ID="cboColumns" runat="server">
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                        <asp:ListItem Value="6"></asp:ListItem>
                                        <asp:ListItem Value="7"></asp:ListItem>
                                        <asp:ListItem Value="8"></asp:ListItem>
                                        <asp:ListItem Value="9"></asp:ListItem>
                                        <asp:ListItem Value="10"></asp:ListItem>
                                    </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plFeaturedOnly" runat="server" resourcekey="FeaturedOnly">
                </dnn:Label></td>
            <td>
                <asp:CheckBox ID="chkFeaturedOnly" resourcekey="Yes" runat="server"></asp:CheckBox>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plPlayInLightbox" runat="server" resourcekey="PlayInLightbox">
                </dnn:Label></td>
            <td>
                <asp:CheckBox ID="chkPlayInLightbox" resourcekey="Yes" runat="server"></asp:CheckBox>
            </td>
        </tr>
    </table>
</div>

<div class="section">
    <asp:Label ID="Label2" runat="server" resourcekey="DisplayTemplates" CssClass="smallhead block"></asp:Label>
        <table cellpadding="3" width="100%">
        <tr>
            <td width="160" class="SubSubHead">
                <dnn:Label ID="plHtmlHeader" resourcekey="HtmlHeader" runat="server">
                </dnn:Label></td>
            <td>
                <asp:TextBox ID="txtHtmlHeader" runat="server" Rows="2" TextMode="MultiLine" Width="500"
                    CssClass="NormalTextBox"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plHtmlBody" resourcekey="HtmlBody" runat="server">
                </dnn:Label>
            </td>
            <td>
                <asp:TextBox ID="txtHtmlBody" runat="server" Rows="5" TextMode="MultiLine" Width="500"
                    CssClass="NormalTextBox expandable">
                </asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plHtmlFooter" resourcekey="HtmlFooter" runat="server">
                </dnn:Label></td>
            <td>
                <asp:TextBox ID="txtHtmlFooter" runat="server" Rows="2" TextMode="MultiLine" Width="500"
                    CssClass="NormalTextBox"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plHtmlSeparator" resourcekey="HtmlSeparator" runat="server">
                </dnn:Label></td>
            <td>
                <asp:TextBox ID="txtHtmlSeparator" runat="server" Rows="2" TextMode="MultiLine" Width="500"
                    CssClass="NormalTextBox"></asp:TextBox></td>
        </tr>
    </table>

</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>