<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoPlayer.ascx.vb" Inherits="BizModules.UltraVideoGallery.VideoPlayer" %>

<asp:Panel ID="pnlPlayer" runat="server" CssClass="uvgplayer">

<h4>
    <asp:Label ID="lblVideoTitle" runat="server" style="line-height:30px;"></asp:Label>
</h4>

<asp:panel runat="server" id="pnlNormal" CssClass="swfplayer">
	<script src="<%=ModulePath%>Scripts/swfobject.js" type="text/javascript"></script>
	<div id="UVGContainer">
		<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='<%=Protocal%>://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0' width='<%=UVGSettings.GalleryWidth%>' height='<%=UVGSettings.GalleryHeight%>' id='UVG'>
		<param name='bgcolor' value='#ffffff' />
		<param name='flashvars' value='<%=Params%>' />
		<param name='allowFullScreen' value='true' />
		<param name='movie' value='<%=ModulePath + SwfName%>.swf' />
		<embed flashvars='<%=Params%>' src='<%=ModulePath + SwfName%>.swf' bgcolor='#ffffff' width='<%=UVGSettings.GalleryWidth%>' height='<%=UVGSettings.GalleryHeight%>' name='UVG' type='application/x-shockwave-flash' pluginspage='<%=Protocal%>://www.macromedia.com/go/getflashplayer' />
		</object>
        <p style="margin-top:10px;">
        The above video does not play? try to:
        </p>
        <div class="verticalMiddle" style="margin-bottom:10px;">
		    <a href="<%=Protocal%>://www.adobe.com/go/getflashplayer" target="_blank"><img src="<%=Protocal%>://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Install Latest Flash Player" border="0" />
            </a>
            or
            <a href="<%=NavigateUrl(TabId, "", "VideoId=" + VideoId.ToString() + "&UseHtml5=True") %>">
                <img src="<%=ModulePath%>images/html5.gif" alt="Play with HTML 5" border="0" />
            </a>
        </div>
	</div>
	<script type="text/javascript">
	    var fObj = new FlashObject('<%=ModulePath + SwfName%>.swf', 'UVG', '<%=UVGSettings.GalleryWidth%>', '<%=UVGSettings.GalleryHeight%>', "9.0.115", '');
		fObj.flashvars = '<%=Params%>';
		fObj.addParam('allowFullScreen', 'true');
		fObj.addParam('allowScriptAccess', 'always');
		fObj.addParam('wmode', 'transparent'); 
		fObj.write('UVGContainer');
		var UVGContainer;
		UVGContainer = document.getElementById('UVGContainer');
	</script>
</asp:panel>

<asp:panel runat="server" id="pnlEmbedCode" CssClass="embededplayer" visible="false">
	<asp:label runat="server" id="lblEmbedCode"></asp:label>
</asp:panel>

<asp:Panel ID="pnlSocial" runat="server" CssClass="social">
<asp:Panel ID="pnlRate" runat="server" CssClass="likedislike">
<a class="roundbtn like"><asp:Label ID="lblLikes" runat="server" CssClass="label" Text="0"></asp:Label></a>
<a class="roundbtn dislike"><asp:Label ID="lblDislikes" runat="server" CssClass="label" Text="0"></asp:Label></a>
</asp:Panel>

<asp:Panel ID="pnlFlag" runat="server">
<div class="roundbtn flag"><asp:Label ID="Label5" runat="server" CssClass="label" resourcekey="Flag"></asp:Label></div>
</asp:Panel>

<asp:Panel ID="pnlShare" runat="server">
<div class="roundbtn shareto">
<asp:Label ID="Label4" runat="server" CssClass="label" resourcekey="Share"></asp:Label>
</div>
</asp:Panel>

<asp:Panel ID="pnlDownload" runat="server" CssClass="roundbtn download">
<asp:Label ID="Label2" runat="server" CssClass="label" resourcekey="Download"></asp:Label>
<ul class="downloadoptions">
<li>
<asp:HyperLink ID="lnkLow" runat="server"></asp:HyperLink>
</li>
<li>
<asp:HyperLink ID="lnkHigh" runat="server"></asp:HyperLink>
</li>
</ul>
</asp:Panel>

<div class="views verticalMiddle">
<asp:Label ID="lblViews" runat="server" CssClass="number" Text="0"></asp:Label>
<asp:Label ID="Label3" runat="server" CssClass="label" resourcekey="views"></asp:Label>
</div>

</asp:Panel>

<asp:panel ID="pnlShareOptions" runat="server" class="shareoptions">
<div class="close"></div>
<table cellpadding="0" cellspacing="0" width="100%"><tr><td class="leftclm">
<asp:Label ID="Label9" runat="server" resourcekey="ShareUrl" CssClass="header"></asp:Label>
<div><asp:TextBox ID="txtShareUrl" runat="server"></asp:TextBox></div>
<asp:Label ID="Label10" runat="server" resourcekey="EmbedCode" CssClass="header second"></asp:Label>
<div>
<asp:TextBox ID="txtEmbedCode" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
</div>
</td><td class="centerclm"></td><td class="rightclm">
    <asp:Label ID="Label11" runat="server" resourcekey="SendEmail" CssClass="header"></asp:Label>

    <div class='addthis_default_style addthis_toolbox addthis_32x32_style'><a class='addthis_button_email'></a></div>

    <asp:Label ID="Label12" runat="server" resourcekey="SendToSocial" CssClass="header second"></asp:Label>

    <div class="social">
        <div class='addthis_default_style addthis_toolbox addthis_32x32_style'>
            <a class='addthis_button_facebook'></a>
            <a class='addthis_button_twitter'></a>
            <a class='addthis_button_linkedin'></a>
            <a class="addthis_button_google_plusone_share"></a>
            <a class="addthis_button_compact"></a>
            <a class="addthis_counter addthis_bubble_style"></a>
        </div>
    </div>

</td></tr></table>
</asp:Panel>

<asp:panel ID="pnlFlagOptions" runat="server" class="flagoptions">
<div class="close"></div>
<asp:Label ID="Label6" runat="server" resourcekey="Report" CssClass="header"></asp:Label>
<asp:Label ID="Label7" runat="server" resourcekey="Report.Help"></asp:Label>
<asp:Label ID="Label8" runat="server" resourcekey="SelectReason" CssClass="header second"></asp:Label>
<table cellpadding="0" cellspacing="0"><tr><td>
<asp:HyperLink ID="lnkReason1" runat="server" resourcekey="Sexual" NavigateUrl="#"></asp:HyperLink>
</td>
<td>
<asp:HyperLink ID="HyperLink1" runat="server" resourcekey="Violent" NavigateUrl="#"></asp:HyperLink>
</td></tr><tr>
<td>
<asp:HyperLink ID="HyperLink2" runat="server" resourcekey="Hateful" NavigateUrl="#"></asp:HyperLink>
</td><td>
<asp:HyperLink ID="HyperLink3" runat="server" resourcekey="Harmful" NavigateUrl="#"></asp:HyperLink>
</td></tr><tr>
<td>
<asp:HyperLink ID="HyperLink4" runat="server" resourcekey="Child" NavigateUrl="#"></asp:HyperLink>
</td><td>
<asp:HyperLink ID="HyperLink5" runat="server" resourcekey="Spam" NavigateUrl="#"></asp:HyperLink>
</td>
</tr>
</table>
<div></div>
</asp:Panel>

<asp:Panel ID="pnlInfo" runat="server" CssClass="Normal videoinfo">
<div class="header">
<asp:HyperLink ID="lnkEdit" runat="server" ImageUrl="~/images/edit.gif" CssClass="editvideo"></asp:HyperLink>
<asp:Label ID="Label13" runat="server" resourcekey="UploadBy"></asp:Label>
<asp:HyperLink ID="lnkAuthor" runat="server" CssClass="author" Target="_blank"></asp:HyperLink>
<asp:Label ID="Label14" runat="server" resourcekey="on"></asp:Label>
<asp:Label ID="lblCreatedDate" runat="server"></asp:Label>
</div>

<asp:CheckBox ID="chkSubTitleSwitch" runat="server" Checked="false" AutoPostBack="true" resourcekey="ShowSubTitle" />
</asp:Panel>

<asp:Panel ID="pnlDesc" runat="server" CssClass="Normal desc">
<asp:Label ID="lblDesc" runat="server"></asp:Label>
</asp:Panel>

<asp:Panel ID="pnlNext" runat="server" CssClass="nextinseries verticalMiddle">
    <asp:Label ID="lblNextVideo" runat="server" resourcekey="NextVideo"></asp:Label>
    <asp:HyperLink ID="lnkNextVideo" runat="server"></asp:HyperLink>
    <asp:CheckBox ID="chkJumpToNext" runat="server" CssClass="playnext" Checked="true" resourcekey="AutoPlayNext" />
</asp:Panel>

</asp:Panel>


<asp:Panel ID="pnlFullStageCommercial"  runat="server" CssClass="fullstagecommercial">
    <asp:HyperLink ID="lnkCommercial" runat="server" Target="_blank">
    <asp:Image runat="server" ID="imgCommercial" />
    </asp:HyperLink>
</asp:Panel>