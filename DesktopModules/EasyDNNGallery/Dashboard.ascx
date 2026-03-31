<%@ control language="C#" autoeventwireup="true" inherits="EasyDNN.Modules.EasyDNNGallery.Dashboard, App_Web_dashboard.ascx.af09375b" %>
<%@ Register TagPrefix="dnnCTRL" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls" %>
<div id="EDGadmin">
	<div class="module_action_title_box">
		<ul class="module_navigation_menu">
			<li class="power_off">
				<asp:LinkButton ID="lbPowerOff" runat="server" ToolTip="Close" OnClick="lbPowerOff_Click" resourcekey="lbPowerOffResource1"><img src="<%=ModulePath %>images/dashboard/icons/power_off.png" alt="" /></asp:LinkButton></li>
		</ul>
		<h1>
			<%=strDashboard%></h1>
	</div>
	<div class="main_content dashboard">
		<ul class="links">
			<li>
				<asp:HyperLink runat="server" ID="lbManageContent" class="icon gallery" resourcekey="lbManageContent" Visible="False">Manage content (add/edit media)</asp:HyperLink></li>
			<li>
				<asp:HyperLink runat="server" ID="lbGallerySettings" class="icon module_settings" resourcekey="lbGallerySettings" Visible="False">Gallery settings (setup gallery display)</asp:HyperLink></li>
		</ul>

		<ul class="links">
			<li>
				<asp:HyperLink runat="server" ID="lbCrossportalsharing" class="icon cross" resourcekey="lbCrossportalsharing">Cross portal sharing</asp:HyperLink></li>
			<li>
				<asp:HyperLink runat="server" ID="lbCommunitymode" class="icon communitymode" resourcekey="lbCommunitymode">Community mode settings</asp:HyperLink></li>
			<li>
				<asp:HyperLink runat="server" ID="lbAPIsettings" class="icon apiconnections" resourcekey="lbAPIsettings">API settings</asp:HyperLink></li>
			<li>
				<asp:HyperLink runat="server" ID="lbRSSimports" class="icon atom" resourcekey="lbRSSimports">RSS import</asp:HyperLink></li>

		</ul>

		<ul class="links bigger_margin">
			<li>
				<asp:HyperLink runat="server" ID="lbGeneralSettings" class="icon general_settings" resourcekey="lbGeneralSettings">General settings</asp:HyperLink></li>
			<li>
				<asp:HyperLink runat="server" ID="hlDataImportExport" class="icon customfields_export" resourcekey="hlDataImportExport">Export/Import</asp:HyperLink></li>

		</ul>

	</div>
</div>
