<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Dispatch.ascx.cs" Inherits="ForemostMedia.Modules.FM_Distributor.Dispatch" %>
<script type="text/javascript">
    if (typeof fmDistributor === "undefined") {
        fmDistributor = {}
    }
    fmDistributor.moduleId = <%= ModuleConfiguration.ModuleID %>;
    fmDistributor.tabId = <%= TabId %>;
    fmDistributor.userId = <%= UserId %>;
</script>
<section class="fmDistributorDispatch" id="fmDistributor">
    <asp:PlaceHolder runat="server" ID="phUserControl"></asp:PlaceHolder>
</section>