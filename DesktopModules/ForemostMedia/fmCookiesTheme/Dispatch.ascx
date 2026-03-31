<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dispatch.ascx.cs" Inherits="ForemostMedia.Modules.fmCookiesTheme.Dispatch" %>
<script type="text/javascript">
    if (typeof fmfmCookiesTheme === "undefined") {
        fmfmCookiesTheme = {}
    }
    fmfmCookiesTheme.moduleId = <%= ModuleConfiguration.ModuleID %>;
    fmfmCookiesTheme.tabId = <%= TabId %>;
    fmfmCookiesTheme.userId = <%= UserId %>;
</script>
<section class="fmfmCookiesThemeDispatch" id="FmfmCookiesTheme">
    <asp:PlaceHolder runat="server" ID="phUserControl"></asp:PlaceHolder>
</section>
