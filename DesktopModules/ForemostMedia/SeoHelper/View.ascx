<%@ Control Language="C#" Inherits="ForemostMedia.Modules.SeoHelper.View"
    AutoEventWireup="true" CodeBehind="View.ascx.cs" %>
<%@ Import Namespace="ForemostMedia.Modules.SeoHelper.Components.Utils" %>

<div class="dnnForm" runat="server" id="dvForm">
    <div class="btn-group">
        <a href='<%= Urls.RobotsText(TabId, ModuleId) %>' class="btn btn-default">
            <i class="fa fa-cogs"></i>
            Robots.txt
        </a>
        <a href='<%= Urls.TrackingCode(TabId, ModuleId) %>' class="btn btn-default">
            <i class="fa fa-line-chart"></i>
            Tracking Code
        </a>
        <a href='<%= Urls.Redirects(TabId, ModuleId) %>' class="btn btn-default">
            <i class="fa fa-exchange"></i>
            301 Redirects
        </a>
        <a href='<%= Urls.Rules(TabId, ModuleId) %>' class="btn btn-default">
            <i class="fa fa-gavel"></i>
            Rules
        </a>
        <a href='<%= Urls.OutboundRule(TabId, ModuleId) %>' class="btn btn-default">
            <i class="fa fa-share-square-o"></i>
            Outbound Rules
        </a>
        <a href='<%= Urls.Pages(TabId, ModuleId) %>' class="btn btn-default">
            <i class="fa fa-file-text-o"></i>
            Pages
        </a>
<%--        <span class="<%=InEditMode %>">
            <asp:LinkButton id="myLink" class="btn btn-default" OnClick="ResetRewrites_Click" runat="server">
                <i class="fa fa-trash-o">&nbsp;Reset Rewrites</i>
            </asp:LinkButton>
        </span> --%>       
    </div>
</div>
<script type="text/javascript">
    if (typeof fmSeoHelper === "undefined") {  
        fmSeoHelper = {}
    }
    fmSeoHelper.moduleId = <%= ModuleConfiguration.ModuleID %>;
    fmSeoHelper.tabId = <%= TabId %>;
    fmSeoHelper.userId = <%= UserId %>;
</script>