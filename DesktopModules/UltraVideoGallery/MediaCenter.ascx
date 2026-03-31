<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="MediaCenter.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.MediaCenter" %>

<asp:Panel ID="pnlMCenter" runat="server">

<div id="mc<%=ModuleId %>" class="uvgmc" style="min-width:<%=(UVGSettings.GalleryWidth+280).ToString() %>px;">
<table width="100%" border="0" cellpadding="0" cellspacing="0"><tr><td class="colleft" style="width:<%=UVGSettings.GalleryWidth.ToString() %>px; height:<%=UVGSettings.GalleryHeight %>px;">
    <iframe id="_mcframe" name="_mcframe" frameborder="0" scrolling="no" style="width:100%; height:100%;"></iframe>
    </td><td class="colright">
        <div>
        <asp:Panel ID="pnlCategories" runat="server">
            <div class="channel Head"><asp:Label ID="lblChannels" runat="server" resourcekey="Channels"></asp:Label></div>
            <asp:DataList ID="lstCategories" runat="server" CssClass="categories verticalMiddle">
                <ItemTemplate>
                    <asp:Label ID="lblItemId" runat="server" Text="<%#Container.DataItem.ItemId %>" Visible="false"></asp:Label>
                    <asp:Image ID="imgIcon" runat="server" ImageUrl="~/DesktopModules/UltraVideoGallery/images/category.jpg" /><asp:LinkButton ID="lnkCategory" runat="server" Text='<%#Container.DataItem.Category + IIf(Container.DataItem.VideoCount > 0, " (" +  Container.DataItem.VideoCount.ToString() + ")", "")%>' OnClick="lnkCategory_Click"></asp:LinkButton>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        <asp:Panel ID="pnlVideoInfo" runat="server">
        <div class="xofy"></div>
        <div class="title Head"></div>
        <div class="desc"></div>
        <div class="script"></div>

        </asp:Panel>
        <div class='social addthis_default_style addthis_toolbox addthis_32x32_style'>
            <a class='addthis_button_email'></a>
            <a class='addthis_button_facebook'></a>
            <a class='addthis_button_twitter'></a>
            <a class='addthis_button_linkedin'></a>
            <a class="addthis_button_google_plusone_share"></a>
            <a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
        </div>
        <asp:Label ID="lblBaseUrl" runat="server" CssClass="baseurl" Visible="false" style="display:none;"></asp:Label>
        </div>
    </td></tr>
</table>

    <div class="colbottom">
        <a href="#" class='toleft'></a>
        <div class='scroll'>
        <div class="scrollable">
        <asp:Repeater ID="rptVideos" runat="server">
            <ItemTemplate>
                <a href="<%#GetPlayUrl(Container.DataItem.ItemId) %>" rel="<%#Container.DataItem.ItemId %>" class="mcitem" target="_mcframe">
                <span class="body">
                <asp:Label ID="lblIsNew" runat="server" CssClass="new" Visible="<%#IsNew(Container.DataItem.CreatedDate) %>"></asp:Label>
                <span class="imgntime">
	            <img src="<%#Container.DataItem.SafeThumbnail %>" border="0" height="<%#UVGSettings.ScreenshotHeight.ToString() %>" alt="Screenshot" />
	            <%#GetVideoLength(Container.DataItem.Length) %>
	            </span>
                <span class="title"><%#Container.DataItem.SafeTitle %></span>  
                <span class="desc"><%#Container.DataItem.Description %></span>  
                <span class="script"><%#Container.DataItem.Description %></span>  
                </span>              
                </a>
            </ItemTemplate>
        </asp:Repeater>
        </div>
        </div>
        <a href="#" class='toright'></a>
    </div>

</div>

<script type="text/javascript">

var mc<%=ModuleId %>;

jQuery(document).ready(function() {
    launchmc<%=ModuleId %>();
	if (typeof(Sys) != "undefined")
    {
        var req=Sys.WebForms.PageRequestManager.getInstance();
        if (req)
	        req.add_endRequest(EndRequestHandler<%=ModuleId %>);
    }
});
function launchmc<%=ModuleId %>()
{
    mc<%=ModuleId %> = jQuery("#mc<%=ModuleId %>").mediacenter({<%=Params %>});
}
function EndRequestHandler<%=ModuleId %>(sender, args){
    mc<%=ModuleId %>[0].stopScroll();
    launchmc<%=ModuleId %>();
} 
</script>

</asp:Panel>