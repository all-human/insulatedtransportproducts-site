<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CompactPlayer.ascx.vb" Inherits="BizModules.UltraVideoGallery.CompactPlayer" %>

<asp:Panel ID="pnlPlayer" runat="server" CssClass="uvgplayer">

<asp:panel runat="server" id="pnlNormal">
	<script src="<%=ModulePath%>Scripts/swfobject.js" language="javascript"></script>
	<div id="UVGContainer<%=ModuleID%>">
		<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='<%=Protocal%>://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0' width='<%=PlayerWidth%>' height='<%=PlayerHeight%>' id='UVG'>
		<param name='bgcolor' value='#ffffff' />
		<param name='flashvars' value='<%=Params%>' />
		<param name='allowFullScreen' value='true' />
		<param name='movie' value='<%=ModulePath%><%=SwfName%>.swf' />
		<embed flashvars='<%=Params%>' src='<%=ModulePath%><%=SwfName%>.swf' bgcolor='#ffffff' width='<%=PlayerWidth%>' height='<%=PlayerHeight%>' name='UVG' type='application/x-shockwave-flash' pluginspage='<%=Protocal%>://www.macromedia.com/go/getflashplayer' />
		</object>
		<p />
		<a class="Normal verticalMiddle" href="<%=Protocal%>://www.adobe.com/go/getflashplayer" target="_blank"><img src="<%=Protocal%>://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" border="0" />
		Install latest flash player if this video gallery does not work.
        </a>
	</div>
	<script type="text/javascript">
		var fObj = new FlashObject('<%=ModulePath%><%=SwfName%>.swf', 'UVG', '<%=PlayerWidth%>', '<%=PlayerHeight%>', 9, '');
		fObj.flashvars = '<%=Params%>';
		fObj.addParam('wmode', 'transparent');
		fObj.addParam('allowFullScreen', 'true');
		fObj.addParam('allowScriptAccess', 'always');
		//fObj.addParam('bgcolor', '#000000');
		fObj.write('UVGContainer<%=ModuleID%>');
		var UVGContainer;
		UVGContainer = document.getElementById('UVGContainer');
	</script>
</asp:panel>

<asp:panel runat="server" id="pnlEmbedCode" visible="false">
	<asp:label runat="server" id="lblEmbedCode"></asp:label>
</asp:panel>

</asp:Panel>