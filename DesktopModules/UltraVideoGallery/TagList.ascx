<%@ Control Language="vb" AutoEventWireup="false" Codebehind="TagList.ascx.vb" Inherits="BizModules.UltraVideoGallery.TagList" %>
<asp:Repeater id="rptTags" runat="server">
<ItemTemplate>
<asp:Hyperlink ID="lnkTag" runat="server" CssClass='<%# "tag cloudlevel" + Container.DataItem.CreatedByUser.ToString()%>' Text='<%# Container.DataItem.Tag + " (" + Container.DataItem.VideoCount.ToString() + ")" %>' NavigateUrl='<%#NavigateUrl(ListingTabId, "", "TagId=" + Container.DataItem.ItemID.ToString()) %>'></asp:Hyperlink>
</ItemTemplate>
</asp:Repeater>