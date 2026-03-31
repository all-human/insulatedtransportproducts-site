<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ucColorPicker" Src="ucColorPicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="MediaCenterSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.MediaCenterSettings" %>

<div class="Normal section">
    <div class="head"><asp:Label ID="Label4" runat="server" resourcekey="MediaCenterSettings"></asp:Label></div>
    <table cellpadding="3" width="100%">
        <tr>
            <td width="160" class="SubSubHead">
                <dnn:Label ID="plScope" runat="server" resourcekey="Scope">
                </dnn:Label></td>
            <td>
                <asp:dropdownlist id="cboscope" runat="server" AutoPostBack="true">
                    <asp:listitem value="library"></asp:listitem>
                    <asp:listitem value="category"></asp:listitem>
                    <asp:listitem value="currentuser"></asp:listitem>
                    <asp:listitem value="specificuser"></asp:listitem>
                    <asp:listitem value="userinqs"></asp:listitem>
                </asp:dropdownlist>
            </td>
        </tr>
        <tr id="trLibrary" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plLibrary" runat="server" resourcekey="CategorySelection">
                </dnn:Label></td>
            <td><asp:Checkbox ID="chkCategorySelection" runat="server" Checked="false" resourcekey="Yes"></asp:Checkbox></td>
        </tr>
        <tr id="trCategory" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plCategory" runat="server" resourcekey="Category">
                </dnn:Label></td>
            <td><asp:DropDownList ID="cboCategories" DataValueField="ItemId" DataTextField="Category" runat="server" style="min-width:150px;"></asp:DropDownList></td>
        </tr>
        <tr id="trDefaultCategory" runat="server">
            <td class="SubSubHead"><dnn:Label ID="plDefaultCategory" runat="server" resourcekey="DefaultCategory">
                </dnn:Label></td>
            <td><asp:DropDownList ID="cboDefaultCategory" DataValueField="ItemId" DataTextField="Category" runat="server" style="min-width:150px;"></asp:DropDownList></td>
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
            <td class="SubSubHead"><dnn:Label ID="Label13" runat="server" resourcekey="SortBy"></dnn:Label></td>
            <td><asp:DropDownList ID="lstTypes" runat="server">
                                                </asp:DropDownList></td>
        </tr>
        <tr>
            <td class="SubSubHead"><dnn:Label ID="Label14" runat="server" resourcekey="NewVideos"></dnn:Label></td>
            <td>
            <asp:dropdownlist runat="server" id="cboNewPeriod">
                                <asp:listitem value="1"></asp:listitem>
                                <asp:listitem value="2"></asp:listitem>
                                <asp:listitem value="3"></asp:listitem>
                                <asp:listitem value="5"></asp:listitem>
                                <asp:listitem value="7"></asp:listitem>
                                <asp:listitem value="10"></asp:listitem>
                                <asp:listitem value="15"></asp:listitem>
                                <asp:listitem value="30"></asp:listitem>
                            </asp:dropdownlist>
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="Label18" runat="server" resourcekey="MaxResults"></dnn:Label></td>
            <td>
                <asp:dropdownlist runat="server" id="cboMaxResults">
                    <asp:listitem value="10"></asp:listitem>
                    <asp:listitem value="15"></asp:listitem>
                    <asp:listitem value="20"></asp:listitem>
                    <asp:listitem value="25" Selected="True"></asp:listitem>
                    <asp:listitem value="30"></asp:listitem>
                    <asp:listitem value="35"></asp:listitem>
                    <asp:listitem value="40"></asp:listitem>
                    <asp:listitem value="45"></asp:listitem>
                    <asp:listitem value="50"></asp:listitem>
                </asp:dropdownlist>.
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="Label21" runat="server" resourcekey="AutoScroll"></dnn:Label></td>
            <td>
                <asp:dropdownlist runat="server" id="cboAutoScroll">
                    <asp:listitem value="0" Text="Disabled" Selected="True"></asp:listitem>
                    <asp:listitem value="3"></asp:listitem>
                    <asp:listitem value="4"></asp:listitem>
                    <asp:listitem value="5"></asp:listitem>
                    <asp:listitem value="6"></asp:listitem>
                    <asp:listitem value="7"></asp:listitem>
                    <asp:listitem value="8"></asp:listitem>
                    <asp:listitem value="9"></asp:listitem>
                    <asp:listitem value="10"></asp:listitem>
                </asp:dropdownlist>.
            </td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="Label17" runat="server" resourcekey="Background"></dnn:Label></td>
            <td>
                <uc1:uccolorpicker id="backgroundColor" runat="server">
                            </uc1:uccolorpicker></td>
        </tr>
        <tr>
            <td class="SubSubHead">
                <dnn:Label ID="Label20" runat="server" resourcekey="PlayFirst"></dnn:Label></td>
            <td>
                <asp:Checkbox ID="chkPlayFirst" runat="server" class="Normal" Checked="false" resourcekey="Yes"></asp:Checkbox></td>
        </tr>
    </table>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>