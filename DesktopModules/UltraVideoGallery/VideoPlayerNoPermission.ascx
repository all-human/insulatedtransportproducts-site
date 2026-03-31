<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoPlayerNoPermission.ascx.vb" Inherits="BizModules.UltraVideoGallery.VideoPlayerNoPermission" %>

<table width="100%"><tr><td width='38%' style="text-align:center; vertical-align:top;">

<div class="logo">
    <asp:Image id="imgThumbnail" runat="server"></asp:Image>
</div>

</td><td>
<asp:Label id="lblNoPermission" runat="server"></asp:Label>

<p>
<asp:LinkButton id="cmdReturn" runat="server" resourcekey="Return" CssClass="roundbtn"></asp:LinkButton>
</p>

</td></tr></table>
