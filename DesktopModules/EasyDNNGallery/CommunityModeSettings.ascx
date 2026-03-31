<%@ control language="C#" inherits="EasyDNN.Modules.EasyDNNGallery.CommunityModeSettings, App_Web_communitymodesettings.ascx.af09375b" autoeventwireup="true" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<link href="<%=ModulePath%>EDGadmin.css" rel="stylesheet" type="text/css" />

<style type="text/css">
	.dnnLabel {
		text-align: left;
	}
</style>

<div id="EDGadmin">
	<div class="module_action_title_box">
		<ul class="module_navigation_menu">
			<li class="power_off">
				<asp:LinkButton ID="lbPowerOff" runat="server" ToolTip="Close" OnClick="lbPowerOff_Click" resourcekey="lbPowerOffResource1"><img src="<%=ModulePath %>images/dashboard/icons/power_off.png" alt="" /></asp:LinkButton></li>
		</ul>
		<h1>
			<asp:Label ID="lblCommunityModeSettingsTitle" runat="server"
				Text="Community Mode Settings" resourcekey="lblCommunityModeSettingsTitleResource1" Font-Size="Large"></asp:Label></h1>
	</div>
	<div class="main_content">
		<table class="style1">
			<tr>
				<td class="style2">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr id="trEnableCommunityMode" runat="server" visible="false">
				<td class="style2">
					<dnn:Label ID="lblIsCommunityMode" runat="server" Text="Enable community mode for this instance:"
						HelpText="Enable community mode for this instance:"
						HelpKey="lblIsCommunityMode.HelpText" ResourceKey="lblIsCommunityMode"></dnn:Label>
				</td>
				<td>
					<asp:CheckBox ID="cbEnableCommunityMode" runat="server" AutoPostBack="True"
						OnCheckedChanged="cbEnableCommunityMode_CheckedChanged"
						resourcekey="cbEnableCommunityModeResource1" />
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;
				</td>
				<td>&nbsp;
				</td>
			</tr>
			<tr>
				<td class="style2" valign="top">
					<dnn:Label ID="lblLimitUploadResize" runat="server"
						Text="Auto resize uploaded images:" HelpKey="lblLimitUploadResize.HelpText"
						ResourceKey="lblLimitUploadResize"></dnn:Label>
				</td>
				<td>
					<asp:CheckBox ID="cbEnableUploadAutoResize" runat="server" AutoPostBack="True"
						OnCheckedChanged="cbEnableUploadAutoResize_CheckedChanged"
						resourcekey="cbEnableUploadAutoResizeResource1" />
					<br />
				</td>
			</tr>
			<tr>
				<td class="style2" valign="top">&nbsp;</td>
				<td>
					<asp:Label ID="lblResizeWidth" runat="server" Text="Width:"
						resourcekey="lblResizeWidthResource1"></asp:Label>
					&nbsp;
			<asp:TextBox ID="tbAFImageUploadResizeWidth" runat="server" Width="50px" Text="800"
				ValidationGroup="vgCommunityMode" Enabled="False"
				resourcekey="tbAFImageUploadResizeWidthResource1"></asp:TextBox>
					<asp:CompareValidator ID="cvAddImagesFromFolderResizeWidth" runat="server" ControlToValidate="tbAFImageUploadResizeWidth"
						Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck"
						Type="Integer" ValidationGroup="vgCommunityMode"
						resourcekey="cvAddImagesFromFolderResizeWidthResource1"></asp:CompareValidator>
					<asp:RequiredFieldValidator ID="rfvAddImagesFromFolderResize" runat="server" ControlToValidate="tbAFImageUploadResizeWidth"
						ErrorMessage="This filed is required." ValidationGroup="vgCommunityMode"
						resourcekey="rfvAddImagesFromFolderResizeResource1"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td class="style2" valign="top">&nbsp;</td>
				<td>
					<asp:Label ID="lblResizeWidth0" runat="server" Text="Height:"
						resourcekey="lblResizeWidth0Resource1"></asp:Label>
					&nbsp;<asp:TextBox ID="tbAFImageUploadResizeHeight" runat="server" Width="50px" Text="600"
						ValidationGroup="vgCommunityMode" Enabled="False"
						resourcekey="tbAFImageUploadResizeHeightResource1"></asp:TextBox>
					<asp:CompareValidator ID="cvAddImagesFromFolderResizeHeight" runat="server" ControlToValidate="tbAFImageUploadResizeHeight"
						Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck"
						Type="Integer" ValidationGroup="vgCommunityMode"
						resourcekey="cvAddImagesFromFolderResizeHeightResource1"></asp:CompareValidator>
					<asp:RequiredFieldValidator ID="rfvAddImagesFromFolderHeight" runat="server" ControlToValidate="tbAFImageUploadResizeHeight"
						ErrorMessage="This filed is required." ValidationGroup="vgCommunityMode"
						resourcekey="rfvAddImagesFromFolderHeightResource1"></asp:RequiredFieldValidator>
				</td>
			</tr>
			<tr>
				<td class="style2" valign="top">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="style2">
					<dnn:Label ID="lblEnableJouranlPosting" runat="server" Text="Enable posting to journal:"
						HelpKey="lblEnableJouranlPosting.HelpText" ResourceKey="lblEnableJouranlPosting"></dnn:Label>
				</td>
				<td>
					<asp:CheckBox ID="cbEnableJournalPosting" runat="server" AutoPostBack="True" OnCheckedChanged="cbEnableJournalPosting_CheckedChanged"
						Checked="True" resourcekey="cbEnableJournalPostingResource1" />
				</td>
			</tr>
			<tr>
				<td class="style2">
					<dnn:Label ID="lblAutoPostToJournal" runat="server" Text="Auto post to journal:"
						HelpText="Auto post to journal:" HelpKey="lblAutoPostToJournal.HelpText"
						ResourceKey="lblAutoPostToJournal"></dnn:Label>
				</td>
				<td>
					<asp:CheckBox ID="cbAutoPostingToJourmal" runat="server" AutoPostBack="True"
						Checked="True" resourcekey="cbAutoPostingToJourmalResource1" />
				</td>
			</tr>
			<tr>
				<td class="style2">
					<dnn:Label ID="lblListOfModules" runat="server" Text="Select module to open gallery details from user Journal:"
						HelpText="Select module to open gallery details from user Journal:"
						ResourceKey="lblListOfModules" HelpKey="lblListOfModules.HelpText"></dnn:Label>
				</td>
				<td>
					<asp:DropDownList ID="ddlGalleryModuleList" runat="server"
						resourcekey="ddlGalleryModuleListResource1">
					</asp:DropDownList>
				</td>
			</tr>
			<tr>
				<td class="style2">
					<dnn:Label ID="lblGroupDetails" runat="server" Text="Select module to open gallery details from group Journal:"
						HelpText="Select module to open gallery details from group Journal:" ResourceKey="lblGroupDetails" HelpKey="lblGroupDetails.HelpText"></dnn:Label>
				</td>
				<td>
					<asp:DropDownList ID="ddlGroupGalleryModuleList" runat="server" /></td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;
				</td>
				<td>
					<b>
						<asp:Label ID="lblSchedulerSettingsTitle" runat="server"
							Text="Scheduler settings" resourcekey="lblSchedulerSettingsTitleResource1"></asp:Label></b>
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>
					<asp:Label ID="lblSchedulerInfo" runat="server" resourcekey="lblSchedulerInfo"
						Text="This will enable images published in the Journal posts by a user to be added into user's Journal Post gallery."></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="style2">
					<dnn:Label ID="lblSchedulerEnabled" runat="server" Text="Enable scheduler:"
						ResourceKey="lblSchedulerEnabledResource1"
						HelpKey="lblSchedulerEnabledResource1.HelpText" HelpText="Enable scheduler:"></dnn:Label>
				</td>
				<td>
					<asp:CheckBox ID="cbSchedulerEnabled" runat="server"
						resourcekey="cbSchedulerEnabledResource1" />
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;
				</td>
				<td>
					<asp:Label ID="lblInfo" runat="server" EnableViewState="False" ForeColor="Red"
						resourcekey="lblInfoResource1" />
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;
				</td>
				<td>
					<asp:Button ID="btnSaveSettings" runat="server" OnClick="btnSaveSettings_Click"
						Text="Save settings" ValidationGroup="vgCommunityMode"
						resourcekey="btnSaveSettingsResource1" />
					<asp:Button ID="btnSaveClose" runat="server" OnClick="btnSaveClose_Click"
						Text="Save and Close" resourcekey="btnSaveCloseResource1" />
				</td>
			</tr>
		</table>
	</div>
</div>
