<%@ Control Language="vb" AutoEventWireup="false" Codebehind="RelatedVideos.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.RelatedVideos" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>

<asp:Panel ID="pnlSiblings" runat="server">
<h5>
<asp:Label ID="Label2" runat="server" CssClass="relatedgrp" resourcekey="Siblings"></asp:Label>
</h5>
<asp:DataList ID="lstSiblings" runat="server" Width="100%" RepeatDirection="Vertical" CssClass="videosibling">
<ItemTemplate></ItemTemplate>
</asp:DataList>
</asp:Panel>

<asp:Panel ID="pnlRelated" runat="server" CssClass="second">
<asp:Label ID="Label1" runat="server" CssClass="Head relatedgrp" resourcekey="TagRelated"></asp:Label>
<asp:DataList ID="lstTagRelated" runat="server" Width="100%" RepeatDirection="Vertical" CssClass="videosibling">
<ItemTemplate></ItemTemplate>
</asp:DataList>
</asp:Panel>

<asp:Panel ID="pnlAuthorWorks" runat="server" CssClass="second">
<h5>
<asp:Label ID="Label3" runat="server" CssClass="relatedgrp" resourcekey="MoreFromThisAuthor"></asp:Label>
</h5>
<asp:DataList ID="lstAuthorWorks" runat="server" Width="100%" RepeatDirection="Vertical" CssClass="videosibling">
<ItemTemplate></ItemTemplate>
</asp:DataList>
</asp:Panel>