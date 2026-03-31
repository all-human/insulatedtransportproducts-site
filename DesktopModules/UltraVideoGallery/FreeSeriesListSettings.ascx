<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPicker" Src="ucCategoryPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="FreeSeriesListSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.FreeSeriesListSettings" %>

<div class="Normal section">
    <asp:Label ID="Label1" runat="server" resourcekey="GeneralOptions" CssClass="head block"></asp:Label>
    <table class="settingtable">
        <tr>
            <td width="160" class="SubSubHead">
                <dnn:Label ID="plScope" runat="server" resourcekey="Scope">
                </dnn:Label></td>
            <td class="Normal">
                <asp:dropdownlist id="cboscope" runat="server" AutoPostBack="true">
                    <asp:listitem value="portal"></asp:listitem>
                    <asp:listitem value="library"></asp:listitem>
                    <asp:listitem value="currentuser"></asp:listitem>
                    <asp:listitem value="specificuser"></asp:listitem>
                    <asp:listitem value="userinqs"></asp:listitem>
                </asp:dropdownlist>
            </td>
        </tr>
        <tr id="trLibrary" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plLibrary" runat="server" resourcekey="Library">
                </dnn:Label></td>
            <td><asp:DropDownList ID="cboLibraries" DataValueField="ItemId" DataTextField="Library" runat="server" AutoPostBack="True" style="min-width:150px;"></asp:DropDownList></td>
        </tr>
        <tr id="trUserId" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plUserId" runat="server" resourcekey="UserId">
                </dnn:Label></td>
            <td><asp:Textbox ID="txtUserId" runat="server" style="min-width:150px;"></asp:Textbox></td>
        </tr>
        <tr id="trUserKey" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plUserKey" runat="server" resourcekey="UserKey">
                </dnn:Label></td>
            <td><asp:Textbox ID="txtUserKey" runat="server" style="min-width:150px;"></asp:Textbox></td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plSortBy" runat="server" resourcekey="SortBy"></dnn:Label></td>
            <td>
                <asp:DropDownList ID="cboTypes" runat="server">
                    <asp:ListItem Value="LastUseDate"></asp:ListItem>
                    <asp:ListItem Value="Alphabetical"></asp:ListItem>
                    <asp:ListItem Value="CreatedDate"></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="plMaxResults" runat="server" resourcekey="MaxResults">
                </dnn:Label></td>
            <td class="Normal">
                <asp:DropDownList ID="cboMaxResults" Width="128" runat="server" CssClass="Normal">
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
                <asp:DropDownList ID="cboColumns" runat="server" CssClass="Normal">
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
    </table>
</div>

<div class="section">
    <div class="head"><asp:Label ID="Label10" runat="server" resourcekey="DisplayTemplate" CssClass="SubSubHead"></asp:Label></div>
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