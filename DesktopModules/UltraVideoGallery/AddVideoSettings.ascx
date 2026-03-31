<%@ Register TagPrefix="uc1" TagName="CategoryPicker" Src="ucCategoryPicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="AddVideoSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.AddVideoSettings" %>

    <div class="message"><asp:Label ID="Label8" runat="server" resourcekey="AddVideoSettings.Help"></asp:Label></div>

    <asp:checkboxlist id="lstVideoTypes" runat="server" cssclass="Normal">
        <asp:listitem value="FromLocalDisk"></asp:listitem>
        <asp:listitem value="Import"></asp:listitem>
        <asp:listitem value="Record"></asp:listitem>
        <asp:listitem value="FromInternet"></asp:listitem>
        <asp:listitem value="FromEmbedCode"></asp:listitem>
    </asp:checkboxlist>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>