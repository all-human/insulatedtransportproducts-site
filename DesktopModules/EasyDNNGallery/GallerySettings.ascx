<%@ control language="C#" inherits="EasyDNN.Modules.EasyDNNGallery.GallerySettings, App_Web_gallerysettings.ascx.af09375b" autoeventwireup="true" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<style type="text/css">
	.styleBolded {
		font-weight: bold;
	}

	.style7 {
		width: 224px;
	}

	.style24 {
		width: 285px;
		height: 22px;
	}

	.style25 {
		height: 22px;
	}

	.style30 {
		width: 89px;
		height: 22px;
	}

	.style37 {
		height: 30px;
	}

	.style38 {
		height: 30px;
	}

	.settingsleftcell {
		width: 158px;
	}

	.settingsleftcell {
		height: 23px;
	}

	.style46 {
		height: 23px;
	}

	.style48 {
		width: 341px;
	}

	.style52 {
		width: 409px;
	}

	.style53 {
		width: 416px;
	}

	.style54 {
		width: 337px;
	}

	.style59 {
		width: 285px;
		height: 19px;
	}

	.style60 {
		height: 19px;
	}

	.settingsleftcell2 {
		width: 150px;
	}

	.style64 {
		width: 158px;
		height: 23px;
	}

	.style65 {
		width: 158px;
	}

	.style66 {
		width: 100%;
	}

	.style69 {
		width: 145px;
		height: 30px;
	}

	.style70 {
		height: 23px;
	}

	.rightcolumn {
		width: 500px;
	}

	.style72 {
		height: 23px;
	}

	.style73 {
		width: 162px;
	}

	.style74 {
		width: 284px;
		height: 8px;
	}

	.style79 {
		width: 284px;
		height: 28px;
	}

	.style80 {
		height: 28px;
	}

	.style81 {
		height: 8px;
	}

	.style84 {
		width: 173px;
	}

	.style85 {
		width: 166px;
	}

	.style86 {
		width: 285px;
		height: 25px;
	}

	.style87 {
		height: 25px;
	}

	table, tr, td {
		color: #000000;
	}

	.style88 {
		width: 146px;
	}

	.style89 {
		width: 54px;
	}

	.style90 {
		width: 145px;
	}

	.style92 {
		width: 161px;
	}

	.style93 {
		height: 23px;
	}

	.style94 {
		width: 233px;
		height: 28px;
	}

	.style95 {
		width: 233px;
		height: 8px;
	}

	.style96 {
		width: 326px;
	}

	.style97 {
		width: 112px;
	}

	.style98 {
		width: 146px;
	}

	.style99 {
		height: 23px;
		width: 129px;
	}

	.style100 {
		width: 129px;
	}

	.style102 {
		width: 164px;
	}

	.style103 {
		width: 175px;
	}

	.style104 {
		height: 23px;
		width: 137px;
	}

	.style105 {
		width: 137px;
	}

	.style106 {
		width: 135px;
	}

	.style107 {
		height: 12px;
		width: 137px;
	}

	.style108 {
		height: 12px;
	}

	.style109 {
	}

	.style110 {
		width: 128px;
	}

	.style111 {
		width: 185px;
	}

	.style112 {
		height: 30px;
	}

	.style113 {
		height: 23px;
		width: 171px;
	}

	.style114 {
		width: 229px;
	}

	.style115 {
		width: 136px;
	}

	.style116 {
		width: 126px;
	}

	.auto-style1 {
		width: 153px;
	}
</style>
<script type="text/javascript">
	function ValidateCheckBoxList(sender, args) {
		args.IsValid = false;
		eds1_8("#<%=cblLBMediaSelect.ClientID%>").find(":checkbox").each(function () {
			if (eds1_8(this).attr("checked")) {
				args.IsValid = true;
				return;
			}
		});
	}
	function cbAction(elem1, elem2) {
		var chk = document.getElementById(elem1);
		var chk2 = document.getElementById(elem2);

		if (chk.checked) {
			chk2.checked = false;
		}
	}

	function cbswitch(elem1, elem2) {
		var chk = document.getElementById(elem1);
		var chk2 = document.getElementById(elem2);

		if (chk.checked == false && chk2.checked == false) {
			chk.checked = true;
		}
	}

	function cbEnable2(melem1, melem2, melem3) {
		var mchk = document.getElementById(melem1);
		var mchk2 = document.getElementById(melem2);
		var mchk3 = document.getElementById(melem3);

		if (mchk.checked) {

			mchk3.disabled = false;
			mchk2.disabled = false;
		}
		else {

			mchk3.disabled = true;
			mchk2.disabled = true;

		}
	}
	eds1_8().ready(function ($) {
		$('#<%=cbSocialMediaBoxShowSocialSharing.ClientID%>, #<%=cbSocialMediaBoxShowDetails.ClientID%>').change(function () {
			var $target = $('.collapsable_container.' + this.id);
			if (this.checked)
				$target.slideDown(200);
			else
				$target.slideUp(200);
		});
	});
</script>
<asp:ObjectDataSource ID="odsGallery" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetGaleries" OldValuesParameterFormatString="{0}">
	<SelectParameters>
		<asp:ControlParameter ControlID="ddlMainCatSelect" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
	</SelectParameters>
</asp:ObjectDataSource>
<div id="mainGallerySettings" runat="server">
	<div id="EDGAdminContent">
		<div style="padding-bottom: 10px; text-align: right;">
			<asp:Button ID="btnClose" runat="server" OnClick="btnGSCLose_Click" Text="Close" resourcekey="btncloseResource1" CssClass="btnclose" />
		</div>
		<div class="settingstitlebox">
			<div class="settingstitletop">
			</div>
			<table cellpadding="0" cellspacing="0" class="style66" style="width: 800px;" align="center">
				<tr>
					<td class="style73">
						<img alt="Gallery Settings" src="<%=ModulePath%>images/settingsthumb.png" style="width: 125px; height: 95px; margin-left: 20px;" />
					</td>
					<td>
						<asp:Label ID="lblGallerySettingsTitle" runat="server" resourcekey="lblGallerySettingsTitle" CssClass="gallerysettings" Text="&lt;b&gt;Gallery&lt;/b&gt; Settings"></asp:Label>
						<asp:Label ID="lblGallerySettingsTitleAdjust" resourcekey="lblGallerySettingsTitleAdjust" runat="server" CssClass="adjustview" Text="Adjust your gallery for perfect view"></asp:Label>
					</td>
				</tr>
			</table>
			&nbsp;<div class="settingstitlebot">
			</div>
		</div>
		<div class="settingsselectbox">
			<br />
			<table style="width: 800px;" align="center">
				<tr>
					<td colspan="3">&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<asp:Label ID="lblDisplayTypeSelect" runat="server" Text="Select type of display:" CssClass="selecttitle" resourcekey="lblDisplayTypeSelectResource1"></asp:Label>
						<div class="selectline">
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<dnn:Label ID="lblSelectDisplayType" ResourceKey="lblSelectDisplayType" runat="server" Text="Select type of display:" HelpText="Select the type of display to display gallery media:" HelpKey="lblSelectDisplayType.HelpText"></dnn:Label>
					</td>
					<td colspan="2" class="rightcolumn">
						<asp:RadioButtonList ID="rblDisplaySelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblDisplaySelect_SelectedIndexChanged" Width="587px">
							<asp:ListItem Value="gravityGallery">Gravity Gallery (Images, Video, Audio) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="Chameleon" resourcekey="ListItemResourceChameleon">Chameleon gallery (Images, Video, Audio) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="PortfolioPro" resourcekey="PortfolioPro">Portfolio Pro (Images, video) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="tablegallery" resourcekey="ListItemResource3">Lightbox Gallery (Images, Video, Audio) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="portfolio" resourcekey="ListItemPortfolio">Lightbox portfolio gallery (Images, Video, Audio) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="ImageSlider" resourcekey="ListItemResource9">Image Slider 1 (Images) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="ImageCarousel" resourcekey="ListItemResource10">Image Carousel (Images) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="ssthumbs3" resourcekey="ListItemResourceSS3">Slideshow with thumbnails 3 (Images) <span style="font-weight: bold; font-size: 10px; color: #ff0000;">responsive</span></asp:ListItem>
							<asp:ListItem Value="lightbox2" resourcekey="lightbox2Resource">LightBox Caption Slider (images, video, audio)</asp:ListItem>
							<asp:ListItem Value="slideshow" resourcekey="ListItemResource4">Slide Show (Images)</asp:ListItem>
							<asp:ListItem Value="ssthumbs" resourcekey="ListItemResource5">Slideshow with thumbnails (Images)</asp:ListItem>
							<asp:ListItem Value="ssthumbs2" resourcekey="ListItemResourceSS2">Slideshow with thumbnails 2 (Images)</asp:ListItem>
							<asp:ListItem Value="AdvancedSlideShow" resourcekey="ASSListItem">Advanced Slide Show</asp:ListItem>
							<asp:ListItem Value="FlashGallery" resourcekey="ListItemResource6" style="display: none">Flash Tab Gallery (Images, FLV video)</asp:ListItem>
							<asp:ListItem Value="VideoGallery" resourcekey="ListItemResource7">Video Gallery (Video)</asp:ListItem>
							<asp:ListItem Value="videogallery2" resourcekey="VideoGallery2">Video Gallery 2 (Video)</asp:ListItem>
							<asp:ListItem Value="videogallery3" resourcekey="VideoGallery3">Video Gallery 3 (Video)</asp:ListItem>
							<asp:ListItem Value="audiogallery" resourcekey="ListItemResource8">Audio Gallery (Audio)</asp:ListItem>
							<asp:ListItem Value="audiogallery2" resourcekey="audiogallery2">Audio Gallery 2 (Audio)</asp:ListItem>
							<asp:ListItem Value="verticalcarousel" resourcekey="ListItemResourceVC">Vertical Carousel (Images, Video, Audio)</asp:ListItem>
							<asp:ListItem Value="streaming" resourcekey="ListItemResourceStreaming">Streaming Video</asp:ListItem>
							<asp:ListItem Value="smbJournal" resourcekey="liSmbForJournal">
								<span style="color: #0070b1; font-weight: bold;">SocialMediaBox for DNN Journal</span>
							</asp:ListItem>
						</asp:RadioButtonList>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<asp:PlaceHolder runat="server" ID="phGallerySettingsControl"></asp:PlaceHolder>
					</td>
				</tr>

			</table>
		</div>
		<asp:Panel ID="pnlGalleryOptions" runat="server" class="settingsselectbox">
			<table style="width: 800px;" align="center">
				<tr>
					<td colspan="2">
						<asp:ObjectDataSource ID="odsLastModifiedGals" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetTop10Galeries" OldValuesParameterFormatString="original_{0}">
							<SelectParameters>
								<asp:Parameter Name="PortalID" Type="Int32" />
							</SelectParameters>
						</asp:ObjectDataSource>
					</td>
				</tr>
				<tr>
					<td colspan="2">&nbsp;
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<asp:CheckBox ID="cbShowUserImages" runat="server" AutoPostBack="True" OnCheckedChanged="cbShowUserImages_CheckedChanged" Text="Show user Images" Visible="False" />
						<br />
						<asp:Panel ID="pnlUserGallerySettings" runat="server" Visible="False">
							<table class="style66">
								<tr>
									<td class="style73">
										<asp:Label ID="lblUserGalleriesShowAll" resourcekey="lblUserGalleriesShowAll" runat="server" Text="Select galleries to show images from:"></asp:Label>
									</td>
									<td>
										<asp:RadioButtonList ID="rblUserGalleryDisplay" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblUserGalleryDisplay_SelectedIndexChanged">
											<asp:ListItem resourcekey="liShowAll" Value="ShowAll" Selected="True">Show all</asp:ListItem>
											<asp:ListItem resourcekey="liShowCategories" Value="select">Select categories to show galleries from</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</tr>
								<tr>
									<td class="style73">&nbsp;
									</td>
									<td>
										<asp:CheckBoxList ID="cblUserCategoriesSelect" runat="server" DataTextField="CategoryName" DataValueField="CategoryID" RepeatColumns="3" RepeatDirection="Horizontal" Visible="False">
										</asp:CheckBoxList>
									</td>
								</tr>
								<tr>
									<td class="style73">
										<asp:Label ID="lblUserGalleriesDisplayType" resourcekey="lblUserGalleriesDisplayType" runat="server" Text="Select meida display mode:"></asp:Label>
									</td>
									<td>
										<asp:RadioButtonList ID="rblUserGalleriesDisplayMode" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblUserGalleriesDisplayMode_SelectedIndexChanged">
											<asp:ListItem resourcekey="liDisplayAsNested" Selected="True" Value="nested">Display as nested galleries</asp:ListItem>
											<asp:ListItem resourcekey="liDisplayAllInOne" Value="one">Display all user images in one gallery</asp:ListItem>
										</asp:RadioButtonList>
									</td>
								</tr>
								<tr>
									<td class="style73">&nbsp;
									</td>
									<td>&nbsp;
									</td>
								</tr>
							</table>
						</asp:Panel>
					</td>
				</tr>
				<tr id="trCatGalSelection" runat="server">
					<td colspan="2">
						<table cellpadding="2" cellspacing="2" width="100%">
							<tr>
								<td>
									<asp:Panel ID="pnlPortalSharing" runat="server">
										<div class="settingsportal">
											<table cellspacing="0" cellpadding="0" width="100%">
												<tr>
													<td>
														<div class="settingsportleft">
														</div>
													</td>
													<td>
														<asp:Label ID="lblPortalSharing" ForeColor="White" Style="margin-right: 38px;" Font-Bold="True" runat="server" resourcekey="lblPortalSharing" Text="Select portal:"></asp:Label>
													</td>
													<td>
														<asp:DropDownList ID="ddlPortalSharing" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataTextField="PortalName" DataValueField="PortalIDFrom" OnSelectedIndexChanged="ddlPortalSharing_SelectedIndexChanged" CssClass="ddlcategorysettings"
															Style="margin-right: 15px;">
															<asp:ListItem resourcekey="liCurrentPortal" Value="-1">Current portal</asp:ListItem>
														</asp:DropDownList>
													</td>
													<td>
														<div class="settingsportright">
														</div>
													</td>
												</tr>
											</table>
										</div>
									</asp:Panel>
								</td>
							</tr>
							<tr>
								<td class="style44">
									<asp:RequiredFieldValidator ID="rfvGallerySelect" Style="color: red!important" runat="server" ControlToValidate="ddlGallerySelect" ErrorMessage="Please select gallery." SetFocusOnError="True" ValidationGroup="vvNema" resourcekey="rfvGallerySelectResource1.ErrorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
									<asp:Label runat="server" ID="lblSelectMainCat" Text="Please select category." ForeColor="Red" Visible="False"></asp:Label>
									<asp:Label ID="lblSelectMainGallery" runat="server" ForeColor="Red" Text="Please select gallery." Visible="False"></asp:Label>
								</td>
								<td rowspan="2" valign="bottom">
									<br />
								</td>
							</tr>
							<tr>
								<td>
									<div class="settingscategory">
										<table cellspacing="0" cellpadding="0" width="100%">
											<tr>
												<td>
													<div class="settingscatleft">
													</div>
												</td>
												<td>
													<asp:Label ID="lblCategorySelect" runat="server" Text="Select category:" ForeColor="White" Style="margin-right: 15px;" Font-Bold="True" resourcekey="lblCategorySelectResource1"></asp:Label>
													&nbsp;
												</td>
												<td>
													<asp:DropDownList ID="ddlMainCatSelect" runat="server" Style="margin-right: 15px;" AutoPostBack="True" CssClass="ddlcategorysettings" OnSelectedIndexChanged="ddlMainCatSelect_SelectedIndexChanged" DataTextField="CategoryName" DataValueField="CategoryID"
														AppendDataBoundItems="True">
													</asp:DropDownList>
												</td>
												<td>
													<div class="settingscatright">
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
								<td rowspan="2">
									<table align="right" cellpadding="0" cellspacing="0" class="boxmovecopy">
										<tr>
											<td style="background-color: #cbe48c">
												<div class="boxlasttop">
													<asp:Label ID="lblSelectLastModifiedGallery" resourcekey="lblSelectLastModifiedGallery" runat="server" CssClass="lastMod" Text="Select last modified gallery:"></asp:Label>
												</div>
												<table cellpadding="0" cellspacing="0" style="height: 35px;" width="100%">
													<tr>
														<td align="center">
															<asp:DropDownList ID="ddlLastModifiedGalleries" runat="server" AutoPostBack="True" DataSourceID="odsLastModifiedGals" DataTextField="GalleryName" DataValueField="GalleryID" OnSelectedIndexChanged="ddlLastModifiedGalleries_SelectedIndexChanged" AppendDataBoundItems="True"
																CausesValidation="True" CssClass="ddlcategorysettings">
																<asp:ListItem Value="select" resourcekey="ListItemResource1">Select gallery</asp:ListItem>
															</asp:DropDownList>
														</td>
													</tr>
												</table>
												<div class="boxmovecopybot">
												</div>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td>
									<div class="settingsgallery">
										<table cellpadding="0" cellspacing="0" width="100%">
											<tr>
												<td>
													<div class="settingsgalleft">
													</div>
												</td>
												<td>
													<asp:Label ID="lblGallerySelect" runat="server" Font-Bold="True" ForeColor="White" Style="margin-right: 33px;" Text="Select gallery: " resourcekey="lblGallerySelectResource1"></asp:Label>
												</td>
												<td>
													<asp:DropDownList ID="ddlGallerySelect" runat="server" AutoPostBack="True" CausesValidation="True" CssClass="ddlcategorysettings" DataSourceID="odsGallery" DataTextField="GalleryName" DataValueField="GalleryID" OnDataBound="ddlGallerySelect_DataBound"
														Style="margin-right: 15px;" OnDataBinding="ddlGallerySelect_DataBinding" OnSelectedIndexChanged="ddlGallerySelect_SelectedIndexChanged">
														<asp:ListItem resourcekey="ListItemResource2">
														</asp:ListItem>
													</asp:DropDownList>
												</td>
												<td>
													<div class="settingsgalright">
													</div>
												</td>
											</tr>
										</table>
									</div>
								</td>
							</tr>
						</table>
						<br />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table id="tblMainLbOptions" runat="server">
							<tr style="border: 1px dashed #666;">
								<td>
									<dnn:Label ID="lblLightBoxTypeSelection" runat="server" Text="Select the type of Ligtbox:" HelpText="Select the type of Ligtbox:" ResourceKey="lblLightBoxTypeSelection" HelpKey="lblLightBoxTypeSelection.HelpText"></dnn:Label>
								</td>
								<td>
									<asp:RadioButtonList ID="rblSelectLightBoxType" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblSelectLightBoxType_SelectedIndexChanged">
										<asp:ListItem Value="prettyphoto" resourcekey="liprettyphoto" Selected="True">prettyPhoto</asp:ListItem>
										<asp:ListItem resourcekey="liSocialMediaBoxLite" Value="smblite">SocialMediaBox Lite</asp:ListItem>
										<asp:ListItem Value="socialmediabox" resourcekey="lisocialmediabox">
								<b>SocialMediaBox </b><span class="SMBtypedescription">(Allows comments, ratings, social sharing and more)</span>
										</asp:ListItem>
									</asp:RadioButtonList>
								</td>
							</tr>
							<tr id="trSmblite" runat="server" visible="false">
								<td colspan="2">
									<table cellspacing="0" cellpadding="0" border="0" style="width: 100%; margin-top: 15px;">
										<tr>
											<td style="width: 223px;">
												<dnn:Label ID="lblSmbLiteShowTitle" resourcekey="lblSmbLiteShowTitle"  runat="server" Text="Show title:" HelpText="Show title."></dnn:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSmbLiteShowTitle" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td style="width: auto;">
												<dnn:Label ID="lblSmbLitewrapperResizeDuration" resourcekey="lblSmbLitewrapperResizeDuration" runat="server" Text="Transition effect:" HelpText="Transition effect."></dnn:Label>
											</td>
											<td>
												<asp:RadioButtonList ID="rblSmbLitewrapperResizeDuration" runat="server" RepeatDirection="Horizontal" CssClass="radioButtonTable">
													<asp:ListItem resourcekey="liNone" Value="0">None</asp:ListItem>
													<asp:ListItem resourcekey="liFast" Value="1" Selected="True">Fast</asp:ListItem>
													<asp:ListItem resourcekey="liSlow" Value="2" Selected="False">Slow</asp:ListItem>
												</asp:RadioButtonList>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblSmbLiteShowSocialSharing" resourcekey="lblSmbLiteShowSocialSharing" runat="server" Text="Show social sharing buttons:" HelpText="Show social sharing buttons."></dnn:Label>
											</td>
											<td td colspan="3">
												<asp:Panel ID="pnlSmbLiteSocialSharingButons" runat="server" Style="margin-top: 5px">
													<asp:CheckBox ID="cbSmbLiteShowFacebook" resourcekey="cbSmbLiteShowFacebook" runat="server" Text="Facebook" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowGooglePlus" resourcekey="cbSmbLiteShowGooglePlus" runat="server" Text="Google+" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowTwitter" resourcekey="cbSmbLiteShowTwitter" runat="server" Text="Twitter" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowPintrest" resourcekey="cbSmbLiteShowPintrest" runat="server" Text="Pinterest" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowLinkedIn" resourcekey="cbSmbLiteShowLinkedIn" runat="server" Text="LinkedIn" Checked="True" />
												</asp:Panel>
											</td>
										</tr>
									</table>

								</td>
							</tr>
							<tr id="tredsLightboxOptions" runat="server" visible="false">
								<td colspan="2">
									<table>
										<tr style="width: 250px">
											<td align="center" colspan="2">
												<asp:Label ID="lblSocialMediaBoxOptionsTitle" resourcekey="lblSocialMediaBoxOptionsTitle" runat="server" Text="SocialMediaBox Options" CssClass="SMBtitle"></asp:Label>
											</td>
										</tr>
										<tr>
											<td style="width: 250px">
												<dnn:Label ID="lblsmbShowThumbnails" runat="server" Text="Show thumbnails panel:" HelpText="Show thumbnails panel:" ResourceKey="lblsmbShowThumbnails" HelpKey="lblsmbShowThumbnails.HelpText"></dnn:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSmbShowThumbnails" runat="server" />
											</td>
										</tr>
										<tr id="trSmbShowdetails" runat="server">
											<td style="width: 250px">
												<dnn:Label ID="lblsmbShowDetailsPanel" runat="server" Text="Show Item details panel:" HelpText="Show Item details panel:" HelpKey="lblsmbShowDetailsPanel.HelpText" ResourceKey="lblsmbShowDetailsPanel"></dnn:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSocialMediaBoxShowDetails" runat="server" />
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<table id="tblSmbOPtions" runat="server">
													<tr>
														<td>
															<table style="width: 100%; margin-bottom: 10px;">
																<tr>
																	<td style="width: 250px">
																		<dnn:Label ID="lblSmbShowTitle" runat="server" Text="Show title:" HelpText="Show title:" ResourceKey="lblSmbShowTitle" HelpKey="lblSmbShowTitle.HelpText"></dnn:Label>
																	</td>
																	<td>
																		<asp:CheckBox ID="cbSmbShowTitle" runat="server" />
																	</td>
																</tr>
																<tr>
																	<td>
																		<dnn:Label ID="lblSmbShowDescription" runat="server" Text="Show description:" HelpText="Show description:" ResourceKey="lblSmbShowDescription" HelpKey="lblSmbShowDescription.HelpText"></dnn:Label>
																	</td>
																	<td>
																		<asp:CheckBox ID="cbSmbShowDescription" runat="server" />
																	</td>
																</tr>
																<tr id="trsmbSocialSharing" runat="server">
																	<td>
																		<dnn:Label ID="lblSocialMediaBoxShowSocialSharing" runat="server" Text="Show social sharing buttons:" HelpText="Show social sharing buttons" ResourceKey="lblSocialMediaBoxShowSocialSharing" HelpKey="lblSocialMediaBoxShowSocialSharing.HelpText"></dnn:Label>
																	</td>
																	<td>
																		<asp:CheckBox ID="cbSocialMediaBoxShowSocialSharing" runat="server" />
																	</td>
																</tr>
																<tr id="trsmbSocialSharingButons" runat="server">
																	<td>
																		<dnn:Label ID="lblSmbSelectSocIalButtons" runat="server" Text="Select sharing buttons:" HelpText="Select sharing buttons" ResourceKey="lblSmbSelectSocIalButtons" HelpKey="lblSmbSelectSocIalButtons.HelpText"></dnn:Label>
																	</td>
																	<td>
																		<asp:CheckBox ID="cbSmbShowFacebook" runat="server" Text="Facebook" resourcekey="cbSmbShowFacebook" />
																		<asp:CheckBox ID="cbSmbShowTwitter" runat="server" Text="Twitter" resourcekey="cbSmbShowTwitter" />
																		<asp:CheckBox ID="cbSmbShowGooglePlus" runat="server" Text="Google Plus" resourcekey="cbSmbShowGooglePlus" />
																		<asp:CheckBox ID="cbSmbShowLinkedIn" runat="server" Text="LinkedIn" resourcekey="cbSmbShowLinkedIn" />
																		<asp:CheckBox ID="cbSmbShowPintrest" runat="server" Text="Pinterest" resourcekey="cbSmbShowPintrest" />
																	</td>
																</tr>
																<tr>
																	<td>
																		<dnn:Label ID="lblsmbShowEmail" runat="server" Text="Show email link:" HelpKey="lblsmbShowEmail.HelpText" HelpText="Show email link:" ResourceKey="lblsmbShowEmail"></dnn:Label>
																	</td>
																	<td>
																		<asp:CheckBox ID="cbsmbShowEmailLink" runat="server" />
																	</td>
																</tr>
																<tr>
																	<td>
																		<dnn:Label ID="lblsmbShowUploaderInfo" runat="server" Text="Show user info:" HelpText="Show information about the user who added the image or other media." HelpKey="lblsmbShowUploaderInfo.HelpText" ResourceKey="lblsmbShowUploaderInfo"></dnn:Label>
																	</td>
																	<td>
																		<asp:CheckBox ID="cbSmbShowUploaderInfo" runat="server" />
																	</td>
																</tr>
																<tr>
																	<td>
																		<dnn:Label ID="lblSmbAvatarProvider" runat="server" Text="Select avatar provider:" HelpKey="lblSmbAvatarProvider.HelpText" ResourceKey="lblSmbAvatarProvider" HelpText="Select avatar provider:"></dnn:Label>
																	</td>
																	<td>
																		<asp:RadioButtonList ID="rblSmbAvatarProvider" runat="server" RepeatDirection="Horizontal">
																			<asp:ListItem resourcekey="liGravatar" Selected="True" Value="1">Gravatar</asp:ListItem>
																			<asp:ListItem resourcekey="liDNNProfile" Value="2">DNN profile</asp:ListItem>
																			<asp:ListItem resourcekey="liNoAvatars" Value="0">No avatars</asp:ListItem>
																		</asp:RadioButtonList>
																	</td>
																</tr>
																<tr>
																	<td>
																		<dnn:Label ID="lblSmbPostCommentTojournal" runat="server" Text="Post comment notification to Journal:" HelpKey="lblSmbPostCommentTojournal.HelpText" ResourceKey="lblSmbPostCommentTojournal" HelpText="When someone adds a comment, the notice of added comment will be posted on Journal."></dnn:Label>
																	</td>
																	<td>
																		<asp:CheckBox ID="cbSmbPostCommentToJournal" runat="server" />
																	</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr id="trSmbPermissions" runat="server">
														<td>
															<div id="pnlAllSettings" class="module_settings" runat="server">
																<div id="pnlPermissions" runat="server" class="settings_category_container">
																	<div class="category_content" style="padding: 0;">
																		<div class="first_coll_fixed_table singleTable">
																			<asp:GridView ID="gvRolePermisionSettings" runat="server" CssClass="settings_table permissionsNotifications" AutoGenerateColumns="False" DataKeyNames="RoleID" CellPadding="0" OnRowDataBound="gvRolePermisionSettings_RowDataBound">
																				<AlternatingRowStyle CssClass="second" />
																				<Columns>
																					<asp:TemplateField HeaderText="Roles">
																						<ItemTemplate>
																							<p>
																								<asp:Label ID="lblRoleName" runat="server" Text='<%#Eval("RoleName")%>' resourcekey="lblRoleNameResource1"></asp:Label>
																							</p>
																						</ItemTemplate>
																						<HeaderStyle CssClass="header_cell" />
																						<ItemStyle CssClass="subjectName" />
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Show comments">
																						<ItemTemplate>
																							<asp:HiddenField ID="hfRoleID" runat="server" Value='<%# GetRoleID(Eval("RoleID"))%>' />
																							<asp:HiddenField ID="hfRoleName" runat="server" Value='<%# Eval("RoleName") %>' />
																							<asp:CheckBox ID="cbShowComments" runat="server" Checked='<%#Convert.ToBoolean(Eval("ShowComments"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable commenting">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToComment" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToComment"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable comment editing">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbCommentEditing" runat="server" Checked='<%#Convert.ToBoolean(Eval("CommentEditing"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable comment deleting">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbCommentDeleting" runat="server" Checked='<%#Convert.ToBoolean(Eval("CommentDeleting"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Show rating">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbShowrating" runat="server" Checked='<%#Convert.ToBoolean(Eval("Showrating"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable rating">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToRate" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToRate"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable Liking">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToLike" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToLike"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable download">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToDownload" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToDownload"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																				</Columns>
																			</asp:GridView>
																		</div>
																		<div class="first_coll_fixed_table singleTable" style="margin: 15px 0 0;">
																			<asp:GridView ID="gvUserPermisionSettings" runat="server" CssClass="settings_table permissionsNotifications" AutoGenerateColumns="False" DataKeyNames="UserID" CellPadding="0" OnRowCommand="gvUserNotificationSettings_RowCommand">
																				<AlternatingRowStyle CssClass="second" />
																				<Columns>
																					<asp:TemplateField HeaderText="Users">
																						<ItemTemplate>
																							<p>
																								<asp:Label ID="lblUserName" runat="server" Text='<%#Eval("UserName")%>' resourcekey="lblRoleNameResource1"></asp:Label>
																							</p>
																						</ItemTemplate>
																						<HeaderStyle CssClass="header_cell" />
																						<ItemStyle CssClass="subjectName" />
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Show comments">
																						<ItemTemplate>
																							<asp:HiddenField ID="hfUserID" runat="server" Value='<%# Eval("UserID") %>' />
																							<asp:HiddenField ID="hfUsername" runat="server" Value='<%# Eval("Username") %>' />
																							<asp:CheckBox ID="cbShowComments" runat="server" Checked='<%#Convert.ToBoolean(Eval("ShowComments"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable commenting">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToComment" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToComment"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable comment editing">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbCommentEditing" runat="server" Checked='<%#Convert.ToBoolean(Eval("CommentEditing"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable comment deleting">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbCommentDeleting" runat="server" Checked='<%#Convert.ToBoolean(Eval("CommentDeleting"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Show rating">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbShowrating" runat="server" Checked='<%#Convert.ToBoolean(Eval("Showrating"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable rating">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToRate" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToRate"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable Liking">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToLike" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToLike"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="Enable download">
																						<ItemTemplate>
																							<asp:CheckBox ID="cbAllowToDownload" runat="server" Checked='<%#Convert.ToBoolean(Eval("AllowToDownload"))%>' />
																						</ItemTemplate>
																					</asp:TemplateField>
																					<asp:TemplateField HeaderText="">
																						<ItemTemplate>
																							<asp:LinkButton ID="lbUserPermissionsRemove" resourcekey="lbUserPermissionsRemove" runat="server" CausesValidation="False" CommandArgument='<%#Eval("UserID")%>' CommandName="Remove" OnClientClick="return confirm('Are you sure you want to remove this user notifications?');"
																								Text="Remove"></asp:LinkButton>
																						</ItemTemplate>
																					</asp:TemplateField>
																				</Columns>
																			</asp:GridView>
																		</div>
																	</div>
																</div>
															</div>
															<table class="permissions_table" style="margin-top: 10px;">
																<tr>
																	<td class="subject" colspan="2">
																		<asp:Label ID="lblAdduserMessage" runat="server" EnableViewState="False" ForeColor="Red" />
																	</td>
																</tr>
																<tr>
																	<td class="subject">
																		<asp:Label ID="lblUsernameToAdd" resourcekey="lblUsernameToAdd" runat="server" Text="Add user by username:" Font-Bold="True" />
																	</td>
																	<td style="width: 250px; text-align: left;">
																		<asp:TextBox ID="tbUserNameToAdd" runat="server" />
																		<asp:LinkButton ID="lbUsernameAddPermissions" runat="server" resourcekey="lbUsernameAddPermissions" Text="Add" OnClick="lbUsernameAddPermissions_Click" />
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr id="trppOptions" runat="server">
								<td>
									<dnn:Label ID="lblLightBoxThemeSelect" ResourceKey="lblLightBoxThemeSelect" runat="server" Text="Select lightbox theme:" HelpText="Select the theme for lightbox:" HelpKey="lblLightBoxThemeSelect.HelpText"></dnn:Label>
								</td>
								<td>
									<asp:RadioButtonList ID="rblLightboxType" runat="server" Width="282px">
										<asp:ListItem Value="pp_default" resourcekey="ListItemResourceBlackAndWhite" Selected="True">Black and white modern</asp:ListItem>
										<asp:ListItem Value="light_rounded" resourcekey="ListItemResource11">Light rounded</asp:ListItem>
										<asp:ListItem Value=" light_square" resourcekey="ListItemResource12"> Light square</asp:ListItem>
										<asp:ListItem Value="dark_rounded" resourcekey="ListItemResource13">Dark rounded</asp:ListItem>
										<asp:ListItem Value="dark_square" resourcekey="ListItemResource14">Dark square</asp:ListItem>
										<asp:ListItem Value="facebook" resourcekey="ListItemResource15">Black and white rounded</asp:ListItem>
									</asp:RadioButtonList>
								</td>
							</tr>
							<tr id="trppOptionsSocialSharing" runat="server">
								<td>
									<dnn:Label ID="lblLightBoxImageOptions" runat="server" Text="Lightbox image options:" HelpText="Lightbox image options:" HelpKey="lblLightBoxImageOptions.HelpText" ResourceKey="lblLightBoxImageOptions"></dnn:Label>
								</td>
								<td>
									<asp:CheckBox ID="cbShowPrintButton" resourcekey="cbShowPrintButton" runat="server" Text="Show print button" />
									<br />
									<asp:CheckBox ID="cbShowEmailButton" resourcekey="cbShowEmailButton" runat="server" Text="Show email button" />
									<br />
									<asp:CheckBox ID="cbEnableSocialSharing" resourcekey="cbEnableSocialSharing" runat="server" Text="Enable social sharing" />
								</td>
							</tr>
							<tr>
								<td>&nbsp;
								</td>
								<td>&nbsp;
								</td>
							</tr>
							<tr id="trCustomJquery" runat="server">
								<td>
									<dnn:Label ID="lblLightBoxJquerySelect" runat="server" Text="Include jQuery:" HelpText="Include jQuery:" HelpKey="lblLightBoxJquerySelect.HelpText" ResourceKey="lblLightBoxJquerySelect"></dnn:Label>
								</td>
								<td>
									<asp:RadioButtonList ID="rblIncludejQuery" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblIncludejQuery_SelectedIndexChanged" RepeatDirection="Horizontal">
										<asp:ListItem resourcekey="liUseDafultSettings" Selected="True" Value="default">Use default settings</asp:ListItem>
										<asp:ListItem resourcekey="liCustomizeForThisModuleSettings" Value="custom">Customize for this module</asp:ListItem>
									</asp:RadioButtonList>
									<asp:CheckBox ID="cbIncludeJquery" runat="server" Checked="True" Visible="False" />
								</td>
							</tr>

							<tr>
								<td>
									<dnn:Label ID="lblLightBoxOpacity" runat="server" Text="Lightbox opacity:" HelpText="Set the Lightbox opacity:" Visible="False"></dnn:Label>
								</td>
								<td>
									<asp:TextBox ID="tbLightboxOpacity" runat="server" Width="50px" Visible="False">80</asp:TextBox>
									&nbsp;<asp:RequiredFieldValidator ID="rfvAGSPlayerVolume0" runat="server" ControlToValidate="tbLightboxOpacity" Display="Dynamic" ErrorMessage="This field is required." Visible="False" resourcekey="rfvAGSPlayerVolume0Resource1.ErrorMessage" SetFocusOnError="True"></asp:RequiredFieldValidator>
									<asp:RangeValidator ID="rvAGVolume0" runat="server" ControlToValidate="tbLightboxOpacity" Display="Dynamic" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" Type="Integer" Visible="False" resourcekey="rvAGVolume0Resource1.ErrorMessage"
										SetFocusOnError="True">
									</asp:RangeValidator>
								</td>
							</tr>
							<tr>
								<td>
									<dnn:Label ID="lblLightBoxOpacity0" runat="server" Text="Lightbox padding:" HelpText="Lightbox padding:" Visible="False"></dnn:Label>
								</td>
								<td>
									<asp:TextBox ID="tbLightboxPadding" runat="server" Visible="False" Width="50px">80</asp:TextBox>
									&nbsp;<asp:RequiredFieldValidator ID="rfvAGSPlayerVolume1" runat="server" ControlToValidate="tbLightboxPadding" Display="Dynamic" ErrorMessage="This field is required." Visible="False" resourcekey="rfvAGSPlayerVolume1Resource1.ErrorMessage" SetFocusOnError="True"></asp:RequiredFieldValidator>
									<asp:RangeValidator ID="rvAGVolume1" runat="server" ControlToValidate="tbLightboxPadding" Display="Dynamic" ErrorMessage="Enter value between 20-300." MaximumValue="300" MinimumValue="20" Type="Integer" Visible="False" resourcekey="rvAGVolume1Resource1.ErrorMessage"
										SetFocusOnError="True">
									</asp:RangeValidator>
								</td>
							</tr>
							<tr>
								<td>
									<dnn:Label ID="lblLightBoxOpacity1" runat="server" Text="Show title in Lightbox:" HelpText="Show media title in Lightbox:" Visible="False"></dnn:Label>
								</td>
								<td>
									<asp:CheckBox ID="cbLightBoxTitle" runat="server" Visible="False" resourcekey="cbLightBoxTitleResource1" />
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr id="trJpegQuality" runat="server">
					<td style="width: 140px">
						<dnn:Label ID="lblJpegQuality" resourcekey="lblJpegQuality" runat="server" Text="Jpeg quality:" HelpText="Jpeg quality."></dnn:Label>
					</td>
					<td>
						<asp:TextBox ID="tbJpegQuality" runat="server" Visible="True" Width="50px">97</asp:TextBox>
						<asp:RangeValidator ID="rvJpegQuality" runat="server" ControlToValidate="tbJpegQuality" Display="Dynamic" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" resourcekey="rvAGVolume0Resource1.ErrorMessage" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
					</td>
				</tr>
			</table>
			<table>
			</table>
			<div style="background: #EFEFEF">
				<table id="tblIntegrate" runat="server" width="80%" cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>&nbsp;
						</td>
					</tr>
					<tr>
						<td>
							<asp:CheckBox ID="cbIntegrateGalleryWithBlog" runat="server" OnCheckedChanged="cbIntegrate_CheckedChanged" Text="Integrate this gallery display with news or blog module" AutoPostBack="True" Font-Bold="True" resourcekey="cbIntegrateGalleryWithBlogResource1" />
						</td>
					</tr>
					<tr>
						<td>&nbsp;
						</td>
					</tr>
					<tr>
						<td>&nbsp;
						</td>
					</tr>
				</table>
			</div>
			<asp:Panel ID="pnlBlogIntegrate" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsintleft">
							</div>
						</td>
						<td style="background-color: #7a7a7a">
							<asp:Label ID="lblEditIntegration" runat="server" CssClass="settingsinttitle" Text="Edit Integration" resourcekey="lblEditIntegrationResource1"></asp:Label>
						</td>
						<td>
							<div class="settingsintright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsintbgrd">
				</div>
				<div class="settingsinttable">
					<table align="center" cellpadding="2" cellspacing="2">
						<tr>
							<td colspan="3">
								<table align="center" cellpadding="2" cellspacing="2">
									<tr>
										<td>&nbsp;
										</td>
										<td class="style7">&nbsp;
										</td>
										<td>&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											<dnn:Label ID="lblQueryString" ResourceKey="lblQueryString" runat="server" Text="Enter query string:" ControlName="tbQueryString" HelpText="Enter the query string of blog module:" HelpKey="lblQueryString.HelpText"></dnn:Label>
										</td>
										<td class="style7">
											<asp:TextBox ID="tbQueryString" runat="server" Style="margin-left: 0px" Width="100px">
											</asp:TextBox>
										</td>
										<td>
											<asp:RequiredFieldValidator ID="rfvIntegrationQueryString" runat="server" ControlToValidate="tbQueryString" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvIntegrationQueryStringResource1.ErrorMessage">
											</asp:RequiredFieldValidator>
										</td>
									</tr>
									<tr>
										<td>
											<dnn:Label ID="lblArticleID" ResourceKey="lblArticleID" runat="server" ControlName="tbIntegArtID" HelpText="Enter the ID of blog article:" Text="Enter ArticleID:" HelpKey="lblArticleID.HelpText" />
										</td>
										<td class="style7">
											<dnn:Label ID="lblIntegratedGalllerySelection" ResourceKey="lblIntegratedGalllerySelection" runat="server" ControlName="ddlIntegGalSel" HelpText="Select the gallery to integrate with blog:" Text="Select gallery to display:" HelpKey="lblIntegratedGalllerySelection.HelpText" />
										</td>
										<td>&nbsp;
										</td>
									</tr>
									<tr>
										<td>
											<asp:TextBox ID="tbIntegArtID" runat="server" Style="margin-left: 0px" Width="100px">
											</asp:TextBox>
											<br />
										</td>
										<td class="style7">
											<asp:DropDownList ID="ddlIntegGalSel" runat="server" DataSourceID="odsGallery" DataTextField="GalleryName" DataValueField="GalleryID" Width="190px">
											</asp:DropDownList>
										</td>
										<td>
											<asp:Button ID="btnAddList" runat="server" OnClick="btnAddList_Click" Text="Add" Width="90px" resourcekey="btnAddListResource1" />
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;
							<asp:RequiredFieldValidator ID="rfvIntegrationArticleID" runat="server" ControlToValidate="tbIntegArtID" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvIntegrationArticleIDResource1.ErrorMessage">
							</asp:RequiredFieldValidator>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style5" colspan="3" align="center">&nbsp;
							</td>
						</tr>
						<tr>
							<td align="center" colspan="3">
								<asp:GridView ID="gvIntegration" runat="server" AllowPaging="True" AutoGenerateColumns="False" border="0" CellPadding="4" CssClass="intliststylebox" DataKeyNames="EntryID" DataSourceID="odsIntegration" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvIntegration_SelectedIndexChanged"
									PageSize="30" Width="600px">
									<AlternatingRowStyle CssClass="intgrid1" />
									<Columns>
										<asp:TemplateField HeaderText="Actions" ShowHeader="False">
											<EditItemTemplate>
												<asp:LinkButton ID="lblgvIntegrateUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update" resourcekey="lblgvIntegrateUpdate"></asp:LinkButton>
												&nbsp;<asp:LinkButton ID="lblgvIntegrateCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" resourcekey="lblgvIntegrateCancel"></asp:LinkButton>
											</EditItemTemplate>
											<ItemTemplate>
												<asp:LinkButton ID="lblGVIntegrateEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" resourcekey="lblGVIntegrateEdit"></asp:LinkButton>
												&nbsp;<asp:LinkButton ID="lblGVIntegrateDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" resourcekey="lblGVIntegrateDelete"></asp:LinkButton>
											</ItemTemplate>
											<ControlStyle CssClass="gallerycontrollinklight" />
											<HeaderStyle VerticalAlign="Middle" />
											<ItemStyle CssClass="gallerycontrollinklight" />
										</asp:TemplateField>
										<asp:BoundField DataField="ArticleID" HeaderText="ArticleID">
											<HeaderStyle VerticalAlign="Middle" />
											<ItemStyle HorizontalAlign="Center" />
										</asp:BoundField>
										<asp:BoundField DataField="GalleryID" HeaderText="GalleryID">
											<HeaderStyle VerticalAlign="Middle" />
											<ItemStyle HorizontalAlign="Center" />
										</asp:BoundField>
										<asp:BoundField DataField="GalleryName" HeaderText="Galleryname" ReadOnly="True">
											<ItemStyle HorizontalAlign="Center" />
										</asp:BoundField>
									</Columns>
									<FooterStyle CssClass="intgrid1" />
									<HeaderStyle CssClass="settingsintheaderbgrd" Font-Names="arial" Font-Size="14px" ForeColor="#343E1C" VerticalAlign="Middle" />
									<PagerStyle BackColor="#E3E1E1" CssClass="pagegal" ForeColor="#556C20" Height="45px" HorizontalAlign="Center" />
									<RowStyle CssClass="intgrid2" />
									<SelectedRowStyle CssClass="intgridselected" />
								</asp:GridView>
							</td>
						</tr>
						<tr>
							<td>
								<asp:ObjectDataSource ID="odsIntegration" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetAllIntegration" DeleteMethod="DeleteIntegration" UpdateMethod="UpdateIntegration" OnSelecting="odsIntegration_Selecting">
									<DeleteParameters>
										<asp:Parameter Name="EntryID" Type="Int32" />
									</DeleteParameters>
									<SelectParameters>
										<asp:Parameter Name="PortalID" Type="Int32" />
										<asp:Parameter Name="ModuleID" Type="Int32" />
									</SelectParameters>
									<UpdateParameters>
										<asp:Parameter Name="EntryID" Type="Int32" />
										<asp:Parameter Name="ArticleID" Type="Int32" />
										<asp:Parameter Name="GalleryID" Type="Int32" />
									</UpdateParameters>
								</asp:ObjectDataSource>
							</td>
							<td class="style7">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td class="style7">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td class="style7">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
					</table>
				</div>
				<br />
				<br />
			</asp:Panel>
			<asp:Panel ID="pnlUserUpload" runat="server" BackColor="#EFEFEF">
				<div style="background: #EFEFEF">
					<table width="80%" cellpadding="0" cellspacing="0" align="center">
						<tr>
							<td>
								<asp:CheckBox ID="cbEnableUserUpload" runat="server" AutoPostBack="True" OnCheckedChanged="cbEnableUserUpload_CheckedChanged" Text="Enable user upload into this gallery" resourcekey="lblEnableUserUpload" Font-Bold="True" />
							</td>
						</tr>
					</table>
				</div>
				<br />
				<asp:Panel ID="pnlUserUpladSettings" runat="server" Visible="False">
					<table cellpadding="0" cellspacing="0" align="center">
						<tr>
							<td>
								<div class="settingsintleft">
								</div>
							</td>
							<td style="background-color: #7a7a7a">
								<asp:Label ID="lblUUserUpload" runat="server" resourcekey="lblUUserUpload" CssClass="settingsinttitle" Text="User Upload"></asp:Label>
							</td>
							<td>
								<div class="settingsintright">
								</div>
							</td>
						</tr>
					</table>
					<div class="settingsintbgrd">
					</div>
					<div class="settingsinttable">
						<table align="center" cellpadding="2" cellspacing="2">
							<tr>
								<td>
									<table align="center" cellpadding="2" cellspacing="2">
										<tr>
											<td>
												<table class="style66">
													<tr>
														<td class="style84">&nbsp;
														</td>
														<td></td>
													</tr>
													<tr>
														<td class="style84">
															<dnn:Label ID="lblUserUploadRoles" runat="server" Text="Select roles:" HelpText="Select security roles that can upload or approve media." HelpKey="lblUserUploadRoles.HelpText" ResourceKey="lblUserUploadRoles"></dnn:Label>
														</td>
														<td>
															<asp:GridView ID="gvUploadRoles" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="intliststylebox" ForeColor="#333333" GridLines="None" OnRowDataBound="gvUploadRoles_RowDataBound">
																<RowStyle BackColor="#EFEFEF" ForeColor="#333333" />
																<Columns>
																	<asp:TemplateField HeaderText="Role">
																		<EditItemTemplate>
																			<asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
																		</EditItemTemplate>
																		<ItemTemplate>
																			<asp:Label ID="lblRoleName" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
																		</ItemTemplate>
																	</asp:TemplateField>
																	<asp:TemplateField HeaderText="Images">
																		<EditItemTemplate>
																			<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Image") %>'></asp:TextBox>
																		</EditItemTemplate>
																		<ItemTemplate>
																			<asp:CheckBox ID="cbImage" runat="server" Checked='<%# Bind("Image") %>' />
																		</ItemTemplate>
																		<ItemStyle HorizontalAlign="Center" />
																	</asp:TemplateField>
																	<asp:TemplateField HeaderText="Video files">
																		<EditItemTemplate>
																			<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("[Video files]") %>'></asp:TextBox>
																		</EditItemTemplate>
																		<ItemTemplate>
																			<asp:CheckBox ID="cbVideoFiles" runat="server" Checked='<%# Bind("[Video files]") %>' />
																		</ItemTemplate>
																		<ItemStyle HorizontalAlign="Center" />
																	</asp:TemplateField>
																	<asp:TemplateField HeaderText="Embed Video">
																		<EditItemTemplate>
																			<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Video") %>'></asp:TextBox>
																		</EditItemTemplate>
																		<ItemTemplate>
																			<asp:CheckBox ID="cbVideo" runat="server" Checked='<%# Bind("Video") %>' />
																		</ItemTemplate>
																		<ItemStyle HorizontalAlign="Center" />
																	</asp:TemplateField>
																	<asp:TemplateField HeaderText="Audio">
																		<EditItemTemplate>
																			<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Audio") %>'></asp:TextBox>
																		</EditItemTemplate>
																		<ItemTemplate>
																			<asp:CheckBox ID="cbAudio" runat="server" Checked='<%# Bind("Audio") %>' />
																		</ItemTemplate>
																		<ItemStyle HorizontalAlign="Center" />
																	</asp:TemplateField>
																	<asp:TemplateField HeaderText="Approve">
																		<EditItemTemplate>
																			<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Approve") %>'></asp:TextBox>
																		</EditItemTemplate>
																		<ItemTemplate>
																			<asp:CheckBox ID="cbApproved" runat="server" Checked='<%# Bind("Approved") %>' />
																		</ItemTemplate>
																		<ItemStyle HorizontalAlign="Center" />
																	</asp:TemplateField>
																</Columns>
																<FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
																<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
																<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
																<HeaderStyle BackColor="#7A7A7A" Font-Bold="True" ForeColor="White" />
																<EditRowStyle BackColor="#999999" />
																<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
															</asp:GridView>
														</td>
													</tr>
													<tr>
														<td class="style84">
															<dnn:Label ID="lblEnableApproval" runat="server" Text="Aprove Media:" HelpText="Uploaded media needs approval." HelpKey="lblEnableApproval.HelpText" ResourceKey="lblEnableApproval"></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbApproveMedia" runat="server" />
														</td>
													</tr>
													<tr>
														<td class="style84">
															<dnn:Label ID="lblEnterUrl" runat="server" Text="Show enter url:" HelpText="Show field for image link on upload form." HelpKey="lblEnterUrl.HelpText" ResourceKey="lblEnterUrl"></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbShowEnterUrl" runat="server" />
														</td>
													</tr>
													<tr>
														<td class="style84">
															<dnn:Label ID="lblResizeImages" runat="server" Text="Resize images:" HelpText="Resize uploaded images:" HelpKey="lblResizeImages.HelpText" ResourceKey="lblResizeImages"></dnn:Label>
														</td>
														<td>
															<asp:Panel ID="pnlImageUploadResize" runat="server">
																<table>
																	<tr>
																		<td rowspan="2">
																			<asp:CheckBox ID="cbResizeImages" runat="server" />
																			&nbsp;
																		</td>
																		<td>
																			<asp:Label ID="lblImageUploadResizeWidth" runat="server" resourcekey="lblImageUploadResizeWidthResource1" Text="Max width:"></asp:Label>
																		</td>
																		<td>
																			<asp:TextBox ID="tbImageUploadResizeWidth" runat="server" Text="800" Width="50px">
																			</asp:TextBox>
																			<asp:CompareValidator ID="cvImagerResize" runat="server" ControlToValidate="tbImageUploadResizeWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImagerResizeResource1.ErrorMessage" Type="Integer"
																				ValidationGroup="vgImageUpload">
																			</asp:CompareValidator>
																			<asp:RequiredFieldValidator ID="rfvImageUpload" runat="server" ControlToValidate="tbImageUploadResizeWidth" ErrorMessage="This filed is required." resourcekey="rfvImageUploadResource1.ErrorMessage" ValidationGroup="vgImageUpload">
																			</asp:RequiredFieldValidator>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:Label ID="lblImageUploadResizeHeight" runat="server" resourcekey="lblImageUploadResizeHeightResource1" Text="Max height:"></asp:Label>
																		</td>
																		<td>
																			<asp:TextBox ID="tbImageUploadResizeHeight" runat="server" Text="600" Width="50px">
																			</asp:TextBox>
																			<asp:CompareValidator ID="cvImagerResizeHeight" runat="server" ControlToValidate="tbImageUploadResizeHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImagerResizeHeightResource1.ErrorMessage" Type="Integer"
																				ValidationGroup="vgImageUpload">
																			</asp:CompareValidator>
																			<asp:RequiredFieldValidator ID="rfvImageUploadHeight" runat="server" ControlToValidate="tbImageUploadResizeHeight" ErrorMessage="This filed is required." resourcekey="rfvImageUploadHeightResource1.ErrorMessage" ValidationGroup="vgImageUpload">
																			</asp:RequiredFieldValidator>
																		</td>
																	</tr>
																</table>
															</asp:Panel>
														</td>
													</tr>
													<tr>
														<td class="style84">
															<dnn:Label ID="lblShowOnlyUpload" runat="server" Text="Show only upload control:" HelpKey="lblShowOnlyUpload.HelpText" HelpText="Show only user upload control on the page:" ResourceKey="lblShowOnlyUpload"></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbShowOnlyUpload" runat="server" />
														</td>
													</tr>
												</table>
											</td>
											<td>&nbsp;
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</asp:Panel>
			</asp:Panel>
			<asp:Panel ID="pnlSocialMediaBoxForJournal" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblSmbJournalDisplaySettins" runat="server" Text="SocialMediaBox For DNN Journal" CssClass="settingsdetailtitle"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style104">&nbsp;
							</td>
							<td class="style46">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td>
								<asp:Label ID="lblSmbJOurnalInstructions" runat="server" Text="Use this view type on the page where DNN Journal module is present."></asp:Label>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td>
								<asp:Label ID="lblSmbJournalStatus" runat="server" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td>
								<asp:Button ID="btnSmbJournalGallerySave" runat="server" Text="Save settings" ValidationGroup="vgSmbJournalSettings" Width="140px" OnClick="btnSmbJournalGallerySave_Click" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button ID="btnSmbJournalGallerySaveClose" runat="server" Text="Save &amp; Close" ValidationGroup="vgSmbJournalSettings" Width="140px" OnClick="btnSmbJournalGallerySaveClose_Click" />
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlPortfolioPro" runat="server" BackColor="#EFEFEF" Visible="False">
				<table align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblPortfolioPro" runat="server" CssClass="settingsdetailtitle" Text="PortfolioPro"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table align="center" cellpadding="2" cellspacing="2" width="80%">
						<tr>
							<td class="style104">&nbsp;
							</td>
							<td class="style46" colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style112" colspan="4">
								<div class="settings_category_container">
									<div class="category_toggle">
										<p class="section_number">
											1
										</p>
										<h2>
											<span>Predefined settings</span>
										</h2>
									</div>
									<div class="category_content">
										<asp:HiddenField ID="hfPortfolioProTemplate" runat="server" Value="0" />
										<asp:DataList ID="dlPortfolioProPresets" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="datalist_table" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" OnItemCommand="dlPortfolioProPresets_ItemCommand" OnPreRender="dlPortfolioProPresets_PreRender">
											<ItemTemplate>
												<div>
													<h2>
														<asp:HiddenField ID="hfPresetFileName" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "FileName")%>' />
														<asp:Label ID="lblPresetName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>'></asp:Label></h2>
													<asp:Image ID="imgThumbPreSet" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "ImageURL") %>' CssClass="presetimage" />
													<asp:LinkButton ID="lbLoadXmlPreSet" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "FileName") %>' CommandName="Load" CssClass="EDR_admin_button"><span>Load</span></asp:LinkButton>
												</div>
											</ItemTemplate>
										</asp:DataList>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblPortfolioProGridAdjustment" runat="server" Text="Layout grid adjustment:" HelpText="Layout grid adjustment:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlPortfolioProGridAdjustment" runat="server">
									<asp:ListItem Value="0" Selected="True">Responsive</asp:ListItem>
									<asp:ListItem Value="1">Align Center</asp:ListItem>
									<asp:ListItem Value="2">No adjustment</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style112" style="background-color: #ceeff8">
								<dnn:Label ID="lblPortfolioProDisplayNestedGalleries" runat="server" HelpText="Display nested galleries:" Text="Display nested galleries:" />
							</td>
							<td class="style38" colspan="3">
								<div style="background-color: #ceeff8; display: inline-block; padding: 7px;">
									<asp:CheckBox ID="cbPortfolioProDisplayNestedGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioProDisplayNestedGalleries_CheckedChanged" />
								</div>
							</td>
						</tr>
						<tr>
							<td class="style37" colspan="4">
								<asp:Panel ID="pnlPortfolioProNestedGalleries" runat="server" Visible="False">
									<table border="0" cellpadding="0" cellspacing="0" class="tblnestedgallery" width="100%">
										<tr>
											<td>
												<asp:Panel ID="Panel2" runat="server" BackColor="#C9DEAD">
													<table cellpadding="0" cellspacing="0" class="style66" style="border-top: 3px solid #91c848">
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" class="tbltitlenestedcategory">
																	<tr>
																		<td style="background-color: #91c848">
																			<asp:Label ID="Label17" runat="server" CssClass="settingsdetailtitle" resourcekey="lblLightboxGalleryNestedGallerySettingsResource1" Text="Nested galleries settings"></asp:Label>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table align="center" border="0" cellpadding="2" cellspacing="2" width="80%">
																	<tr>
																		<td align="left">&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td align="left">
																			<asp:Label ID="Label18" runat="server" Font-Bold="True" resourcekey="lblLightboxGalleryNestedGallerySelectionResource1" Text="Gallery selection:"></asp:Label>
																			<br />
																			<asp:CheckBoxList ID="cblPortfolioProNestedGaleries" runat="server" CellPadding="2" CellSpacing="5" DataSourceID="odsGallery" DataTextField="GalleryName" DataValueField="GalleryID" OnDataBound="cblTGNGGallerySelection_DataBound" OnSelectedIndexChanged="cblChameleonGalleryNestedGallerySelection_SelectedIndexChanged"
																				RepeatColumns="2">
																			</asp:CheckBoxList>
																			<asp:Label ID="lblPortfolioProSelectOneNestedGallery" runat="server" ForeColor="Red" Text="Please add an select some galleries." Visible="False"></asp:Label>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioProSelectAllNestedGaleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioProSelectAllNestedGaleries_CheckedChanged" Text="Show all galleries" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioProShowGalleryMediaCounter" runat="server" Text="Show gallery media counter" Checked="True" />
																			&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioProShowAllButton" runat="server" Text="Show all button" Checked="True" /></td>
																	</tr>
																	<tr>
																		<td>&nbsp;</td>
																	</tr>
																	<tr>
																		<td class="style110">
																			<dnn:Label ID="lblPortfolioProNestedAnimationType" runat="server" Text="Nested animation type:" HelpText="Nested animation type:" />
																		</td>
																		<td class="style111">
																			<asp:DropDownList ID="ddlPortfolioProNestedAnimationType" runat="server">
																				<asp:ListItem Value="0">fadeOut</asp:ListItem>
																				<asp:ListItem Value="1">quicksand</asp:ListItem>
																				<asp:ListItem Value="2">boxShadow</asp:ListItem>
																				<asp:ListItem Value="3">bounceLeft</asp:ListItem>
																				<asp:ListItem Value="4">bounceTop</asp:ListItem>
																				<asp:ListItem Value="5">bounceBottom</asp:ListItem>
																				<asp:ListItem Value="6">moveLeft</asp:ListItem>
																				<asp:ListItem Value="7">slideLeft</asp:ListItem>
																				<asp:ListItem Value="8">fadeOutTop</asp:ListItem>
																				<asp:ListItem Value="9"> sequentially</asp:ListItem>
																				<asp:ListItem Value="11">skew</asp:ListItem>
																				<asp:ListItem Value="10">slideDelay</asp:ListItem>
																				<asp:ListItem Value="12">rotateSides</asp:ListItem>
																				<asp:ListItem Value="13">flipOutDelay</asp:ListItem>
																				<asp:ListItem Value="14">flipOut</asp:ListItem>
																				<asp:ListItem Value="15">unfold</asp:ListItem>
																				<asp:ListItem Value="16">foldLeft</asp:ListItem>
																				<asp:ListItem Value="17">scaleDown</asp:ListItem>
																				<asp:ListItem Value="18">scaleSides</asp:ListItem>
																				<asp:ListItem Value="19">frontRow</asp:ListItem>
																				<asp:ListItem Value="20">flipBottom</asp:ListItem>
																				<asp:ListItem Value="21">rotateRoom</asp:ListItem>
																			</asp:DropDownList>
																		</td>
																	</tr>
																	<tr>
																		<td class="style110">
																			<dnn:Label ID="lblPortfolioProNestedNavigationType" runat="server" Text="Nested menu type:" HelpText="Nested menu type:" />
																		</td>
																		<td class="style111">
																			<asp:DropDownList ID="ddlPortfolioProNestedNavigationType" runat="server">
																				<asp:ListItem Value="0">Dropdown list</asp:ListItem>
																				<asp:ListItem Value="1">Menu bar</asp:ListItem>
																			</asp:DropDownList>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</asp:Panel>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="3">
								<asp:Label ID="lblPortfolioProThemeSelectionTitle" runat="server" Font-Bold="True" Text="Theme selection"></asp:Label>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblPortfolioProThemeSelection" runat="server" Text="Select theme:" HelpText="Select theme." />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlPortfolioProThemeSelection" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="3">
								<asp:Label ID="lblPortfolioProTitleAndDescription" runat="server" Font-Bold="True" Text="Title and description"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbPortfolioProShowMediaTitle" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbPortfolioProShowMediaDescription" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProShowSubtitle" runat="server" HelpText="Show media subtitle:" Text="Show media subtitle:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbPortfolioProShowSubtitle" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblPortfolioProCaptionAnimationType" runat="server" Text="Caption animation type:" HelpText="Caption animation type:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlPortfolioProCaptionAnimationType" runat="server">
									<asp:ListItem Value="0">pushTop</asp:ListItem>
									<asp:ListItem Value="1">pushDown</asp:ListItem>
									<asp:ListItem Value="2">revealBottom</asp:ListItem>
									<asp:ListItem Value="3">revealTop</asp:ListItem>
									<asp:ListItem Value="4">revealRight</asp:ListItem>
									<asp:ListItem Value="5">revealLeft</asp:ListItem>
									<asp:ListItem Value="6">overlayBottomPush</asp:ListItem>
									<asp:ListItem Value="7">overlayBottom</asp:ListItem>
									<asp:ListItem Value="8">overlayBottomReveal</asp:ListItem>
									<asp:ListItem Value="9">overlayBottomAlong</asp:ListItem>
									<asp:ListItem Value="10">overlayRightAlong</asp:ListItem>
									<asp:ListItem Value="11">minimal</asp:ListItem>
									<asp:ListItem Value="12">fadeIn</asp:ListItem>
									<asp:ListItem Value="13">zoom</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="3">
								<asp:Label ID="lblPortfolioProThumbnails" runat="server" Font-Bold="True" Text="Thumbnails"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProThumbnailWidth" runat="server" HelpText="Thumb width:" Text="Thumb width:" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbPortfolioProThumbnailWidth" runat="server" ValidationGroup="vgPortfolioProSettings" Width="50px">80</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvPortfolioProThumbnailWidth" runat="server" ControlToValidate="tbPortfolioProThumbnailWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage" ValidationGroup="vgPortfolioProSettings" />
								<asp:CompareValidator ID="cvPortfolioProThumbnailWidth" runat="server" ControlToValidate="tbPortfolioProThumbnailWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioProSettings" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProThumbnailHeight" runat="server" HelpText="Thumb Height:" Text="Thumb Height:" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbPortfolioProThumbnailHeight" runat="server" ValidationGroup="vgPortfolioProSettings" Width="50px">80</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvPortfolioProThumbnailHeight" runat="server" ControlToValidate="tbPortfolioProThumbnailHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageHeightResource1.ErrorMessage"
									ValidationGroup="vgPortfolioProSettings" />
								<asp:CompareValidator ID="cvPortfolioProThumbnailHeight" runat="server" ControlToValidate="tbPortfolioProThumbnailHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioProSettings" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioProItemsperPage" runat="server" Text="Number of items per page:" HelpText="Number of items per page:"></dnn:Label>
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbPortfolioProItemsperPage" runat="server" ValidationGroup="vgPortfolioProSettings" Width="50px">9</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvPortfolioProItemsperPage" runat="server" ControlToValidate="tbPortfolioProItemsperPage" ErrorMessage="This field is required." ValidationGroup="vgPortfolioProSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryNumberOfItemsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvPortfolioProItemsperPage" runat="server" ControlToValidate="tbPortfolioProItemsperPage" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgPortfolioProSettings"
									resourcekey="cvLightBoxGalleryNumberOfItemsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProGapHorizontal" runat="server" HelpText="Thumb width:" Text="Items gap horizontal:" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbPortfolioProGapHorizontal" runat="server" ValidationGroup="vgPortfolioProSettings" Width="50px">10</asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbPortfolioProGapHorizontal" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage" ValidationGroup="vgPortfolioProSettings" />
								<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tbPortfolioProGapHorizontal" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioProSettings" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProGapVertical" runat="server" HelpText="Thumb vertical." Text="Items gap vertical:" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbPortfolioProGapVertical" runat="server" ValidationGroup="vgPortfolioProSettings" Width="50px">10</asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbPortfolioProGapVertical" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage" ValidationGroup="vgPortfolioProSettings" />
								<asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="tbPortfolioProGapVertical" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioProSettings" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProImagesDisplaySpeed" runat="server" HelpText="Images display speed." Text="Images display speed:" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbPortfolioProImagesDisplaySpeed" runat="server" ValidationGroup="vgPortfolioProSettings" Width="50px">100</asp:TextBox>
								<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbPortfolioProImagesDisplaySpeed" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage" ValidationGroup="vgPortfolioProSettings" />
								<asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="tbPortfolioProImagesDisplaySpeed" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioProSettings" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblPortfolioProImagesDisplayType" runat="server" Text="Images display type:" HelpText="Images display type:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlPortfolioProImagesDisplayType" runat="server">
									<asp:ListItem Value="0">Default</asp:ListItem>
									<asp:ListItem Value="1">fadeIn</asp:ListItem>
									<asp:ListItem Value="2">lazyLoading</asp:ListItem>
									<asp:ListItem Value="3">fadeInToTop</asp:ListItem>
									<asp:ListItem Value="4">sequentially</asp:ListItem>
									<asp:ListItem Value="5">bottomToTop</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="3">
								<asp:Label ID="lblPortfolioProLightboxOptions" runat="server" Font-Bold="True" Text="Lightbox options" />
							</td>
						</tr>
						<tr id="trPortfolioProOpenInLightbox" runat="server" visible="false">
							<td class="style113">
								<dnn:Label ID="lblPortfolioProOpenInLightbox" runat="server" HelpText="Open media in lightbox:" Text="Open media in lightbox:" />
							</td>
							<td colspan="3">
								<asp:RadioButtonList ID="rblPortfolioProOpenInLightbox" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem Selected="True" Value="0">Open in Lightbox</asp:ListItem>
									<asp:ListItem Selected="False" Value="1">Full page</asp:ListItem>
									<asp:ListItem Value="2">Inline</asp:ListItem>
									<asp:ListItem Value="3">Open image file</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProShowImageCounter" runat="server" HelpText="Show image counter in lightbox:" Text="Show image counter in lightbox" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbPortfolioProShowImageCounter" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblPortfolioProShowTitleInLightbox" runat="server" HelpText="Show title in lightbox:" Text="Show title in lightbox" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbPortfolioProShowTitleInLightbox" runat="server" Checked="True" />
							</td>
						</tr>
						<tr id="trPortfolioProInlinePostion" runat="server" visible="false">
							<td class="style113">
								<dnn:Label ID="lblPortfolioProInlinePostion" runat="server" HelpText="Inline lightbox position." Text="Inline lightbox position." />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlPortfolioProInlinePosition" runat="server">
									<asp:ListItem Value="0">above</asp:ListItem>
									<asp:ListItem Value="1">below</asp:ListItem>
									<asp:ListItem Value="2">top</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="3">
								<asp:Label ID="lblPortfolioProSortingTitle" runat="server" Font-Bold="True" Text="Sorting options" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioProSorting" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlPortfolioProSorting" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td align="left">
								<asp:RadioButtonList ID="rblPortfolioProSorting" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td align="left">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td colspan="3">
								<asp:Button ID="btnSatvePortfolioProSettings" runat="server" OnClick="btnPortfolioPro_Click" Text="Save settings" ValidationGroup="vgPortfolioProSettings" Width="140px" Style="height: 26px" />
								&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:Button ID="btnPortfolioProSaveClose" runat="server" OnClick="btnPortfolioProSaveClose_Click" Text="Save &amp; Close" ValidationGroup="vgPortfolioProSettings" Width="140px" />
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlChameleonGallery" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblChameleonGallery" runat="server" CssClass="settingsdetailtitle" Text="Chameleon Gallery"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style112">&nbsp;
							</td>
							<td class="style38" colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblChameleonSelectLayoutType" runat="server" HelpText="Select the layout type:" Text="Select the layout type:" HelpKey="lblChameleonSelectLayoutType.HelpText" ResourceKey="lblChameleonSelectLayoutType" />
							</td>
							<td align="left" class="style38" colspan="2">
								<asp:RadioButtonList ID="rblChameleonLayoutTypeSelect" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblChameleonLayoutTypeSelect_SelectedIndexChanged">
									<asp:ListItem resourcekey="liFixed" Selected="True" Value="fixed">Fixed Layout</asp:ListItem>
									<asp:ListItem resourcekey="liResponsive" Value="responsive">Responsive Layout</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style112" colspan="3">
								<div class="settings_category_container">
									<div class="category_toggle">
										<p class="section_number">
											1
										</p>
										<h2>
											<span>Predefined settings</span>
										</h2>
									</div>
									<div class="category_content">
										<asp:HiddenField ID="hfChameleonPreset" runat="server" Value="0" />
										<asp:DataList ID="dlChameleonPresets" runat="server" RepeatColumns="4" OnItemCommand="dlChameleonPresets_ItemCommand" RepeatDirection="Horizontal" CssClass="datalist_table" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top">
											<ItemTemplate>
												<div>
													<h2>
														<asp:HiddenField ID="hfPresetFileName" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "FileName")%>' />
														<asp:Label ID="lblPresetName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>'></asp:Label></h2>
													<asp:Image ID="imgThumbPreSet" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "ImageURL") %>' CssClass="presetimage" />
													<asp:LinkButton ID="lbLoadXmlPreSet" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "FileName") %>' CommandName="Load" CssClass="EDR_admin_button"><span>Load</span></asp:LinkButton>
												</div>
											</ItemTemplate>
										</asp:DataList>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td class="style38" colspan="2">
								<asp:Label ID="lblChameleonGalleryTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblLightboxTemplateSelect2" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblLightboxTemplateSelect.HelpText" HelpText="Select the control viewer template:" Text="Select template:" ResourceKey="lblVerticalCarouselTemplateSelect" />
							</td>
							<td class="style38" colspan="2">
								<asp:DropDownList ID="ddlChameleonGalleryTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLightboxTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblChameleonGalleryThemeSelect" runat="server" HelpText="Select the CSS theme file:" Text="Select CSS:" HelpKey="lblImageCarouselThemeSelect.HelpText" ResourceKey="lblImageCarouselThemeSelect" />
							</td>
							<td class="style38" align="left" colspan="2">
								<asp:DropDownList ID="ddlChameleonGalleryThemeSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlChameleonGalleryThemeSelect_SelectedIndexChanged1">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblChameleonGalleryThemeDisplayStyle" runat="server" HelpText="Select the CSS theme styling:" Text="Select the CSS theme styling:" HelpKey="lblChameleonGalleryThemeDisplayStyle.HelpText" ResourceKey="lblChameleonGalleryThemeDisplayStyle" />
							</td>
							<td align="left" class="style38" colspan="2">
								<asp:DropDownList ID="ddlChameleonGalleryThemeSelectStyling" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style112" style="background-color: #ceeff8">
								<dnn:Label ID="lblChameleonGalleryDispplayNestedGalleries" runat="server" HelpKey="lblLightboxGalleryDispplayNestedGalleries.HelpText" HelpText="Display nested galleries:" ResourceKey="lblLightboxGalleryDispplayNestedGalleries" Text="Display nested galleries:" />
							</td>
							<td class="style38" colspan="2">
								<div style="background-color: #ceeff8; display: inline-block; padding: 7px;">
									<asp:CheckBox ID="cbChameleonGalleryDisplayNestedGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbChameleonGalleryDisplayNestedGalleries_CheckedChanged" resourcekey="cbLightboxGalleryDisplayNestedGalleriesResource1" />
								</div>
							</td>
						</tr>
						<tr>
							<td class="style37" colspan="3">
								<asp:Panel ID="pnlChameleonGalleryNestedGalleriesOptions" runat="server" Visible="False">
									<table border="0" cellpadding="0" cellspacing="0" class="tblnestedgallery" width="100%">
										<tr>
											<td>
												<asp:Panel ID="pnlChameleonGalleryNGGallerySettings" runat="server" BackColor="#C9DEAD">
													<table cellpadding="0" cellspacing="0" class="style66" style="border-top: 3px solid #91c848">
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" class="tbltitlenestedcategory">
																	<tr>
																		<td style="background-color: #91c848">
																			<asp:Label ID="lblLightboxGalleryNestedGallerySettings2" runat="server" CssClass="settingsdetailtitle" resourcekey="lblLightboxGalleryNestedGallerySettingsResource1" Text="Nested galleries settings"></asp:Label>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table align="center" border="0" cellpadding="2" cellspacing="2" width="80%">
																	<tr>
																		<td align="left" colspan="3">&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td align="left" colspan="3">
																			<asp:Label ID="lblChameleonGalleryNestedGallerySelection" runat="server" Font-Bold="True" resourcekey="lblLightboxGalleryNestedGallerySelectionResource1" Text="Gallery selection:"></asp:Label>
																			<br />
																			<asp:CheckBoxList ID="cblChameleonGalleryNestedGallerySelection" runat="server" CellPadding="2" CellSpacing="5" DataSourceID="odsGallery" DataTextField="GalleryName" DataValueField="GalleryID" OnDataBound="cblTGNGGallerySelection_DataBound" OnSelectedIndexChanged="cblChameleonGalleryNestedGallerySelection_SelectedIndexChanged"
																				RepeatColumns="2">
																			</asp:CheckBoxList>
																			<asp:Label ID="lblChameleonGalleryNoNestedGalleryError" runat="server" ForeColor="Red" resourcekey="lblLightboxGalleryNoNestedGalleryErrorResource1" Text="Please add an select some galleries." Visible="False"></asp:Label>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="3">
																			<asp:CheckBox ID="cbChameleonGalleryNestedShowAllGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbChameleonGalleryNestedShowAllGalleries_CheckedChanged" resourcekey="cbLightboxGalleryNestedShowAllGalleriesResource1" Text="Show all galleries" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="3">&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td colspan="3">
																			<asp:Label ID="lblChameleonGalleryCategory" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryCategory" Text="Category options"></asp:Label>
																		</td>
																	</tr>
																	<tr id="trChamcNestedWidth" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGThumbWidth" runat="server" HelpText="Category item width:" Text="Category item width:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:TextBox ID="tbChameleonGalleryNGImageWidth" runat="server" ValidationGroup="vgChameleonSettings" Width="50px">100</asp:TextBox>
																			<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageHeight3" runat="server" ControlToValidate="tbChameleonGalleryNGImageHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageHeightResource1.ErrorMessage"
																				ValidationGroup="vgChameleonSettings">
																			</asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedImageHeight3" runat="server" ControlToValidate="tbChameleonGalleryNGImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedImageHeightResource1.ErrorMessage"
																				SetFocusOnError="True" Type="Integer" ValidationGroup="vgChameleonSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr id="trChamcNestedHeight" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGThumbHeight" runat="server" HelpKey="lblChameleonGalleryNGThumbHeight.HelpText" HelpText="Category item height:" ResourceKey="lblChameleonGalleryNGThumbHeight.Text" Text="Category item height:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:TextBox ID="tbChameleonGalleryNGImageHeight" runat="server" ValidationGroup="vgChameleonSettings" Width="50px">45</asp:TextBox>
																			<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth5" runat="server" ControlToValidate="tbChameleonGalleryNGImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
																				ValidationGroup="vgChameleonSettings">
																			</asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightBoxGalleryImageWidth3" runat="server" ControlToValidate="tbChameleonGalleryNGImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage"
																				Type="Integer" ValidationGroup="vgChameleonSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr id="trChamcNestedThumbPosition" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGThumbPosition" runat="server" HelpKey="lblChameleonGalleryNGThumbPosition.HelpText" HelpText="Category items position:" ResourceKey="lblChameleonGalleryNGThumbPosition.Text" Text="Category items position:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:RadioButtonList ID="rblChameleonGalleryNGThumbPositionInOut" runat="server" RepeatDirection="Horizontal">
																				<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutIN" Value="Inside">Inside image panel</asp:ListItem>
																				<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutOUT" Selected="True" Value="Outside">Outside image panel</asp:ListItem>
																			</asp:RadioButtonList>
																		</td>
																	</tr>
																	<tr id="trChamcNestedThumbPosition2" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGThumbPosition1" runat="server" HelpKey="lblChameleonGalleryNGThumbPosition1.HelpText" HelpText="Category items position:" ResourceKey="lblChameleonGalleryNGThumbPosition1.Text" Text="Category items position:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:RadioButtonList ID="rblChameleonGalleryNGThumbPositionLRTB" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblChameleonGalleryNGThumbPositionLRTB_SelectedIndexChanged" RepeatDirection="Horizontal">
																				<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBTop">Top</asp:ListItem>
																				<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBBottom" Selected="True">Bottom</asp:ListItem>
																				<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBLeft">Left</asp:ListItem>
																				<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBRight">Right</asp:ListItem>
																			</asp:RadioButtonList>
																		</td>
																	</tr>
																	<tr id="trChamcNestedGalContainer" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGContainer" runat="server" HelpKey="lblChameleonGalleryNGContainer.HelpText" HelpText="Category containter width:" ResourceKey="lblChameleonGalleryNGContainer.Text" Text="Category containter width:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:TextBox ID="tbChameleonGalleryCategoryWitdh" runat="server" Width="50px">580</asp:TextBox>
																			<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth6" runat="server" ControlToValidate="tbChameleonGalleryCategoryWitdh" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
																				ValidationGroup="vgChameleonSettings">
																			</asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightBoxGalleryImageHeight5" runat="server" ControlToValidate="tbChameleonGalleryCategoryWitdh" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
																				Type="Integer" ValidationGroup="vgChameleonSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr id="trChamcNestedGalContainerHeight" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGContainerHeight" runat="server" HelpKey="lblChameleonGalleryNGContainerHeight.HelpText" HelpText="Category containter height:" ResourceKey="lblChameleonGalleryNGContainerHeight.Text" Text="Category containter height:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:TextBox ID="tbChameleonGalleryCategoryHeight" runat="server" Height="22px" Width="50px">60</asp:TextBox>
																			<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth7" runat="server" ControlToValidate="tbChameleonGalleryCategoryHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
																				ValidationGroup="vgChameleonSettings">
																			</asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightBoxGalleryImageHeight6" runat="server" ControlToValidate="tbChameleonGalleryCategoryHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
																				Type="Integer" ValidationGroup="vgChameleonSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr id="trChamcNestedGalContainerPosition" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGContainerPosition" runat="server" HelpKey="lblChameleonGalleryNGContainerPosition.HelpText" HelpText="Position:" ResourceKey="lblChameleonGalleryNGContainerPosition.Text" Text="Position:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:TextBox ID="tbChameleonGalleryCategoryPriority" runat="server" Width="50px">1</asp:TextBox>
																			<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth8" runat="server" ControlToValidate="tbChameleonGalleryCategoryPriority" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
																				ValidationGroup="vgChameleonSettings">
																			</asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightBoxGalleryImageHeight7" runat="server" ControlToValidate="tbChameleonGalleryCategoryPriority" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
																				Type="Integer" ValidationGroup="vgChameleonSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr id="trChamcNestedGalContainerExpand" runat="server">
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGContainerExpand" runat="server" HelpKey="lblChameleonGalleryNGContainerExpand.HelpText" HelpText="Expand to 100% width:" ResourceKey="lblChameleonGalleryNGContainerExpand.Text" Text="Expand to 100% width:" />
																		</td>
																		<td class="style109" colspan="2">
																			<asp:CheckBox ID="cbChameleonGalleryNestedExpand" runat="server" />
																		</td>
																	</tr>
																	<tr>
																		<td class="style110">
																			<dnn:Label ID="lblChameleonGalleryNGSorting" runat="server" HelpKey="lblChameleonGalleryNGSorting.HelpText" HelpText="Nested category sorting:" ResourceKey="lblChameleonGalleryNGSorting" Text="Nested category sorting:" />
																		</td>
																		<td class="style111">
																			<asp:DropDownList ID="ddlChameleonGalleryNestedSorting" runat="server">
																				<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
																				<asp:ListItem resourcekey="liTitle" Value="GalleryName">Title</asp:ListItem>
																				<asp:ListItem resourcekey="liDateCreated" Value="DateCreated">Date created</asp:ListItem>
																				<asp:ListItem resourcekey="liLAstModified" Value="DateLastModified">Date last modified</asp:ListItem>
																			</asp:DropDownList>
																		</td>
																		<td class="style109">
																			<asp:RadioButtonList ID="rblChameleonGalleryNestedSortingAscDesc" runat="server" RepeatDirection="Horizontal">
																				<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
																				<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
																			</asp:RadioButtonList>
																		</td>
																	</tr>
																	<tr>
																		<td class="style110">&nbsp;
																		</td>
																		<td class="style111">&nbsp;
																		</td>
																		<td class="style109">&nbsp;
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</asp:Panel>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryMainPanel" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryMainPanel" Text="Main panel"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryMainPanelWidth" runat="server" HelpKey="lblChameleonGalleryMainPanelWidth.HelpText" HelpText="Set the maximum image width for resizing:" ResourceKey="lblChameleonGalleryMainPanelWidth" Text="Maximum panel width:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryMainPanelWidth" runat="server" ValidationGroup="vgChameleonSettings" Width="35px">700</asp:TextBox>
								<asp:Label ID="lblChamMainPanelWidthType" runat="server" Text="%" Visible="False"></asp:Label>
								<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageWidth2" runat="server" ControlToValidate="tbChameleonGalleryMainPanelWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedImageWidthResource1.ErrorMessage"
									SetFocusOnError="True" ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightboxGalleryNestedImageWidth2" runat="server" ControlToValidate="tbChameleonGalleryMainPanelWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedImageWidthResource1.ErrorMessage"
									SetFocusOnError="True" Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
								<asp:RangeValidator ID="rvChameleonWidthPerct" runat="server" ControlToValidate="tbChameleonGalleryMainPanelWidth" Display="Dynamic" Enabled="False" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" resourcekey="rvAGVolume0Resource1.ErrorMessage"
									SetFocusOnError="True" Type="Integer" ValidationGroup="vgChameleonSettings" Visible="False">
								</asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryMainPanelHeight" runat="server" ControlName="tbTGImageHeight" HelpKey="lblChameleonGalleryMainPanelHeight.HelpText" HelpText="Set the maximum image height for resizing:" ResourceKey="lblChameleonGalleryMainPanelHeight"
									Text="Maximum panel height: " />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryMainPanelHeight" runat="server" ValidationGroup="vgChameleonSettings" Width="35px">600</asp:TextBox>
								<asp:Label ID="lblChamMainPanelHeightType" runat="server" Text="px" Visible="False"></asp:Label>
								<asp:DropDownList ID="ddlChameleonGalleryHeightType" runat="server" Visible="False" AutoPostBack="True" OnSelectedIndexChanged="ddlChameleonGalleryHeightType_SelectedIndexChanged">
									<asp:ListItem Value="pixel">px</asp:ListItem>
									<asp:ListItem Value="percent">%</asp:ListItem>
								</asp:DropDownList>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageHeight2" runat="server" ControlToValidate="tbChameleonGalleryMainPanelHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedImageHeightResource1.ErrorMessage"
									SetFocusOnError="True" ValidationGroup="vgChameleonSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightboxGalleryNestedImageHeight2" runat="server" ControlToValidate="tbChameleonGalleryMainPanelHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedImageHeightResource1.ErrorMessage"
									SetFocusOnError="True" Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
								<asp:RangeValidator ID="rvChameleonHeightPerct" runat="server" ControlToValidate="tbChameleonGalleryMainPanelHeight" Display="Dynamic" Enabled="False" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" resourcekey="rvAGVolume0Resource1.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgChameleonSettings" Visible="False"></asp:RangeValidator>
							</td>
						</tr>
						<tr id="trChameleonResponsiveMainImageWidth" runat="server" visible="false">
							<td>
								<dnn:Label ID="lblChameleonResponsiveMainImageWidth" runat="server" HelpText="Max width used to generate main responsive image." Text="Main image width:" />
							</td>
							<td>
								<asp:TextBox ID="tbxChameleonResponsiveMainImageWidth" runat="server" Width="50px">900</asp:TextBox>
								px<asp:RequiredFieldValidator ID="rfvtbxChameleonResponsiveMainImageWidth" runat="server" ControlToValidate="tbxChameleonResponsiveMainImageWidth" Display="Dynamic" ErrorMessage="This filed is required."
									SetFocusOnError="True" ValidationGroup="vgChameleonSettings" />
								<asp:CompareValidator ID="cvChameleonResponsiveMainImageWidth" runat="server" ControlToValidate="tbxChameleonResponsiveMainImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck"
									Type="Integer" ValidationGroup="vgChameleonSettings" />
							</td>
						</tr>
						<tr id="trChameleonResponsiveMainImageHeight" runat="server" visible="false">
							<td>
								<dnn:Label ID="lblChameleonResponsiveMainImageHeight" runat="server" HelpText="Max height used to generate main responsive image." Text="Main image height:" />
							</td>
							<td>
								<asp:TextBox ID="tbxChameleonResponsiveMainImageHeight" runat="server" Width="50px">600</asp:TextBox>
								px<asp:RequiredFieldValidator ID="rfvtbxChameleonResponsiveMainImageHeight" runat="server" ControlToValidate="tbxChameleonResponsiveMainImageHeight" Display="Dynamic" ErrorMessage="This filed is required."
									SetFocusOnError="True" ValidationGroup="vgChameleonSettings" />
								<asp:CompareValidator ID="cvChameleonResponsiveMainImageHeight" runat="server" ControlToValidate="tbxChameleonResponsiveMainImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck"
									Type="Integer" ValidationGroup="vgChameleonSettings" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td id="trChamThumbMain" runat="server" colspan="2">
								<asp:Label ID="lblChameleonGalleryThumbnailsPanel" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryThumbnailsPanel" Text="Thumbnails"></asp:Label>
							</td>
						</tr>
						<tr id="trChamThumbWidth" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbWidth" runat="server" HelpKey="lblASSThumbWidth.HelpKey" HelpText="Thumb width:" ResourceKey="lblASSThumbWidth" Text="Thumb width:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryImageWidth" runat="server" ValidationGroup="vgChameleonSettings" Width="50px">80</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth2" runat="server" ControlToValidate="tbChameleonGalleryImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage" ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageWidth2" runat="server" ControlToValidate="tbChameleonGalleryImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trChamThumbHeight" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbHeight" runat="server" HelpKey="lblASSThumbHeight.HelpKey" HelpText="Thumb height:" ResourceKey="lblASSThumbHeight" Text="Thumb height:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryImageHeight" runat="server" ValidationGroup="vgChameleonSettings" Width="50px">60</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageHeight2" runat="server" ControlToValidate="tbChameleonGalleryImageHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageHeightResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight2" runat="server" ControlToValidate="tbChameleonGalleryImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trChamThumbPosition" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbPosition" runat="server" HelpKey="lblChameleonGalleryThumbPosition.HelpText" HelpText="Thumbnails position:" ResourceKey="lblChameleonGalleryThumbPosition.Text" Text="Thumbnails position:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryThumbnailPositionInOut" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutIN" Value="Inside">Inside image panel</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutOUT" Selected="True" Value="Outside">Outside image panel</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr id="trChamThumbPosition2" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbPosition0" runat="server" HelpKey="lblChameleonGalleryThumbPosition.HelpText" HelpText="Thumbnails position:" ResourceKey="lblChameleonGalleryThumbPosition.Text" Text="Thumbnails position:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryThumbnailPositionLRTB" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblChameleonGalleryThumbnailPositionLRTB_SelectedIndexChanged" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBTop">Top</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBBottom" Selected="True">Bottom</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBLeft">Left</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBRight">Right</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr id="trChamThumbStrinpSize" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbStripSize" runat="server" HelpKey="lblChameleonGalleryThumbStripSize.HelpText" HelpText="Thumbnail strip width:" ResourceKey="lblChameleonGalleryThumbStripSize.Text" Text="Thumbnail strip width:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryThumbStripWitdh" runat="server" AutoPostBack="True" Width="50px">700</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth3" runat="server" ControlToValidate="tbChameleonGalleryThumbStripWitdh" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight3" runat="server" ControlToValidate="tbChameleonGalleryThumbStripWitdh" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trChamThumbStrinpHeight" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbStripHeight" runat="server" HelpKey="lblChameleonGalleryThumbStripHeight.HelpText" HelpText="Thumbnail strip height:" ResourceKey="lblChameleonGalleryThumbStripHeight.Text" Text="Thumbnail strip height:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryThumbStripHeight" runat="server" Width="50px">100</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth4" runat="server" ControlToValidate="tbChameleonGalleryThumbStripHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight4" runat="server" ControlToValidate="tbChameleonGalleryThumbStripHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trChamThumbShowTitle" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbShowTitle" runat="server" HelpKey="lblChameleonGalleryThumbShowTitle.HelpText" HelpText="Show title in thumbnail:" ResourceKey="lblChameleonGalleryThumbShowTitle.Text" Text="Show title in thumbnail:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowThumbCaption" runat="server" />
							</td>
						</tr>
						<tr id="trChamThumbPorition3" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbnailPosition" runat="server" HelpKey="lblChameleonGalleryThumbnailPosition.HelpText" HelpText="Position:" ResourceKey="lblChameleonGalleryThumbnailPosition.Text" Text="Position:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryThumbPriority" runat="server" Width="50px">2</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth9" runat="server" ControlToValidate="tbChameleonGalleryCategoryHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight8" runat="server" ControlToValidate="tbChameleonGalleryCategoryHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trChamThumbExpand" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryThumbnailsExpand" runat="server" HelpKey="lblChameleonGalleryThumbnailsExpand.HelpText" HelpText="Expand to 100% width:" ResourceKey="lblChameleonGalleryThumbnailsExpand.Text" Text="Expand to 100% width:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryThumbnailsExpand" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryGaleryTitle" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryGaleryTitle" Text="Gallery title and description"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryShowGalleryTitle" runat="server" HelpKey="lblChameleonGalleryShowGalleryTitle.HelpText" HelpText="Show gallery title:" ResourceKey="lblChameleonGalleryShowGalleryTitle.Text" Text="Show gallery title:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowGalleyTitle" runat="server" Checked="False" resourcekey="cbLightboxGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryShowGalleryDescription" runat="server" HelpKey="lblChameleonGalleryShowGalleryDescription.HelpText" HelpText="Show gallery description:" ResourceKey="lblChameleonGalleryShowGalleryDescription.Text" Text="Show gallery description:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowGalleryDescription" runat="server" resourcekey="cbLightboxGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr id="trChamGalerreyINout" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryGalleryCaptionPositionInOut" runat="server" HelpKey="lblChameleonGalleryGalleryCaptionPositionInOut.HelpText" HelpText="Gallery title and description position:" ResourceKey="lblChameleonGalleryGalleryCaptionPositionInOut.Text"
									Text="Gallery title and description position:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryGalleryTitleDescPositionInOut" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutIN" Selected="True" Value="Inside">Inside image panel</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutOUT" Value="Outside">Outside image panel</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr id="trChamGalerreyTopBotom" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryTitleDescriptionPositionTBLR" runat="server" HelpKey="lblChameleonGalleryTitleDescriptionPositionTBLR.HelpText" HelpText="Gallery title and description position:" ResourceKey="lblChameleonGalleryTitleDescriptionPositionTBLR.Text"
									Text="Gallery title and description position:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryGalleryCaptionPositionLRTB" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBTop" Selected="True">Top</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBBottom">Bottom</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr id="trChamcaptionHeitgh" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryGalleryCaptionHeight" runat="server" HelpKey="lblChameleonGalleryGalleryCaptionHeight.HelpText" HelpText="Gallery title and description height:" ResourceKey="lblChameleonGalleryGalleryCaptionHeight.Text" Text="Gallery title and description height:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryGalleryCaptionHeight" runat="server" Width="50px">100</asp:TextBox>
							</td>
						</tr>
						<tr id="trChamGalleryPosition" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryNGContainer3" runat="server" HelpKey="lblChameleonGalleryThumbnailPosition.HelpText" HelpText="Position:" ResourceKey="lblChameleonGalleryThumbnailPosition.Text" Text="Position:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryGalleryCaptionPriority" runat="server" Width="50px">3</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth10" runat="server" ControlToValidate="tbChameleonGalleryGalleryCaptionPriority" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight9" runat="server" ControlToValidate="tbChameleonGalleryGalleryCaptionPriority" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trChamGalleryExpand" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryNGContainer7" runat="server" HelpKey="lblChameleonGalleryThumbnailsExpand.HelpText" HelpText="Expand to 100% width:" ResourceKey="lblChameleonGalleryThumbnailsExpand.Text" Text="Expand to 100% width:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryGalleryCaptionExpand" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryGaleryTitleDescription" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryGaleryTitleDescription" Text="Title and description"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryShowMediaTitle" runat="server" HelpKey="lblLightboxGalleryShowMediaTitle.HelpText" HelpText="Show media title:" ResourceKey="lblLightboxGalleryShowMediaTitle" Text="Show media title:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowMediaTitle" runat="server" Checked="True" resourcekey="cbLightboxGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryShowMediaDescription" runat="server" HelpKey="lblLightboxGalleryShowMediaDescription.HelpText" HelpText="Show media description:" ResourceKey="lblLightboxGalleryShowMediaDescription" Text="Show media description:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowMediaDescription" runat="server" Checked="True" resourcekey="cbLightboxGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr id="trChamcTitleDescPosition" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryCaptionPositionInOut" runat="server" HelpKey="lblChameleonGalleryCaptionPositionInOut.HelpText" HelpText="Title and description position:" ResourceKey="lblChameleonGalleryCaptionPositionInOut.Text" Text="Title and description position:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryTitleDescPositionInOut" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutIN" Selected="True" Value="Inside">Inside image panel</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionInOutOUT" Value="Outside">Outside image panel</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr id="trChamcTitleDescPosition2" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryCaptionPositionTBLR" runat="server" HelpKey="lblChameleonGalleryCaptionPositionTBLR.HelpText" HelpText="Title and description position:" ResourceKey="lblChameleonGalleryCaptionPositionTBLR.Text" Text="Title and description position:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryCaptionPositionLRTB" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBTop">Top</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryThumbnailPositionLRTBBottom" Selected="True">Bottom</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr id="trChamcTitleDescHeight" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryCaptionHeight" runat="server" HelpKey="lblChameleonGalleryCaptionHeight.HelpText" HelpText="Title and description height:" ResourceKey="lblChameleonGalleryCaptionHeight.Text" Text="Title and description height:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryCaptionHeight" runat="server" Width="50px">100</asp:TextBox>
							</td>
						</tr>
						<tr id="trChamcTitleDescPosition3" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryTitleDescriptionPosition" runat="server" HelpKey="lblChameleonGalleryTitleDescriptionPosition.HelpText" HelpText="Position:" ResourceKey="lblChameleonGalleryTitleDescriptionPosition.Text" Text="Position:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryCaptionPriority" runat="server" Width="50px">4</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth11" runat="server" ControlToValidate="tbChameleonGalleryCaptionPriority" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight10" runat="server" ControlToValidate="tbChameleonGalleryCaptionPriority" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trChamcTitleDescExpand" runat="server">
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryTitleDescriptionExpand" runat="server" HelpKey="lblChameleonGalleryTitleDescriptionExpand.HelpText" HelpText="Expand to 100% width:" ResourceKey="lblChameleonGalleryTitleDescriptionExpand.Text" Text="Expand to 100% width:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryCaptionExpand" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryNavigation" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryNavigation" Text="Navigation"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryShowNavigation" runat="server" HelpKey="lblChameleonGalleryShowNavigation.HelpText" HelpText="Show navigation arrows:" ResourceKey="lblChameleonGalleryShowNavigation.HelpText" Text="Show navigation arrows:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowNavigation" runat="server" Checked="True" resourcekey="cbTGShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryButtons" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryButtons" Text="Buttons"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113" valign="top">
								<dnn:Label ID="lblChameleonGalleryShowSharingButtons" runat="server" CssClass="styleBolded" HelpKey="lblChameleonGalleryShowSharingButtons.HelpText" HelpText="Show social sharing buttons inside Image:" ResourceKey="lblChameleonGalleryShowSharingButtons.Text"
									Text="Show sharing buttons:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowSocialSharing" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="cbChameleonGalleryShowSocialSharing_CheckedChanged" />
								<asp:Panel ID="pnlChameleonGalleryShowSharing" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px">
									<table class="style66">
										<tr>
											<td class="style92">
												<dnn:Label ID="lblChameleonGalleryShowSharingButtonsFacebook" runat="server" HelpKey="lblChameleonGalleryShowSharingButtonsFacebook.HelpText" HelpText="Show Facebook button:" ResourceKey="lblChameleonGalleryShowSharingButtonsFacebook.Text" Text="Show Facebook button:" />
											</td>
											<td>
												<asp:CheckBox ID="cbChameleonGalleryShowSocialFacebook" runat="server" AutoPostBack="True" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblChameleonGalleryShowSharingButtonsGoogle" runat="server" HelpKey="lblChameleonGalleryShowSharingButtonsGoogle.HelpText" HelpText="Show Google Plus button:" ResourceKey="lblChameleonGalleryShowSharingButtonsGoogle.Text" Text="Show Google Plus button:" />
											</td>
											<td>
												<asp:CheckBox ID="cbChameleonGalleryShowSocialGoogle" runat="server" AutoPostBack="True" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblChameleonGalleryShowSharingButtonsTwitter" runat="server" HelpKey="lblChameleonGalleryShowSharingButtonsTwitter.HelpText" HelpText="Show Twitter button:" ResourceKey="lblChameleonGalleryShowSharingButtonsTwitter.Text" Text="Show Twitter button:" />
											</td>
											<td>
												<asp:CheckBox ID="cbChameleonGalleryShowSocialTwitter" runat="server" AutoPostBack="True" Checked="True" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryDisplayEmailButton" runat="server" HelpKey="lblChameleonGalleryDisplayEmailButton.HelpText" HelpText="Display email button:" ResourceKey="lblChameleonGalleryDisplayEmailButton.Text" Text="Display email button:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryDisplayEmailButton" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryDisplayDownloadButton" runat="server" HelpKey="lblASSDisplayDownloadButton.HelpKey" HelpText="Display download button:" ResourceKey="lblASSDisplayDownloadButton" Text="Display download button:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryDisplayDownloadButton" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryEffects" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryEffects" Text="Effects"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGallerySlideEffect" runat="server" HelpKey="lblASSSlideEffect.HelpKey" HelpText="Image transition effect:" ResourceKey="lblASSSlideEffect" Text="Image transition effect:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlChameleonGalleryTransitionEffect" runat="server">
									<asp:ListItem resourcekey="ddlChameleonGalleryTransitionEffectFade" Value="fade">Fade</asp:ListItem>
									<asp:ListItem resourcekey="ddlChameleonGalleryTransitionEffectSlide" Selected="True" Value="slide">Slide</asp:ListItem>
									<asp:ListItem resourcekey="ddlChameleonGalleryTransitionEffectShow" Value="show">Show</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryTransitionSpeed0" runat="server" HelpKey="lblASStransitionSpeed.HelpKey" HelpText="Transition speed:" ResourceKey="lblASStransitionSpeed" Text="Transition speed:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryIntervalSpeed" runat="server" ValidationGroup="vgChameleonSettings" Width="58px">1000</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns24" runat="server" ControlToValidate="tbChameleonGalleryIntervalSpeed" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns24" runat="server" ControlToValidate="tbChameleonGalleryIntervalSpeed" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryAutoPLAy" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryAutoPLAy" Text="Autoplay"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryDisplayPlayButton" runat="server" HelpText="Autoplay:" Text="Autoplay:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryAutoPlay" runat="server" Checked="True" resourcekey="cbTGShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryAutoPlayInterval" runat="server" HelpKey="lblChameleonGalleryAutoPlayInterval.HelpText" HelpText="Autoplay interval:" ResourceKey="lblChameleonGalleryAutoPlayInterval.Text" Text="Autoplay interval:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbChameleonGalleryAutoPlayInterval" runat="server" Width="50px">5000</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns25" runat="server" ControlToValidate="tbChameleonGalleryAutoPlayInterval" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgChameleonSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns25" runat="server" ControlToValidate="tbChameleonGalleryAutoPlayInterval" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgChameleonSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryVideoOptions" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryVideoOptions" Text="Video options"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryVideoPlayPlace" runat="server" HelpKey="lblChameleonGalleryVideoPlayPlace.HelpText" HelpText="Play video embedded in page or play video in lightbox:" ResourceKey="lblChameleonGalleryVideoPlayPlace.Text" Text="Video play place:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryVideoPlayPlace" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryVideoPlayPlaceLB" Value="videolightbox">Play video in lightbox</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryVideoPlayPlaceEM" Selected="True" Value="videoembed">Play video embedded in page</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblLightBoxGalleryVideoPlayerSelect2" runat="server" HelpKey="SelectVideoPlayer.HelpText" HelpText="Select player:" ResourceKey="SelectVideoPlayer.Text" Text="Select player:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlChameleonGalleryVPSelectPlayer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlChameleonGalleryVPSelectPlayer_SelectedIndexChanged">
									<asp:ListItem Selected="True" Value="True">Flow player</asp:ListItem>
									<asp:ListItem Value="False">Standard</asp:ListItem>
								</asp:DropDownList>
								<asp:Panel ID="pnlFlowPlayerOptionsChameleon" runat="server" Visible="False">
									<table class="style66">
										<tr>
											<td>
												<asp:Label ID="lblFlowVideoScalingChameleon" runat="server" resourcekey="lblFlowVideoScaling" Text="Video scaling:"></asp:Label>
												<asp:DropDownList ID="ddlFlowPlayerScalingChameleon" runat="server" AutoPostBack="True">
													<asp:ListItem resourcekey="liScale" Value="scale">Scale</asp:ListItem>
													<asp:ListItem resourcekey="liorig" Value="orig">Original</asp:ListItem>
													<asp:ListItem resourcekey="lihalf" Value="half">Half</asp:ListItem>
													<asp:ListItem resourcekey="lifit" Value="fit">Fit to window</asp:ListItem>
												</asp:DropDownList>
											</td>
											<td>&nbsp;
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryVideoPlayerSelectSkin" runat="server" HelpKey="lblLightBoxGalleryVideoPlayerSelectSkin.HelpText" HelpText="Select video player skin:" ResourceKey="lblLightBoxGalleryVideoPlayerSelectSkin" Text="Select video player skin:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlChameleonGalleryVPSelectTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource28" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource29" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblLightBoxGalleryVideoPlayerPlayOnLoad1" runat="server" HelpKey="lblLightBoxGalleryVideoPlayerPlayOnLoad.HelpText" HelpText="Start to play video on page load:" ResourceKey="lblLightBoxGalleryVideoPlayerPlayOnLoad" Text="Play on load:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryPlayOnLoad" runat="server" resourcekey="cbTGVPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryAudioOptions" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryAudioOptions" Text="Audio options"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryAudioDisplay" runat="server" HelpKey="lblChameleonGalleryAudioDisplay.HelpText" HelpText="Play audio embedded in page or play audio in lightbox:" ResourceKey="lblChameleonGalleryAudioDisplay.Text" Text="Audio play place:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryAudioPlayPlace" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="rblChameleonGalleryAudioPlayPlaceLB" Value="audiolightbox">Play audio in lightbox</asp:ListItem>
									<asp:ListItem resourcekey="rblChameleonGalleryAudioPlayPlaceEM" Selected="True" Value="audioembed">Play audio embedded in page</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryAudioPlayerPlayOnLoad" runat="server" HelpKey="lblLightBoxGalleryAudioPlayerPlayOnLoad.HelpText" HelpText="Start to play audio on page load:" ResourceKey="lblLightBoxGalleryAudioPlayerPlayOnLoad" Text="Play on load:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryAudioPlayOnLoad" runat="server" resourcekey="cbTGAPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryFullscreen" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryFullscreen" Text="Fullscreen"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryEnableFullscreen" runat="server" HelpKey="lblChameleonGalleryEnableFullscreen.HelpText" HelpText="Enable fullscreen:" ResourceKey="lblChameleonGalleryEnableFullscreen" Text="Enable fullscreen:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryEnableFullscreen" runat="server" AutoPostBack="True" OnCheckedChanged="cbChameleonGalleryEnableFullscreen_CheckedChanged" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryFullscreenAutohide" runat="server" HelpKey="lblChameleonGalleryFullscreenAutohide.HelpText" HelpText="Enable thumbnail and category auto hide:" ResourceKey="lblChameleonGalleryFullscreenAutohide" Text="Enable thumbnail and category auto hide:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryFullscreenAutohide" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblChameleonGalleryToolTips" runat="server" Font-Bold="True" resourcekey="lblChameleonGalleryToolTipsTitle" Text="Tooltips"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryShowTooltips" runat="server" HelpKey="lblChameleonGalleryToolTips.HelpText" HelpText="Show tooltips on thumbnail mouse over:" ResourceKey="lblChameleonGalleryToolTips" Text="Show tooltips:" />
								&nbsp;
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowTooltips" runat="server" AutoPostBack="True" OnCheckedChanged="cbChameleonGalleryShowTooltips_CheckedChanged" />
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Panel ID="pnlChameleonGalleryQtipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table>
										<tr>
											<td class="style70">
												<dnn:Label ID="lblChameleonGalleryShowTooltipsTitle" runat="server" HelpKey="lblChameleonGalleryShowTooltipsTitle.HelpText" HelpText="Show title in tooltips:" ResourceKey="lblChameleonGalleryShowTooltipsTitle" Text="Show title in tooltips:" />
											</td>
											<td>
												<asp:CheckBox ID="cbChameleonGalleryShowTooltipTitle" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style70">
												<dnn:Label ID="lblChameleonGalleryShowTooltipsDescription" runat="server" HelpKey="cbChameleonGalleryShowTooltipDescription.HelpText" HelpText="Show description in tooltips:" ResourceKey="cbChameleonGalleryShowTooltipDescription" Text="Show description in tooltips:" />
											</td>
											<td>
												<asp:CheckBox ID="cbChameleonGalleryShowTooltipDescription" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style70">
												<dnn:Label ID="lblChameleonGalleryShowTooltipsPosition" runat="server" HelpKey="lblChameleonGalleryShowTooltipsPosition.HelpText" HelpText="Tooltips position:" ResourceKey="lblChameleonGalleryShowTooltipsPosition" Text="Tooltips position:" />
											</td>
											<td>
												<asp:DropDownList ID="ddlChameleonGalleryToolTipPosition" runat="server">
													<asp:ListItem Value="top">Top</asp:ListItem>
													<asp:ListItem Value="bottom">Bottom</asp:ListItem>
													<asp:ListItem Value="left">Left</asp:ListItem>
													<asp:ListItem Value="right">Right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style70">
												<dnn:Label ID="lblChameleonGalleryShowTooltipsStyle" runat="server" HelpKey="lblChameleonGalleryShowTooltipsStyle.HelpText" HelpText="Tooltips style:" ResourceKey="lblChameleonGalleryShowTooltipsStyle" Text="Tooltips style:" />
											</td>
											<td>
												<asp:DropDownList ID="ddlChameleonGalleryToolTipClasss" runat="server">
													<asp:ListItem Text="grey" Value="grey" />
													<asp:ListItem Text="red" Value="red" />
													<asp:ListItem Text="green" Value="green" />
													<asp:ListItem Text="blue" Value="blue" />
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr id="trChameleonShowThumbsInLightbox" runat="server">
							<td class="style112">
								<dnn:Label ID="Label20" runat="server" HelpKey="lblLightboxGalleryLightboxThumbnails.HelpText" HelpText="Show thumbnails inside lightbox:" ResourceKey="lblLightboxGalleryLightboxThumbnails" Text="Show thumbnails inside lightbox:" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryGalleryShowThumbnailsInLightbox" runat="server" resourcekey="cbLightboxGalleryLightboxThumbnailsResource1" />
							</td>
						</tr>
						<tr id="trChameleonShowTitleInLightbox" runat="server">
							<td class="style112">
								<dnn:Label ID="lblLightboxGalleryShowLightboxTitle1" runat="server" HelpKey="lblLightboxGalleryShowLightboxTitle.HelpText" HelpText="Show media title in lightbox:" ResourceKey="lblLightboxGalleryShowLightboxTitle" Text="Show media title in lightbox:" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowLightboxTitle" runat="server" resourcekey="cbLightboxGalleryShowLightboxTitleResource1" />
							</td>
						</tr>
						<tr id="trChameleonShowDescriptionInLightbox" runat="server">
							<td class="style112">
								<dnn:Label ID="lblLightboxGalleryLightboxDescription1" runat="server" HelpKey="lblLightboxGalleryLightboxDescription.HelpText" HelpText="Show media description in lightbox:" ResourceKey="lblLightboxGalleryLightboxDescription" Text="Show media description in lightbox:" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryShowLightboxDescription" runat="server" AutoPostBack="True" OnCheckedChanged="cbTGShowLightboxDescription_CheckedChanged" resourcekey="cbTGShowLightboxDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblChameleonGalleryOpenMediaUrl" runat="server" HelpKey="lblLightBoxGalleryOpenMediaUrl.HelpText" HelpText="On image click dont open image in lightbox, but open Media Url link." ResourceKey="lblLightBoxGalleryOpenMediaUrl" Text="On click go to Media Url:" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryGalleryOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbChameleonGalleryGalleryOpenMediaUrl_CheckedChanged" resourcekey="cbLightBoxGalleryOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblChameleonGalleryOpenMediaUrlNewWindow" runat="server" HelpKey="lblLightBoxGalleryOpenMediaUrlNewWindow.HelpText" HelpText="Open link in new window:" ResourceKey="lblLightBoxGalleryOpenMediaUrlNewWindow" Text="Open link in new window:" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbLightBoxGalleryOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblChameleonGalleryOnClickNothing" runat="server" HelpKey="lblChameleonGalleryOnClickNothing.HelpText" HelpText="No action on mouse click no main image panel:" ResourceKey="lblChameleonGalleryOnClickNothing" Text="Open media in lightbox:" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryOpenInLightbox" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="cbChameleonGalleryNothigOnclick_CheckedChanged" resourcekey="cbLightBoxGalleryOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryRandomizeMedia" runat="server" HelpKey="lblLightBoxRandomizeMedia.HelpText" HelpText="Randomize media positions on every page load:" ResourceKey="lblLightBoxRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryRandomizeMedia" runat="server" AutoPostBack="True" OnCheckedChanged="cbChameleonGalleryRandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryGrayscaleThumbnails" runat="server" HelpKey="lblChameleonGalleryGrayscaleThumbnails.HelpText" HelpText="Thumbnails will be desaturated." ResourceKey="lblChameleonGalleryGrayscaleThumbnails" Text="Create grayscale thumbnails:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryCreateGrayScaleImages" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryEnableDragging" runat="server" HelpKey="lblChameleonGalleryEnableDragging" HelpText="Enable item dragging:" ResourceKey="lblChameleonGalleryEnableDragging" Text="Touch &amp; swipe:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbChameleonGalleryEnableItemDragging" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblMainImageResize" runat="server" HelpKey="lblMainImageResize.HelpText" HelpText="Main image resize:" ResourceKey="lblMainImageResize" Text="Main image resize:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblChameleonGalleryMainImageRsize" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liResCrop" Selected="True" Value="default">Resize and crop</asp:ListItem>
									<asp:ListItem resourcekey="liProportionally" Value="proportionally">Proportionally resize</asp:ListItem>
									<asp:ListItem resourcekey="liProportionallyVertical" Value="proportionallyVertical">Proportionally resize vertical images</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChamaleonAlignTopLeft" runat="server" HelpKey="lblChamaleonAlignTopLeft.HelpText" HelpText="Align image in main panel:" ResourceKey="lblChamaleonAlignTopLeft" Text="Align image in main panel:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlChameleonGalleryAlignimageinmainpanel" runat="server">
									<asp:ListItem resourcekey="liCenterCenter" Value="false">Center center</asp:ListItem>
									<asp:ListItem resourcekey="liTopLeft" Value="true">Top left</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style113">
								<dnn:Label ID="lblChameleonGalleryMediaSorting" runat="server" HelpKey="lblLightBoxMediaSorting.HelpText" HelpText="Select media sorting options:" ResourceKey="lblLightBoxMediaSorting" Text="Media sorting:" />
							</td>
							<td>
								<asp:DropDownList ID="ddlChameleonGalleryMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblChameleonGalleryMediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style113">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnChameleonGallerySave" runat="server" OnClick="btnChameleonGallerySave_Click" resourcekey="btnLightBoxGallerySaveResource1" Text="Save settings" ValidationGroup="vgChameleonSettings" Width="140px" />
								&nbsp;<asp:Button ID="btnChameleonGallerySaveClose" runat="server" OnClick="btnChameleonGallerySaveClose_Click" resourcekey="btnLightBoxGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgChameleonSettings" Width="140px" />
								&nbsp;
								<asp:Label ID="lblChameleonGalleryStatus" runat="server" resourcekey="lblLightBoxGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlAdvancedSlideShow" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblAdvancedSlideShow" resourcekey="lblAdvancedSlideShow" runat="server" CssClass="settingsdetailtitle" Text="Advanced Slide Show"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style69">&nbsp;
							</td>
							<td class="style38" colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxTemplateSelect1" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblLightboxTemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblLightboxTemplateSelect" Text="Select template:" />
							</td>
							<td class="style38" colspan="2">
								<asp:DropDownList ID="ddlASSTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLightboxTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryThemeSelect1" runat="server" ControlName="ddlTGThemeSelect" HelpKey="lblLightBoxGalleryThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblLightBoxGalleryThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style38" align="left" colspan="2">
								<asp:DropDownList ID="ddlASSThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">&nbsp;
							</td>
							<td class="style38" colspan="2">
								<asp:Label ID="lblASSTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style69" style="background-color: #ceeff8">
								<dnn:Label ID="lblLightboxGalleryDispplayNestedGalleries1" runat="server" HelpKey="lblLightboxGalleryDispplayNestedGalleries.HelpText" HelpText="Display nested galleries:" ResourceKey="lblLightboxGalleryDispplayNestedGalleries" Text="Display nested galleries:" />
							</td>
							<td class="style38" colspan="2">
								<div style="background-color: #ceeff8; display: inline-block; padding: 7px;">
									<asp:CheckBox ID="cbASSDisplayNestedGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbASSDisplayNestedGalleries_CheckedChanged" resourcekey="cbLightboxGalleryDisplayNestedGalleriesResource1" />
								</div>
							</td>
						</tr>
						<tr>
							<td class="style37" colspan="3">
								<asp:Panel ID="pnlASSNestedGalleriesOptions" runat="server" Visible="False">
									<table cellpadding="0" cellspacing="0" border="0" width="100%" class="tblnestedgallery">
										<tr>
											<td>
												<asp:Panel ID="pnlASSNGGallerySettings" runat="server" BackColor="#C9DEAD">
													<table cellpadding="0" cellspacing="0" class="style66" style="border-top: 3px solid #91c848">
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" class="tbltitlenestedcategory">
																	<tr>
																		<td style="background-color: #91c848">
																			<asp:Label ID="lblLightboxGalleryNestedGallerySettings1" runat="server" CssClass="settingsdetailtitle" Text="Nested galleries settings" resourcekey="lblLightboxGalleryNestedGallerySettingsResource1"></asp:Label>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" border="0" width="80%" align="center">
																	<tr>
																		<td align="left">&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td align="left">
																			<asp:Label ID="lblLightboxGalleryNestedGallerySelection0" runat="server" Font-Bold="True" Text="Gallery selection:" resourcekey="lblLightboxGalleryNestedGallerySelectionResource1"></asp:Label>
																			<br />
																			<asp:CheckBoxList ID="cblASSNestedGallerySelection" runat="server" CellPadding="2" CellSpacing="5" DataSourceID="odsGallery" DataTextField="GalleryName" DataValueField="GalleryID" OnDataBound="cblTGNGGallerySelection_DataBound" OnSelectedIndexChanged="cblTGNGGallerySelection_SelectedIndexChanged"
																				RepeatColumns="2">
																			</asp:CheckBoxList>
																			<asp:Label ID="lblASSNoNestedGalleryError" runat="server" ForeColor="Red" Text="Please add an select some galleries." Visible="False" resourcekey="lblLightboxGalleryNoNestedGalleryErrorResource1"></asp:Label>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbASSNestedShowAllGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbASSNestedShowAllGalleries_CheckedChanged" Text="Show all galleries" resourcekey="cbLightboxGalleryNestedShowAllGalleriesResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:Panel ID="pnlInvisible" runat="server" Visible="False">
																				<table class="style66">
																					<tr>
																						<td>&nbsp;
																						</td>
																					</tr>
																					<tr>
																						<td>&nbsp;
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<asp:TextBox ID="tbASSNGColumns" runat="server" ValidationGroup="vgTGSettings" Width="35px">2</asp:TextBox>
																							<asp:Label ID="lblLightboxGalleryNestedNumberOfColumns1" runat="server" resourcekey="lblLightboxGalleryNestedNumberOfColumnsResource1" Text="Number of columns."></asp:Label>
																							<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedNumberOfColumns3" runat="server" ControlToValidate="tbASSNGColumns" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																								SetFocusOnError="True" ValidationGroup="vgTGSettings">
																							</asp:RequiredFieldValidator>
																							<asp:CompareValidator ID="cvLightboxGalleryNestedNumberOfColumns3" runat="server" ControlToValidate="tbASSNGColumns" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																								SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
																							</asp:CompareValidator>
																						</td>
																					</tr>
																					<tr>
																						<td>
																							<asp:TextBox ID="tbASSNGItems" runat="server" ValidationGroup="vgTGSettings" Width="35px">4</asp:TextBox>
																							<asp:Label ID="lblLightboxGalleryNestedNumberOfItems1" runat="server" resourcekey="lblLightboxGalleryNestedNumberOfItems" Text="Number of items."></asp:Label>
																							<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedNumberOfColumns4" runat="server" ControlToValidate="tbASSNGItems" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																								SetFocusOnError="True" ValidationGroup="vgTGSettings">
																							</asp:RequiredFieldValidator>
																							<asp:CompareValidator ID="cvLightboxGalleryNestedNumberOfColumns4" runat="server" ControlToValidate="tbASSNGItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																								SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
																							</asp:CompareValidator>
																						</td>
																					</tr>
																				</table>
																			</asp:Panel>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</asp:Panel>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryShowMediaTitle0" ResourceKey="lblLightboxGalleryShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblLightboxGalleryShowMediaTitle.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSShowMediaTitle" runat="server" resourcekey="cbLightboxGalleryShowMediaTitleResource1" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryShowMediaDescription0" ResourceKey="lblLightboxGalleryShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblLightboxGalleryShowMediaDescription.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSShowMediaDescription" runat="server" resourcekey="cbLightboxGalleryShowMediaDescriptionResource1" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSDisplayNumber" runat="server" HelpText="Display image number:" Text="Display image number:" HelpKey="lblASSDisplayNumber.HelpKey" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSShowTitle" runat="server" resourcekey="cbTGShowTitleResource1" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSDisplayPlayButton" runat="server" HelpText="Display play button:" Text="Display play button:" HelpKey="lblASSDisplayPlayButton.HelpKey" ResourceKey="lblASSDisplayPlayButton" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSShowDescription" runat="server" resourcekey="cbTGShowDescriptionResource1" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSDisplayDownloadButton" runat="server" HelpText="Display download button:" Text="Display download button:" HelpKey="lblASSDisplayDownloadButton.HelpKey" ResourceKey="lblASSDisplayDownloadButton" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSNestedShowGalleryName" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSDisplayInfoButton" runat="server" HelpText="Display info button:" Text="Display info button:" HelpKey="lblASSDisplayInfoButton.HelpKey" ResourceKey="lblASSDisplayInfoButton" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSNestedShowGalleryDescription" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSDisplayTimer" runat="server" HelpText="Display timer:" Text="Display timer:" HelpKey="lblASSDisplayTimer.HelpKey" ResourceKey="lblASSDisplayTimer" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSNestedShowGalleryInfo" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSFLoatingCpanel" runat="server" HelpText="Floating navigation bar:" Text="Floating navigation bar:" HelpKey="lblASSFLoatingCpanel.HelpKey" ResourceKey="lblASSFLoatingCpanel" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSNestedShowBreadcrumbs" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSShowOnMouseOver" runat="server" HelpText="Show navigation bar on mouse over:" Text="Show navigation bar on mouse over:" HelpKey="lblASSShowOnMouseOver.HelpKey" ResourceKey="lblASSShowOnMouseOver" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSNestedProportionalyResize" runat="server" AutoPostBack="True" OnCheckedChanged="cbASSNestedProportionalyResize_CheckedChanged" />
							</td>
						</tr>
						<tr>
							<td class="style90">
								<dnn:Label ID="lblASSInitialOpen" runat="server" HelpKey="lblASSInitialOpen.HelpText" HelpText="Show image selection on open:" ResourceKey="lblASSInitialOpen.Text" Text="Show image selection on open:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbASSInitialOpen" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSSlideEffect" runat="server" HelpText="Image transition effect:" Text="Image transition effect:" HelpKey="lblASSSlideEffect.HelpKey" ResourceKey="lblASSSlideEffect" />
							</td>
							<td class="style38" colspan="2">
								<asp:DropDownList ID="ddlASSTransitionEffect" runat="server">
									<asp:ListItem resourcekey="lifade" Value="fade">Fade</asp:ListItem>
									<asp:ListItem resourcekey="lihorizontal" Value="h_slide">Horizontal slide</asp:ListItem>
									<asp:ListItem resourcekey="livertical" Value="v_slide">Vertical slide</asp:ListItem>
									<asp:ListItem resourcekey="lihwipe" Value="h_wipe">Horizontal wipe</asp:ListItem>
									<asp:ListItem resourcekey="livwipe" Value="v_wipe">Vertical wipe</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSTextSlideEffect" runat="server" HelpText="Text transition effect:" Text="Text transition effect:" HelpKey="lblASSTextSlideEffect.HelpKey" ResourceKey="lblASSTextSlideEffect" />
							</td>
							<td class="style38" colspan="2">
								<asp:DropDownList ID="ddlASSTextTransitionEffect" runat="server">
									<asp:ListItem resourcekey="lifade" Value="fade">Fade</asp:ListItem>
									<asp:ListItem resourcekey="liUp" Value="up">Up</asp:ListItem>
									<asp:ListItem resourcekey="liDown" Value="down">Down</asp:ListItem>
									<asp:ListItem resourcekey="liLeft" Value="left">Left</asp:ListItem>
									<asp:ListItem resourcekey="LiRight" Value="right">Right</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSSyncEffect" runat="server" HelpText="Sync image and text transition effect:" Text="Sync effects:" HelpKey="lblASSSyncEffect.HelpKey" ResourceKey="lblASSSyncEffect" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSSyncEffects" runat="server" OnCheckedChanged="cbASSNestedResizeCrop_CheckedChanged" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSPAuse" runat="server" HelpText="Pause between transitions:" Text="Pause between transitions:" HelpKey="lblASSPAuse.HelpKey" ResourceKey="lblASSPAuse" />
							</td>
							<td class="style38" colspan="2">
								<asp:TextBox ID="tbASSSSDuration" runat="server" Width="58px">5000</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns14" runat="server" ControlToValidate="tbASSSSDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgADVSSSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns14" runat="server" ControlToValidate="tbASSSSDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgADVSSSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASStransitionSpeed" runat="server" HelpText="Transition speed:" Text="Transition speed:" HelpKey="lblASStransitionSpeed.HelpKey" ResourceKey="lblASStransitionSpeed" />
							</td>
							<td class="style38" colspan="2">
								<asp:TextBox ID="tbASSIntervalSpeed" runat="server" Width="58px">1000</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns16" runat="server" ControlToValidate="tbASSIntervalSpeed" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgADVSSSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns16" runat="server" ControlToValidate="tbASSIntervalSpeed" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgADVSSSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblASSTolltipPosition" runat="server" HelpText="Enter toltip position corditanes::" Text="Tolltip position:" HelpKey="lblASSTolltipPosition.HelpKey" ResourceKey="lblASSTolltipPosition" />
							</td>
							<td class="style38" colspan="2">
								<table class="style69">
									<tr>
										<td>
											<asp:Label ID="lblASSTTTop" runat="server" resourcekey="lblASSTTTop" Text="Top:"></asp:Label>
											&nbsp;
										</td>
										<td class="style88">
											<asp:TextBox ID="tbASSTooltipTop" runat="server" ValidationGroup="vgADVSSSettings" Width="40px">15</asp:TextBox>
											<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns10" runat="server" ControlToValidate="tbASSTooltipTop" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage" SetFocusOnError="True"
												ValidationGroup="vgADVSSSettings">
											</asp:RequiredFieldValidator>
											<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns10" runat="server" ControlToValidate="tbASSTooltipTop" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
												SetFocusOnError="True" Type="Integer" ValidationGroup="vgADVSSSettings">
											</asp:CompareValidator>
										</td>
										<td class="style89">
											<asp:Label ID="lblASSTTLeft" runat="server" resourcekey="lblASSTTLeft" Text="Left:"></asp:Label>
										</td>
										<td>
											<asp:TextBox ID="tbASSToltipLeft" runat="server" ValidationGroup="vgADVSSSettings" Width="40px">15</asp:TextBox>
											<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns11" runat="server" ControlToValidate="tbASSToltipLeft" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage" SetFocusOnError="True"
												ValidationGroup="vgADVSSSettings">
											</asp:RequiredFieldValidator>
											<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns11" runat="server" ControlToValidate="tbASSToltipLeft" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
												SetFocusOnError="True" Type="Integer" ValidationGroup="vgADVSSSettings">
											</asp:CompareValidator>
										</td>
									</tr>
									<tr>
										<td>
											<asp:Label ID="lblASSTTWidth" runat="server" resourcekey="lblASSTTWidth" Text="Width:"></asp:Label>
										</td>
										<td class="style88">
											<asp:TextBox ID="tbASSTooltipWidth" runat="server" ValidationGroup="vgADVSSSettings" Width="40px">340</asp:TextBox>
											<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns12" runat="server" ControlToValidate="tbASSTooltipWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage" SetFocusOnError="True"
												ValidationGroup="vgADVSSSettings">
											</asp:RequiredFieldValidator>
											<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns12" runat="server" ControlToValidate="tbASSTooltipWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
												SetFocusOnError="True" Type="Integer" ValidationGroup="vgADVSSSettings">
											</asp:CompareValidator>
										</td>
										<td class="style89">
											<asp:Label ID="lblASSTTHeight" runat="server" resourcekey="lblASSTTHeight" Text="Height:"></asp:Label>
										</td>
										<td>
											<asp:TextBox ID="tbASSTooltipHeight" runat="server" ValidationGroup="vgADVSSSettings" Width="40px">100</asp:TextBox>
											<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns13" runat="server" ControlToValidate="tbASSTooltipHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage" SetFocusOnError="True"
												ValidationGroup="vgADVSSSettings">
											</asp:RequiredFieldValidator>
											<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns13" runat="server" ControlToValidate="tbASSTooltipHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
												SetFocusOnError="True" Type="Integer" ValidationGroup="vgADVSSSettings">
											</asp:CompareValidator>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryOpenMediaUrl0" ResourceKey="lblLightBoxGalleryOpenMediaUrl" runat="server" HelpText="On image click dont open image in lightbox, but open Media Url link." Text="On click go to Media Url:" HelpKey="lblLightBoxGalleryOpenMediaUrl.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSGalleryOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbASSGalleryOpenMediaUrl_CheckedChanged" resourcekey="cbLightBoxGalleryOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryOpenMediaUrlNewWindow0" ResourceKey="lblLightBoxGalleryOpenMediaUrlNewWindow" runat="server" HelpText="Open link in new window:" Text="Open link in new window:" HelpKey="lblLightBoxGalleryOpenMediaUrlNewWindow.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbASSOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbLightBoxGalleryOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblASSThumbWidth" runat="server" HelpText="Thumb width:" Text="Thumb width:" HelpKey="lblASSThumbWidth.HelpKey" ResourceKey="lblASSThumbWidth" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbASSImageWidth" runat="server" ValidationGroup="vgADVSSSettings" Width="50px">75</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth1" runat="server" ControlToValidate="tbASSImageWidth" ErrorMessage="This field is required." ValidationGroup="vgADVSSSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageWidth1" runat="server" ControlToValidate="tbASSImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgADVSSSettings" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblASSThumbHeight" runat="server" HelpText="Thumb height:" Text="Thumb height:" HelpKey="lblASSThumbHeight.HelpKey" ResourceKey="lblASSThumbHeight" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbASSImageHeight" runat="server" ValidationGroup="vgADVSSSettings" Width="50px">75</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageHeight1" runat="server" ControlToValidate="tbASSImageHeight" ErrorMessage="This field is required." ValidationGroup="vgADVSSSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight1" runat="server" ControlToValidate="tbASSImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgADVSSSettings" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryImageWidth0" runat="server" ControlName="tbTGImageWidth" HelpKey="lblLightBoxGalleryImageWidth.HelpText" HelpText="Set the maximum image width for resizing:" ResourceKey="lblLightBoxGalleryImageWidth" Text="Maximum image width:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbASSNGImageWidth" runat="server" Width="35px" ValidationGroup="vgADVSSSettings">700</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageWidth1" runat="server" ControlToValidate="tbASSNGImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedImageWidthResource1.ErrorMessage" SetFocusOnError="True"
									ValidationGroup="vgADVSSSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightboxGalleryNestedImageWidth1" runat="server" ControlToValidate="tbASSNGImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedImageWidthResource1.ErrorMessage"
									SetFocusOnError="True" Type="Integer" ValidationGroup="vgADVSSSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGallerySetImageHeight0" runat="server" ControlName="tbTGImageHeight" HelpKey="lblLightBoxGallerySetImageHeight.HelpText" HelpText="Set the maximum image height for resizing:" Text="Maximum image height: " ResourceKey="lblLightBoxGallerySetImageHeight" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbASSNGImageHeight" runat="server" Width="35px" ValidationGroup="vgADVSSSettings">500</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageHeight1" runat="server" ControlToValidate="tbASSNGImageHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedImageHeightResource1.ErrorMessage"
									SetFocusOnError="True" ValidationGroup="vgADVSSSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightboxGalleryNestedImageHeight1" runat="server" ControlToValidate="tbASSNGImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedImageHeightResource1.ErrorMessage"
									SetFocusOnError="True" Type="Integer" ValidationGroup="vgADVSSSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblASSNumberOfColumns" runat="server" HelpText="Set the number of thumbnail columns:" Text="Number of thumbnail columns:" HelpKey="lblASSNumberOfColumns.HelpKey" ResourceKey="lblASSNumberOfColumns" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbASSNumberOfColumns" runat="server" ValidationGroup="vgADVSSSettings" Width="50px">4</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns15" runat="server" ControlToValidate="tbASSNumberOfColumns" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgADVSSSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns15" runat="server" ControlToValidate="tbASSNumberOfColumns" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgADVSSSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblASSThumbnailRows" runat="server" Text="Number of thumbnail rows:" HelpText="Set the number of thumbnail rows:" HelpKey="lblASSThumbnailRows.HelpKey" ResourceKey="lblASSThumbnailRows"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbASSItems" runat="server" ValidationGroup="vgADVSSSettings" Width="50px">2</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfItems1" runat="server" ControlToValidate="tbASSItems" ErrorMessage="This field is required." ValidationGroup="vgADVSSSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryNumberOfItemsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfItems1" runat="server" ControlToValidate="tbASSItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgADVSSSettings" resourcekey="cvLightBoxGalleryNumberOfItemsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryCropImages0" ResourceKey="lblLightBoxGalleryCropImages" runat="server" Text="Resize and crop vertical images:" ControlName="cbSmartCropVertical" HelpText="Set this to crop vertical images:" HelpKey="lblLightBoxGalleryCropImages.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbASSSmartCropVertical" runat="server" OnCheckedChanged="cbSmartCropVertical_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryResizeCrop0" ResourceKey="lblLightBoxGalleryResizeCrop" runat="server" Text="Resize and crop all images:" ControlName="cbTGSmartResizeAndCrop" HelpText="Set this this to resize all images to same width and height:" HelpKey="lblLightBoxGalleryResizeCrop.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbASSResizeAndCrop" runat="server" OnCheckedChanged="cbTGSmartResizeAndCrop_CheckedChanged" Checked="True" resourcekey="cbLightBoxGalleryResizeAndCropResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxRandomizeMedia0" runat="server" HelpKey="lblLightBoxRandomizeMedia.HelpText" HelpText="Randomize media positions on every page load:" ResourceKey="lblLightBoxRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbASSRandomizeMedia" runat="server" OnCheckedChanged="cbASSRandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label6" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlASSMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblASSMediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnASSSave" runat="server" OnClick="btnASSSave_Click" resourcekey="btnLightBoxGallerySaveResource1" Text="Save settings" ValidationGroup="vgADVSSSettings" Width="140px" Style="height: 26px" />
								&nbsp;<asp:Button ID="btnLightBoxGallerySaveClose1" runat="server" OnClick="btnASSGallerySaveClose_Click" resourcekey="btnLightBoxGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgADVSSSettings" Width="140px" />
								&nbsp;
							<asp:Label ID="lblASSGalleryStatus" runat="server" resourcekey="lblLightBoxGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70" colspan="3">&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlImageCarousel" runat="server" BackColor="#EFEFEF" Visible="False">
				<table align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblImageCarouselDisplaySettings" runat="server" CssClass="settingsdetailtitle" Text="Image carousel display settings" resourcekey="lblImageCarouselDisplaySettingsResource1"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table align="center" cellpadding="2" cellspacing="2" width="80%">
						<tr>
							<td colspan="3"></td>
						</tr>
						<tr>
							<td class="style93">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style94">
								<dnn:Label ID="lblImageCarouselTemplateSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblImageCarouselTemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblImageCarouselTemplateSelect" Text="Select template:" />
							</td>
							<td class="style80" colspan="2">
								<asp:DropDownList ID="ddlICTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlICTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style95">
								<dnn:Label ID="lblImageCarouselThemeSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblImageCarouselThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblImageCarouselThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style81" colspan="2">
								<asp:DropDownList ID="ddlICThemeSelect" runat="server">
								</asp:DropDownList>
								&nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td class="style95">&nbsp;
							</td>
							<td class="style81" colspan="2">
								<asp:Label ID="lblImageCarouselTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style95">&nbsp;
							</td>
							<td class="style81" colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblImageCarouselResponsive" runat="server" HelpText="Select the layout type:" Text="Select the layout type:" HelpKey="lblChameleonSelectLayoutType.HelpText" ResourceKey="lblChameleonSelectLayoutType" />
							</td>
							<td align="left" class="style38" colspan="2">
								<asp:RadioButtonList ID="rblImageCarouselResponsive" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liFixed" Selected="True" Value="fixed">Fixed Layout</asp:ListItem>
									<asp:ListItem resourcekey="liResponsive" Value="responsive">Responsive Layout</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style95">
								<dnn:Label ID="lblImageCarouselShowTitle" runat="server" HelpKey="lblImageCarouselShowTitle.HelpText" HelpText="Show gallery title:" ResourceKey="lblImageCarouselShowTitle" Text="Show gallery title:" Visible="True" />
							</td>
							<td class="style81" colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowTitle" runat="server" resourcekey="cbImageCarouselShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style95">
								<dnn:Label ID="lblImageCarouselShowDescription" runat="server" HelpKey="lblImageCarouselShowDescription.HelpText" HelpText="Show gallery description:" ResourceKey="lblImageCarouselShowDescription" Text="Show gallery description:" Visible="True" />
							</td>
							<td class="style81" colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowDescription" runat="server" resourcekey="cbImageCarouselShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselShowMediaTitle" ResourceKey="lblImageCarouselShowMediaTitle" runat="server" HelpText="Show image title:" Text="Show image title:" HelpKey="lblImageCarouselShowMediaTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowMediaTitle" runat="server" resourcekey="cbImageCarouselShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselShowMediaDescription" ResourceKey="lblImageCarouselShowMediaDescription" runat="server" HelpText="Show image description:" Text="Show image description:" HelpKey="lblImageCarouselShowMediaDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowMediaDescription" runat="server" resourcekey="cbImageCarouselShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselShowLightboxTitle" ResourceKey="lblImageCarouselShowLightboxTitle" runat="server" HelpText="Show image title in lightbox:" Text="Show image title in lightbox:" HelpKey="lblImageCarouselShowLightboxTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowLightboxTitle" runat="server" resourcekey="cbImageCarouselShowLightboxTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93" valign="top">
								<dnn:Label ID="lblImageCarouselShowLightBoxDescription" ResourceKey="lblImageCarouselShowLightBoxDescription" runat="server" HelpText="Show image description in lightbox:" Text="Show image description in lightbox:" HelpKey="lblImageCarouselShowLightBoxDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowLightboxDescription" runat="server" resourcekey="cbImageCarouselShowLightboxDescriptionResource1" AutoPostBack="True" OnCheckedChanged="cbImageCarouselShowLightboxDescription_CheckedChanged1" />
								<br />
								<asp:Panel ID="pnlImageCarouselTipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style85">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblImageCarouselToolTipOptions" runat="server" Font-Bold="True" resourcekey="lblLightBoxToolTipOptions" Text="Tooltip options"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderShowToolTips" runat="server" resourcekey="lblLightboxShowToolTips" Text="Show Tooltips:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbImageCarouselShowTooltips" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselTargetPosition" runat="server" resourcekey="lblLightboxTargetPosition" Text="Target position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageCarouselTargetPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle" Selected="True">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Value="bottomMiddle">Bottom middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselTooltipPosition" runat="server" resourcekey="lblLightboxTooltipPosition" Text="Tooltip position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageCarouselTooltipPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Selected="True" Value="bottomMiddle">Bottom 
											middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselShowEffect" runat="server" resourcekey="lblLightboxShowEffect" Text="Show effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageCarouselShoweffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselShowEffectDuration" runat="server" resourcekey="lblLightboxShowEffectDuration" Text="Show effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageCarouselTooltipShowDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth0" runat="server" ControlToValidate="tbImageCarouselTooltipShowDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgImageCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth0" runat="server" ControlToValidate="tbImageCarouselTooltipShowDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgImageCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselShowHideEffect" runat="server" resourcekey="lblLightboxShowHideEffect" Text="Hide effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageCarouselHideEffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselHideEffectDuration" runat="server" resourcekey="lblLightboxHideEffectDuration" Text="Hide effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageCarouselTooltipHideDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth1" runat="server" ControlToValidate="tbImageCarouselTooltipHideDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgImageCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth1" runat="server" ControlToValidate="tbImageCarouselTooltipHideDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgImageCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselTooltipBorder" runat="server" resourcekey="lblLightboxTooltipBorder" Text="Border:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageCarouselTooltipBorder" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth2" runat="server" ControlToValidate="tbImageCarouselTooltipBorder" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage" SetFocusOnError="True"
													ValidationGroup="vgImageCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth2" runat="server" ControlToValidate="tbImageCarouselTooltipBorder" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgImageCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselTooltipCornerRadius" runat="server" resourcekey="lblLightboxTooltipCornerRadius" Text="Corner radius:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageCarouselTooltipCornerRadius" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth3" runat="server" ControlToValidate="tbImageCarouselTooltipCornerRadius" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgImageCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth3" runat="server" ControlToValidate="tbImageCarouselTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgImageCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageCarouselTooltipTheme" runat="server" resourcekey="lblLightboxTooltipTheme" Text="Select theme:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageCarouselTooltipTheme" runat="server">
													<asp:ListItem resourcekey="cream" Value="cream">Yellow</asp:ListItem>
													<asp:ListItem resourcekey="dark" Value="dark">Dark</asp:ListItem>
													<asp:ListItem resourcekey="green" Value="green">Green</asp:ListItem>
													<asp:ListItem resourcekey="light" Value="light">Light</asp:ListItem>
													<asp:ListItem resourcekey="red" Value="red">Red</asp:ListItem>
													<asp:ListItem resourcekey="blue" Value="blue">Blue</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselOpenMediaUrl" ResourceKey="lblImageCarouselOpenMediaUrl" runat="server" HelpText="On image click dont open image in lightbox, but open Media Url link." Text="On click go to Media Url:" HelpKey="lblImageCarouselOpenMediaUrl.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbImageCarouselOpenMediaUrl_CheckedChanged" resourcekey="cbImageCarouselOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselOpenMediaUrlNewWindow" ResourceKey="lblImageCarouselOpenMediaUrlNewWindow" runat="server" HelpText="Open link in new window:" Text="Open link in new window:" HelpKey="lblImageCarouselOpenMediaUrlNewWindow.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbImageCarouselOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselMaxImageWidth" ResourceKey="lblImageCarouselMaxImageWidth" runat="server" ControlName="tbMaxImageWidth" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image width:" HelpKey="lblImageCarouselMaxImageWidth.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbImageCarouselMaxImageWidth" runat="server" ValidationGroup="vgImageSliderSettings" Width="45px">150</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth" runat="server" ControlToValidate="tbImageCarouselMaxImageWidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageCarouselSettings" resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvImageCarouselImageWidth" runat="server" ControlToValidate="tbImageCarouselMaxImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageCarouselSettings"
									resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselMaxImageHeight" ResourceKey="lblImageCarouselMaxImageHeight" runat="server" ControlName="tbMaxImageHeight" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image height:" HelpKey="lblImageCarouselMaxImageHeight.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbImageCaruselMaxImageHeight" runat="server" ValidationGroup="vgImageSliderSettings" Width="45px">150</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageHeight" runat="server" ControlToValidate="tbImageCaruselMaxImageHeight" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageCarouselSettings" resourcekey="rfvImageCarouselImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvImageCarouselImageHeight" runat="server" ControlToValidate="tbImageCaruselMaxImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageCarouselSettings"
									resourcekey="cvImageCarouselImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselAutoSlideImages" ResourceKey="lblImageCarouselAutoSlideImages" runat="server" HelpText="Auto slide images:" Text="Auto slide images:" HelpKey="lblImageCarouselAutoSlideImages.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselAuoSlideImages" runat="server" resourcekey="cbImageCarouselAuoSlideImagesResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselAutoSlidePause" ResourceKey="lblImageCarouselAutoSlidePause" runat="server" ControlName="tbAutoSlidePause" HelpText="Set the pause between images when in auto slide mode:" Text="Auto slide pause between imags (ms): " HelpKey="lblImageCarouselAutoSlidePause.HelpText" />
							</td>
							<td colspan="2">
								<asp:Panel ID="pnlSlideOpt1" runat="server">
									<asp:TextBox ID="tbImageCarouselAutoSlidePause" runat="server" ValidationGroup="vgImageCarouselSettings" Width="51px">5000</asp:TextBox>
									<asp:RequiredFieldValidator ID="rfvImageCarouselAutoSlidePause" runat="server" ControlToValidate="tbImageCarouselAutoSlidePause" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageCarouselSettings" resourcekey="rfvImageCarouselAutoSlidePauseResource1.ErrorMessage">
									</asp:RequiredFieldValidator>
									<asp:CompareValidator ID="cvImageCarouselAutoSlidePause" runat="server" ControlToValidate="tbImageCarouselAutoSlidePause" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageCarouselSettings"
										resourcekey="cvImageCarouselAutoSlidePauseResource1.ErrorMessage">
									</asp:CompareValidator>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselNumberOfImages" ResourceKey="lblImageCarouselNumberOfImages" runat="server" ControlName="tbAutoSlidePause" HelpText="Number of images to show:" Text="Number of images to show:" HelpKey="lblImageCarouselNumberOfImages.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbImageCarouselNumberOfImages" runat="server" ValidationGroup="vgImageCarouselSettings" Width="51px">4</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvImageCarouselNumberOfImages" runat="server" ControlToValidate="tbImageCarouselNumberOfImages" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageCarouselSettings" resourcekey="rfvImageCarouselNumberOfImagesResource1.ErrorMessage">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvImageCarouselNumberOfImages" runat="server" ControlToValidate="tbImageCarouselNumberOfImages" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageCarouselSettings"
									resourcekey="cvImageCarouselNumberOfImagesResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselNumberOfImagesToSlide" ResourceKey="lblImageCarouselNumberOfImagesToSlide" runat="server" ControlName="tbAutoSlidePause" HelpText="Number of images to slide:" Text="Number of images to slide:" HelpKey="lblImageCarouselNumberOfImagesToSlide.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbImageCarouselNumberOfImagesSlide" runat="server" ValidationGroup="vgImageCarouselSettings" Width="51px">1</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvImageCarouselNumberOfImagesToSlide" runat="server" ControlToValidate="tbImageCarouselNumberOfImagesSlide" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageCarouselSettings" resourcekey="rfvImageCarouselNumberOfImagesToSlideResource1.ErrorMessage">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvImageCarouselNumberOfImagesToSlide" runat="server" ControlToValidate="tbImageCarouselNumberOfImagesSlide" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageCarouselSettings"
									resourcekey="cvImageCarouselNumberOfImagesToSlideResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselShowNavigation" ResourceKey="lblImageCarouselShowNavigation" runat="server" HelpText="Show navigation:" Text="Show navigation:" HelpKey="lblImageCarouselShowNavigation.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowNavigation" runat="server" Checked="True" resourcekey="cbImageCarouselShowNavigationResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselShowPaging" ResourceKey="lblImageCarouselShowPaging" runat="server" HelpText="Show paging:" Text="Show paging:" HelpKey="lblImageCarouselShowPaging.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselShowPaging" runat="server" resourcekey="cbImageCarouselShowPagingResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselRandomizeMedia" runat="server" HelpText="Randomize media positions at every page load:" Text="Randomize media positions:" HelpKey="lblImageCarouselRandomizeMedia.HelpText" ResourceKey="lblImageCarouselRandomizeMedia" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselRandomizeMedia" runat="server" resourcekey="cbImageCarouselShowPagingResource1" AutoPostBack="True" OnCheckedChanged="cbImageCarouselRandomizeMedia_CheckedChanged" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="Label8" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlImageCarouselMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblImageCarouselMediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselArrowTypes" runat="server" HelpText="Select navigation arrow style:" Text="Select navigation arrow style:" HelpKey="lblImageCarouselArrowTypes.HelpText" ResourceKey="lblImageCarouselArrowTypes.Text" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlImageCarouselArrows" runat="server">
									<asp:ListItem>Default</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style93" valign="top">
								<dnn:Label ID="lblImageCarouselEnableFullscreen" runat="server" CssClass="styleBolded" HelpKey="lblLightBoxEnableFullscreen.HelpText" HelpText="Enable fullscreen:" ResourceKey="lblLightBoxEnableFullscreen" Text="Enable fullscreen:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselEnableFullscreen" runat="server" AutoPostBack="True" OnCheckedChanged="cbImageCarouselEnableFullscreen_CheckedChanged" />
								<asp:Panel ID="pnlImageCarouselFullscreenOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style92">
												<dnn:Label ID="lblImageCarouselFullscreenThemeSelect" runat="server" HelpKey="lblLightboxFullscreenThemeSelect.HelpText" HelpText="Select fullscreen theme:" ResourceKey="lblLightboxFullscreenThemeSelect" Text="Select fullscreen theme:" />
											</td>
											<td>
												<asp:DropDownList ID="ddlImageCarouselFullScreenThemeSelect" runat="server">
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblImageCarouselFullscreenShowArrows" runat="server" HelpKey="lblLightboxFullscreenShowArrows.HelpText" HelpText="Show navigation arrows:" ResourceKey="lblLightboxFullscreenShowArrows" Text="Show navigation arrows:" />
											</td>
											<td>
												<asp:CheckBox ID="cbImageCarouselFullscreenShowArrows" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblImageCarouselFullscreenAutoHideNavigationArrows" runat="server" HelpKey="lblLightboxFullscreenAutoHideNavigationArrows.HelpText" HelpText="Auto hide navigation arrows on mouse out:" ResourceKey="lblLightboxFullscreenAutoHideNavigationArrows.Text"
													Text="Auto hide navigation arrows:" />
											</td>
											<td>
												<asp:CheckBox ID="cbImageCarouselFullscreenAutoHideArrows" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblImageCarouselFullscreenArrows" runat="server" HelpKey="lblLightboxFullscreenArrows.HelpText" HelpText="Navigation arrows:" ResourceKey="lblLightboxFullscreenArrows.Text" Text="Navigation arrows:" />
											</td>
											<td>
												<asp:DropDownList ID="ddlImageCarouselFullscreenArrows" runat="server">
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblImageCarouselFullscreenGalleryTitle" runat="server" HelpKey="lblLightboxFullscreenGalleryTitle.HelpText" HelpText="Please enter title to display:" ResourceKey="lblLightboxFullscreenGalleryTitle.Text" Text="Title to display:" />
											</td>
											<td>
												<asp:TextBox ID="tbImageCarouselFullscreenTitle" runat="server" Width="302px">
												</asp:TextBox>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style93" valign="top">
								<dnn:Label ID="lblLightBoxShowDownload1" runat="server" HelpKey="lblLightBoxShowDownload.HelpText" HelpText="Show image download link:" ResourceKey="lblLightBoxShowDownload" Text="Show image download link:" />
								&nbsp;
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselDownloadLink" runat="server" AutoPostBack="True" OnCheckedChanged="cbImageCarouselDownloadLink_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" />
								<asp:Panel ID="pnlImageCarouselDownloadOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style92">
												<asp:Label ID="lblLighboxSelectDownloadRoles1" runat="server" resourcekey="lblLighboxSelectDownloadRoles" Text="Select download roles:"></asp:Label>
											</td>
											<td>
												<br />
												<asp:GridView ID="gvImageCarouselDownloadRoles" runat="server" AutoGenerateColumns="False" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CssClass="intliststylebox" ForeColor="#333333" GridLines="None" OnRowDataBound="gvImageCarouselDownloadRoles_RowDataBound">
													<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
													<Columns>
														<asp:TemplateField HeaderText="Role">
															<EditItemTemplate>
																<asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
															</EditItemTemplate>
															<ItemTemplate>
																<asp:Label ID="lblRoleName2" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
															</ItemTemplate>
														</asp:TemplateField>
														<asp:TemplateField HeaderText="Enable download">
															<EditItemTemplate>
																<asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("EnableDownload") %>'></asp:TextBox>
															</EditItemTemplate>
															<ItemTemplate>
																<asp:CheckBox ID="cbICEnableDownload" runat="server" Checked='<%# Bind("EnableDownload") %>' />
															</ItemTemplate>
															<ItemStyle HorizontalAlign="Center" />
														</asp:TemplateField>
													</Columns>
													<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
													<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
													<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
													<HeaderStyle BackColor="#0BA2CE" Font-Bold="True" ForeColor="#FFFFFF" />
													<EditRowStyle BackColor="#999999" />
													<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
												</asp:GridView>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<asp:Label ID="lblUseViewVersionAsDownload1" runat="server" resourcekey="lblUseViewVersionAsDownload" Text="Use view version as download version if there is no download verison:" Width="130px"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbImageCarouselUseViewAsDownload" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
								&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style93">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<asp:Label ID="lblImageCarouselVideoinLighTitle" runat="server" Text="Video player in lightbox settings:" Font-Bold="True" resourcekey="lblLightBoxGalleryViseoPlayerSettingsResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselVPSelectPLayer" runat="server" HelpText="Select player:" Text="Select player:" HelpKey="SelectVideoPlayer.HelpText" ResourceKey="SelectVideoPlayer.Text" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlImageCarouselVPSelectPlayer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImageCarouselVPSelectPlayer_SelectedIndexChanged">
									<asp:ListItem Selected="True" Value="False">Standard</asp:ListItem>
									<asp:ListItem Value="True">Flow player</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselVPSkin" runat="server" HelpKey="lblLightBoxGalleryVideoPlayerSelectSkin.HelpText" HelpText="Select video player skin:" ResourceKey="lblLightBoxGalleryVideoPlayerSelectSkin" Text="Select video player skin:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlImageCarouselVPTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource28" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource29" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselVPPlayOnLoad" ResourceKey="lblLightBoxGalleryVideoPlayerPlayOnLoad" runat="server" HelpText="Start to play video on page load:" Text="Play on load:" HelpKey="lblLightBoxGalleryVideoPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselVPPlayOnLOad" runat="server" resourcekey="cbTGVPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselVPShowDescription" ResourceKey="lblLightBoxGalleryViseoPlayerPlayOnLoad" runat="server" HelpText="Show description inside video player:" Text="Show description:" HelpKey="lblLightBoxGalleryViseoPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselVPShowDescription" runat="server" resourcekey="cbTGVPShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselVPAllowFullscreen" ResourceKey="lblTGVPAllowFullscreen" runat="server" HelpText="Allow video to be played in fullscreen:" Text="Allow fullscreen:" HelpKey="lblTGVPAllowFullscreen.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselVPAllowFullscreen" runat="server" resourcekey="cbTGVPAllowFullscreenResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselPlayQTinFlash" ResourceKey="lblLightBoxGalleryVideoPlayerPlayQTInFlash" runat="server" HelpText="Play QuickTime videos in flash player:" Text="Play QuickTime videos in flash player:" HelpKey="lblLightBoxGalleryVideoPlayerPlayQTInFlash.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselVPPlayQTInFlash" runat="server" resourcekey="cbTGVPPlayQTinFlashResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">&nbsp;
							</td>
							<td colspan="2">&nbsp; &nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td class="style93">
								<asp:Label ID="lblLightBoxGalleryAudioPlayerSettings1" runat="server" Font-Bold="True" resourcekey="lblLightBoxGalleryAudioPlayerSettingsResource1" Text="Audio player in lightbox settings:"></asp:Label>
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style93">
								<dnn:Label ID="lblImageCarouselAPAutoStart" ResourceKey="lblLightBoxGalleryAudioPlayerPlayOnLoad" runat="server" HelpText="Start to play audio on page load:" Text="Play on load:" HelpKey="lblLightBoxGalleryAudioPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageCarouselAPAutostart" runat="server" resourcekey="cbTGAPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style93">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnImageCarouselSaveSettings" runat="server" OnClick="btnImageCarouselSaveSettings_Click" Style="height: 26px" Text="Save settings" ValidationGroup="vgImageCarouselSettings" Width="140px" resourcekey="btnImageCarouselSaveSettingsResource1" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnImageCaouselSaveClose" runat="server" OnClick="btnImageCaouselSaveClose_Click" Text="Save &amp; Close" ValidationGroup="vgImageCarouselSettings" Width="140px" resourcekey="btnImageCaouselSaveCloseResource1"
									Style="height: 26px" />
								&nbsp;&nbsp;
							<asp:Label ID="lblImageCarouselSstatus" runat="server" Width="120px" resourcekey="lblImageCarouselSstatusResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style93">&nbsp;
							</td>
							<td colspan="2">&nbsp; &nbsp; &nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlVerticalCarousel" runat="server" BackColor="#EFEFEF" Visible="False">
				<table align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblVerticalCarousel" resourcekey="lblVerticalCarousel" runat="server" CssClass="settingsdetailtitle" Text="Vertical carousel display settings"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table align="center" cellpadding="2" cellspacing="2" width="80%">
						<tr>
							<td colspan="3"></td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style79">
								<dnn:Label ID="lblVerticalCarouselTemplateSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblVerticalCarouselTemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblVerticalCarouselTemplateSelect" Text="Select template:" />
							</td>
							<td class="style80" colspan="2">
								<asp:DropDownList ID="ddlVerticalTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVerticalTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style79">
								<dnn:Label ID="lblVerticalCarouselThemeSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblImageCarouselThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblImageCarouselThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style80" colspan="2">
								<asp:DropDownList ID="ddlVerticalThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style74">&nbsp;
							</td>
							<td class="style81" colspan="2">
								<asp:Label ID="lblVerticalCarouselTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselShowMediaTitle" ResourceKey="lblVerticalCarouselShowMediaTitle" runat="server" HelpText="Show image title:" Text="Show image title:" HelpKey="lblVerticalCarouselShowMediaTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselShowMediaTitle" runat="server" resourcekey="cbImageCarouselShowMediaTitleResource1" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselShowMediaDescription" ResourceKey="lblVerticalCarouselShowMediaDescription" runat="server" HelpText="Show image description:" Text="Show image description:" HelpKey="lblVerticalCarouselShowMediaDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselShowMediaDescription" runat="server" resourcekey="cbImageCarouselShowMediaDescriptionResource1" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselShowLightboxTitle" ResourceKey="lblVerticalCarouselShowLightboxTitle" runat="server" HelpText="Show image title in lightbox:" Text="Show image title in lightbox:" HelpKey="lblVerticalCarouselShowLightboxTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselShowLightboxTitle" runat="server" resourcekey="cbImageCarouselShowLightboxTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72" valign="top">
								<dnn:Label ID="lblVerticalCarouselShowLightBoxDescription" ResourceKey="lblVerticalCarouselShowLightBoxDescription" runat="server" HelpText="Show image description in lightbox:" Text="Show image description in lightbox:" HelpKey="lblVerticalCarouselShowLightBoxDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselShowLightboxDescription" runat="server" resourcekey="cbImageCarouselShowLightboxDescriptionResource1" AutoPostBack="True" OnCheckedChanged="cbVerticalCarouselShowLightboxDescription_CheckedChanged" />
								<asp:Panel ID="pnlVerticalCarouselTipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style85">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblVerticalCarouselToolTipOptions0" runat="server" Font-Bold="True" resourcekey="lblLightBoxToolTipOptions" Text="Tooltip options"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderLightboxShowTooltips0" runat="server" resourcekey="lblLightboxShowToolTips" Text="Show Tooltips:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbVerticalCarouselShowToolTips" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselTargetPosition" runat="server" resourcekey="lblLightboxTargetPosition" Text="Target position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlVerticalCarouselTargetPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle" Selected="True">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Value="bottomMiddle">Bottom middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselTooltipPosition" runat="server" resourcekey="lblLightboxTooltipPosition" Text="Tooltip position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlVerticalCarouselTooltipPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Selected="True" Value="bottomMiddle">Bottom 
											middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselShowEffect" runat="server" resourcekey="lblLightboxShowEffect" Text="Show effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlVerticalCarouselShoweffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselShowEffectDuration" runat="server" resourcekey="lblLightboxShowEffectDuration" Text="Show effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbVerticalCarouselTooltipShowDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth4" runat="server" ControlToValidate="tbVerticalCarouselTooltipShowDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgVerticalCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth4" runat="server" ControlToValidate="tbVerticalCarouselTooltipShowDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselShowHideEffect" runat="server" resourcekey="lblLightboxShowHideEffect" Text="Hide effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlVerticalCarouselHideEffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselHideEffectDuration" runat="server" resourcekey="lblLightboxHideEffectDuration" Text="Hide effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbVerticalCarouselTooltipHideDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth5" runat="server" ControlToValidate="tbVerticalCarouselTooltipHideDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgVerticalCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth5" runat="server" ControlToValidate="tbVerticalCarouselTooltipHideDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselTooltipBorder" runat="server" resourcekey="lblLightboxTooltipBorder" Text="Border:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbVerticalCarouselTooltipBorder" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth6" runat="server" ControlToValidate="tbVerticalCarouselTooltipBorder" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage" SetFocusOnError="True"
													ValidationGroup="vgVerticalCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth6" runat="server" ControlToValidate="tbVerticalCarouselTooltipBorder" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselTooltipCornerRadius" runat="server" resourcekey="lblLightboxTooltipCornerRadius" Text="Corner radius:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbVerticalCarouselTooltipCornerRadius" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth7" runat="server" ControlToValidate="tbVerticalCarouselTooltipCornerRadius" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgVerticalCarouselSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth7" runat="server" ControlToValidate="tbVerticalCarouselTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblVerticalCarouselTooltipTheme" runat="server" resourcekey="lblLightboxTooltipTheme" Text="Select theme:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlVerticalCarouselTooltipTheme" runat="server">
													<asp:ListItem resourcekey="cream" Value="cream">Yellow</asp:ListItem>
													<asp:ListItem resourcekey="dark" Value="dark">Dark</asp:ListItem>
													<asp:ListItem resourcekey="green" Value="green">Green</asp:ListItem>
													<asp:ListItem resourcekey="light" Value="light">Light</asp:ListItem>
													<asp:ListItem resourcekey="red" Value="red">Red</asp:ListItem>
													<asp:ListItem resourcekey="blue" Value="blue">Blue</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselOpenMediaUrl" ResourceKey="lblVerticalCarouselOpenMediaUrl" runat="server" HelpText="On image click dont open image in lightbox, but open Media Url link." Text="On click go to Media Url:" HelpKey="lblVerticalCarouselOpenMediaUrl.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbVerticalCarouselOpenMediaUrl_CheckedChanged" resourcekey="cbImageCarouselOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselOpenMediaUrlNewWindow" ResourceKey="lblVerticalCarouselOpenMediaUrlNewWindow" runat="server" HelpText="Open link in new window:" Text="Open link in new window:" HelpKey="lblVerticalCarouselOpenMediaUrlNewWindow.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbImageCarouselOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselMaxImageWidth" ResourceKey="lblVerticalCarouselMaxImageWidth" runat="server" ControlName="tbMaxImageWidth" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image width:" HelpKey="lblVerticalCarouselMaxImageWidth.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbVerticalCarouselMaxImageWidth" runat="server" ValidationGroup="vgVerticalCarouselSettings" Width="45px">600</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVerticalCarouselImageWidth" runat="server" ControlToValidate="tbVerticalCarouselMaxImageWidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgVerticalCarouselSettings" resourcekey="rfvVerticalCarouselImageWidth.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVerticalCarouselImageWidth" runat="server" ControlToValidate="tbVerticalCarouselMaxImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVerticalCarouselSettings"
									resourcekey="cvVerticalCarouselImageWidth.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselMaxImageHeight" ResourceKey="lblVerticalCarouselMaxImageHeight" runat="server" ControlName="tbMaxImageHeight" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image height:" HelpKey="lblVerticalCarouselMaxImageHeight.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbVerticalCaruselMaxImageHeight" runat="server" ValidationGroup="vgVerticalCarouselSettings" Width="45px">400</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVerticalCarouselImageHeight" runat="server" ControlToValidate="tbVerticalCaruselMaxImageHeight" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgVerticalCarouselSettings" resourcekey="rfvVerticalCarouselImageHeight.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVerticalCarouselImageHeight" runat="server" ControlToValidate="tbVerticalCaruselMaxImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVerticalCarouselSettings"
									resourcekey="cvVerticalCarouselImageHeight.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselAutoSlidePause" ResourceKey="lblVerticalCarouselAutoSlidePause" runat="server" ControlName="tbAutoSlidePause" HelpText="Set the pause between images when in auto slide mode:" Text="Auto slide pause between imags (ms): "
									HelpKey="lblVerticalCarouselAutoSlidePause.HelpText" />
							</td>
							<td colspan="2">
								<asp:Panel ID="pnlSlideOpt2" runat="server">
									<asp:TextBox ID="tbVerticalCarouselAutoSlidePause" runat="server" ValidationGroup="vgVerticalCarouselSettings" Width="51px">5000</asp:TextBox>
									<asp:RequiredFieldValidator ID="rfvVerticalCarouselAutoSlidePause" runat="server" ControlToValidate="tbVerticalCarouselAutoSlidePause" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgVerticalCarouselSettings" resourcekey="rfvVerticalCarouselAutoSlidePause.ErrorMessage">
									</asp:RequiredFieldValidator>
									<asp:CompareValidator ID="cvVerticalCarouselAutoSlidePause" runat="server" ControlToValidate="tbVerticalCarouselAutoSlidePause" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVerticalCarouselSettings"
										resourcekey="cvVerticalCarouselAutoSlidePause.ErrorMessage">
									</asp:CompareValidator>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselNumberOfImagesToSlide" runat="server" HelpKey="lblVerticalCarouselNumberOfImagesToSlide.HelpText" HelpText="Number of images to slide:" ResourceKey="lblVerticalCarouselNumberOfImagesToSlide" Text="Number of images to slide:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbVerticalCarouselNumberOfImagesSlide" runat="server" ValidationGroup="vgVerticalCarouselSettings" Width="51px">1</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvVerticalCarouselNumberOfImagesToSlide" runat="server" ControlToValidate="tbVerticalCarouselNumberOfImagesSlide" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVerticalCarouselNumberOfImagesToSlide.ErrorMessage"
									ValidationGroup="vgVerticalCarouselSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVerticalCarouselNumberOfImagesToSlide" runat="server" ControlToValidate="tbVerticalCarouselNumberOfImagesSlide" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVerticalCarouselNumberOfImagesToSlide.ErrorMessage"
									Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselNumberOfImages" runat="server" HelpKey="lblVerticalCarouselNumberOfImages.HelpText" HelpText="Number of images to show:" ResourceKey="lblVerticalCarouselNumberOfImages" Text="Number of images to show:" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbVerticalCarouselNumberOfImages" runat="server" ValidationGroup="vgVerticalCarouselSettings" Width="51px">1</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvVerticalCarouselNumberOfImages" runat="server" ControlToValidate="tbVerticalCarouselNumberOfImages" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVerticalCarouselNumberOfImages.ErrorMessage"
									ValidationGroup="vgVerticalCarouselSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVerticalCarouselNumberOfImages" runat="server" ControlToValidate="tbVerticalCarouselNumberOfImages" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVerticalCarouselNumberOfImages.ErrorMessage"
									Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselScrollingDirection" runat="server" HelpText="Scrolling direction:" Text="Scrolling direction:" HelpKey="lblVerticalCarouselScrollingDirection.HelpText" ResourceKey="lblVerticalCarouselScrollingDirection" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlVerticalCarouselScrollingDirection" runat="server">
									<asp:ListItem resourcekey="liUp" Value="up">Up</asp:ListItem>
									<asp:ListItem resourcekey="liDown" Value="down">Down</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblVerticalCarouselRandomizeMedia" runat="server" HelpKey="lblImageCarouselRandomizeMedia.HelpText" HelpText="Randomize media positions at every page load:" ResourceKey="lblImageCarouselRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselRandomizeMedia" runat="server" resourcekey="cbImageCarouselShowPagingResource1" AutoPostBack="True" OnCheckedChanged="cbVerticalCarouselRandomizeMedia_CheckedChanged" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label9" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlVerticalCarouselMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblVerticalCarouselMediasortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<asp:Label ID="lblVerticaCarouselVPTitle" runat="server" Text="Video player in lightbox settings:" Font-Bold="True" resourcekey="lblLightBoxGalleryViseoPlayerSettingsResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVerticaCarouselSelectVideoPlayer" runat="server" HelpText="Select video player:" Text="Select video player:" HelpKey="SelectVideoPlayer.HelpText" ResourceKey="SelectVideoPlayer.Text" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlVerticalCarouselVPSelection" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVerticalCarouselVPSelection_SelectedIndexChanged">
									<asp:ListItem Selected="True" Value="False">Standard 
							player</asp:ListItem>
									<asp:ListItem Value="True">Flow player</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVerticaCarouselVideoPlayer" runat="server" HelpKey="lblLightBoxGalleryVideoPlayerSelectSkin.HelpText" HelpText="Select video player skin:" ResourceKey="lblLightBoxGalleryVideoPlayerSelectSkin" Text="Select video player skin:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlVerticalCarouselVPTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource28" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource29" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVerticaCarouselVPPlayOnLoad" ResourceKey="lblLightBoxGalleryVideoPlayerPlayOnLoad" runat="server" HelpText="Start to play video on page load:" Text="Play on load:" HelpKey="lblLightBoxGalleryVideoPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVeticalCarouselVPPlayOnload" runat="server" resourcekey="cbTGVPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVerticaCarouselVPShowDescription" ResourceKey="lblLightBoxGalleryViseoPlayerPlayOnLoad" runat="server" HelpText="Show description inside video player:" Text="Show description:" HelpKey="lblLightBoxGalleryViseoPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVeticalCarouselVPShowDescription" runat="server" resourcekey="cbTGVPShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVerticaCarouselVPAllowFullscreen" ResourceKey="lblTGVPAllowFullscreen" runat="server" HelpText="Allow video to be played in fullscreen:" Text="Allow fullscreen:" HelpKey="lblTGVPAllowFullscreen.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVeticalCarouselVPAllowFullscreen" runat="server" resourcekey="cbTGVPAllowFullscreenResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVerticaCarouselVPPlayQtInFlash" ResourceKey="lblLightBoxGalleryVideoPlayerPlayQTInFlash" runat="server" HelpText="Play QuickTime videos in flash player:" Text="Play QuickTime videos in flash player:" HelpKey="lblLightBoxGalleryVideoPlayerPlayQTInFlash.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVeticalCarouselVPPlayQtInFlash" runat="server" resourcekey="cbTGVPPlayQTinFlashResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp; &nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td class="style72">
								<asp:Label ID="lblVerticalCarouselAPLightTitle" runat="server" Font-Bold="True" resourcekey="lblLightBoxGalleryAudioPlayerSettingsResource1" Text="Audio player in lightbox settings:"></asp:Label>
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVerticalCarouselAPPlayOnLoad" ResourceKey="lblLightBoxGalleryAudioPlayerPlayOnLoad" runat="server" HelpText="Start to play audio on page load:" Text="Play on load:" HelpKey="lblLightBoxGalleryAudioPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVerticalCarouselAPPlayONLoad" runat="server" resourcekey="cbTGAPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnVerticalCarouselSaveSettings" runat="server" OnClick="btnVerticalCarouselSaveSettings_Click" resourcekey="btnVerticalCarouselSaveSettings" Style="height: 26px" Text="Save settings" ValidationGroup="vgVerticalCarouselSettings" Width="140px" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnVerticalCaouselSaveClose" runat="server" OnClick="btnVerticalCaouselSaveClose_Click" OnCommand="btnVerticalCaouselSaveClose_Command" resourcekey="btnVerticalCaouselSaveClose" Text="Save &amp; Close" ValidationGroup="vgVerticalCarouselSettings"
									Width="140px" />
								&nbsp;&nbsp;
							<asp:Label ID="lblVerticalCarouselSstatus" runat="server" resourcekey="lblImageCarouselSstatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlImageSlider" runat="server" BackColor="#EFEFEF" Visible="False">
				<table align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblImageSliderDisplaySettings" runat="server" CssClass="settingsdetailtitle" Text="Image slider display settings" resourcekey="lblImageSliderDisplaySettingsResource1"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table align="center" cellpadding="2" cellspacing="2" width="80%">
						<tr>
							<td colspan="3"></td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp; &nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderTemplateSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblImageSliderTemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblImageSliderTemplateSelect" Text="Select template:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlImageSliderTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImageSliderTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderTheme" runat="server" ControlName="ddlImageSliderTheme" Text="Select theme:" HelpText="Select theme." ResourceKey="lblImageSliderTheme" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlImageSliderTheme" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImageSliderTemplateSelect_SelectedIndexChanged">
									<asp:ListItem Value="Modern">Modern</asp:ListItem>
									<asp:ListItem Value="Classic">Classic</asp:ListItem>
									<asp:ListItem Value="Dark">Dark</asp:ListItem>
									<asp:ListItem Value="Light">Light</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblImageSliderTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="dnnImageSliderRsponsive" runat="server" HelpText="Select the layout type:" Text="Select the layout type:" HelpKey="lblChameleonSelectLayoutType.HelpText" ResourceKey="lblChameleonSelectLayoutType" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblImageSliderRsponsive" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblImageSliderRsponsive_SelectedIndexChanged">
									<asp:ListItem resourcekey="liFixed" Selected="True" Value="fixed">Fixed Layout</asp:ListItem>
									<asp:ListItem resourcekey="liResponsive" Value="responsive">Responsive Layout</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderShowMeidaTitle" ResourceKey="lblImageSliderShowMeidaTitle" runat="server" HelpText="Show image title:" Text="Show image title:" HelpKey="lblImageSliderShowMeidaTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderShowMediaTitle" runat="server" resourcekey="cbImageSliderShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderShowMediaDescription" ResourceKey="lblImageSliderShowMediaDescription" runat="server" HelpText="Show image description:" Text="Show image description:" HelpKey="lblImageSliderShowMediaDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderShowMediaDescription" runat="server" resourcekey="cbImageSliderShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderShowLightboxTitle" ResourceKey="lblImageSliderShowLightboxTitle" runat="server" HelpText="Show image title in lightbox:" Text="Show image title in lightbox:" HelpKey="lblImageSliderShowLightboxTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderShowLightboxTitle" runat="server" resourcekey="cbImageSliderShowLightboxTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72" valign="top">
								<dnn:Label ID="lblImageSliderShowLightboxDescription" ResourceKey="lblImageSliderShowLightboxDescription" runat="server" HelpText="Show image description in lightbox:" Text="Show image description in lightbox:" HelpKey="lblImageSliderShowLightboxDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderShowLightboxDescription" runat="server" resourcekey="cbImageSliderShowLightboxDescriptionResource1" AutoPostBack="True" OnCheckedChanged="cbImageSliderShowLightboxDescription_CheckedChanged" />
								<asp:Panel ID="pnlImageSliderTipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style85">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblImageSliderToolTipOptions" runat="server" Font-Bold="True" resourcekey="lblLightBoxToolTipOptions" Text="Tooltip options"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderLightboxShowTooltips" runat="server" resourcekey="lblLightboxShowToolTips" Text="Show Tooltips:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbImageSliderShowToolTips" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderTargetPosition" runat="server" resourcekey="lblLightboxTargetPosition" Text="Target position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageSliderTargetPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle" Selected="True">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Value="bottomMiddle">Bottom middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderTooltipPosition" runat="server" resourcekey="lblLightboxTooltipPosition" Text="Tooltip position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageSliderTooltipPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Selected="True" Value="bottomMiddle">Bottom 
											middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderShowEffect" runat="server" resourcekey="lblLightboxShowEffect" Text="Show effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageSliderShoweffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderShowEffectDuration" runat="server" resourcekey="lblLightboxShowEffectDuration" Text="Show effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageSliderTooltipShowDuration" runat="server" Width="53px">500</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth8" runat="server" ControlToValidate="tbImageSliderTooltipShowDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgVerticalCarouselSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth8" runat="server" ControlToValidate="tbImageSliderTooltipShowDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderShowHideEffect" runat="server" resourcekey="lblLightboxShowHideEffect" Text="Hide effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageSliderHideEffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderHideEffectDuration" runat="server" resourcekey="lblLightboxHideEffectDuration" Text="Hide effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageSliderTooltipHideDuration" runat="server" Width="53px">500</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth9" runat="server" ControlToValidate="tbImageSliderTooltipHideDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgVerticalCarouselSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth9" runat="server" ControlToValidate="tbImageSliderTooltipHideDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderTooltipBorder" runat="server" resourcekey="lblLightboxTooltipBorder" Text="Border:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageSliderTooltipBorder" runat="server" Width="53px">5</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth10" runat="server" ControlToValidate="tbImageSliderTooltipBorder" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage" SetFocusOnError="True"
													ValidationGroup="vgVerticalCarouselSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth10" runat="server" ControlToValidate="tbImageSliderTooltipBorder" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderTooltipCornerRadius" runat="server" resourcekey="lblLightboxTooltipCornerRadius" Text="Corner radius:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbImageSliderTooltipCornerRadius" runat="server" Width="53px">5</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth11" runat="server" ControlToValidate="tbImageSliderTooltipCornerRadius" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgVerticalCarouselSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth11" runat="server" ControlToValidate="tbImageSliderTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgVerticalCarouselSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblImageSliderTooltipTheme" runat="server" resourcekey="lblLightboxTooltipTheme" Text="Select theme:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlImageSliderTooltipTheme" runat="server">
													<asp:ListItem resourcekey="cream" Value="cream">Yellow</asp:ListItem>
													<asp:ListItem resourcekey="dark" Value="dark">Dark</asp:ListItem>
													<asp:ListItem resourcekey="green" Value="green">Green</asp:ListItem>
													<asp:ListItem resourcekey="light" Value="light">Light</asp:ListItem>
													<asp:ListItem resourcekey="red" Value="red">Red</asp:ListItem>
													<asp:ListItem resourcekey="blue" Value="blue">Blue</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderOpenMediaUrl" ResourceKey="lblImageSliderOpenMediaUrl" runat="server" HelpText="On image click dont open image in lightbox, but open Media Url link." Text="On click go to Media Url:" HelpKey="lblImageSliderOpenMediaUrl.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbImageSliderOpenMediaUrl_CheckedChanged" resourcekey="cbImageSliderOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderOpenMediaUrlNewWindow" ResourceKey="lblImageSliderOpenMediaUrlNewWindow" runat="server" HelpText="Open link in new window:" Text="Open link in new window:" HelpKey="lblImageSliderOpenMediaUrlNewWindow.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbImageSliderOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderMaxImageWidth" ResourceKey="lblImageSliderMaxImageWidth" runat="server" ControlName="tbMaxImageWidth" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image width:" HelpKey="lblImageSliderMaxImageWidth.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbImageSliderMaxImageWidth" runat="server" ValidationGroup="vgImageSliderSettings" Width="45px">600</asp:TextBox>
								<asp:Label ID="lblImageSliderPercentageW" runat="server" Text="px"></asp:Label>
								&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfvImageSliderImageWidth" runat="server" ControlToValidate="tbImageSliderMaxImageWidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageSliderSettings" resourcekey="rfvImageSliderImageWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvImageSliderImageWidth" runat="server" ControlToValidate="tbImageSliderMaxImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageSliderSettings"
									resourcekey="cvImageSliderImageWidthResource1">
								</asp:CompareValidator>
								<asp:RangeValidator ID="rvImageSliderWidthPerctage" runat="server" ControlToValidate="tbImageSliderMaxImageWidth" Display="Dynamic" Enabled="False" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" resourcekey="rvAGVolume0Resource1.ErrorMessage"
									SetFocusOnError="True" Type="Integer" ValidationGroup="vgImageSliderSettings" Visible="False"></asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderMaxImageHeight" ResourceKey="lblImageSliderMaxImageHeight" runat="server" ControlName="tbMaxImageHeight" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image height:" HelpKey="lblImageSliderMaxImageHeight.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbImageSliderMaxImageHeight" runat="server" ValidationGroup="vgImageSliderSettings" Width="45px">400</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvImageSliderImageHeight" runat="server" ControlToValidate="tbImageSliderMaxImageHeight" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageSliderSettings" resourcekey="rfvImageSliderImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvImageSliderImageHeight" runat="server" ControlToValidate="tbImageSliderMaxImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageSliderSettings"
									resourcekey="cvImageSliderImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderTransitionEffect" ResourceKey="lblImageSliderTransitionEffect" runat="server" ControlName="tbMaxImageHeight" HelpText="Select transition effect:" Text="Select transition effect:" HelpKey="lblImageSliderTransitionEffect.HelpText" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlImageSliderTransitionEffect" runat="server">
									<asp:ListItem Value="random" resourcekey="ListItemResource16">Random</asp:ListItem>
									<asp:ListItem Value="sliceDown" resourcekey="ListItemResource17">Slice down</asp:ListItem>
									<asp:ListItem Value="sliceDownLeft" resourcekey="ListItemResource18">Slice down left</asp:ListItem>
									<asp:ListItem Value="sliceUp" resourcekey="ListItemResource19">Slice up</asp:ListItem>
									<asp:ListItem Value="sliceUpLeft" resourcekey="ListItemResource20">Slice up left</asp:ListItem>
									<asp:ListItem Value="sliceUpDown" resourcekey="ListItemResource21">Slice up down</asp:ListItem>
									<asp:ListItem Value="sliceUpDownLeft" resourcekey="ListItemResource22">Slice up down left</asp:ListItem>
									<asp:ListItem Value="fold" resourcekey="ListItemResource23">Fold</asp:ListItem>
									<asp:ListItem Value="fade" resourcekey="ListItemResource24">Fade</asp:ListItem>
									<asp:ListItem Value="sliceDownRight" resourcekey="sliceDownRight">Slice down right</asp:ListItem>
									<asp:ListItem Value="sliceUpRight" resourcekey="sliceUpRight">Slice up right</asp:ListItem>
									<asp:ListItem Value="boxRandom" resourcekey="boxRandom">Random box</asp:ListItem>
									<asp:ListItem Value="boxRain" resourcekey="boxRain">Rain box</asp:ListItem>
									<asp:ListItem Value="boxRainReverse" resourcekey="boxRainReverse">Rain box reverse</asp:ListItem>
									<asp:ListItem Value="boxRainGrow" resourcekey="boxRainGrow">Rain box grow</asp:ListItem>
									<asp:ListItem Value="boxRainGrowReverse" resourcekey="boxRainGrowReverse">Rain box grow reverse</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderAutoSlidePause" ResourceKey="lblImageSliderAutoSlidePause" runat="server" HelpText="Set the pause between images when in auto slide mode:" Text="Auto slide pause between imags (ms): " HelpKey="lblImageSliderAutoSlidePause.HelpText" />
							</td>
							<td colspan="2">
								<asp:Panel ID="pnlSlideOpt0" runat="server">
									<asp:TextBox ID="tbImageSliderAutoSlidePause" runat="server" ValidationGroup="vgImageSliderSettings" Width="51px">5000</asp:TextBox>
									<asp:RequiredFieldValidator ID="rfvSSWidth1" runat="server" ControlToValidate="tbImageSliderAutoSlidePause" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageSliderSettings" resourcekey="rfvSSWidth1Resource1.ErrorMessage">
									</asp:RequiredFieldValidator>
									<asp:CompareValidator ID="cvImageSliderImageHeight0" runat="server" ControlToValidate="tbImageSliderAutoSlidePause" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageSliderImageHeightResource1.ErrorMessage"
										Type="Integer" ValidationGroup="vgImageSliderSettings">
									</asp:CompareValidator>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderTransitionSpeed" ResourceKey="lblImageSliderTransitionSpeed" runat="server" HelpText="Slide transition speed (ms):" Text="Slide transition speed (ms):" HelpKey="lblImageSliderTransitionSpeed.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbImageSliderAutoSlideTransition" runat="server" ValidationGroup="vgImageSliderSettings" Width="51px">500</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvImageSliderTransitionSpeed" runat="server" ControlToValidate="tbImageSliderAutoSlideTransition" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgImageSliderSettings" resourcekey="rfvImageSliderTransitionSpeedResource1.ErrorMessage">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvImageSliderImageHeight1" runat="server" ControlToValidate="tbImageSliderAutoSlideTransition" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageSliderImageHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgImageSliderSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderStartRandom" ResourceKey="lblImageSliderStartRandom" runat="server" ControlName="cbSSStartRandom" HelpText="Set this if you want the auto slide mode to start with random image:" Text="Start slide show with random image:" HelpKey="lblImageSliderStartRandom.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderStartRandom" runat="server" resourcekey="cbImageSliderStartRandomResource1" />
								&nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderShowPaging" ResourceKey="lblImageSliderShowPaging" runat="server" HelpText="Show paging:" Text="Show paging:" HelpKey="lblImageSliderShowPaging.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderShowPaging" runat="server" resourcekey="cbImageSliderShowPagingResource1" />
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderRandomizeMedia" runat="server" HelpText="Randomize media positions at every page load:" Text="Randomize media positions:" HelpKey="lblImageSliderRandomizeMedia.HelpText" ResourceKey="lblImageSliderRandomizeMedia" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbImageSliderRandomizeMedia" runat="server" resourcekey="cbImageSliderShowPagingResource1" AutoPostBack="True" OnCheckedChanged="cbImageSliderRandomizeMedia_CheckedChanged" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label7" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlImageSliderMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblImageSliderMediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style72">
								<dnn:Label ID="lblImageSliderSelectTheme" runat="server" HelpKey="lblImageSliderSelectTheme.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblImageSliderSelectTheme" Text="Select the CSS theme file:" Visible="False" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlImageSliderThemeSelect" runat="server" Visible="False">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp; &nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnImageSliderSaveSettings" runat="server" OnClick="btnImageSliderSaveSettings_Click" Style="height: 26px" Text="Save settings" ValidationGroup="vgImageSliderSettings" Width="140px" resourcekey="btnImageSliderSaveSettingsResource1" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnImageSliderSaveClose" runat="server" OnClick="btnSSSave0_Click" Text="Save &amp; Close" ValidationGroup="vgImageSliderSettings" Width="140px" resourcekey="btnImageSliderSaveCloseResource1" />
								&nbsp;&nbsp;
							<asp:Label ID="lblImageSliderStatus" runat="server" Width="120px" resourcekey="lblImageSliderStatusResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style72">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlSlideShowDisplay" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblSlideShowDisplaySettings" runat="server" Text="Slide show display settings" CssClass="settingsdetailtitle" resourcekey="lblSlideShowDisplaySettingsResource1"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td class="style70">&nbsp;<dnn:Label ID="lblSlideShowThemeSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblSlideShowThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblSlideShowThemeSelect" Text="Select CSS:" />
							</td>
							<td>&nbsp;<asp:DropDownList ID="ddlSSThemeSelect" runat="server">
							</asp:DropDownList>
								&nbsp;
							</td>
							<td class="style30">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowShowTitle" ResourceKey="lblSlideShowShowTitle" runat="server" HelpText="Show gallery title:" Text="Show gallery title:" HelpKey="lblSlideShowShowTitle.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowShowTitle" runat="server" resourcekey="cbSlideShowShowTitleResource1" />
							</td>
							<td class="style30">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowShowDescription" ResourceKey="lblSlideShowShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblSlideShowShowDescription.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideShowShowDescription" runat="server" resourcekey="cbSlideShowShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowMediaTitle" ResourceKey="lblSlideShowMediaTitle" runat="server" HelpText="Show image title:" Text="Show image title:" HelpKey="lblSlideShowMediaTitle.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideShowShowMediaTitle" runat="server" resourcekey="cbSlideShowShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowShowMediaDescription" ResourceKey="lblSlideShowShowMediaDescription" runat="server" HelpText="Show image description:" Text="Show image description:" HelpKey="lblSlideShowShowMediaDescription.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideShowShowMediaDescription" runat="server" resourcekey="cbSlideShowShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowShowLightboxTitle" ResourceKey="lblSlideShowShowLightboxTitle" runat="server" HelpText="Show image title in lightbox:" Text="Show image title in lightbox:" HelpKey="lblSlideShowShowLightboxTitle.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideShowShowLightboxTitle" runat="server" resourcekey="cbSlideShowShowLightboxTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblSlideShowShowLightboxDescription" ResourceKey="lblSlideShowShowLightboxDescription" runat="server" HelpText="Show image description in lightbox:" Text="Show image description in lightbox:" HelpKey="lblSlideShowShowLightboxDescription.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideShowShowLightboxDescription" runat="server" resourcekey="cbSlideShowShowLightboxDescriptionResource1" AutoPostBack="True" OnCheckedChanged="cbSlideShowShowLightboxDescription_CheckedChanged" />
								<asp:Panel ID="pnlSlideShowTipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style85">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblSlideShowToolTipOptions" runat="server" Font-Bold="True" resourcekey="lblLightBoxToolTipOptions" Text="Tooltip options"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowLightboxShowTooltips" runat="server" resourcekey="lblLightboxShowToolTips" Text="Show Tooltips:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSSSHowToolTips" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTargetPosition" runat="server" resourcekey="lblLightboxTargetPosition" Text="Target position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTargetPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle" Selected="True">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Value="bottomMiddle">Bottom middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTooltipPosition" runat="server" resourcekey="lblLightboxTooltipPosition" Text="Tooltip position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTooltipPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Selected="True" Value="bottomMiddle">Bottom 
											middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowShowEffect" runat="server" resourcekey="lblLightboxShowEffect" Text="Show effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowShoweffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowShowEffectDuration" runat="server" resourcekey="lblLightboxShowEffectDuration" Text="Show effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTooltipShowDuration" runat="server" Width="53px">500</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth12" runat="server" ControlToValidate="tbSlideShowTooltipShowDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgSSSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth12" runat="server" ControlToValidate="tbSlideShowTooltipShowDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowShowHideEffect" runat="server" resourcekey="lblLightboxShowHideEffect" Text="Hide effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowHideEffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowHideEffectDuration" runat="server" resourcekey="lblLightboxHideEffectDuration" Text="Hide effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTooltipHideDuration" runat="server" Width="53px">500</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth13" runat="server" ControlToValidate="tbSlideShowTooltipHideDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgSSSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth13" runat="server" ControlToValidate="tbSlideShowTooltipHideDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTooltipBorder" runat="server" resourcekey="lblLightboxTooltipBorder" Text="Border:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTooltipBorder" runat="server" Width="53px">5</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth14" runat="server" ControlToValidate="tbSlideShowTooltipBorder" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage" SetFocusOnError="True"
													ValidationGroup="vgSSSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth14" runat="server" ControlToValidate="tbSlideShowTooltipBorder" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTooltipCornerRadius" runat="server" resourcekey="lblLightboxTooltipCornerRadius" Text="Corner radius:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTooltipCornerRadius" runat="server" Width="53px">5</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth15" runat="server" ControlToValidate="tbSlideShowTooltipCornerRadius" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgSSSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth15" runat="server" ControlToValidate="tbSlideShowTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTooltipTheme" runat="server" resourcekey="lblLightboxTooltipTheme" Text="Select theme:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTooltipTheme" runat="server">
													<asp:ListItem resourcekey="cream" Value="cream">Yellow</asp:ListItem>
													<asp:ListItem resourcekey="dark" Value="dark">Dark</asp:ListItem>
													<asp:ListItem resourcekey="green" Value="green">Green</asp:ListItem>
													<asp:ListItem resourcekey="light" Value="light">Light</asp:ListItem>
													<asp:ListItem resourcekey="red" Value="red">Red</asp:ListItem>
													<asp:ListItem resourcekey="blue" Value="blue">Blue</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowOpenMediaUrl" ResourceKey="lblSlideShowOpenMediaUrl" runat="server" HelpText="On image click dont open image in lightbox, but open Media Url link." Text="On click go to Media Url:" HelpKey="lblSlideShowOpenMediaUrl.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideShowOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbSSOpenMediaUrl_CheckedChanged" resourcekey="cbSlideShowOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowOpenMediaUrlNewWindow" ResourceKey="lblSlideShowOpenMediaUrlNewWindow" runat="server" HelpText="Open link in new window:" Text="Open link in new window:" HelpKey="lblSlideShowOpenMediaUrlNewWindow.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideShowOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbSlideShowOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowMaxImageWidth" ResourceKey="lblSlideShowMaxImageWidth" runat="server" ControlName="tbMaxImageWidth" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image width:" HelpKey="lblSlideShowMaxImageWidth.HelpText" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbMaxImageWidth" runat="server" ValidationGroup="vgSSSettings" Width="45px">600</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowImageWidth" runat="server" ControlToValidate="tbMaxImageWidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSSettings" SetFocusOnError="True" resourcekey="rfvSlideShowImageWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowImageWidth" runat="server" ControlToValidate="tbMaxImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSSettings" SetFocusOnError="True"
									resourcekey="cvSlideShowImageWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowMaxImageHeight" ResourceKey="lblSlideShowMaxImageHeight" runat="server" Text="Maximum image height:" HelpText="Maximum  image width for proportional resizing:" ControlName="tbMaxImageHeight" HelpKey="lblSlideShowMaxImageHeight.HelpText"></dnn:Label>
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbMaxImageHeight" runat="server" ValidationGroup="vgSSSettings" Width="45px">300</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowImageHeight" runat="server" ControlToValidate="tbMaxImageHeight" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSSettings" SetFocusOnError="True" resourcekey="rfvSlideShowImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowImageHeight" runat="server" ControlToValidate="tbMaxImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSSettings" SetFocusOnError="True"
									resourcekey="cvSlideShowImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowAutoSlide" ResourceKey="lblSlideShowAutoSlide" runat="server" Text="Enable auto slide: " HelpText="Enable auto slide of images." ControlName="cbAutoSlide" HelpKey="lblSlideShowAutoSlide.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowAutoSlide" runat="server" AutoPostBack="True" OnCheckedChanged="cbAutoSlide_CheckedChanged1" Checked="True" resourcekey="cbSlideShowAutoSlideResource1" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowSlideRandom" ResourceKey="lblSlideShowSlideRandom" runat="server" ControlName="cbSlideRandom" HelpText="Auto slide random images." Text="Random:" HelpKey="lblSlideShowSlideRandom.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowSlideRandom" runat="server" resourcekey="cbSlideShowSlideRandomResource1" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowAutoSlidePause" ResourceKey="lblSlideShowAutoSlidePause" runat="server" Text="Auto slide pause between imags (ms): " HelpText="Set the pause between images when in auto slide mode:" HelpKey="lblSlideShowAutoSlidePause.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:Panel ID="pnlSlideOpt" runat="server">
									<asp:TextBox ID="tbAutoSlidePause" runat="server" Width="51px">5000</asp:TextBox>
									&nbsp;
								<asp:RequiredFieldValidator ID="rfvSlideShowImageWidth0" runat="server" ControlToValidate="tbAutoSlidePause" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowImageWidthResource1.ErrorMessage" SetFocusOnError="True" ValidationGroup="vgSSSettings">
								</asp:RequiredFieldValidator>
									&nbsp;
								<asp:CompareValidator ID="cvSlideShowImageHeight0" runat="server" ControlToValidate="tbAutoSlidePause" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowImageHeightResource1.ErrorMessage" SetFocusOnError="True"
									Type="Integer" ValidationGroup="vgSSSettings">
								</asp:CompareValidator>
								</asp:Panel>
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowStartRandom" ResourceKey="lblSlideShowStartRandom" runat="server" Text="Start slide show with random image:" ControlName="cbSSStartRandom" HelpText="Set this if you want the auto slide mode to start with random image:" HelpKey="lblSlideShowStartRandom.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowStartRandom" runat="server" resourcekey="cbSlideShowStartRandomResource1" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowSmartCrop" ResourceKey="lblSlideShowSmartCrop" runat="server" ControlName="cbSSSmartCrop" HelpText="Use this if you want all images to have same width and height. Otherwise images will be resized proportionaly." Text="Smart resize and crop images:"
									HelpKey="lblSlideShowSmartCrop.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowSmartCrop" runat="server" resourcekey="cbSlideShowSmartCropResource1" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowPagingVisible" ResourceKey="lblSlideShowPagingVisible" runat="server" HelpText="Show paging:" Text="Show paging:" HelpKey="lblSlideShowPagingVisible.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowShowPaging" runat="server" resourcekey="cbSlideShowShowPagingResource1" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowRandomizeMedia" runat="server" HelpKey="lblImageSliderRandomizeMedia.HelpText" HelpText="Randomize media positions at every page load:" ResourceKey="lblImageSliderRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowRandomizeMedia" runat="server" resourcekey="cbImageSliderShowPagingResource1" AutoPostBack="True" OnCheckedChanged="cbSlideShowRandomizeMedia_CheckedChanged" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label2" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSlideShowMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblSlideShowMediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnSlideShowSaveSettings" runat="server" OnClick="btnSaveSettings_Click" Text="Save settings" ValidationGroup="vgSSSettings" Width="140px" resourcekey="btnSlideShowSaveSettingsResource1" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button ID="btnSlideShowSaveClose" runat="server" OnClick="btnSSSave_Click" Text="Save &amp; Close" Width="140px" ValidationGroup="vgSSSettings" resourcekey="btnSlideShowSaveCloseResource1" />
							</td>
							<td>
								<asp:Label ID="lblSlideShowSstatus" runat="server" Width="120px" resourcekey="lblSlideShowSstatusResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlSlideShowThumbnails3" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblSlideshowWithThumbnails3" runat="server" Text="Slideshow With Thumbnails 3 display settings" CssClass="settingsdetailtitle" resourcekey="lblSlideshowWithThumbnails3"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td colspan="4">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3TemplateSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblSlideshowWithThumbnails3TemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblSlideshowWithThumbnails3TemplateSelect"
									Text="Select template:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlSlideshowWithThumbnails3TemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImageSliderTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
								&nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3ThemeSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblSlideshowWithThumbnails3ThemeSelect.HelpText" HelpText="Select theme:" ResourceKey="lblSlideshowWithThumbnails3ThemeSelect" Text="Select theme:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlSlideshowWithThumbnails3ThemeSelect" runat="server">
									<asp:ListItem Value="classic">Slideshow with thumbnails</asp:ListItem>
									<asp:ListItem Value="dots">Slideshow without thumbnails</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblSlideshowWithThumbnails3ResponsiveSelect" runat="server" HelpText="Select the layout type:" Text="Select the layout type:" HelpKey="lblChameleonSelectLayoutType.HelpText" ResourceKey="lblChameleonSelectLayoutType" />
							</td>
							<td align="left" class="style38" colspan="2">
								<asp:RadioButtonList ID="rblSlideshowWithThumbnails3ResponsiveSelect" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblSlideshowWithThumbnails3ResponsiveSelect_SelectedIndexChanged">
									<asp:ListItem resourcekey="liFixed" Selected="True" Value="fixed">Fixed Layout</asp:ListItem>
									<asp:ListItem resourcekey="liResponsive" Value="responsive">Responsive Layout</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3MediaTitle" runat="server" HelpText="Show image title:" Text="Show image title:" HelpKey="lblSlideshowWithThumbnails3MediaTitle.HelpText" ResourceKey="lblSlideshowWithThumbnails3MediaTitle" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideshowWithThumbnails3ShowMediaTitle" runat="server" resourcekey="cbSlideShowShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3ShowMediaDescription" ResourceKey="lblSlideshowWithThumbnails3ShowMediaDescription" runat="server" HelpText="Show image description:" Text="Show image description:" HelpKey="lblSlideshowWithThumbnails3ShowMediaDescription.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideshowWithThumbnails3ShowMediaDescription" runat="server" resourcekey="cbSlideShowShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3ShowFullscreen" ResourceKey="lblSlideshowWithThumbnails3ShowFullscreen" runat="server" HelpText="Enable fullscreen:" Text="Enable fullscreen:" HelpKey="lblSlideshowWithThumbnails3ShowFullscreen.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbSlideshowWithThumbnails3ShowFullscreenOption" runat="server" resourcekey="cbSlideShowShowLightboxDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3MaxImageWidth" runat="server" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image width:" HelpKey="lblSlideshowWithThumbnails3MaxImageWidth.HelpText" ResourceKey="lblSlideshowWithThumbnails3MaxImageWidth"
									ControlName="tbMaxImageWidth" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbSlideshowWithThumbnails3MaxImageWidth" runat="server" ValidationGroup="vgSSTN3Settings" Width="45px">600</asp:TextBox>
								&nbsp;<asp:Label ID="lblSlideshowWithThumbnails3ImageWidthPercentage" runat="server" Text="px"></asp:Label>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideshowWithThumbnails3ImageWidth" runat="server" ControlToValidate="tbSlideshowWithThumbnails3MaxImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowImageWidthResource1.ErrorMessage"
									SetFocusOnError="True" ValidationGroup="vgSSTN3Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideshowWithThumbnails3ImageWidth" runat="server" ControlToValidate="tbSlideshowWithThumbnails3MaxImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowImageWidthResource1.ErrorMessage"
									SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSTN3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3MaxImageHeight" ResourceKey="lblSlideshowWithThumbnails3MaxImageHeight" runat="server" ControlName="tbMaxImageHeight" HelpText="Maximum  image width for proportional resizing:" Text="Maximum image height:" HelpKey="lblSlideshowWithThumbnails3MaxImageHeight.HelpText" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbSlideshowWithThumbnails3MaxImageHeight" runat="server" ValidationGroup="vgSSTN3Settings" Width="45px">400</asp:TextBox>
								&nbsp;<asp:Label ID="lblSlideshowWithThumbnails3ImageHeightPercentage" runat="server" Text="px"></asp:Label>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideshowWithThumbnails3ImageHeight" runat="server" ControlToValidate="tbSlideshowWithThumbnails3MaxImageHeight" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTN3Settings" SetFocusOnError="True"
									resourcekey="rfvSlideShowImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideshowWithThumbnails3ImageHeight" runat="server" ControlToValidate="tbSlideshowWithThumbnails3MaxImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTN3Settings"
									SetFocusOnError="True" resourcekey="cvSlideShowImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblSlideshowWithThumbnails3AutoSlidePause" ResourceKey="lblSlideshowWithThumbnails3AutoSlidePause" runat="server" Text="Transition duration (ms): " HelpText="Transition duration in miliseconds: " ControlName="tbAutoSlidePause" HelpKey="lblSlideshowWithThumbnails3AutoSlidePause.HelpText"
									EnableViewState="True"></dnn:Label>
							</td>
							<td>
								<asp:Panel ID="pnlSlideOpt3" runat="server">
									<asp:TextBox ID="tbSlideshowWithThumbnails3AutoSlidePause" runat="server" ValidationGroup="vgSSTN3Settings" Width="51px">1500</asp:TextBox>
									&nbsp;
								<asp:RequiredFieldValidator ID="rfvSlideshowWithThumbnails3Pause" runat="server" ControlToValidate="tbSlideshowWithThumbnails3AutoSlidePause" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowImageWidthResource1.ErrorMessage"
									SetFocusOnError="True" ValidationGroup="vgSSTN3Settings">
								</asp:RequiredFieldValidator>
									<asp:CompareValidator ID="cvSlideshowWithThumbnails3Pause" runat="server" ControlToValidate="tbSlideshowWithThumbnails3AutoSlidePause" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowImageWidthResource1.ErrorMessage"
										SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSTN3Settings">
									</asp:CompareValidator>
								</asp:Panel>
							</td>
							<td colspan="2">&nbsp; &nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblSSlideshowWithThumbnails3AutoSlide" runat="server" Text="Enable auto slide: " ControlName="cbAutoSlide" HelpText="Enable auto slide of images." HelpKey="lblSSlideshowWithThumbnails3AutoSlide.HelpText" ResourceKey="lblSSlideshowWithThumbnails3AutoSlide"></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbSlideshowWithThumbnails3AutoSlide" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="cbAutoSlide_CheckedChanged1" resourcekey="cbSlideShowAutoSlideResource1" />
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblSlideshowWithThumbnails3AutoSlideDelay" runat="server" ControlName="tbAutoSlidePause" HelpKey="lblSlideshowWithThumbnails3AutoSlideDelay.HelpText" HelpText="Delay between transitions in miliseconds: " ResourceKey="lblSlideshowWithThumbnails3AutoSlideDelay"
									Text="Delay between transitions (ms): " EnableViewState="True" />
							</td>
							<td>
								<asp:Panel ID="pnlSlideOpt4" runat="server">
									<asp:TextBox ID="tbSlideshowWithThumbnails3AutoSlideDelay" runat="server" ValidationGroup="vgSSTN3Settings" Width="51px">5000</asp:TextBox>
									&nbsp;
								<asp:RequiredFieldValidator ID="rfvSlideshowWithThumbnails3Delay" runat="server" ControlToValidate="tbSlideshowWithThumbnails3AutoSlideDelay" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowImageWidthResource1.ErrorMessage"
									SetFocusOnError="True" ValidationGroup="vgSSTN3Settings">
								</asp:RequiredFieldValidator>
									<asp:CompareValidator ID="cvSlideshowWithThumbnails3AutoSlideDelay" runat="server" ControlToValidate="tbSlideshowWithThumbnails3AutoSlideDelay" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowImageWidthResource1.ErrorMessage"
										SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSTN3Settings">
									</asp:CompareValidator>
								</asp:Panel>
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblSlideshowWithThumbnails3TransitionEffect" runat="server" ControlName="tbAutoSlidePause" EnableViewState="True" HelpText="Transition effect: " Text="Transition effect: " HelpKey="lblSlideshowWithThumbnails3TransitionEffect.HelpText" ResourceKey="lblSlideshowWithThumbnails3TransitionEffect" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSlideshowWithThumbnails3TransitionEffect" runat="server">
									<asp:ListItem resourcekey="SST3Fade" Value="fade">Fade</asp:ListItem>
									<asp:ListItem resourcekey="SST3Flash" Value="flash">Flash</asp:ListItem>
									<asp:ListItem resourcekey="SST3Pulse" Value="pulse">&gt;Pulse</asp:ListItem>
									<asp:ListItem resourcekey="SST3Slide" Value="slide">Slide</asp:ListItem>
									<asp:ListItem resourcekey="SST3FadeSlide" Value="fadeslide">Fade and slide</asp:ListItem>
								</asp:DropDownList>
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3SmartCrop" runat="server" ControlName="cbSSSmartCrop" HelpText="Use this if you want all images to have same width and height. Otherwise images will be resized proportionaly." Text="Smart resize and crop images:"
									HelpKey="lblSlideshowWithThumbnails3SmartCrop.HelpText" ResourceKey="lblSlideshowWithThumbnails3SmartCrop" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideshowWithThumbnails3SmartCrop" runat="server" resourcekey="cbSlideShowSmartCropResource1" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3BackgroundColor" ResourceKey="lblSlideshowWithThumbnails3BackgroundColor" runat="server" HelpText="Background color:" Text="Background color:" HelpKey="lblSlideshowWithThumbnails3BackgroundColor.HelpText" />
							</td>
							<td>
								<asp:TextBox ID="tbSlideshowWithThumbnails3BackgroundColor" runat="server" MaxLength="6" ValidationGroup="vgSSTN3Settings" Width="50px">000000</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvSlideshowWithThumbnails3ThumbnailsOverlayColor" runat="server" ControlToValidate="tbSlideshowWithThumbnails3BackgroundColor" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowThumbnailsOverlayColorResource1.ErrorMessage"
									ValidationGroup="vgSSTN3Settings">
								</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="revSlideshowWithThumbnails3ThumbnailsOverlayColor" runat="server" ControlToValidate="tbSlideshowWithThumbnails3BackgroundColor" ErrorMessage="Please eneter hexadecimal color value." resourcekey="revSlideShowThumbnailsOverlayColorResource1.ErrorMessage"
									ValidationExpression="^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$" ValidationGroup="vgSSTN3Settings">
								</asp:RegularExpressionValidator>
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideshowWithThumbnails3RandomizeMedia" runat="server" HelpText="Randomize media positions at every page load:" Text="Randomize media positions:" HelpKey="lblImageSliderRandomizeMedia.HelpText" ResourceKey="lblImageSliderRandomizeMedia" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideshowWithThumbnails3RandomizeMedia" runat="server" resourcekey="cbImageSliderShowPagingResource1" AutoPostBack="True" OnCheckedChanged="cbSlideshowWithThumbnails3RandomizeMedia_CheckedChanged" />
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label5" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSSTN3MediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblSSTN3MediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnSlideshowWithThumbnails3SaveSettings" runat="server" OnClick="btnSlideshowWithThumbnails3SaveSettings_Click" resourcekey="btnSlideShowSaveSettingsResource1" Style="height: 26px" Text="Save settings" ValidationGroup="vgSSTN3Settings"
									Width="140px" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnSlideshowWithThumbnails3SaveClose" runat="server" OnClick="btnSlideshowWithThumbnails3SaveClose_Click" resourcekey="btnSlideShowSaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgSSTN3Settings"
									Width="140px" />
							</td>
							<td>
								<asp:Label ID="lblSlideshowWithThumbnails3Sstatus" runat="server" resourcekey="lblSlideShowSstatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlTableGallery" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblLightboxGalleryDisplaySettings" runat="server" CssClass="settingsdetailtitle" Text="Lightbox gallery display settings" resourcekey="lblLightboxGalleryDisplaySettingsResource1"></asp:Label>
							<asp:Label ID="lblLightboxCaptionSliderSettings" runat="server" CssClass="settingsdetailtitle" resourcekey="lblLightboxCaptionSlider" Text="Lightbox caption slider display settings" Visible="False"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style69">&nbsp;
							</td>
							<td class="style38" colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxTemplateSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblLightboxTemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblLightboxTemplateSelect" Text="Select template:" />
							</td>
							<td class="style38" colspan="2">
								<asp:DropDownList ID="ddlLightboxTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLightboxTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryThemeSelect" runat="server" ControlName="ddlTGThemeSelect" HelpKey="lblLightBoxGalleryThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblLightBoxGalleryThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style38" colspan="2">
								<asp:DropDownList ID="ddlTGThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr runat="server" id="trLBResFixedSelect">
							<td class="style112">
								<dnn:Label ID="lblLightboxSelectLayoutType" runat="server" HelpKey="lblChameleonSelectLayoutType.HelpText" HelpText="Select the layout type:" ResourceKey="lblChameleonSelectLayoutType" Text="Select the layout type:" />
							</td>
							<td align="left" class="style38" colspan="2">
								<asp:RadioButtonList ID="rblLightBoxLayoutTypeSelect" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblChameleonLayoutTypeSelect_SelectedIndexChanged">
									<asp:ListItem resourcekey="liFixed" Selected="True" Value="fixed">Fixed Layout</asp:ListItem>
									<asp:ListItem resourcekey="liResponsive" Value="responsive">Responsive Layout</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr id="trLBMediaTypeSelect" runat="server" visible="false">
							<td class="style112">
								<dnn:Label ID="lblLBMediaSelect" runat="server" HelpText="Select the media type to display:" Text="Select the media type to display:" ResourceKey="lblLBMediaSelect" HelpKey="lblLBMediaSelect.HelpText" />
							</td>
							<td align="left" class="style38" colspan="2">
								<asp:CheckBoxList ID="cblLBMediaSelect" runat="server" RepeatDirection="Horizontal" ValidationGroup="vgTGSettings">
									<asp:ListItem resourcekey="liImage" Selected="True" Value="Image">Image</asp:ListItem>
									<asp:ListItem resourcekey="liVideo" Selected="True" Value="Video">Video</asp:ListItem>
									<asp:ListItem resourcekey="liAudio" Selected="True" Value="Audio">Audio</asp:ListItem>
								</asp:CheckBoxList>
								<asp:CustomValidator ID="cvEventsValidator" Display="Dynamic" ValidationGroup="vgTGSettings" runat="server" ClientValidationFunction="ValidateCheckBoxList">Please select at least one media type.</asp:CustomValidator>
							</td>
						</tr>
						<tr>
							<td class="style112">&nbsp;
							</td>
							<td align="left" class="style38" colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style69">&nbsp;
							</td>
							<td class="style38" colspan="2">
								<asp:Label ID="lblLightboxTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style69" style="background-color: #ceeff8">
								<dnn:Label ID="lblLightboxGalleryDispplayNestedGalleries" runat="server" HelpKey="lblLightboxGalleryDispplayNestedGalleries.HelpText" HelpText="Display nested galleries:" ResourceKey="lblLightboxGalleryDispplayNestedGalleries" Text="Display nested galleries:" />
							</td>
							<td class="style38" colspan="2">
								<div style="background-color: #ceeff8; display: inline-block; padding: 7px;">
									<asp:CheckBox ID="cbLightboxGalleryDisplayNestedGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbTGDisplayNestedGalleries_CheckedChanged" resourcekey="cbLightboxGalleryDisplayNestedGalleriesResource1" />
								</div>
							</td>
						</tr>
						<tr>
							<td class="style37" colspan="3">
								<asp:Panel ID="pnlNestedGalleriesOptions" runat="server" Visible="False">
									<table cellpadding="0" cellspacing="0" border="0" width="100%" class="tblnestedgallery">
										<tr>
											<td>
												<asp:Panel ID="pnlTGNGGallerySettings" runat="server" BackColor="#C9DEAD">
													<table cellpadding="0" cellspacing="0" class="style66" style="border-top: 3px solid #91c848">
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" class="tbltitlenestedcategory">
																	<tr>
																		<td style="background-color: #91c848">
																			<asp:Label ID="lblLightboxGalleryNestedGallerySettings" runat="server" CssClass="settingsdetailtitle" Text="Nested galleries settings" resourcekey="lblLightboxGalleryNestedGallerySettingsResource1"></asp:Label>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" border="0" width="80%" align="center">
																	<tr>
																		<td align="left" colspan="4">&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td align="left" colspan="4">
																			<asp:Label ID="lblLightboxGalleryNestedGallerySelection" runat="server" Font-Bold="True" Text="Gallery selection:" resourcekey="lblLightboxGalleryNestedGallerySelectionResource1"></asp:Label>
																			<br />
																			<asp:CheckBoxList ID="cblLightboxGalleryNestedGallerySelection" runat="server" CellPadding="2" CellSpacing="5" DataSourceID="odsGallery" DataTextField="GalleryName" DataValueField="GalleryID" OnDataBound="cblTGNGGallerySelection_DataBound" OnSelectedIndexChanged="cblTGNGGallerySelection_SelectedIndexChanged"
																				RepeatColumns="2">
																			</asp:CheckBoxList>
																			<asp:Label ID="lblLightboxGalleryNoNestedGalleryError" runat="server" ForeColor="Red" Text="Please add an select some galleries." Visible="False" resourcekey="lblLightboxGalleryNoNestedGalleryErrorResource1"></asp:Label>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedShowAllGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbTGNGShowAllGalleries_CheckedChanged" Text="Show all galleries" resourcekey="cbLightboxGalleryNestedShowAllGalleriesResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedShowGalleryName" runat="server" Text="Show gallery name" resourcekey="cbLightboxGalleryNestedShowGalleryNameResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedShowGalleryDescription" runat="server" Text="Show gallery description" resourcekey="cbLightboxGalleryNestedShowGalleryDescriptionResource1" />
																		</td>
																	</tr>
																	<tr id="trShowGalleryOwner" runat="server" visible="False">
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedShowGalleryOwner" runat="server" Text="Show gallery owner" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:TextBox ID="tbTGNGImageWidth" runat="server" Width="35px">200</asp:TextBox>
																			&nbsp;<asp:Label ID="lblLightboxGalleryNestedImageWidth" runat="server" Text="Nested gallery thumbnail width." resourcekey="lblLightboxGalleryNestedImageWidthResource1"></asp:Label>
																			&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageWidth" runat="server" ControlToValidate="tbTGNGImageWidth" Display="Dynamic" ErrorMessage="This field is required." SetFocusOnError="True" ValidationGroup="vgTGSettings" resourcekey="rfvLightboxGalleryNestedImageWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedImageWidth" runat="server" ControlToValidate="tbTGNGImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings"
																				resourcekey="cvLightboxGalleryNestedImageWidthResource1.ErrorMessage">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:TextBox ID="tbTGNGImageHeight" runat="server" Width="35px">200</asp:TextBox>
																			&nbsp;<asp:Label ID="lblLightboxGalleryImageHeight" runat="server" Text="Nested gallery thumbnail height." resourcekey="lblLightboxGalleryImageHeightResource1"></asp:Label>
																			&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageHeight" runat="server" ControlToValidate="tbTGNGImageHeight" Display="Dynamic" ErrorMessage="This field is required." SetFocusOnError="True" ValidationGroup="vgTGSettings" resourcekey="rfvLightboxGalleryNestedImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedImageHeight" runat="server" ControlToValidate="tbTGNGImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings"
																				resourcekey="cvLightboxGalleryNestedImageHeightResource1.ErrorMessage">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:TextBox ID="tbTGNGColumns" runat="server" ValidationGroup="vgTGSettings" Width="35px">2</asp:TextBox>
																			&nbsp;<asp:Label ID="lblLightboxGalleryNestedNumberOfColumns" runat="server" Text="Number of columns." resourcekey="lblLightboxGalleryNestedNumberOfColumnsResource1"></asp:Label>
																			&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedNumberOfColumns" runat="server" ControlToValidate="tbTGNGColumns" Display="Dynamic" ErrorMessage="This field is required." SetFocusOnError="True" ValidationGroup="vgTGSettings" resourcekey="rfvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"></asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedNumberOfColumns" runat="server" ControlToValidate="tbTGNGColumns" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings"
																				resourcekey="cvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:TextBox ID="tbTGNGItems" runat="server" ValidationGroup="vgTGSettings" Width="35px">4</asp:TextBox>
																			&nbsp;<asp:Label ID="lblLightboxGalleryNestedNumberOfItems" runat="server" resourcekey="lblLightboxGalleryNestedNumberOfItems" Text="Number of items."></asp:Label>
																			<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedNumberOfColumns0" runat="server" ControlToValidate="tbTGNGItems" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																				SetFocusOnError="True" ValidationGroup="vgTGSettings">
																			</asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedNumberOfColumns0" runat="server" ControlToValidate="tbTGNGItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																				SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedProportionalyResize" runat="server" AutoPostBack="True" OnCheckedChanged="cbTGNGGalResize_CheckedChanged" Text="Proportionally resize gallery thumbnails" resourcekey="cbLightboxGalleryNestedProportionalyResizeResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedResizeCrop" runat="server" Text="Resize and crop gallery thumbnails" resourcekey="cbLightboxGalleryNestedResizeCropResource1" AutoPostBack="True" Checked="True" OnCheckedChanged="cbTGNGGalResizeCrop_CheckedChanged" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedShowBreadcrumbs" runat="server" Text="Show breadcrumbs" resourcekey="cbLightboxGalleryNestedShowBreadcrumbsResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedShowGalleryInfo" runat="server" resourcekey="cbLightboxGalleryNestedShowGalleryInfoResource1" Text="Show gallery info" />
																		</td>
																	</tr>
																	<tr>
																		<td class="style97">
																			<dnn:Label ID="lblLightboxNestGalleryButtonPos" runat="server" HelpText="Back button position:" Text="Back button position:" HelpKey="lblLightboxNestGalleryButtonPos.HelpText" ResourceKey="lblLightboxNestGalleryButtonPos" />
																		</td>
																		<td class="style96" colspan="2">
																			<asp:RadioButtonList ID="rblLBNestedButtonPos" runat="server" RepeatDirection="Horizontal">
																				<asp:ListItem resourcekey="liTop">Top</asp:ListItem>
																				<asp:ListItem resourcekey="liBottom" Selected="True">Bottom</asp:ListItem>
																				<asp:ListItem resourcekey="liTopBottom" Value="Topandbottom">Top and bottom</asp:ListItem>
																			</asp:RadioButtonList>
																		</td>
																		<td>&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td class="style97">
																			<dnn:Label ID="lblLightboxNestGallerySorting" runat="server" HelpText="Nested galleries sorting:" Text="Nested galleries sorting:" HelpKey="lblChameleonGalleryNGSorting.HelpText" ResourceKey="lblChameleonGalleryNGSorting" />
																		</td>
																		<td class="style106">
																			<asp:DropDownList ID="ddlLBNestedSorting" runat="server">
																				<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
																				<asp:ListItem resourcekey="liTitle" Value="GalleryName">Title</asp:ListItem>
																				<asp:ListItem resourcekey="liDateCreated" Value="DateCreated">Date created</asp:ListItem>
																				<asp:ListItem resourcekey="liLAstModified" Value="DateLastModified">Date last modified</asp:ListItem>
																			</asp:DropDownList>
																		</td>
																		<td class="style96">
																			<asp:RadioButtonList ID="rblLightboxNestedSortingAscDesc" runat="server" RepeatDirection="Horizontal">
																				<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
																				<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
																			</asp:RadioButtonList>
																		</td>
																		<td>&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">
																			<asp:CheckBox ID="cbLightboxGalleryNestedRegenerateThumbnails" runat="server" resourcekey="cbLightboxGalleryNestedRegeterateThumbnails" Text="Regenerate thumbnails" Font-Bold="True" />
																		</td>
																	</tr>
																	<tr>
																		<td colspan="4">&nbsp;
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</asp:Panel>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryShowTitle" runat="server" HelpKey="lblLightboxGalleryShowTitle.HelpText" HelpText="Show gallery title:" ResourceKey="lblLightboxGalleryShowTitle" Text="Show gallery title:" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbTGShowTitle" runat="server" resourcekey="cbTGShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryShowDescription" ResourceKey="lblLightboxGalleryShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblLightboxGalleryShowDescription.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbTGShowDescription" runat="server" resourcekey="cbTGShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryShowMediaTitle" ResourceKey="lblLightboxGalleryShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblLightboxGalleryShowMediaTitle.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbLightboxGalleryShowMediaTitle" runat="server" resourcekey="cbLightboxGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryShowMediaDescription" ResourceKey="lblLightboxGalleryShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblLightboxGalleryShowMediaDescription.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbLightboxGalleryShowMediaDescription" runat="server" resourcekey="cbLightboxGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr id="trLBShowLightboxTitle" runat="server">
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryShowLightboxTitle" ResourceKey="lblLightboxGalleryShowLightboxTitle" runat="server" HelpText="Show image title in lightbox:" Text="Show image title in lightbox:" HelpKey="lblLightboxGalleryShowLightboxTitle.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbLightboxGalleryShowLightboxTitle" runat="server" resourcekey="cbLightboxGalleryShowLightboxTitleResource1" />
							</td>
						</tr>
						<tr id="trLBShowLightboxDescription" runat="server">
							<td class="style69" valign="top">
								<dnn:Label ID="lblLightboxGalleryLightboxDescription" ResourceKey="lblLightboxGalleryLightboxDescription" runat="server" HelpText="Show media description in lightbox:" Text="Show media description in lightbox:" HelpKey="lblLightboxGalleryLightboxDescription.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbTGShowLightboxDescription" runat="server" resourcekey="cbTGShowLightboxDescriptionResource1" AutoPostBack="True" OnCheckedChanged="cbTGShowLightboxDescription_CheckedChanged" />
								<br />
								<asp:Panel ID="pnlLightboxToolTipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style85">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblLightBoxToolTipOptions" resourcekey="lblLightBoxToolTipOptions" runat="server" Text="Tooltip options" Font-Bold="True"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxShowTooltips" runat="server" resourcekey="lblLightboxShowToolTips" Text="Show Tooltips:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbShowToolTips" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxTargetPosition" resourcekey="lblLightboxTargetPosition" runat="server" Text="Target position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxTargetPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle" Selected="True">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Value="bottomMiddle">Bottom middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxTooltipPosition" resourcekey="lblLightboxTooltipPosition" runat="server" Text="Tooltip position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxTooltipPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Selected="True" Value="bottomMiddle">Bottom 
											middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxShowEffect" resourcekey="lblLightboxShowEffect" runat="server" Text="Show effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxShoweffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxShowEffectDuration" resourcekey="lblLightboxShowEffectDuration" runat="server" Text="Show effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbLightboxTooltipShowDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns1" runat="server" ControlToValidate="tbLightboxTooltipShowDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgTGSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns1" runat="server" ControlToValidate="tbLightboxTooltipShowDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxShowHideEffect" resourcekey="lblLightboxShowHideEffect" runat="server" Text="Hide effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxHideEffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxHideEffectDuration" resourcekey="lblLightboxHideEffectDuration" runat="server" Text="Hide effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbLightboxTooltipHideDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns2" runat="server" ControlToValidate="tbLightboxTooltipHideDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgTGSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns2" runat="server" ControlToValidate="tbLightboxTooltipHideDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxTooltipBorder" resourcekey="lblLightboxTooltipBorder" runat="server" Text="Border:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbLightboxTooltipBorder" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns3" runat="server" ControlToValidate="tbLightboxTooltipBorder" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgTGSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns3" runat="server" ControlToValidate="tbLightboxTooltipBorder" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxTooltipCornerRadius" runat="server" resourcekey="lblLightboxTooltipCornerRadius" Text="Corner radius:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbLightboxTooltipCornerRadius" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns4" runat="server" ControlToValidate="tbLightboxTooltipCornerRadius" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgTGSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns4" runat="server" ControlToValidate="tbLightboxTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblLightboxTooltipTheme" runat="server" resourcekey="lblLightboxTooltipTheme" Text="Select theme:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxTooltipTheme" runat="server">
													<asp:ListItem resourcekey="cream" Value="cream">Yellow</asp:ListItem>
													<asp:ListItem resourcekey="dark" Value="dark">Dark</asp:ListItem>
													<asp:ListItem resourcekey="green" Value="green">Green</asp:ListItem>
													<asp:ListItem resourcekey="light" Value="light">Light</asp:ListItem>
													<asp:ListItem resourcekey="red" Value="red">Red</asp:ListItem>
													<asp:ListItem resourcekey="blue" Value="blue">Blue</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr id="trLBShowLightboxThumbnails" runat="server">
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryLightboxThumbnails" ResourceKey="lblLightboxGalleryLightboxThumbnails" runat="server" HelpText="Show thumbnails inside lightbox:" Text="Show thumbnails inside lightbox:" HelpKey="lblLightboxGalleryLightboxThumbnails.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbLightboxGalleryLightboxThumbnails" runat="server" resourcekey="cbLightboxGalleryLightboxThumbnailsResource1" />
							</td>
						</tr>
						<tr id="trLBShowLightboxSlideshow" runat="server">
							<td class="style69">
								<dnn:Label ID="lblLightboxGalleryLightboxSlideShow" ResourceKey="lblLightboxGalleryLightboxSlideShow" runat="server" HelpText="Slide show inside lightbox:" Text="Slide show inside lightbox:" HelpKey="lblLightboxGalleryLightboxSlideShow.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbLightBoxSlideShow" runat="server" AutoPostBack="True" OnCheckedChanged="cbLightBoxSlideShow_CheckedChanged" resourcekey="cbLightBoxSlideShowResource1" />
							</td>
						</tr>
						<tr id="trLBShowLightboxSlideshowPause" runat="server">
							<td class="style69">
								<dnn:Label ID="lblLightBoxGallerySlideShowPause" ResourceKey="lblLightBoxGallerySlideShowPause" runat="server" HelpText="Slide show inside lightbox interval in miliseconds:" Text="Slide show inside lightbox (ms):" HelpKey="lblLightBoxGallerySlideShowPause.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:TextBox ID="tbLightboxSSDuration" runat="server" Width="58px" Enabled="False">5000</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns9" runat="server" ControlToValidate="tbLightboxSSDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgTGSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns9" runat="server" ControlToValidate="tbLightboxSSDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgTGSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr id="trLBShowLightboxSlideshowAutoplay" runat="server">
							<td class="style69">
								<dnn:Label ID="lblLightBoxGallerySlideShowAutoPlay" ResourceKey="lblLightBoxGallerySlideShowAutoPlay" runat="server" HelpText="Slide show inside lightbox autoplay:" Text="Slide show inside lightbox autoplay:" HelpKey="lblLightBoxGallerySlideShowAutoPlay.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbTBLightBoxSSAP" runat="server" Enabled="False" resourcekey="cbTBLightBoxSSAPResource1" />
							</td>
						</tr>
						<tr id="trLBShowLightboxAnimSpeed" runat="server">
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryAnimationSpeed" ResourceKey="lblLightBoxGalleryAnimationSpeed" runat="server" HelpText="Lightbox animation speed:" Text="Lightbox animation speed:" HelpKey="lblLightBoxGalleryAnimationSpeed.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:DropDownList ID="ddlTGLightboxAnimationSpeed" runat="server">
									<asp:ListItem Value="fast" resourcekey="ListItemResource25">Fast</asp:ListItem>
									<asp:ListItem Value="normal" resourcekey="ListItemResource26">Normal</asp:ListItem>
									<asp:ListItem Value="slow" resourcekey="ListItemResource27">Slow</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryOpenMediaUrl" ResourceKey="lblLightBoxGalleryOpenMediaUrl" runat="server" HelpText="On image click dont open image in lightbox, but open Media Url link." Text="On click go to Media Url:" HelpKey="lblLightBoxGalleryOpenMediaUrl.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbLightBoxGalleryOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbTGOpenMediaUrl_CheckedChanged" resourcekey="cbLightBoxGalleryOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryOpenMediaUrlNewWindow" ResourceKey="lblLightBoxGalleryOpenMediaUrlNewWindow" runat="server" HelpText="Open link in new window:" Text="Open link in new window:" HelpKey="lblLightBoxGalleryOpenMediaUrlNewWindow.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:CheckBox ID="cbLightBoxGalleryOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbLightBoxGalleryOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryNumberOfColumns" ResourceKey="lblLightBoxGalleryNumberOfColumns" runat="server" ControlName="tbTGNumberOfColumns" HelpText="Set the number of columns:" Text="Number of columns:" HelpKey="lblLightBoxGalleryNumberOfColumns.HelpText" />
							</td>
							<td class="style38" colspan="2">
								<asp:TextBox ID="tbTGNumberOfColumns" runat="server" ValidationGroup="vgTGSettings" Width="50px">4</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns" runat="server" ControlToValidate="tbTGNumberOfColumns" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgTGSettings" resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns" runat="server" ControlToValidate="tbTGNumberOfColumns" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgTGSettings" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryImageWidth" ResourceKey="lblLightBoxGalleryImageWidth" runat="server" Text="Maximum image width:" ControlName="tbTGImageWidth" HelpText="Set the maximum image width for resizing:" HelpKey="lblLightBoxGalleryImageWidth.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbTGImageWidth" runat="server" ValidationGroup="vgTGSettings" Width="50px">150</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth" runat="server" ControlToValidate="tbTGImageWidth" ErrorMessage="This field is required." ValidationGroup="vgTGSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageWidth" runat="server" ControlToValidate="tbTGImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgTGSettings" resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGallerySetImageHeight" runat="server" Text="Maximum image height: " ControlName="tbTGImageHeight" HelpText="Set the maximum image height for resizing:" HelpKey="lblLightBoxGallerySetImageHeight.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbTGImageHeight" runat="server" ValidationGroup="vgTGSettings" Width="50px">150</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageHeight" runat="server" ControlToValidate="tbTGImageHeight" ErrorMessage="This field is required." ValidationGroup="vgTGSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight" runat="server" ControlToValidate="tbTGImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgTGSettings" resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryNumberOfItems" ResourceKey="lblLightBoxGalleryNumberOfItems" runat="server" Text="Number of items per page:" ControlName="tbTGItems" HelpText="Set the maximum number of items on one page:" HelpKey="lblLightBoxGalleryNumberOfItems.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbTGItems" runat="server" ValidationGroup="vgTGSettings" Width="50px">5</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfItems" runat="server" ControlToValidate="tbTGItems" ErrorMessage="This field is required." ValidationGroup="vgTGSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryNumberOfItemsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfItems" runat="server" ControlToValidate="tbTGItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgTGSettings" resourcekey="cvLightBoxGalleryNumberOfItemsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryCropImages" ResourceKey="lblLightBoxGalleryCropImages" runat="server" Text="Resize and crop vertical images:" ControlName="cbSmartCropVertical" HelpText="Set this to crop vertical images:" HelpKey="lblLightBoxGalleryCropImages.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbLightBoxGallerySmartCropVertical" runat="server" OnCheckedChanged="cbSmartCropVertical_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryResizeCrop" ResourceKey="lblLightBoxGalleryResizeCrop" runat="server" Text="Resize and crop all images:" ControlName="cbTGSmartResizeAndCrop" HelpText="Set this this to resize all images to same width and height:" HelpKey="lblLightBoxGalleryResizeCrop.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbLightBoxGalleryResizeAndCrop" runat="server" OnCheckedChanged="cbTGSmartResizeAndCrop_CheckedChanged" Checked="True" resourcekey="cbLightBoxGalleryResizeAndCropResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxRandomizeMedia" runat="server" HelpKey="lblLightBoxRandomizeMedia.HelpText" HelpText="Randomize media positions on every page load:" ResourceKey="lblLightBoxRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbLightBoxRandomizeMedia" runat="server" OnCheckedChanged="cbLightBoxRandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxMediaSorting" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlLBMediaSorting" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblLightboxSortingAscending" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxAjaxPreloader" runat="server" HelpKey="lblLightBoxAjaxPreloader.HelpText" HelpText="Select Ajax preloader type:" ResourceKey="lblLightBoxAjaxPreloader" Text="Select Ajax preloader type:" />
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblLighboxPreloaderType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="LighboxPreloaderFullscreen" Selected="True">Fullscreen</asp:ListItem>
									<asp:ListItem Value="Belowimages" resourcekey="LighboxPreloaderBellowImages">Below images</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblLightBoxShowDownload" runat="server" HelpText="Show image download link:" Text="Show image download link:" HelpKey="lblLightBoxShowDownload.HelpText" ResourceKey="lblLightBoxShowDownload" />
								&nbsp;
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbLightBoxShowDownloadLink" runat="server" AutoPostBack="True" OnCheckedChanged="cbLightBoxShowDownloadLink_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" />
								&nbsp;<asp:Panel ID="pnlLightboxDownloadOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style92">
												<asp:Label ID="lblLighboxSelectDownloadRoles" resourcekey="lblLighboxSelectDownloadRoles" runat="server" Text="Select download roles:"></asp:Label>
											</td>
											<td>
												<br />
												<asp:GridView ID="gvLightboxDownloadRoles" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="intliststylebox" ForeColor="#333333" GridLines="None" OnRowDataBound="gvLightboxDownloadRoles_RowDataBound" BorderColor="#65CDEB" BorderStyle="Solid"
													BorderWidth="1px">
													<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
													<Columns>
														<asp:TemplateField HeaderText="Role">
															<EditItemTemplate>
																<asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
															</EditItemTemplate>
															<ItemTemplate>
																<asp:Label ID="lblRoleName0" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
															</ItemTemplate>
														</asp:TemplateField>
														<asp:TemplateField HeaderText="Enable download">
															<EditItemTemplate>
																<asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("EnableDownload") %>'></asp:TextBox>
															</EditItemTemplate>
															<ItemTemplate>
																<asp:CheckBox ID="cbLBEnableDownload" runat="server" Checked='<%# Bind("EnableDownload") %>' />
															</ItemTemplate>
															<ItemStyle HorizontalAlign="Center" />
														</asp:TemplateField>
													</Columns>
													<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
													<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
													<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
													<HeaderStyle BackColor="#0BA2CE" Font-Bold="True" ForeColor="#FFFFFF" />
													<EditRowStyle BackColor="#999999" />
													<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
												</asp:GridView>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<asp:Label ID="lblUseViewVersionAsDownload" resourcekey="lblUseViewVersionAsDownload" runat="server" Text="Use view version as download version if there is no download verison:" Width="130px"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbLightboxUseViewAsDownload" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblLightBoxEnableFullscreen" runat="server" HelpText="Enable fullscreen:" Text="Enable fullscreen:" HelpKey="lblLightBoxEnableFullscreen.HelpText" ResourceKey="lblLightBoxEnableFullscreen" CssClass="styleBolded" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbLightboxEnableFullscreen" runat="server" AutoPostBack="True" OnCheckedChanged="cbLightboxEnableFullscreen_CheckedChanged" />
								<asp:Panel ID="pnlLightboxFullscreenOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenThemeSelect" runat="server" HelpText="Select fullscreen theme:" Text="Select fullscreen theme:" HelpKey="lblLightboxFullscreenThemeSelect.HelpText" ResourceKey="lblLightboxFullscreenThemeSelect" />
											</td>
											<td>
												<asp:DropDownList ID="ddlTGFullscreenThemeSelect" runat="server">
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenNavbar" runat="server" HelpText="Show navigation:" Text="Show navigation:" HelpKey="lblLightboxFullscreenNavbar.HelpText" ResourceKey="lblLightboxFullscreenNavbar" />
											</td>
											<td>
												<asp:CheckBox ID="cbLightBoxShowNavigationBar" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenMenuType" runat="server" HelpText="Select navigation menu type:" Text="Navigation menu type:" HelpKey="lblLightboxFullscreenMenuType.HelpText" ResourceKey="lblLightboxFullscreenMenuType" />
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxFullscreenMenuStyle" runat="server" AutoPostBack="True">
													<asp:ListItem resourcekey="liNavBar" Value="classic">Navigation bar</asp:ListItem>
													<asp:ListItem resourcekey="liDropDownList" Value="dropdown">Dropdown list</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenDropDownImages" runat="server" HelpText="Dropdown menu style:" Text="Dropdown menu style:" HelpKey="lblLightboxFullscreenDropDownImages.HelpText" ResourceKey="lblLightboxFullscreenDropDownImages.Text" />
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxFullscreenDropDownStyle" runat="server">
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenShowArrows" runat="server" HelpText="Show navigation arrows:" Text="Show navigation arrows:" HelpKey="lblLightboxFullscreenShowArrows.HelpText" ResourceKey="lblLightboxFullscreenShowArrows" />
											</td>
											<td>
												<asp:CheckBox ID="cbLightboxFullscreenShowArrows" runat="server" AutoPostBack="True" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenAutoHideNavigationArrows" runat="server" HelpText="Auto hide navigation arrows on mouse out:" Text="Auto hide navigation arrows:" HelpKey="lblLightboxFullscreenAutoHideNavigationArrows.HelpText" ResourceKey="lblLightboxFullscreenAutoHideNavigationArrows.Text" />
											</td>
											<td>
												<asp:CheckBox ID="cbLightboxFullscreenAutoHideArrows" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenArrows" runat="server" HelpText="Navigation arrows:" Text="Navigation arrows:" HelpKey="lblLightboxFullscreenArrows.HelpText" ResourceKey="lblLightboxFullscreenArrows.Text" />
											</td>
											<td>
												<asp:DropDownList ID="ddlLightboxFullscreenArrows" runat="server">
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxFullscreenGalleryTitle" runat="server" HelpText="Please enter title to display:" Text="Title to display:" HelpKey="lblLightboxFullscreenGalleryTitle.HelpText" ResourceKey="lblLightboxFullscreenGalleryTitle.Text" />
											</td>
											<td>
												<asp:TextBox ID="tbLightboxFullscreenTitle" runat="server" Width="302px">
												</asp:TextBox>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblLightBoxShowSocialSharingButtons" runat="server" CssClass="styleBolded" HelpText="Show social sharing buttons inside thumbnail:" Text="Show sharing buttons:" HelpKey="lblLightBoxShowSocialSharingButtons.HelpText" ResourceKey="lblLightBoxShowSocialSharingButtons" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbLighboxShowSharingButtons" runat="server" AutoPostBack="True" OnCheckedChanged="cbLighboxShowSharingButtons_CheckedChanged" />
								<asp:Panel ID="pnlLightboxSharingButtonsOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxSharingButtonFacebook" runat="server" HelpText="Show Facebook button:" Text="Show Facebook button:" HelpKey="lblLightboxSharingButtonFacebook.HelpText" ResourceKey="lblLightboxSharingButtonFacebook" />
											</td>
											<td>
												<asp:CheckBox ID="cbLightboxSharingButtonFacebook" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxSharingButtonGooglePlus" runat="server" HelpText="Show Googple Plus button:" Text="Show Googple Plus button:" HelpKey="lblLightboxSharingButtonGooglePlus.HelpText" ResourceKey="lblLightboxSharingButtonGooglePlus" />
											</td>
											<td>
												<asp:CheckBox ID="cbLightboxSharingButtonGooglePlus" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxSharingButtonTwitter" runat="server" HelpText="Show Twitter button:" Text="Show Twitter button:" HelpKey="lblLightboxSharingButtonTwitter.HelpText" ResourceKey="lblLightboxSharingButtonTwitter" />
											</td>
											<td>
												<asp:CheckBox ID="cbLightboxSharingButtonTwitter" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxSharingButtonPinterest" runat="server" HelpText="Show Pinterest button." Text="Show Pinterest  button:" HelpKey="lblLightboxSharingButtonPinterest.HelpText" ResourceKey="lblLightboxSharingButtonPinterest" />
											</td>
											<td>
												<asp:CheckBox ID="cbLightboxSharingButtonPinterest" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<asp:Label ID="lblLightBoxGalleryViseoPlayerSettings" runat="server" Text="Video player in lightbox settings:" Font-Bold="True" resourcekey="lblLightBoxGalleryViseoPlayerSettingsResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryVideoPlayerSelect" runat="server" HelpKey="SelectVideoPlayer.HelpText" Text="Select player:" HelpText="Select player:" ResourceKey="SelectVideoPlayer.Text" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlTGVPSelectPlayer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTGVPSelectPlayer_SelectedIndexChanged">
									<asp:ListItem Selected="True" Value="False">Standard</asp:ListItem>
									<asp:ListItem Value="True">Flow player</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryVideoPlayerSelectSkin" ResourceKey="lblLightBoxGalleryVideoPlayerSelectSkin" runat="server" HelpText="Select video player skin:" Text="Select video player skin:" HelpKey="lblLightBoxGalleryVideoPlayerSelectSkin.HelpText" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlTGVPSelectTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource28" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource29" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryVideoPlayerPlayOnLoad" ResourceKey="lblLightBoxGalleryVideoPlayerPlayOnLoad" runat="server" HelpText="Start to play video on page load:" Text="Play on load:" HelpKey="lblLightBoxGalleryVideoPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbTGVPPlayOnLoad" runat="server" resourcekey="cbTGVPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryViseoPlayerPlayOnLoad" ResourceKey="lblLightBoxGalleryViseoPlayerPlayOnLoad" runat="server" HelpText="Show description inside video player:" Text="Show description:" HelpKey="lblLightBoxGalleryViseoPlayerPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbTGVPShowDescription" runat="server" resourcekey="cbTGVPShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblTGVPAllowFullscreen" ResourceKey="lblTGVPAllowFullscreen" runat="server" HelpText="Allow video to be played in fullscreen:" Text="Allow fullscreen:" HelpKey="lblTGVPAllowFullscreen.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbTGVPAllowFullscreen" runat="server" resourcekey="cbTGVPAllowFullscreenResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryVideoPlayerPlayQTInFlash" runat="server" HelpKey="lblLightBoxGalleryVideoPlayerPlayQTInFlash.HelpText" Text="Play QuickTime videos in flash player:" HelpText="Play QuickTime videos in flash player:" ResourceKey="lblLightBoxGalleryVideoPlayerPlayQTInFlash" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbTGVPPlayQTinFlash" runat="server" resourcekey="cbTGVPPlayQTinFlashResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<asp:Label ID="lblLightBoxGalleryAudioPlayerSettings" runat="server" Font-Bold="True" resourcekey="lblLightBoxGalleryAudioPlayerSettingsResource1" Text="Audio player in lightbox settings:"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryAudioPlayerPlayOnLoad" runat="server" HelpKey="lblLightBoxGalleryAudioPlayerPlayOnLoad.HelpText" HelpText="Start to play audio on page load:" ResourceKey="lblLightBoxGalleryAudioPlayerPlayOnLoad" Text="Play on load:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbTGAPPlayOnLoad" runat="server" resourcekey="cbTGAPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>
								<asp:Button ID="btnLightBoxGallerySave" runat="server" OnClick="btnTableGallerySave_Click" resourcekey="btnLightBoxGallerySaveResource1" Text="Save settings" ValidationGroup="vgTGSettings" Width="140px" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnASSGallerySaveClose" runat="server" OnClick="btnTGSaveClose_Click" resourcekey="btnLightBoxGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgTGSettings" Width="140px" />
							</td>
							<td>
								<asp:Label ID="lblLightBoxGalleryStatus" runat="server" resourcekey="lblLightBoxGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlPortfolioGalery" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblPortfolioGalleryDisplaySettings" resourcekey="lblPortfolioGalleryDisplaySettings" runat="server" CssClass="settingsdetailtitle" Text="Lightbox portfolio gallery display settings"></asp:Label>
							&nbsp;
						</td>
						<td></td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style69">&nbsp;
							</td>
							<td class="style38">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightboxTemplateSelect0" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblLightboxTemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblLightboxTemplateSelect" Text="Select template:" />
							</td>
							<td class="style38">
								<asp:DropDownList ID="ddlPortfolioTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPortfolioTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblLightBoxGalleryThemeSelect0" runat="server" ControlName="ddlTGThemeSelect" HelpKey="lblLightBoxGalleryThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblLightBoxGalleryThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style38">
								<asp:DropDownList ID="ddlPortThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">&nbsp;
							</td>
							<td class="style38">
								<asp:Label ID="lblPortfolioTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style112">
								<dnn:Label ID="lblPortfolioResponsive" runat="server" HelpText="Select the layout type:" Text="Select the layout type:" HelpKey="lblChameleonSelectLayoutType.HelpText" ResourceKey="lblChameleonSelectLayoutType" />
							</td>
							<td align="left" class="style38" colspan="2">
								<asp:RadioButtonList ID="rblPortfolioResponsive" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblPortfolioResponsive_SelectedIndexChanged">
									<asp:ListItem resourcekey="liFixed" Selected="True" Value="fixed">Fixed Layout</asp:ListItem>
									<asp:ListItem resourcekey="liResponsive" Value="responsive">Responsive Layout</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style69" style="background-color: #ceeff8">
								<dnn:Label ID="lblLightboxGalleryDispplayNestedGalleries0" runat="server" HelpKey="lblLightboxGalleryDispplayNestedGalleries.HelpText" HelpText="Display nested galleries:" ResourceKey="lblLightboxGalleryDispplayNestedGalleries" Text="Display nested galleries:" />
							</td>
							<td class="style38">
								<div style="background-color: #ceeff8; display: inline-block; padding: 7px;">
									<asp:CheckBox ID="cbPortfolioGalleryDisplayNestedGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioGalleryDisplayNestedGalleries_CheckedChanged" resourcekey="cbLightboxGalleryDisplayNestedGalleriesResource1" />
								</div>
							</td>
						</tr>
						<tr>
							<td class="style37" colspan="2">
								<asp:Panel ID="pnlPortfolioNestedGalleriesOptions" runat="server" Visible="False">
									<table cellpadding="0" cellspacing="0" border="0" width="100%" class="tblnestedgallery">
										<tr>
											<td>
												<asp:Panel ID="pnlPortfolioGallerySettings" runat="server" BackColor="#C9DEAD">
													<table cellpadding="0" cellspacing="0" class="style66" style="border-top: 3px solid #91c848">
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" class="tbltitlenestedcategory">
																	<tr>
																		<td style="background-color: #91c848">
																			<asp:Label ID="lblLightboxGalleryNestedGallerySettings0" runat="server" CssClass="settingsdetailtitle" Text="Nested galleries settings" resourcekey="lblLightboxGalleryNestedGallerySettingsResource1"></asp:Label>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
														<tr>
															<td>
																<table cellpadding="2" cellspacing="2" border="0" width="80%" align="center">
																	<tr>
																		<td align="left">&nbsp;
																		</td>
																	</tr>
																	<tr>
																		<td align="left">
																			<asp:Label ID="lblPortfolioGalleryNestedGallerySelection" runat="server" Font-Bold="True" Text="Gallery selection:" resourcekey="lblLightboxGalleryNestedGallerySelectionResource1"></asp:Label>
																			<br />
																			<asp:CheckBoxList ID="cblPortfolioGalleryNestedGallerySelection" runat="server" CellPadding="2" CellSpacing="5" DataSourceID="odsGallery" DataTextField="GalleryName" DataValueField="GalleryID" OnDataBound="cblPortfolioGalleryNestedGallerySelection_DataBound"
																				OnSelectedIndexChanged="cblPortfolioGalleryNestedGallerySelection_SelectedIndexChanged" RepeatColumns="2">
																			</asp:CheckBoxList>
																			<asp:Label ID="lblPortfolioGalleryNoNestedGalleryError" runat="server" ForeColor="Red" Text="Please add an select some galleries." Visible="False" resourcekey="lblLightboxGalleryNoNestedGalleryErrorResource1"></asp:Label>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioShowAllButton" runat="server" Text="Show all button" Checked="True" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioGalleryNestedShowAllGalleries" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioGalleryNestedShowAllGalleries_CheckedChanged" resourcekey="cbLightboxGalleryNestedShowAllGalleriesResource1" Text="Show all galleries" />
																		</td>
																	</tr>
																	<tr>
																		<td>&nbsp;
																		</td>
																	</tr>
																</table>
																<table align="center" border="0" cellpadding="2" cellspacing="2" width="80%">
																	<tr>
																		<td>&nbsp;
																		</td>
																	</tr>
																</table>
																<p>
																</p>
																<table align="center" border="0" cellpadding="2" cellspacing="2" width="80%" style="display: none">
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioGalleryNestedShowGalleryDescription" runat="server" resourcekey="cbLightboxGalleryNestedShowGalleryDescriptionResource1" Text="Show gallery description" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbPortfolioImageWidth" runat="server" Width="35px">200</asp:TextBox>
																			&nbsp;<asp:Label ID="lblLightboxGalleryNestedImageWidth0" runat="server" resourcekey="lblLightboxGalleryNestedImageWidthResource1" Text="Nested gallery thumbnail width."></asp:Label>
																			&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageWidth0" runat="server" ControlToValidate="tbPortfolioImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedImageWidthResource1.ErrorMessage"
																				SetFocusOnError="True" ValidationGroup="vgTGSettings"></asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedImageWidth0" runat="server" ControlToValidate="tbPortfolioImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedImageWidthResource1.ErrorMessage"
																				SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbPortfolioImageHeight" runat="server" Width="35px">200</asp:TextBox>
																			&nbsp;<asp:Label ID="lblLightboxGalleryImageHeight0" runat="server" resourcekey="lblLightboxGalleryImageHeightResource1" Text="Nested gallery thumbnail height."></asp:Label>
																			&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedImageHeight0" runat="server" ControlToValidate="tbPortfolioImageHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedImageHeightResource1.ErrorMessage"
																				SetFocusOnError="True" ValidationGroup="vgTGSettings"></asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedImageHeight0" runat="server" ControlToValidate="tbPortfolioImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedImageHeightResource1.ErrorMessage"
																				SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbPortfolioColumns" runat="server" ValidationGroup="vgTGSettings" Width="35px">2</asp:TextBox>
																			&nbsp;<asp:Label ID="lblLightboxGalleryNestedNumberOfColumns0" runat="server" resourcekey="lblLightboxGalleryNestedNumberOfColumnsResource1" Text="Number of columns."></asp:Label>
																			&nbsp;<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedNumberOfColumns1" runat="server" ControlToValidate="tbPortfolioColumns" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																				SetFocusOnError="True" ValidationGroup="vgTGSettings"></asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedNumberOfColumns1" runat="server" ControlToValidate="tbPortfolioColumns" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																				SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbPortfolioItems" runat="server" ValidationGroup="vgTGSettings" Width="35px">4</asp:TextBox>
																			<asp:Label ID="lblLightboxGalleryNestedNumberOfItems0" runat="server" resourcekey="lblLightboxGalleryNestedNumberOfItems" Text="Number of items."></asp:Label>
																			<asp:RequiredFieldValidator ID="rfvLightboxGalleryNestedNumberOfColumns2" runat="server" ControlToValidate="tbPortfolioItems" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																				SetFocusOnError="True" ValidationGroup="vgTGSettings">
																			</asp:RequiredFieldValidator>
																			<asp:CompareValidator ID="cvLightboxGalleryNestedNumberOfColumns2" runat="server" ControlToValidate="tbPortfolioItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightboxGalleryNestedNumberOfColumnsResource1.ErrorMessage"
																				SetFocusOnError="True" Type="Integer" ValidationGroup="vgTGSettings">
																			</asp:CompareValidator>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioGalleryNestedProportionalyResize" runat="server" AutoPostBack="True" OnCheckedChanged="cbTGNGGalResize_CheckedChanged" resourcekey="cbLightboxGalleryNestedProportionalyResizeResource1" Text="Proportionally resize gallery thumbnails" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioGalleryNestedResizeCrop" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="cbTGNGGalResizeCrop_CheckedChanged" resourcekey="cbLightboxGalleryNestedResizeCropResource1" Text="Resize and crop gallery thumbnails" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioGalleryNestedShowBreadcrumbs" runat="server" resourcekey="cbLightboxGalleryNestedShowBreadcrumbsResource1" Text="Show breadcrumbs" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:CheckBox ID="cbPortfolioGalleryNestedShowGalleryInfo" runat="server" resourcekey="cbLightboxGalleryNestedShowGalleryInfoResource1" Text="Show gallery info" />
																		</td>
																	</tr>
																	<tr>
																		<td>&nbsp;
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</asp:Panel>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryShowMediaTitle" ResourceKey="lblLightboxGalleryShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblLightboxGalleryShowMediaTitle.HelpText" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioGalleryShowMediaTitle" runat="server" resourcekey="cbLightboxGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryShowMediaDescription" ResourceKey="lblLightboxGalleryShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblLightboxGalleryShowMediaDescription.HelpText" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioGalleryShowMediaDescription" runat="server" resourcekey="cbLightboxGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryShowLightboxTitle" ResourceKey="lblLightboxGalleryShowLightboxTitle" runat="server" HelpText="Show image title in lightbox:" Text="Show image title in lightbox:" HelpKey="lblLightboxGalleryShowLightboxTitle.HelpText" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioGalleryShowLightboxTitle" runat="server" resourcekey="cbLightboxGalleryShowLightboxTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69" valign="top">
								<dnn:Label ID="lblPortfolioGalleryLightboxDescription" ResourceKey="lblLightboxGalleryLightboxDescription" runat="server" HelpText="Show media description in lightbox:" Text="Show media description in lightbox:" HelpKey="lblLightboxGalleryLightboxDescription.HelpText" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioShowLightboxDescription" runat="server" resourcekey="cbTGShowLightboxDescriptionResource1" AutoPostBack="True" OnCheckedChanged="cbPortfolioShowLightboxDescription_CheckedChanged" />
								<asp:Panel ID="pnlPortfolioToolTipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style85">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblPortfolioToolTipOptions" runat="server" Font-Bold="True" resourcekey="lblLightBoxToolTipOptions" Text="Tooltip options"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioShowTooltips" runat="server" resourcekey="lblLightboxShowToolTips" Text="Show Tooltips:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbPortfolioShowToolTips" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioTargetPosition" runat="server" resourcekey="lblLightboxTargetPosition" Text="Target position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlPortfolioTargetPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle" Selected="True">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Value="bottomMiddle">Bottom middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioTooltipPosition" runat="server" resourcekey="lblLightboxTooltipPosition" Text="Tooltip position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlPortfolioTooltipPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Selected="True" Value="bottomMiddle">Bottom 
											middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioShowEffect" runat="server" resourcekey="lblLightboxShowEffect" Text="Show effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlPortfolioShoweffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioShowEffectDuration" runat="server" resourcekey="lblLightboxShowEffectDuration" Text="Show effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbPortfolioTooltipShowDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns5" runat="server" ControlToValidate="tbPortfolioTooltipShowDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgPortfolioSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns5" runat="server" ControlToValidate="tbPortfolioTooltipShowDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgPortfolioSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioShowHideEffect" runat="server" resourcekey="lblLightboxShowHideEffect" Text="Hide effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlPortfolioHideEffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioHideEffectDuration" runat="server" resourcekey="lblLightboxHideEffectDuration" Text="Hide effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbPortfolioTooltipHideDuration" runat="server" Width="53px">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns6" runat="server" ControlToValidate="tbPortfolioTooltipHideDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgPortfolioSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns6" runat="server" ControlToValidate="tbLightboxTooltipHideDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgPortfolioSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioTooltipBorder" runat="server" resourcekey="lblLightboxTooltipBorder" Text="Border:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbPortfolioTooltipBorder" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns7" runat="server" ControlToValidate="tbPortfolioTooltipBorder" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgPortfolioSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns7" runat="server" ControlToValidate="tbPortfolioTooltipBorder" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgPortfolioSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioTooltipCornerRadius" runat="server" resourcekey="lblLightboxTooltipCornerRadius" Text="Corner radius:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbPortfolioTooltipCornerRadius" runat="server" Width="53px">5</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfColumns8" runat="server" ControlToValidate="tbPortfolioTooltipCornerRadius" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgPortfolioSettings">
												</asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvLightBoxGalleryNumberOfColumns8" runat="server" ControlToValidate="tbPortfolioTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgPortfolioSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblPortfolioTooltipTheme" runat="server" resourcekey="lblLightboxTooltipTheme" Text="Select theme:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlPortfolioTooltipTheme" runat="server">
													<asp:ListItem resourcekey="cream" Value="cream">Yellow</asp:ListItem>
													<asp:ListItem resourcekey="dark" Value="dark">Dark</asp:ListItem>
													<asp:ListItem resourcekey="green" Value="green">Green</asp:ListItem>
													<asp:ListItem resourcekey="light" Value="light">Light</asp:ListItem>
													<asp:ListItem resourcekey="red" Value="red">Red</asp:ListItem>
													<asp:ListItem resourcekey="blue" Value="blue">Blue</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryLightboxThumbnails" ResourceKey="lblLightboxGalleryLightboxThumbnails" runat="server" HelpText="Show thumbnails inside lightbox:" Text="Show thumbnails inside lightbox:" HelpKey="lblLightboxGalleryLightboxThumbnails.HelpText" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioGalleryLightboxThumbnails" runat="server" resourcekey="cbLightboxGalleryLightboxThumbnailsResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryLightboxSlideShow" ResourceKey="lblLightboxGalleryLightboxSlideShow" runat="server" HelpText="Slide show inside lightbox:" Text="Slide show inside lightbox:" HelpKey="lblLightboxGalleryLightboxSlideShow.HelpText" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioSlideShow" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioSlideShow_CheckedChanged" resourcekey="cbLightBoxSlideShowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGallerySlideShowPause" ResourceKey="lblLightBoxGallerySlideShowPause" runat="server" HelpText="Slide show inside lightbox interval in miliseconds:" Text="Slide show inside lightbox (ms):" HelpKey="lblLightBoxGallerySlideShowPause.HelpText" />
							</td>
							<td class="style38">
								<asp:TextBox ID="tbPortfolioSSDuration" runat="server" Width="58px" Enabled="False">5000</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvPortfolioGalleryWidth0" runat="server" ControlToValidate="tbPortfolioSSDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage" ValidationGroup="vgPortfolioSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvPortfolioGalleryWidth0" runat="server" ControlToValidate="tbPortfolioSSDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioSlideShowAutoPlay" ResourceKey="lblLightBoxGallerySlideShowAutoPlay" runat="server" HelpText="Slide show inside lightbox autoplay:" Text="Slide show inside lightbox autoplay:" HelpKey="lblLightBoxGallerySlideShowAutoPlay.HelpText" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioLightBoxSSAP" runat="server" Enabled="False" resourcekey="cbTBLightBoxSSAPResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryAnimationSpeed" ResourceKey="lblLightBoxGalleryAnimationSpeed" runat="server" HelpText="Lightbox animation speed:" Text="Lightbox animation speed:" HelpKey="lblLightBoxGalleryAnimationSpeed.HelpText" />
							</td>
							<td class="style38">
								<asp:DropDownList ID="ddlPortfolioLightboxAnimationSpeed" runat="server">
									<asp:ListItem Value="fast" resourcekey="ListItemResource25">Fast</asp:ListItem>
									<asp:ListItem Value="normal" resourcekey="ListItemResource26">Normal</asp:ListItem>
									<asp:ListItem Value="slow" resourcekey="ListItemResource27">Slow</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryOpenMediaUrl" runat="server" HelpKey="lblLightBoxGalleryOpenMediaUrl.HelpText" HelpText="On image click dont open image in lightbox, but open Media Url link." ResourceKey="lblLightBoxGalleryOpenMediaUrl" Text="On click go to Media Url:" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioGalleryOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioGalleryOpenMediaUrl_CheckedChanged" resourcekey="cbLightBoxGalleryOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryOpenMediaUrlNewWindow" runat="server" HelpKey="lblLightBoxGalleryOpenMediaUrlNewWindow.HelpText" HelpText="Open link in new window:" ResourceKey="lblLightBoxGalleryOpenMediaUrlNewWindow" Text="Open link in new window:" />
							</td>
							<td class="style38">
								<asp:CheckBox ID="cbPortfolioGalleryOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbLightBoxGalleryOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryWidth" runat="server" HelpText="Set the maximum gallery width:" Text="Maximum gallery width:" HelpKey="lblPortfolioGalleryWidth.HelpText" ResourceKey="lblPortfolioGalleryWidth" />
							</td>
							<td class="style38">
								<asp:TextBox ID="tbPortfolioGalleryImageWidth" runat="server" ValidationGroup="vgPortfolioSettings" Width="50px">740</asp:TextBox>
								&nbsp;<asp:Label ID="lblPortfolioGalleryImageWidthType" runat="server" Text="%" Visible="False"></asp:Label>
								<asp:RequiredFieldValidator ID="rfvPortfolioGalleryWidth" runat="server" ControlToValidate="tbPortfolioGalleryImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgPortfolioSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvPortfolioGalleryWidth" runat="server" ControlToValidate="tbPortfolioGalleryImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblPortfolioGalleryImageHeight" runat="server" HelpText="Set the maximum gallery height:" Text="Maximum gallery height:" HelpKey="lblPortfolioGalleryImageHeight.HelpText" ResourceKey="lblPortfolioGalleryImageHeight" Visible="True" />
							</td>
							<td class="style38">
								<asp:TextBox ID="tbPortfolioGalleryImageHeight" runat="server" ValidationGroup="vgPortfolioSettings" Width="50px">550</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvPortfolioGalleryHeight" runat="server" ControlToValidate="tbPortfolioGalleryImageHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgPortfolioSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvPortfolioGalleryHeight" runat="server" ControlToValidate="tbPortfolioGalleryImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioGalleryImageWidth" ResourceKey="lblLightBoxGalleryImageWidth" runat="server" Text="Maximum image width:" ControlName="tbTGImageWidth" HelpText="Set the maximum image width for resizing:" HelpKey="lblLightBoxGalleryImageWidth.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbPortfolioThumbImageWidth" runat="server" ValidationGroup="vgPortfolioSettings" Width="50px">150</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageWidth0" runat="server" ControlToValidate="tbPortfolioThumbImageWidth" ErrorMessage="This field is required." ValidationGroup="vgPortfolioSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryImageWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageWidth0" runat="server" ControlToValidate="tbPortfolioThumbImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgPortfolioSettings"
									resourcekey="cvLightBoxGalleryImageWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioGallerySetImageHeight" runat="server" Text="Maximum image height: " ControlName="tbTGImageHeight" HelpText="Set the maximum image height for resizing:" HelpKey="lblLightBoxGallerySetImageHeight.HelpText" ResourceKey="lblLightBoxGallerySetImageHeight"></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbPortfolioThumbImageHeight" runat="server" ValidationGroup="vgPortfolioSettings" Width="50px">150</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryImageHeight0" runat="server" ControlToValidate="tbPortfolioThumbImageHeight" ErrorMessage="This field is required." ValidationGroup="vgPortfolioSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryImageHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryImageHeight0" runat="server" ControlToValidate="tbPortfolioThumbImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgPortfolioSettings"
									resourcekey="cvLightBoxGalleryImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPotfolioGalleryNumberOfItems" ResourceKey="lblLightBoxGalleryNumberOfItems" runat="server" Text="Number of items per page:" HelpText="Set the maximum number of items on one page:" HelpKey="lblPotfolioGalleryNumberOfItems.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbPortfolioNumOfItems" runat="server" ValidationGroup="vgPortfolioSettings" Width="50px">12</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfItems0" runat="server" ControlToValidate="tbPortfolioNumOfItems" ErrorMessage="This field is required." ValidationGroup="vgPortfolioSettings" Display="Dynamic" resourcekey="rfvLightBoxGalleryNumberOfItemsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfItems0" runat="server" ControlToValidate="tbPortfolioNumOfItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgPortfolioSettings"
									resourcekey="cvLightBoxGalleryNumberOfItemsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioSlideEasing" runat="server" HelpText="Slide animation effect:" Text="Slide animation effect:" HelpKey="lblPortfolioSlideEasing.HelpText" ResourceKey="lblPortfolioSlideEasing" />
							</td>
							<td>
								<asp:DropDownList ID="dllPortfoliosSlideEasing" runat="server">
									<asp:ListItem>easeOutQuad</asp:ListItem>
									<asp:ListItem>easeInQuad</asp:ListItem>
									<asp:ListItem>easeInOutQuad</asp:ListItem>
									<asp:ListItem>easeInCubic</asp:ListItem>
									<asp:ListItem>easeOutCubic</asp:ListItem>
									<asp:ListItem>easeInOutCubic</asp:ListItem>
									<asp:ListItem>easeInQuart</asp:ListItem>
									<asp:ListItem>easeOutQuart</asp:ListItem>
									<asp:ListItem>easeInOutQuart</asp:ListItem>
									<asp:ListItem>easeInQuint</asp:ListItem>
									<asp:ListItem>easeOutQuint</asp:ListItem>
									<asp:ListItem>easeInOutQuint</asp:ListItem>
									<asp:ListItem>easeInSine</asp:ListItem>
									<asp:ListItem>easeOutSine</asp:ListItem>
									<asp:ListItem>easeInOutSine</asp:ListItem>
									<asp:ListItem>easeInExpo</asp:ListItem>
									<asp:ListItem>easeOutExpo</asp:ListItem>
									<asp:ListItem>easeInOutExpo</asp:ListItem>
									<asp:ListItem>easeInCirc</asp:ListItem>
									<asp:ListItem>easeOutCirc</asp:ListItem>
									<asp:ListItem>easeInOutCirc</asp:ListItem>
									<asp:ListItem>easeInElastic</asp:ListItem>
									<asp:ListItem>easeOutElastic</asp:ListItem>
									<asp:ListItem>easeInOutElastic</asp:ListItem>
									<asp:ListItem>easeInBack</asp:ListItem>
									<asp:ListItem>easeOutBack</asp:ListItem>
									<asp:ListItem>easeInOutBack</asp:ListItem>
									<asp:ListItem>easeInBounce</asp:ListItem>
									<asp:ListItem>easeOutBounce</asp:ListItem>
									<asp:ListItem>easeInOutBounce</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioSlideAnimationDuration" runat="server" HelpText="Slide animation duration in miliseconds:" Text="Slide animation effect (ms):" HelpKey="lblPortfolioSlideAnimationDuration.HelpText" ResourceKey="lblPortfolioSlideAnimationDuration" />
							</td>
							<td>
								<asp:TextBox ID="tbPortfolioSlideAimationDuration" runat="server" ValidationGroup="vgPortfolioSettings" Width="50px">1500</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvPortfolioSLideAnimationDuration" runat="server" ControlToValidate="tbPortfolioSlideAimationDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									ValidationGroup="vgPortfolioSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideAnimationDuration" runat="server" ControlToValidate="tbPortfolioSlideAimationDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfColumnsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioGalleryCropImages" ResourceKey="lblLightBoxGalleryCropImages" runat="server" Text="Resize and crop vertical images:" ControlName="cbSmartCropVertical" HelpText="Set this to crop vertical images:" HelpKey="lblLightBoxGalleryCropImages.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioGallerySmartCropVertical" runat="server" OnCheckedChanged="cbPortfolioGallerySmartCropVertical_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioGalleryResizeCrop" ResourceKey="lblLightBoxGalleryResizeCrop" runat="server" Text="Resize and crop all images:" ControlName="cbTGSmartResizeAndCrop" HelpText="Set this this to resize all images to same width and height:" HelpKey="lblLightBoxGalleryResizeCrop.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioGalleryResizeAndCrop" runat="server" OnCheckedChanged="cbPortfolioGalleryResizeAndCrop_CheckedChanged" Checked="True" resourcekey="cbLightBoxGalleryResizeAndCropResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label1" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlPortfolioMediaSorting" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblPortfolioSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioGalleryTitle" runat="server" HelpKey="lblLightboxPortfolioGalleryTitle.HelpText" HelpText="Please enter title to display:" ResourceKey="lblLightboxPortfolioGalleryTitle" Text="Title to display:" />
							</td>
							<td>
								<asp:TextBox ID="tbLightboxPortoflioTitle" runat="server" Width="302px">
								</asp:TextBox>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioEnableFullscreen" runat="server" HelpKey="lblLightboxPortfolioEnableFullscreen.HelpText" HelpText="Enable fullscreen:" ResourceKey="lblLightboxPortfolioEnableFullscreen.Text" Text="Enable fullscreen:" Font-Bold="True"
									CssClass="styleBolded" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioEnableFullscreen" runat="server" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioFullscreenTheme" runat="server" HelpKey="lblLightboxPortfolioFullscreenTheme.HelpText" HelpText="Select fullscreen theme:" ResourceKey="lblLightboxPortfolioFullscreenTheme.Text" Text="Select fullscreen theme:" />
							</td>
							<td>
								<asp:DropDownList ID="ddlPortfolioFullscreenThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblLightBoxShowDownload0" runat="server" HelpKey="lblLightBoxShowDownload.HelpText" HelpText="Show image download link:" ResourceKey="lblLightBoxShowDownload" Text="Show image download link:" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioShowDownloadLink" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioShowDownloadLink_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" />
								<asp:Panel ID="pnlPortfolioDownloadOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style92">
												<asp:Label ID="lblLighboxSelectDownloadRoles0" runat="server" resourcekey="lblLighboxSelectDownloadRoles" Text="Select download roles:"></asp:Label>
											</td>
											<td>
												<br />
												<asp:GridView ID="gvPortfolioDownloadRoles" runat="server" AutoGenerateColumns="False" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CssClass="intliststylebox" ForeColor="#333333" GridLines="None" OnRowDataBound="gvPortfolioDownloadRoles_RowDataBound">
													<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
													<Columns>
														<asp:TemplateField HeaderText="Role">
															<EditItemTemplate>
																<asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
															</EditItemTemplate>
															<ItemTemplate>
																<asp:Label ID="lblRoleName1" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
															</ItemTemplate>
														</asp:TemplateField>
														<asp:TemplateField HeaderText="Enable download">
															<EditItemTemplate>
																<asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("EnableDownload") %>'></asp:TextBox>
															</EditItemTemplate>
															<ItemTemplate>
																<asp:CheckBox ID="cbPortEnableDownload" runat="server" Checked='<%# Bind("EnableDownload") %>' />
															</ItemTemplate>
															<ItemStyle HorizontalAlign="Center" />
														</asp:TemplateField>
													</Columns>
													<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
													<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
													<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
													<HeaderStyle BackColor="#0BA2CE" Font-Bold="True" ForeColor="#FFFFFF" />
													<EditRowStyle BackColor="#999999" />
													<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
												</asp:GridView>
											</td>
										</tr>
										<tr>
											<td class="style92">
												<asp:Label ID="lblUseViewVersionAsDownload0" runat="server" resourcekey="lblUseViewVersionAsDownload" Text="Use view version as download version if there is no download verison:" Width="130px"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbPortfolioUseViewAsDownload" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblPortfolioShowSocialSharingButtons" runat="server" CssClass="styleBolded" HelpText="Show social sharing buttons inside thumbnail:" Text="Show sharing buttons:" HelpKey="lblLightBoxShowSocialSharingButtons.HelpText" ResourceKey="lblLightBoxShowSocialSharingButtons" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioShowSharingButtons" runat="server" AutoPostBack="True" OnCheckedChanged="cbPortfolioShowSharingButtons_CheckedChanged" />
								<asp:Panel ID="pnlPortfolioSharingButtonsOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxSharingButtonFacebook0" runat="server" HelpText="Show Facebook button:" Text="Show Facebook button:" HelpKey="lblLightboxSharingButtonFacebook.HelpText" ResourceKey="lblLightboxSharingButtonFacebook" />
											</td>
											<td>
												<asp:CheckBox ID="cbPortfolioSharingButtonFacebook" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxSharingButtonGooglePlus0" runat="server" HelpText="Show Googple Plus button:" Text="Show Googple Plus button:" HelpKey="lblLightboxSharingButtonGooglePlus.HelpText" ResourceKey="lblLightboxSharingButtonGooglePlus" />
											</td>
											<td>
												<asp:CheckBox ID="cbPortfolioSharingButtonGooglePlus" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style92">
												<dnn:Label ID="lblLightboxSharingButtonTwitter0" runat="server" HelpText="Show Twitter button:" Text="Show Twitter button:" HelpKey="lblLightboxSharingButtonTwitter.HelpText" ResourceKey="lblLightboxSharingButtonTwitter" />
											</td>
											<td>
												<asp:CheckBox ID="cbPortfolioSharingButtonTwitter" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70" colspan="2">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70" colspan="2">
								<asp:Label ID="lblPortfolioNavigationSettings" runat="server" Font-Bold="True" resourcekey="lblPortfolioNavigationSettings" Text="Navigation settings:"></asp:Label>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblNavbarOptions" runat="server" HelpText="Show navigation:" Text="Show navigation:" HelpKey="lblNavbarOptions.HelpText" ResourceKey="lblNavbarOptions" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioGalleryNestedShowNavigationBar" runat="server" AutoPostBack="True" Checked="True" OnCheckedChanged="cbPortfolioGalleryNestedShowNavigationBar_CheckedChanged" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioMenuType" runat="server" HelpText="Select navigation menu type:" Text="Navigation menu type:" HelpKey="lblLightboxPortfolioMenuType.HelpText" ResourceKey="lblLightboxPortfolioMenuType" />
							</td>
							<td>
								<asp:DropDownList ID="ddlLightboxPortfolioMenuStyle" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlLightboxPortfolioMenuStyle_SelectedIndexChanged">
									<asp:ListItem resourcekey="liNavBar" Value="classic">Navigation bar</asp:ListItem>
									<asp:ListItem resourcekey="liDropDownList" Value="dropdown">Dropdown list</asp:ListItem>
									<asp:ListItem resourcekey="liLeftMenu" Value="left">Left menu</asp:ListItem>
									<asp:ListItem resourcekey="liRightMenu" Value="right">Right menu</asp:ListItem>
								</asp:DropDownList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioMenuSlidableNames" runat="server" HelpText="Slidable titles:" Text="Slidable titles:" HelpKey="lblLightboxPortfolioMenuSlidableNames.HelpText" ResourceKey="lblLightboxPortfolioMenuSlidableNames" />
							</td>
							<td>
								<asp:CheckBox ID="cbLightboxPortfolioSlidableTitles" runat="server" AutoPostBack="True" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioMenuWidth" runat="server" HelpText="Menu width:" Text="Menu width:" HelpKey="lblLightboxPortfolioMenuWidth.HelpText" ResourceKey="lblLightboxPortfolioMenuWidth" />
							</td>
							<td>
								<asp:TextBox ID="tbPortfolioMenuWidth" runat="server" Enabled="False" ValidationGroup="vgPortfolioSettings" Width="50px">200</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvLightBoxGalleryNumberOfItems3" runat="server" ControlToValidate="tbPortfolioMenuWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvLightBoxGalleryNumberOfItemsResource1.ErrorMessage" ValidationGroup="vgPortfolioSettings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvLightBoxGalleryNumberOfItems3" runat="server" ControlToValidate="tbPortfolioMenuWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvLightBoxGalleryNumberOfItemsResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgPortfolioSettings">
								</asp:CompareValidator>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxShowNavigationArrows" runat="server" HelpText="Show navigation arrows:" Text="Show navigation arrows:" HelpKey="lblLightboxShowNavigationArrows.HelpText" ResourceKey="lblLightboxShowNavigationArrows" Visible="True" />
							</td>
							<td>
								<asp:CheckBox ID="cbLightboxPortfolioShowArrows" runat="server" AutoPostBack="True" OnCheckedChanged="cbLightboxPortfolioShowArrows_CheckedChanged" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioAutoHideNavigationArrows" runat="server" HelpText="Auto hide navigation arrows on mouse out:" Text="Auto hide navigation arrows:" HelpKey="lblLightboxPortfolioAutoHideNavigationArrows.HelpText" ResourceKey="lblLightboxPortfolioAutoHideNavigationArrows" />
							</td>
							<td>
								<asp:CheckBox ID="cbLightboxPortfolioAutoHideArrows" runat="server" Enabled="False" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioDropDownImages" runat="server" HelpText="Dropdown menu style:" Text="Dropdown menu style:" HelpKey="lblLightboxPortfolioDropDownImages.HelpText" ResourceKey="lblLightboxPortfolioDropDownImages" />
							</td>
							<td>
								<asp:DropDownList ID="ddlLightboxPortfolioDropDownStyle" runat="server" Enabled="False">
								</asp:DropDownList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightboxPortfolioArrows" runat="server" HelpText="Navigation arrows:" Text="Navigation arrows:" HelpKey="lblLightboxPortfolioArrows.HelpText" ResourceKey="lblLightboxPortfolioArrows" />
							</td>
							<td>
								<asp:DropDownList ID="ddlLightboxPortfolioArrows" runat="server" Enabled="False">
								</asp:DropDownList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<asp:Label ID="lblLightBoxGalleryViseoPlayerSettings0" runat="server" Font-Bold="True" resourcekey="lblLightBoxGalleryViseoPlayerSettingsResource1" Text="Video player in lightbox settings:"></asp:Label>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioVPSelectPlayer" runat="server" HelpKey="SelectVideoPlayer.HelpText" HelpText="Select player:" ResourceKey="SelectVideoPlayer.Text" Text="Select player:" />
							</td>
							<td>
								<asp:DropDownList ID="ddlPortfolioVPSelectPlayer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPortfolioVPSelectPlayer_SelectedIndexChanged">
									<asp:ListItem Selected="False" Value="False">Standard</asp:ListItem>
									<asp:ListItem Value="True">Flow player</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioGalleryVideoPlayerSelectSkin0" runat="server" HelpKey="lblLightBoxGalleryVideoPlayerSelectSkin.HelpText" HelpText="Select video player skin:" ResourceKey="lblLightBoxGalleryVideoPlayerSelectSkin" Text="Select video player skin:" />
							</td>
							<td>
								<asp:DropDownList ID="ddlPortfolioVPSelectTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource28" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource29" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioGalleryVideoPlayerPlayOnLoad0" runat="server" HelpKey="lblLightBoxGalleryVideoPlayerPlayOnLoad.HelpText" HelpText="Start to play video on page load:" ResourceKey="lblLightBoxGalleryVideoPlayerPlayOnLoad" Text="Play on load:" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioVPPlayOnLoad" runat="server" resourcekey="cbTGVPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioGalleryViseoPlayerPlayOnLoad0" runat="server" HelpKey="lblLightBoxGalleryViseoPlayerPlayOnLoad.HelpText" HelpText="Show description inside video player:" ResourceKey="lblLightBoxGalleryViseoPlayerPlayOnLoad" Text="Show description:" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioVPShowDescription" runat="server" resourcekey="cbTGVPShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblPortfolioVPAllowFullscreen" runat="server" HelpKey="lblTGVPAllowFullscreen.HelpText" HelpText="Allow video to be played in fullscreen:" ResourceKey="lblTGVPAllowFullscreen" Text="Allow fullscreen:" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioVPAllowFullscreen" runat="server" resourcekey="cbTGVPAllowFullscreenResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<asp:Label ID="lblLightBoxGalleryAudioPlayerSettings0" runat="server" Font-Bold="True" resourcekey="lblLightBoxGalleryAudioPlayerSettingsResource1" Text="Audio player in lightbox settings:"></asp:Label>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblLightBoxGalleryAudioPlayerPlayOnLoad0" runat="server" HelpKey="lblLightBoxGalleryAudioPlayerPlayOnLoad.HelpText" HelpText="Start to play audio on page load:" ResourceKey="lblLightBoxGalleryAudioPlayerPlayOnLoad" Text="Play on load:" />
							</td>
							<td>
								<asp:CheckBox ID="cbPortfolioAPPlayOnLoad" runat="server" resourcekey="cbTGAPPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>
								<asp:Label ID="lblPortfolioGalleryStatus" runat="server" resourcekey="lblLightBoxGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							<asp:Button ID="btnPortfolioGallerySaveSettings" runat="server" OnClick="btnPortfolioGallerySaveSettings_Click" resourcekey="btnLightBoxGallerySaveResource1" Style="height: 26px" Text="Save settings" ValidationGroup="vgPortfolioSettings" Width="140px" />
								&nbsp;<asp:Button ID="btnLightBoxGallerySaveClose0" runat="server" OnClick="btnLightBoxGallerySaveClose0_Click" resourcekey="btnLightBoxGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgPortfolioSettings" Width="140px" />
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							<asp:TextBox ID="tbLightboxPortfolioFullscreen" runat="server" Enabled="False" Visible="False" Width="50px"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlVideoGallerySettings" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblVideoGalleryDisplaySettings" runat="server" CssClass="settingsdetailtitle" Text="Video gallery display settings" resourcekey="lblVideoGalleryDisplaySettingsResource1"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallerySelectCSS" runat="server" HelpText="Select the CSS theme file:" Text="SelectCSS:" HelpKey="lblVideoGallerySelectCSS.HelpText" ResourceKey="lblVideoGallerySelectCSS" ControlName="ddlVGSelectCSS" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVGSelectCSS" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalelrySelectPLayer" runat="server" HelpKey="SelectVideoPlayer.HelpText" HelpText="Use flow player:" ResourceKey="SelectVideoPlayer.Text" Text="Use flow player:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlSelectVideoPlayer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSelectVideoPlayer_SelectedIndexChanged">
									<asp:ListItem Value="False">Standard</asp:ListItem>
									<asp:ListItem Value="True">Flow player</asp:ListItem>
								</asp:DropDownList>
								<br />
								<asp:Panel ID="pnlFlowPlayerOptions" runat="server" Visible="False">
									<table class="style66">
										<tr id="trlblFlowVideoScaling" runat="server" visible="false">
											<td class="auto-style1">
												<asp:Label ID="lblFlowVideoScaling" resourcekey="lblFlowVideoScaling" runat="server" Text="Video scaling:" />
											</td>
											<td>
												<asp:DropDownList ID="ddlFlowPlayerScaling" runat="server" AutoPostBack="True" Style="margin-left: 0px">
													<asp:ListItem resourcekey="liScale" Value="scale">Scale</asp:ListItem>
													<asp:ListItem resourcekey="liorig" Value="orig">Original</asp:ListItem>
													<asp:ListItem resourcekey="lihalf" Value="half">Half</asp:ListItem>
													<asp:ListItem resourcekey="lifit" Value="fit">Fit to window</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="auto-style1">
												<asp:Label ID="lblFlowVideoLoop" runat="server" resourcekey="lblFlowVideoLoop" Text="Video loop:" />
											</td>
											<td>
												<asp:CheckBox ID="cbFlowPlayerLoop" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryShowTitle" ResourceKey="lblVideoGalleryShowTitle" runat="server" HelpText="Show gallery title:" Text="Show gallery title:" HelpKey="lblVideoGalleryShowTitle.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryShowTitle" runat="server" resourcekey="cbVideoGalleryShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryShowDescription" ResourceKey="lblVideoGalleryShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblVideoGalleryShowDescription.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryShowDescription" runat="server" resourcekey="cbVideoGalleryShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryShowMediaTitle" ResourceKey="lblVideoGalleryShowMediaTitle" runat="server" HelpText="Show video title:" Text="Show video title:" HelpKey="lblVideoGalleryShowMediaTitle.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryShowMediaTitle" runat="server" resourcekey="cbVideoGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryShowMediaDescription" ResourceKey="lblVideoGalleryShowMediaDescription" runat="server" HelpText="Show video description:" Text="Show video description:" HelpKey="lblVideoGalleryShowMediaDescription.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryShowMediaDescription" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryShowMediaDescriptionInVideo" ResourceKey="lblVideoGalleryShowMediaDescriptionInVideo" runat="server" HelpText="Show description inside video:" Text="Show description inside video:" HelpKey="lblVideoGalleryShowMediaDescriptionInVideo.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryShowMediaDescriptionInVideo" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionInVideoResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryUseThumbnailAsStartPhoto" ResourceKey="lblVideoGalleryUseThumbnailAsStartPhoto" runat="server" HelpText="Use thumbnail as start image:" Text="Use thumbnail as start image:" HelpKey="lblVideoGalleryUseThumbnailAsStartPhoto.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryUseThumbnailAsStartPhoto" runat="server" resourcekey="cbVideoGalleryUseThumbnailAsStartPhotoResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryPlayOnLoad" runat="server" HelpText="Start to play video on page load:" Text="Play on load:" HelpKey="lblVideoGalleryPlayOnLoad.HelpText" ResourceKey="lblVideoGalleryPlayOnLoad" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryPlayOnLoad" runat="server" resourcekey="cbVideoGalleryPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryAllowFullscreen" runat="server" HelpText="Allow video to be played fullscreen:" Text="Allow fullscreen:" HelpKey="lblVideoGalleryAllowFullscreen.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGalleryAllowFullscreen" runat="server" resourcekey="cbVideoGalleryAllowFullscreenResource1" />
							</td>
						</tr>
						<tr id="trVideoGallerySelectSkin" runat="server">
							<td>
								<dnn:Label ID="lblVideoGallerySelectSkin" ResourceKey="lblVideoGallerySelectSkin" runat="server" HelpText="Select video player skin:" Text="Select video player skin:" HelpKey="lblVideoGallerySelectSkin.HelpText" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVGSelectTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource30" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource31" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblVideoGalleryInitialVolume" ResourceKey="lblVideoGalleryInitialVolume" runat="server" HelpText="Initial video volume:" Text="Initial video volume:" HelpKey="lblVideoGalleryInitialVolume.HelpText" />
							</td>
							<td colspan="3" class="style38">
								<asp:TextBox ID="tbVGInitialVolume" runat="server" ValidationGroup="vgVGSettings" Width="50px">250</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSSTNOverOpacity0" runat="server" ControlToValidate="tbVGInitialVolume" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgVGSettings" resourcekey="rfvSSTNOverOpacity0Resource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvVGTBInitialVolume" runat="server" ControlToValidate="tbVGInitialVolume" Display="Dynamic" ErrorMessage="Enter value between 0-300." MaximumValue="300" MinimumValue="0" resourcekey="rvVGTBInitialVolumeResource1.ErrorMessage" Type="Integer"
									ValidationGroup="vgVGSettings">
								</asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryWidth" ResourceKey="lblVideoGalleryWidth" runat="server" Text="Video width:" ControlName="tbVGVideoWidth" HelpText="Set the video width. Does not apply to embeded video." Visible="False" HelpKey="lblVideoGalleryWidth.HelpText"></dnn:Label>
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVGVideoWidth" runat="server" ValidationGroup="vgVGSettings" Width="50px" Visible="False">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGWidth" runat="server" ControlToValidate="tbVGVideoWidth" ErrorMessage="This field is required." ValidationGroup="vgVGSettings" Display="Dynamic" Visible="False" resourcekey="rfvVGWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings" runat="server" ControlToValidate="tbVGVideoWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVGSettings" Visible="False" resourcekey="cvVGSettingsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryHeight" ResourceKey="lblVideoGalleryHeight" runat="server" Text="Video height:" ControlName="tbVGVideoHeight" HelpText="Set the video height. Does not apply to embeded video." HelpKey="lblVideoGalleryHeight.HelpText" Visible="False"></dnn:Label>
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVGVideoHeight" runat="server" Width="50px" ValidationGroup="vgVGSettings" Visible="False">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight" runat="server" ControlToValidate="tbVGVideoHeight" ErrorMessage="This field is required." ValidationGroup="vgVGSettings" Display="Dynamic" resourcekey="rfvVGHeightResource1.ErrorMessage" Visible="False"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings0" runat="server" ControlToValidate="tbVGVideoHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVGSettings" resourcekey="cvVGSettings0Resource1.ErrorMessage"
									Visible="False">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryItemsPerPage" ResourceKey="lblVideoGalleryItemsPerPage" runat="server" ControlName="tbVGItemsPerPage" HelpText="Set the number if items on one page:" Text="Items per page:" HelpKey="lblVideoGalleryItemsPerPage.HelpText" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVGItemsPerPage" runat="server" Width="50px">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight0" runat="server" ControlToValidate="tbVGItemsPerPage" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgVGSettings" resourcekey="rfvVGHeight0Resource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings1" runat="server" ControlToValidate="tbVGItemsPerPage" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVGSettings" resourcekey="cvVGSettings1Resource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalleryColomunPerPage" ResourceKey="lblVideoGalleryColomunPerPage" runat="server" ControlName="tbVGNumberOfCols" HelpText="Set the number of columns:" Text="Number of columns:" HelpKey="lblVideoGalleryColomunPerPage.HelpText" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVGNumberOfCols" runat="server" Width="50px">1</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight1" runat="server" ControlToValidate="tbVGNumberOfCols" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGHeight1Resource1.ErrorMessage" ValidationGroup="vgVGSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings2" runat="server" ControlToValidate="tbVGNumberOfCols" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettings2Resource1.ErrorMessage" Type="Integer" ValidationGroup="vgVGSettings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGalelryRandomizeMedia" runat="server" HelpText="Randomize media positions on every page load:" Text="Randomize media positions:" HelpKey="lblLightBoxRandomizeMedia.HelpText" ResourceKey="lblLightBoxRandomizeMedia" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGalleryRandomizeMedia" runat="server" OnCheckedChanged="cbVideoGalleryRandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label10" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlVideoGalleryMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblVideoGalleryMediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVideoGalleryShowPaging" runat="server" HelpText="Show paging:" Text="Show paging:" HelpKey="lblVideoGalleryShowPaging.HelpText" ResourceKey="lblVideoGalleryShowPaging" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVideoGalleryShowPaging" runat="server" Checked="True" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblVideoGalleryShowSocialSharing3" runat="server" HelpText="Show social sharing:" Text="Show social sharing:" HelpKey="lblVideoGalleryShowSocialSharing.HelpText" ResourceKey="lblVideoGalleryShowSocialSharing" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVideoGalleryShowSocialSharing" runat="server" AutoPostBack="True" OnCheckedChanged="cbVideoGalleryShowSocialSharing_CheckedChanged" />
								<asp:Panel ID="pnlVideoGallerySocialSharingOptions" runat="server" Visible="False">
									<table class="style66">
										<tr>
											<td class="style98">
												<dnn:Label ID="lblVideoGallerySSOptions1" runat="server" HelpText="Open/Close sharing on button click:" Text="Open on button click:" HelpKey="lblVideoGallerySSOptions.HelpText" ResourceKey="lblVideoGallerySSOptions" />
											</td>
											<td>
												<asp:CheckBox ID="cbVGSSOpenOnButton" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblVideoGallery2ShowSocialSharing3" runat="server" HelpText="Show textbox that contains media link:" Text="Show media link:" HelpKey="lblVideoGalleryShowBackLink.HelpText" ResourceKey="lblVideoGalleryShowBackLink" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbVideoGalleryShowMediaLink" runat="server" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style59">&nbsp;
							</td>
							<td colspan="3" class="style60">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style59">&nbsp;
							</td>
							<td class="style60" colspan="3">
								<asp:Label ID="lblVideoGalleryStatus" runat="server" resourcekey="lblVideoGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td class="style53" colspan="2">
								<asp:Button ID="btnVideoGallerySaveSettings" runat="server" OnClick="Button1_Click3" resourcekey="btnVideoGallerySaveSettingsResource1" Text="Save settings" ValidationGroup="vgVGSettings" Width="140px" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnVideoGallerySaveClose" runat="server" OnClick="btnVGSaveClose_Click" resourcekey="btnVideoGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgVGSettings" Width="140px" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlVideoGallery2Settings" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblVideoGalleryDisplay2Settings" resourcekey="lblVideoGalleryDisplay2Settings" runat="server" CssClass="settingsdetailtitle" Text="Video gallery 2 display settings"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2TemplateSelect" runat="server" HelpKey="lblVideoGallery2TemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblVideoGallery2TemplateSelect" Text="Select template:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVideoGallery2TemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVideoGallery2TemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2SelectCSS" runat="server" HelpKey="lblVideoGallery2SelectCSS.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblVideoGallery2SelectCSS" Text="Select CSS:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVG2SelectCSS" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">
								<asp:Label ID="lblVG2TemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalelry2UseFlowPlayer" runat="server" HelpText="Use Flow player:" Text="Use Flow player:" HelpKey="SelectVideoPlayer.Text" ResourceKey="SelectVideoPlayer.HelpText" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVG2SelectPlayer" runat="server" OnSelectedIndexChanged="ddlVG2SelectPlayer_SelectedIndexChanged" AutoPostBack="True">
									<asp:ListItem Value="False">Standard</asp:ListItem>
									<asp:ListItem Value="True">Flow player</asp:ListItem>
								</asp:DropDownList>
								<asp:Panel ID="pnlFlowPlayerOptionsVG2" runat="server" Visible="False">
									<table class="style66">
										<tr id="trVG2VideoScaling" runat="server" visible="false">
											<td class="style115">
												<asp:Label ID="lblFlowVideoScalingVG2" runat="server" resourcekey="lblFlowVideoScaling" Text="Video scaling:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlFlowPlayerScalingVG2" runat="server" AutoPostBack="True">
													<asp:ListItem resourcekey="liScale" Value="scale">Scale</asp:ListItem>
													<asp:ListItem resourcekey="liorig" Value="orig">Original</asp:ListItem>
													<asp:ListItem resourcekey="lihalf" Value="half">Half</asp:ListItem>
													<asp:ListItem resourcekey="lifit" Value="fit">Fit to window</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style115">
												<asp:Label ID="lblFlowLoopVG2" runat="server" resourcekey="lblFlowVideoLoop" Text="Video loop:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbFlowLoopVG2" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ShowTitle" ResourceKey="lblVideoGallery2ShowTitle" runat="server" HelpText="Show gallery title:" Text="Show gallery title:" HelpKey="lblVideoGallery2ShowTitle.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowTitle" runat="server" resourcekey="cbVideoGalleryShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ShowDescription" ResourceKey="lblVideoGallery2ShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblVideoGallery2ShowDescription.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowDescription" runat="server" resourcekey="cbVideoGalleryShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ShowMediaTitle" ResourceKey="lblVideoGallery2ShowMediaTitle" runat="server" HelpText="Show video title:" Text="Show video title:" HelpKey="lblVideoGallery2ShowMediaTitle.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowMediaTitle" runat="server" resourcekey="cbVideoGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ShowMediaDescription" runat="server" HelpText="Show video description:" Text="Show video description:" HelpKey="lblVideoGallery2ShowMediaDescription.HelpText" ResourceKey="lblVideoGallery2ShowMediaDescription" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowMediaDescription" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ShowMediaTitleThumbnail" runat="server" HelpText="Show video title in thumbnail:" Text="Show video title in thumbnail:" HelpKey="lblVideoGallery2ShowMediaTitleThumbnail.HelpText" ResourceKey="lblVideoGallery2ShowMediaTitleThumbnail" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowMediaTitleThumbnail" runat="server" resourcekey="cbVideoGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ShowMediaDescriptionThumbnail" ResourceKey="lblVideoGallery2ShowMediaDescriptionThumbnail" runat="server" HelpText="Show video description in thumbnail:" Text="Show video description in thumbnail:" HelpKey="lblVideoGallery2ShowMediaDescriptionThumbnail.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowMediaDescriptionThumbnail" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ShowMediaDescriptionInVideo" ResourceKey="lblVideoGallery2ShowMediaDescriptionInVideo" runat="server" HelpText="Show description inside video:" Text="Show description inside video:" HelpKey="lblVideoGallery2ShowMediaDescriptionInVideo.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowMediaDescriptionInVideo" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionInVideoResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2UseThumbnailAsStartPhoto" ResourceKey="lblVideoGallery2UseThumbnailAsStartPhoto" runat="server" HelpText="Use thumbnail as start image:" Text="Use thumbnail as start image:" HelpKey="lblVideoGallery2UseThumbnailAsStartPhoto.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2UseThumbnailAsStartPhoto" runat="server" resourcekey="cbVideoGalleryUseThumbnailAsStartPhotoResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2PlayOnLoad" runat="server" HelpText="Start to play video on page load:" Text="Play on load:" HelpKey="lblVideoGallery2PlayOnLoad.HelpText" ResourceKey="lblVideoGallery2PlayOnLoad" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2PlayOnLoad" runat="server" resourcekey="cbVideoGalleryPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2AllowFullscreen" ResourceKey="lblVideoGallery2AllowFullscreen" runat="server" HelpText="Allow video to be played fullscreen:" Text="Allow fullscreen:" HelpKey="lblVideoGallery2AllowFullscreen.HelpText" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery2AllowFullscreen" runat="server" resourcekey="cbVideoGalleryAllowFullscreenResource1" />
							</td>
						</tr>
						<tr id="trVideoGallery2SkinSelect" runat="server">
							<td>
								<dnn:Label ID="lblVideoGallery2SelectSkin" ResourceKey="lblVideoGallery2SelectSkin" runat="server" HelpText="Select video player skin:" Text="Select video player skin:" HelpKey="lblVideoGallery2SelectSkin.HelpText" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVG2SelectTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource30" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource31" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblVideoGallery2InitialVolume" runat="server" Text="Initial video volume:" HelpKey="lblVideoGallery2InitialVolume.HelpText" HelpText="Initial video volume:" ResourceKey="lblVideoGallery2InitialVolume" />
							</td>
							<td colspan="3" class="style38">
								<asp:TextBox ID="tbVG2InitialVolume" runat="server" ValidationGroup="vgVG2Settings" Width="50px">250</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSSTNOverOpacity1" runat="server" ControlToValidate="tbVG2InitialVolume" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgVG2Settings" resourcekey="rfvSSTNOverOpacity0Resource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvVGTBInitialVolume0" runat="server" ControlToValidate="tbVG2InitialVolume" Display="Dynamic" ErrorMessage="Enter value between 0-300." MaximumValue="300" MinimumValue="0" resourcekey="rvVGTBInitialVolumeResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgVG2Settings">
								</asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2Width" runat="server" Text="Thumbnail width:" Visible="True" HelpKey="lblVideoGallery2Width.HelpText" HelpText="Thumbnail width:" ResourceKey="lblVideoGallery2Width"></dnn:Label>
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG2VideoWidth" runat="server" ValidationGroup="vgVG2Settings" Width="50px">100</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGWidth0" runat="server" ControlToValidate="tbVG2VideoWidth" ErrorMessage="This field is required." ValidationGroup="vgVG2Settings" Display="Dynamic" resourcekey="rfvVGWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings3" runat="server" ControlToValidate="tbVG2VideoWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVG2Settings" resourcekey="cvVGSettingsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2Height" ResourceKey="lblVideoGallery2Height" runat="server" Text="Thumbnail height:" ControlName="tbVGVideoHeight" HelpText="Thumbnail height:" HelpKey="lblVideoGallery2Height.HelpText" Visible="True"></dnn:Label>
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG2VideoHeight" runat="server" Width="50px" ValidationGroup="vgVG2Settings">100</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight2" runat="server" ControlToValidate="tbVG2VideoHeight" ErrorMessage="This field is required." ValidationGroup="vgVG2Settings" Display="Dynamic" resourcekey="rfvVGHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings4" runat="server" ControlToValidate="tbVG2VideoHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVG2Settings" resourcekey="cvVGSettings0Resource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style86">
								<dnn:Label ID="lblVideoGallery2ItemsPerPage" ResourceKey="lblVideoGallery2ItemsPerPage" runat="server" ControlName="tbVGItemsPerPage" HelpText="Set the number if items on one page:" Text="Items per page:" HelpKey="lblVideoGallery2ItemsPerPage.HelpText" />
							</td>
							<td colspan="3" class="style87">
								<asp:TextBox ID="tbVG2ItemsPerPage" runat="server" Width="50px" ValidationGroup="vgVG2Settings">5</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight3" runat="server" ControlToValidate="tbVG2ItemsPerPage" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgVG2Settings" resourcekey="rfvVGHeight0Resource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings5" runat="server" ControlToValidate="tbVG2ItemsPerPage" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVG2Settings" resourcekey="cvVGSettings1Resource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ColomunPerPage" runat="server" HelpKey="lblVideoGallery2ColomunPerPage.HelpText" HelpText="Set the number of columns:" ResourceKey="lblVideoGallery2ColomunPerPage" Text="Number of columns:" ControlName="tbVGNumberOfCols" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG2NumberOfCols" runat="server" ValidationGroup="vgVG2Settings" Width="50px">5</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight4" runat="server" ControlToValidate="tbVG2NumberOfCols" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGHeight1Resource1.ErrorMessage" ValidationGroup="vgVG2Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings6" runat="server" ControlToValidate="tbVG2NumberOfCols" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettings2Resource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG2Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery2ThumbnailRepeat" runat="server" HelpText="Thumbnail repeat direction:" Text="Thumbnail repeat direction:" HelpKey="lblVideoGallery2ThumbnailRepeat.HelpText" ResourceKey="lblVideoGallery2ThumbnailRepeat" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVideoGallery2ThumbnailRepeat" runat="server">
									<asp:ListItem resourcekey="liHorizontalDir" Selected="True" Value="Horizontal">Horizontal</asp:ListItem>
									<asp:ListItem resourcekey="liVerticalDir" Value="Vertical">Vertical</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGalelry2RandomizeMedia" runat="server" HelpText="Randomize media positions on every page load:" Text="Randomize media positions:" HelpKey="lblLightBoxRandomizeMedia.HelpText" ResourceKey="lblLightBoxRandomizeMedia" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery2RandomizeMedia" runat="server" OnCheckedChanged="cbVideoGallery2RandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label11" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlVideoGallery2MediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblVideoGallery2MediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ShowImages" runat="server" HelpText="Show also images from this gallery:" Text="Show images:" HelpKey="lblVideoGallery2ShowImages.HelpText" ResourceKey="lblVideoGallery2ShowImages" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowImages" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ImageWidth" runat="server" HelpText="Image width:" Text="Image width:" HelpKey="lblVideoGallery2ImageWidth.HelpText" ResourceKey="lblVideoGallery2ImageWidth" />
							</td>
							<td class="style60" colspan="3">
								<asp:TextBox ID="tbVG2ImageWidth" runat="server" ValidationGroup="vgVG2Settings" Width="50px">600</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGWidth2" runat="server" ControlToValidate="tbVG2ImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGWidthResource1.ErrorMessage" ValidationGroup="vgVG2Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings12" runat="server" ControlToValidate="tbVG2ImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettingsResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG2Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ImageHeight" runat="server" HelpText="Image height:" Text="Image height:" HelpKey="lblVideoGallery2ImageHeight.HelpText" ResourceKey="lblVideoGallery2ImageHeight" />
							</td>
							<td class="style60" colspan="3">
								<asp:TextBox ID="tbVG2ImageHeight" runat="server" ValidationGroup="vgVG2Settings" Width="50px">400</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGWidth3" runat="server" ControlToValidate="tbVG2ImageHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGWidthResource1.ErrorMessage" ValidationGroup="vgVG2Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings13" runat="server" ControlToValidate="tbVG2ImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettingsResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG2Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGalleryShowPaging0" runat="server" HelpText="Show paging:" Text="Show paging:" HelpKey="lblVideoGalleryShowPaging.HelpText" ResourceKey="lblVideoGalleryShowPaging" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowPaging" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td class="style59" valign="top">
								<dnn:Label ID="lblVideoGallery2ShowSocialSharing" runat="server" HelpText="Show social sharing:" Text="Show social sharing:" HelpKey="lblVideoGalleryShowSocialSharing.HelpText" ResourceKey="lblVideoGalleryShowSocialSharing" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowSocialSharing" runat="server" AutoPostBack="True" OnCheckedChanged="cbVideoGallery2ShowSocialSharing_CheckedChanged" />
								&nbsp;<asp:Panel ID="pnlVideoGallery2SocialSharingOptions" runat="server">
									<table class="style66">
										<tr>
											<td class="style98">
												<dnn:Label ID="lblVG2Opn" runat="server" HelpText="Open/Close sharing on button click:" Text="Open on button click:" HelpKey="lblVideoGallerySSOptions.HelpText" ResourceKey="lblVideoGallerySSOptions" />
											</td>
											<td>
												<asp:CheckBox ID="cbVG2SSOpenOnButton" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ShowSocialSharing0" runat="server" HelpText="Show textbox that contains media link:" Text="Show media link:" HelpKey="lblVideoGalleryShowBackLink.HelpText" ResourceKey="lblVideoGalleryShowBackLink" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery2ShowMediaLink" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style59">&nbsp;
							</td>
							<td class="style60" colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							<asp:Label ID="lblVideoGallery2Status" runat="server" resourcekey="lblVideoGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td class="style53" colspan="2">
								<asp:Button ID="btnVideoGallery2SaveSettings" runat="server" OnClick="btnVideoGallery2SaveSettings_Click" resourcekey="btnVideoGallerySaveSettingsResource1" Style="height: 26px" Text="Save settings" ValidationGroup="vgVG2Settings" Width="140px" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnVideoGallery2SaveClose" runat="server" OnClick="btnVideoGallery2SaveClose_Click" resourcekey="btnVideoGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgVG2Settings" Width="140px" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlVideoGallery3Settings" runat="server" BackColor="#EFEFEF" Visible="False">
				<table align="center" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblVideoGalleryDisplay3Settings" runat="server" CssClass="settingsdetailtitle" resourcekey="lblVideoGalleryDisplay3Settings" Text="Video gallery 3 display settings"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table align="center" cellpadding="2" cellspacing="2" width="80%">
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3TemplateSelect" runat="server" HelpKey="lblVideoGallery2TemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblVideoGallery2TemplateSelect" Text="Select template:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVideoGallery3TemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVideoGallery3TemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3SelectCSS" runat="server" HelpKey="lblVideoGallery2SelectCSS.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblVideoGallery2SelectCSS" Text="Select CSS:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVG3SelectCSS" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">
								<asp:Label ID="lblVG3TemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGalelry3UseFlowPlayer" runat="server" HelpText="Select player:" Text="Select player:" HelpKey="SelectVideoPlayer.HelpText" ResourceKey="SelectVideoPlayer.Text" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVG3SelectPlayer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlVG3SelectPlayer_SelectedIndexChanged">
									<asp:ListItem Value="False">Standard</asp:ListItem>
									<asp:ListItem Value="True">Flow player</asp:ListItem>
								</asp:DropDownList>
								<asp:Panel ID="pnlFlowPlayerOptionsVG3" runat="server" Visible="False">
									<table class="style66">
										<tr id="trVG3FlowScaling" runat="server" visible="false">
											<td class="style116">
												<asp:Label ID="lblFlowVideoScalingVG3" runat="server" resourcekey="lblFlowVideoScaling" Text="Video scaling:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlFlowPlayerScalingVG3" runat="server" AutoPostBack="True">
													<asp:ListItem resourcekey="liScale" Value="scale">Scale</asp:ListItem>
													<asp:ListItem resourcekey="liorig" Value="orig">Original</asp:ListItem>
													<asp:ListItem resourcekey="lihalf" Value="half">Half</asp:ListItem>
													<asp:ListItem resourcekey="lifit" Value="fit">Fit to window</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style116">
												<asp:Label ID="lblFlowLoopVG3" runat="server" resourcekey="lblFlowVideoLoop" Text="Video loop:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbFlowLoopVG3" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ShowTitle" runat="server" HelpKey="lblVideoGallery2ShowTitle.HelpText" HelpText="Show gallery title:" ResourceKey="lblVideoGallery2ShowTitle" Text="Show gallery title:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowTitle" runat="server" resourcekey="cbVideoGalleryShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ShowDescription" runat="server" HelpKey="lblVideoGallery2ShowDescription.HelpText" HelpText="Show gallery description:" ResourceKey="lblVideoGallery2ShowDescription" Text="Show gallery description:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowDescription" runat="server" resourcekey="cbVideoGalleryShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ShowMediaTitle" runat="server" HelpKey="lblVideoGallery2ShowMediaTitle.HelpText" HelpText="Show video title:" ResourceKey="lblVideoGallery2ShowMediaTitle" Text="Show video title:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowMediaTitle" runat="server" resourcekey="cbVideoGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ShowMediaDescription" runat="server" HelpKey="lblVideoGallery2ShowMediaDescription.HelpText" HelpText="Show video description:" ResourceKey="lblVideoGallery2ShowMediaDescription" Text="Show video description:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowMediaDescription" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ShowMediaTitleThumbnail" runat="server" HelpKey="lblVideoGallery2ShowMediaTitleThumbnail.HelpText" HelpText="Show video title in thumbnail:" ResourceKey="lblVideoGallery2ShowMediaTitleThumbnail" Text="Show video title in thumbnail:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowMediaTitleThumbnail" runat="server" resourcekey="cbVideoGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ShowMediaDescriptionThumbnail" runat="server" HelpKey="lblVideoGallery2ShowMediaDescriptionThumbnail.HelpText" HelpText="Show video description in thumbnail:" ResourceKey="lblVideoGallery2ShowMediaDescriptionThumbnail" Text="Show video description in thumbnail:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowMediaDescriptionThumbnail" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ShowMediaDescriptionInVideo" runat="server" HelpKey="lblVideoGallery2ShowMediaDescriptionInVideo.HelpText" HelpText="Show description inside video:" ResourceKey="lblVideoGallery2ShowMediaDescriptionInVideo" Text="Show description inside video:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowMediaDescriptionInVideo" runat="server" resourcekey="cbVideoGalleryShowMediaDescriptionInVideoResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3UseThumbnailAsStartPhoto" runat="server" HelpKey="lblVideoGallery2UseThumbnailAsStartPhoto.HelpText" HelpText="Use thumbnail as start image:" ResourceKey="lblVideoGallery2UseThumbnailAsStartPhoto" Text="Use thumbnail as start image:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3UseThumbnailAsStartPhoto" runat="server" resourcekey="cbVideoGalleryUseThumbnailAsStartPhotoResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3PlayOnLoad" runat="server" HelpKey="lblVideoGallery2PlayOnLoad.HelpText" HelpText="Start to play video on page load:" ResourceKey="lblVideoGallery2PlayOnLoad" Text="Play on load:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3PlayOnLoad" runat="server" resourcekey="cbVideoGalleryPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3AllowFullscreen" runat="server" HelpKey="lblVideoGallery2AllowFullscreen.HelpText" HelpText="Allow video to be played fullscreen:" ResourceKey="lblVideoGallery2AllowFullscreen" Text="Allow fullscreen:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3AllowFullscreen" runat="server" resourcekey="cbVideoGalleryAllowFullscreenResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3PaggingVisible" runat="server" HelpKey="lblVideoGallery3PaggingVisible.HelpText" HelpText="Show pagging:" ResourceKey="lblVideoGallery3PaggingVisible" Text="Show pagging:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowPagging" runat="server" resourcekey="cbVideoGalleryAllowFullscreenResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3SelectSkin" runat="server" HelpKey="lblVideoGallery2SelectSkin.HelpText" HelpText="Select video player skin:" ResourceKey="lblVideoGallery2SelectSkin" Text="Select video player skin:" />
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlVG3SelectTheme" runat="server" Width="70px">
									<asp:ListItem resourcekey="ListItemResource30" Selected="True" Value="black">Black</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource31" Value="white">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style69">
								<dnn:Label ID="lblVideoGallery3InitialVolume" runat="server" HelpKey="lblVideoGallery2InitialVolume.HelpText" HelpText="Initial video volume:" ResourceKey="lblVideoGallery2InitialVolume" Text="Initial video volume:" />
							</td>
							<td colspan="3" class="style38">
								<asp:TextBox ID="tbVG3InitialVolume" runat="server" ValidationGroup="vgVG3Settings" Width="50px">250</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSSTNOverOpacity2" runat="server" ControlToValidate="tbVG3InitialVolume" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSSTNOverOpacity0Resource1.ErrorMessage" ValidationGroup="vgVG3Settings"></asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvVGTBInitialVolume1" runat="server" ControlToValidate="tbVG3InitialVolume" Display="Dynamic" ErrorMessage="Enter value between 0-300." MaximumValue="300" MinimumValue="0" resourcekey="rvVGTBInitialVolumeResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3Width" runat="server" HelpKey="lblVideoGallery2Width.HelpText" HelpText="Thumbnail width:" ResourceKey="lblVideoGallery2Width" Text="Thumbnail width:" Visible="True" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG3VideoWidth" runat="server" ValidationGroup="vgVG3Settings" Width="50px">100</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGWidth1" runat="server" ControlToValidate="tbVG3VideoWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGWidthResource1.ErrorMessage" ValidationGroup="vgVG3Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings7" runat="server" ControlToValidate="tbVG3VideoWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettingsResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3Height" runat="server" ControlName="tbVGVideoHeight" HelpKey="lblVideoGallery2Height.HelpText" HelpText="Thumbnail height:" ResourceKey="lblVideoGallery2Height" Text="Thumbnail height:" Visible="True" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG3VideoHeight" runat="server" ValidationGroup="vgVG3Settings" Width="50px">100</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight5" runat="server" ControlToValidate="tbVG3VideoHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGHeightResource1.ErrorMessage" ValidationGroup="vgVG3Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings8" runat="server" ControlToValidate="tbVG3VideoHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettings0Resource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ItemstoShow" runat="server" ControlName="tbVGItemsPerPage" HelpKey="lblVideoGallery3ItemstoShow.HelpText" HelpText="Items to show:" ResourceKey="lblVideoGallery3ItemstoShow" Text="Items to show:" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG3ItemsPerPage" runat="server" ValidationGroup="vgVG3Settings" Width="50px">5</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight6" runat="server" ControlToValidate="tbVG3ItemsPerPage" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGHeight0Resource1.ErrorMessage" ValidationGroup="vgVG3Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings9" runat="server" ControlToValidate="tbVG3ItemsPerPage" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettings1Resource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3ItemsToScroll" runat="server" ControlName="tbVGNumberOfCols" HelpKey="lblVideoGallery3ItemsToScroll.HelpText" HelpText="Items to scroll:" ResourceKey="lblVideoGallery3ItemsToScroll" Text="Items to scroll:" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG3NumberOfCols" runat="server" ValidationGroup="vgVG3Settings" Width="50px">5</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight7" runat="server" ControlToValidate="tbVG3NumberOfCols" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGHeight1Resource1.ErrorMessage" ValidationGroup="vgVG3Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings10" runat="server" ControlToValidate="tbVG3NumberOfCols" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettings2Resource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3AutoSlide" runat="server" ControlName="tbVGNumberOfCols" HelpKey="lblVideoGallery3AutoSlide.HelpText" HelpText="Auto slide:" ResourceKey="lblVideoGallery3AutoSlide" Text="Auto slide:" />
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbVideoGallery3AutoSlide" runat="server" resourcekey="cbVideoGalleryAllowFullscreenResource1" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblVideoGallery3AutoSlidePause" runat="server" HelpKey="lblVideoGallery3AutoSlidePause.HelpText" HelpText="Auto slide items pause:" ResourceKey="lblVideoGallery3AutoSlidePause" Text="Auto slide items pause:" ControlName="tbVGNumberOfCols" />
							</td>
							<td colspan="3">
								<asp:TextBox ID="tbVG3AutoSlidePause" runat="server" ValidationGroup="vgVG3Settings" Width="50px">5000</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvVGHeight8" runat="server" ControlToValidate="tbVG3AutoSlidePause" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGHeight1Resource1.ErrorMessage" ValidationGroup="vgVG3Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings11" runat="server" ControlToValidate="tbVG3AutoSlidePause" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettings2Resource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGalelry3RandomizeMedia" runat="server" HelpText="Randomize media positions on every page load:" Text="Randomize media positions:" HelpKey="lblLightBoxRandomizeMedia.HelpText" ResourceKey="lblLightBoxRandomizeMedia" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery3RandomizeMedia" runat="server" OnCheckedChanged="cbVideoGallery3RandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label12" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlVideoGallery3MediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblVideoGallery3MediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ShowImages0" runat="server" HelpKey="lblVideoGallery2ShowImages.HelpText" HelpText="Show also images from this gallery:" ResourceKey="lblVideoGallery2ShowImages" Text="Show images:" />
							</td>
							<td colspan="3" class="style60">
								<asp:CheckBox ID="cbVideoGallery3ShowImages" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ImageWidth0" runat="server" HelpKey="lblVideoGallery2ImageWidth.HelpText" HelpText="Image width:" ResourceKey="lblVideoGallery2ImageWidth" Text="Image width:" />
							</td>
							<td class="style60" colspan="3">
								<asp:TextBox ID="tbVG3ImageWidth" runat="server" ValidationGroup="vgVG3Settings" Width="50px">600</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvVGWidth4" runat="server" ControlToValidate="tbVG3ImageWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGWidthResource1.ErrorMessage" ValidationGroup="vgVG3Settings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings14" runat="server" ControlToValidate="tbVG3ImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettingsResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ImageHeight0" runat="server" HelpKey="lblVideoGallery2ImageHeight.HelpText" HelpText="Image height:" ResourceKey="lblVideoGallery2ImageHeight" Text="Image height:" />
							</td>
							<td class="style60" colspan="3">
								<asp:TextBox ID="tbVG3ImageHeight" runat="server" ValidationGroup="vgVG3Settings" Width="50px">400</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvVGWidth5" runat="server" ControlToValidate="tbVG3ImageHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvVGWidthResource1.ErrorMessage" ValidationGroup="vgVG3Settings">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvVGSettings15" runat="server" ControlToValidate="tbVG3ImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVGSettingsResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVG3Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2Arrows" runat="server" HelpText="Navigation arrows:" Text="Navigation arrows:" HelpKey="lblVideoGallery2Arrows.HelpText" ResourceKey="lblVideoGallery2Arrows" />
							</td>
							<td class="style60" colspan="3">
								<asp:DropDownList ID="ddlVG3Arrows" runat="server">
									<asp:ListItem resourcekey="liDefault">Default</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style59" valign="top">
								<dnn:Label ID="lblVideoGallery2ShowSocialSharing2" runat="server" HelpText="Show social sharing:" Text="Show social sharing:" HelpKey="lblVideoGalleryShowSocialSharing.HelpText" ResourceKey="lblVideoGalleryShowSocialSharing" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowSocialSharing" runat="server" AutoPostBack="True" OnCheckedChanged="cbVideoGallery3ShowSocialSharing_CheckedChanged" />
								<asp:Panel ID="pnlVideoGallery3SocialSharingOptions" runat="server">
									<table class="style66">
										<tr>
											<td class="style98">
												<dnn:Label ID="lblVideoGallery2SSOptions0" runat="server" HelpText="Open/Close sharing on button click:" Text="Open on button click:" HelpKey="lblVideoGallerySSOptions.HelpText" ResourceKey="lblVideoGallerySSOptions" />
											</td>
											<td>
												<asp:CheckBox ID="cbVG3SSOpenOnButton" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style59">
								<dnn:Label ID="lblVideoGallery2ShowSocialSharing1" runat="server" HelpText="Show textbox that contains media link:" Text="Show media link:" HelpKey="lblVideoGalleryShowBackLink.HelpText" ResourceKey="lblVideoGalleryShowBackLink" />
							</td>
							<td class="style60" colspan="3">
								<asp:CheckBox ID="cbVideoGallery3ShowMediaLink" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style59">&nbsp;
							</td>
							<td class="style60" colspan="3">&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							<asp:Label ID="lblVideoGallery3Status" runat="server" resourcekey="lblVideoGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td class="style53" colspan="2">
								<asp:Button ID="btnVideoGallery3SaveSettings" runat="server" OnClick="btnVideoGallery3SaveSettings_Click" resourcekey="btnVideoGallerySaveSettingsResource1" Style="height: 26px" Text="Save settings" ValidationGroup="vgVG3Settings" Width="140px" />
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnVideoGallery3SaveClose" runat="server" OnClick="btnVideoGallery3SaveClose_Click" resourcekey="btnVideoGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgVG3Settings" Width="140px" />
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td>&nbsp;
							</td>
							<td colspan="3">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlSSthumbs" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblSlideShowThumbnailsDisplaySettings" runat="server" CssClass="settingsdetailtitle" Text="Slideshow with thumbnails display settings" resourcekey="lblSlideShowThumbnailsDisplaySettingsResource1"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSSthumbnailsTemplateSelect" runat="server" ControlName="ddlSSThemeSelect" HelpKey="lblLightboxTemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblLightboxTemplateSelect" Text="Select template:" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlSSThumbnailsTemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSSThumbnailsTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">
								<asp:Label ID="lblSSthumbnailsTemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsShowTitle" ResourceKey="lblSlideShowThumbnailsShowTitle" runat="server" HelpText="Show gallery title:" Text="Show gallery title:" HelpKey="lblSlideShowThumbnailsShowTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsShowTitle" runat="server" resourcekey="cbSlideShowThumbnailsShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsShowDescription" ResourceKey="lblSlideShowThumbnailsShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblSlideShowThumbnailsShowDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsShowDescription" runat="server" resourcekey="cbSlideShowThumbnailsShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsShowMediaTitle" ResourceKey="lblSlideShowThumbnailsShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblSlideShowThumbnailsShowMediaTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsShowMediaTitle" runat="server" resourcekey="cbSlideShowThumbnailsShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsShowMediaDescription" ResourceKey="lblSlideShowThumbnailsShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblSlideShowThumbnailsShowMediaDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsShowMediaDescription" runat="server" resourcekey="cbSlideShowThumbnailsShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70" valign="top">
								<dnn:Label ID="lblSlideShowThumbnailsShowLightboxDescription" ResourceKey="lblSlideShowThumbnailsShowLightboxDescription" runat="server" HelpText="Show media description in lightbox:" Text="Show media description in lightbox:" HelpKey="lblSlideShowThumbnailsShowLightboxDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsShowLightBoxDescription" runat="server" resourcekey="cbSlideShowThumbnailsShowLightBoxDescriptionResource1" AutoPostBack="True" OnCheckedChanged="cbSlideShowThumbnailsShowLightBoxDescription_CheckedChanged" />
								<br />
								<asp:Panel ID="pnlSlideShowTNTipOptions" runat="server" BackColor="#CBEEF8" BorderColor="#65CDEB" BorderStyle="Solid" BorderWidth="2px" Visible="False">
									<table class="style66">
										<tr>
											<td class="style85">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblSlideShowTNToolTipOptions" runat="server" Font-Bold="True" resourcekey="lblLightBoxToolTipOptions" Text="Tooltip options"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowLightboxShowTooltips0" runat="server" resourcekey="lblLightboxShowToolTips" Text="Show Tooltips:"></asp:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSSTNShowToolTips" runat="server" />
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNTargetPosition" runat="server" resourcekey="lblLightboxTargetPosition" Text="Target position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTNTargetPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle" Selected="True">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Value="bottomMiddle">Bottom middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNTooltipPosition" runat="server" resourcekey="lblLightboxTooltipPosition" Text="Tooltip position:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTNTooltipPosition" runat="server">
													<asp:ListItem resourcekey="topLeft" Value="topLeft">Top left</asp:ListItem>
													<asp:ListItem resourcekey="topMiddle" Value="topMiddle">Top middle</asp:ListItem>
													<asp:ListItem resourcekey="topRight" Value="topRight">Top right</asp:ListItem>
													<asp:ListItem resourcekey="leftTop" Value="leftTop">Left top</asp:ListItem>
													<asp:ListItem resourcekey="leftMiddle" Value="leftMiddle">Left middle</asp:ListItem>
													<asp:ListItem resourcekey="leftBottom" Value="leftBottom">Left bottom</asp:ListItem>
													<asp:ListItem resourcekey="center" Value="center">Center</asp:ListItem>
													<asp:ListItem resourcekey="rightTop" Value="rightTop">Right top</asp:ListItem>
													<asp:ListItem resourcekey="rightMiddle" Value="rightMiddle">Right middle</asp:ListItem>
													<asp:ListItem resourcekey="rightBottom" Value="rightBottom">Right bottom</asp:ListItem>
													<asp:ListItem resourcekey="bottomLeft" Value="bottomLeft">Bottom left</asp:ListItem>
													<asp:ListItem resourcekey="bottomMiddle" Selected="True" Value="bottomMiddle">Bottom 
											middle</asp:ListItem>
													<asp:ListItem resourcekey="bottomRight" Value="bottomRight">Bottom right</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNShowEffect" runat="server" resourcekey="lblLightboxShowEffect" Text="Show effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTNShoweffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNShowEffectDuration" runat="server" resourcekey="lblLightboxShowEffectDuration" Text="Show effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTNTooltipShowDuration" runat="server" Width="53px">500</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth16" runat="server" ControlToValidate="tbSlideShowTNTooltipShowDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgSSTNSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth16" runat="server" ControlToValidate="tbSlideShowTNTooltipShowDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSTNSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNShowHideEffect" runat="server" resourcekey="lblLightboxShowHideEffect" Text="Hide effect:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTNHideEffect" runat="server">
													<asp:ListItem resourcekey="fade" Value="fade">Fade</asp:ListItem>
													<asp:ListItem resourcekey="slide" Value="slide">Slide</asp:ListItem>
													<asp:ListItem resourcekey="grow" Value="grow">Grow</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNHideEffectDuration" runat="server" resourcekey="lblLightboxHideEffectDuration" Text="Hide effect duration (ms):"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTNTooltipHideDuration" runat="server" Width="53px">500</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth17" runat="server" ControlToValidate="tbSlideShowTNTooltipHideDuration" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgSSTNSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth17" runat="server" ControlToValidate="tbSlideShowTNTooltipHideDuration" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSTNSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNTooltipBorder" runat="server" resourcekey="lblLightboxTooltipBorder" Text="Border:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTNTooltipBorder" runat="server" Width="53px">5</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth18" runat="server" ControlToValidate="tbSlideShowTNTooltipBorder" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage" SetFocusOnError="True"
													ValidationGroup="vgSSSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth18" runat="server" ControlToValidate="tbSlideShowTNTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSTNSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNTooltipCornerRadius" runat="server" resourcekey="lblLightboxTooltipCornerRadius" Text="Corner radius:"></asp:Label>
											</td>
											<td>
												<asp:TextBox ID="tbSlideShowTNTooltipCornerRadius" runat="server" Width="53px">5</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvImageCarouselImageWidth19" runat="server" ControlToValidate="tbSlideShowTNTooltipCornerRadius" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" ValidationGroup="vgSSTNSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvImageCarouselImageWidth19" runat="server" ControlToValidate="tbSlideShowTNTooltipCornerRadius" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImageCarouselImageWidthResource1.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgSSSettings">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td class="style85">
												<asp:Label ID="lblSlideShowTNTooltipTheme" runat="server" resourcekey="lblLightboxTooltipTheme" Text="Select theme:"></asp:Label>
											</td>
											<td>
												<asp:DropDownList ID="ddlSlideShowTNTooltipTheme" runat="server">
													<asp:ListItem resourcekey="cream" Value="cream">Yellow</asp:ListItem>
													<asp:ListItem resourcekey="dark" Value="dark">Dark</asp:ListItem>
													<asp:ListItem resourcekey="green" Value="green">Green</asp:ListItem>
													<asp:ListItem resourcekey="light" Value="light">Light</asp:ListItem>
													<asp:ListItem resourcekey="red" Value="red">Red</asp:ListItem>
													<asp:ListItem resourcekey="blue" Value="blue">Blue</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsOpenMediaUrl" ResourceKey="lblSlideShowThumbnailsOpenMediaUrl" runat="server" HelpText="On image click dont open image in lightbox, but open Media Url link." Text="On click go to Media Url:" HelpKey="lblSlideShowThumbnailsOpenMediaUrl.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsOpenMediaUrl" runat="server" AutoPostBack="True" OnCheckedChanged="cbSSTNOpenMediaUrl_CheckedChanged" resourcekey="cbSlideShowThumbnailsOpenMediaUrlResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsOpenMediaUrlNewWindow" ResourceKey="lblSlideShowThumbnailsOpenMediaUrlNewWindow" runat="server" HelpText="Open link in new window:" Text="Open link in new window:" HelpKey="lblSlideShowThumbnailsOpenMediaUrlNewWindow.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSSTNOpenMediaUrlNewWindow" runat="server" Enabled="False" resourcekey="cbSSTNOpenMediaUrlNewWindowResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsImageWidth" ResourceKey="lblSlideShowThumbnailsImageWidth" runat="server" ControlName="tbSSTBWidth" HelpText="Set the width of main image panel:" Text="Image width:" HelpKey="lblSlideShowThumbnailsImageWidth.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBWidth" runat="server" ValidationGroup="vgSSTNSettings" Width="55px">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsImageWidth" runat="server" ControlToValidate="tbSSTBWidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSSTNWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsImageWidth" runat="server" ControlToValidate="tbSSTBWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings" resourcekey="cvSlideShowThumbnailsImageWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsImageHeight" ResourceKey="lblSlideShowThumbnailsImageHeight" runat="server" Text="Image height:" ControlName="tbSSTHHeight" HelpText="Set the height of main image panel:" HelpKey="lblSlideShowThumbnailsImageHeight.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTHHeight" runat="server" ValidationGroup="vgSSTNSettings" Width="55px">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsImageHeight" runat="server" ControlToValidate="tbSSTHHeight" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" Display="Dynamic" resourcekey="rfvSSTNHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsImageHeight" runat="server" ControlToValidate="tbSSTHHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings" resourcekey="cvSlideShowThumbnailsImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsThumbWidth" ResourceKey="lblSlideShowThumbnailsThumbWidth" runat="server" Text="Thumbnail width:" HelpText="Set the width of thumbnail image in filmstrip:" ControlName="tbSSTHumbwidth" HelpKey="lblSlideShowThumbnailsThumbWidth.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTHumbwidth" runat="server" ValidationGroup="vgSSTNSettings" Width="55px">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsThumbWidth" runat="server" ControlToValidate="tbSSTHumbwidth" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" Display="Dynamic" resourcekey="rfvSlideShowThumbnailsThumbWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsThumbWidth" runat="server" ControlToValidate="tbSSTHumbwidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings" resourcekey="cvSlideShowThumbnailsThumbWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsThumbHeight" ResourceKey="lblSlideShowThumbnailsThumbHeight" runat="server" Text="Thumbnail height:" ControlName="tbSSTHumbHeight" HelpText="Set the height of thumbnail image in filmstrip:" HelpKey="lblSlideShowThumbnailsThumbHeight.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTHumbHeight" runat="server" ValidationGroup="vgSSTNSettings" Width="55px">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsThumnHeight" runat="server" ControlToValidate="tbSSTHumbHeight" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsThumnHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsThumbHeight" runat="server" ControlToValidate="tbSSTHumbHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings" resourcekey="cvSlideShowThumbnailsThumbHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsProportionalImages" ResourceKey="lblSlideShowThumbnailsProportionalImages" runat="server" ControlName="tbSSTHumbHeight" HelpText="Proportionally resize images:" Text="Proportionally resize images:" HelpKey="lblSlideShowThumbnailsProportionalImages.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsProportionalImages" runat="server" resourcekey="cbSlideShowThumbnailsProportionalImagesResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsOvlerlayPosition" ResourceKey="lblSlideShowThumbnailsOvlerlayPosition" runat="server" Text="Overlay position:" ControlName="rblSSTBOverlayPosition" HelpText="Set the position of overlay for title and description:"
									HelpKey="lblSlideShowThumbnailsOvlerlayPosition.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblSlideShowThumbnailsOverlayPosition" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem Selected="True" Value="top" resourcekey="ListItemResource32">Top</asp:ListItem>
									<asp:ListItem Value="bottom" resourcekey="ListItemResource33">Bottom</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsOverlaySize" ResourceKey="lblSlideShowThumbnailsOverlaySize" runat="server" Text="Overlay size (px):" ControlName="tbSSTBOverlaySize" HelpText="Set the size of overlay in pixels:" HelpKey="lblSlideShowThumbnailsOverlaySize.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBOverlaySize" runat="server" Width="55px" ValidationGroup="vgSSTNSettings">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsOverlaySize" runat="server" ControlToValidate="tbSSTBOverlaySize" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsOverlaySizeResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsOverlaySize" runat="server" ControlToValidate="tbSSTBOverlaySize" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings" resourcekey="cvSlideShowThumbnailsOverlaySizeResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsOverlayOpacity" ResourceKey="lblSlideShowThumbnailsOverlayOpacity" runat="server" Text="Overlay opacity (0-100):" ControlName="tbSSTBOveryOpacity" HelpText="Set the percentage of overlay opacity. Values between 0 and 100."
									HelpKey="lblSlideShowThumbnailsOverlayOpacity.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBOveryOpacity" runat="server" Width="55px" ValidationGroup="vgSSTNSettings">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsOverlayOpacity" runat="server" ControlToValidate="tbSSTBOveryOpacity" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsOverlayOpacityResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvSlideShowThumbnailsOverlayOpacity" runat="server" ControlToValidate="tbSSTBOveryOpacity" Display="Dynamic" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" Type="Integer" ValidationGroup="vgSSTNSettings"
									resourcekey="rvSlideShowThumbnailsOverlayOpacityResource1.ErrorMessage">
								</asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsOverlayTextColor" ResourceKey="lblSlideShowThumbnailsOverlayTextColor" runat="server" Text="Overlay text color (hex value RRGGBB):" ControlName="tbSSTBOverlayTextColor" HelpText="Set the color of ovarlay text in rgb format with hex values:"
									HelpKey="lblSlideShowThumbnailsOverlayTextColor.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBOverlayTextColor" runat="server" MaxLength="6" Width="55px" ValidationGroup="vgSSTNSettings">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsOverlayTextColor" runat="server" ControlToValidate="tbSSTBOverlayTextColor" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsOverlayTextColorResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="revSlideShowThumbnailsOverlayTextColor" runat="server" ControlToValidate="tbSSTBOverlayTextColor" ErrorMessage="Please eneter hexadecimal color value." ValidationExpression="^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$"
									ValidationGroup="vgSSTNSettings" resourcekey="revSlideShowThumbnailsOverlayTextColorResource1.ErrorMessage">
								</asp:RegularExpressionValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsOverlayColor" ResourceKey="lblSlideShowThumbnailsOverlayColor" runat="server" ControlName="tbSSTBOverlayColor" HelpText="Set the color of overlay in rgb format with hex values:" Text="Overlay color (hex value RRGGBB):"
									HelpKey="lblSlideShowThumbnailsOverlayColor.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBOverlayColor" runat="server" MaxLength="6" Width="50px">eeeeee</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsOverlayColor" runat="server" ControlToValidate="tbSSTBOverlayColor" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsOverlayColorResource1.ErrorMessage">
								</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="revSlideShowThumbnailsOverlayColor" runat="server" ControlToValidate="tbSSTBOverlayColor" ErrorMessage="Please eneter hexadecimal color value." ValidationExpression="^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$"
									ValidationGroup="vgSSTNSettings" resourcekey="revSlideShowThumbnailsOverlayColorResource1.ErrorMessage">
								</asp:RegularExpressionValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsThumbPosition" ResourceKey="lblSlideShowThumbnailsThumbPosition" runat="server" Text="Thumbnail position:" ControlName="rblSSTBThumbNailPosition" HelpText="Set the position of filmstrip with thumbnails:" HelpKey="lblSlideShowThumbnailsThumbPosition.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:RadioButtonList ID="rblSlideShowThumbnailsThumbnailPosition" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem Selected="True" Value="top" resourcekey="ListItemResource34">Top</asp:ListItem>
									<asp:ListItem Value="bottom" resourcekey="ListItemResource35">Bottom</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsTransparentThumbnails" ResourceKey="lblSlideShowThumbnailsTransparentThumbnails" runat="server" ControlName="rblSSTBThumbNailPosition" HelpText="Transparent thumbnail navigation:" Text="Transparent thumbnail navigation:"
									HelpKey="lblSlideShowThumbnailsTransparentThumbnails.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsTransparentThumbnails" runat="server" AutoPostBack="True" OnCheckedChanged="cbSSTBTransparentThumbnails_CheckedChanged" resourcekey="cbSlideShowThumbnailsTransparentThumbnailsResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsTransitionTime" ResourceKey="lblSlideShowThumbnailsTransitionTime" runat="server" Text="Transition interval (ms):" ControlName="tbSSTBTransition" HelpText="Set the pause time between image transition in miliseconds:"
									HelpKey="lblSlideShowThumbnailsTransitionTime.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBTransition" runat="server" Width="55px" ValidationGroup="vgSSTNSettings">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsTransitionTime" runat="server" ControlToValidate="tbSSTBTransition" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsTransitionTimeResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsTransitionTime" runat="server" ControlToValidate="tbSSTBTransition" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings" resourcekey="cvSlideShowThumbnailsTransitionTimeResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsTransitionSpeed" ResourceKey="lblSlideShowThumbnailsTransitionSpeed" runat="server" ControlName="tbSSTBTransitionSpeed" HelpText="Set the transition time in miliseconds:" Text="Transition speed (ms):" HelpKey="lblSlideShowThumbnailsTransitionSpeed.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBTransitionSpeed" runat="server" Width="50px">800</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsTransitionSpeed" runat="server" ControlToValidate="tbSSTBTransitionSpeed" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsTransitionSpeedResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsTransitionSpeed" runat="server" ControlToValidate="tbSSTBTransitionSpeed" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings"
									resourcekey="cvSlideShowThumbnailsTransitionSpeedResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsShowPanel" ResourceKey="lblSlideShowThumbnailsShowPanel" runat="server" Text="Show main panel:" ControlName="cbSSTNMainPanel" HelpText="Set to show or hide main image panel:" HelpKey="lblSlideShowThumbnailsShowPanel.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsMainPanel" runat="server" OnCheckedChanged="cbSSTNMainPanel_CheckedChanged" AutoPostBack="True" resourcekey="cbSlideShowThumbnailsMainPanelResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsFilmstrip" ResourceKey="lblSlideShowThumbnailsFilmstrip" runat="server" Text="Show filmstrip:" ControlName="cbSSTNFilmStrip" HelpText="Set to show or hide filmstrip:" HelpKey="lblSlideShowThumbnailsFilmstrip.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsFilmStrip" runat="server" OnCheckedChanged="cbSSTNFilmStrip_CheckedChanged" resourcekey="cbSlideShowThumbnailsFilmStripResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsFilmStripSize" ResourceKey="lblSlideShowThumbnailsFilmStripSize" runat="server" ControlName="tbSSTNFilmStripSize" HelpText="Set the number of images in filmstrip:" Text="Number of images in filmstrip:" HelpKey="lblSlideShowThumbnailsFilmStripSize.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTNFilmStripSize" runat="server" Enabled="False" Width="55px" ValidationGroup="vgSSTNSettings">4</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsFilmStripSize" runat="server" ControlToValidate="tbSSTNFilmStripSize" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsFilmStripSizeResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnailsFilmStripSize" runat="server" ControlToValidate="tbSSTNFilmStripSize" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTNSettings" resourcekey="cvSlideShowThumbnailsFilmStripSizeResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsDisplayBorder" ResourceKey="lblSlideShowThumbnailsDisplayBorder" runat="server" ControlName="tbSSTNBorderSize" HelpText="Display border:" Text="Display border:" HelpKey="lblSlideShowThumbnailsDisplayBorder.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsDisplayBorder" runat="server" resourcekey="cbSlideShowThumbnailsDisplayBorderResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsBorderColor" ResourceKey="lblSlideShowThumbnailsBorderColor" runat="server" ControlName="tbSSTNBorderSize" HelpText="Set the border color in rgb format with hex values:" Text="Border color (hex value RRGGBB):" HelpKey="lblSlideShowThumbnailsBorderColor.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbSSTBBorderColor" runat="server" MaxLength="6" ValidationGroup="vgSSTNSettings" Width="55px">222222</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsBorderColor" runat="server" ControlToValidate="tbSSTBBorderColor" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTNSettings" resourcekey="rfvSlideShowThumbnailsBorderColorResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="revSlideShowThumbnailsBorderColor" runat="server" ControlToValidate="tbSSTBBorderColor" ErrorMessage="Please eneter hexadecimal color value." ValidationExpression="^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$"
									ValidationGroup="vgSSTNSettings" resourcekey="revSlideShowThumbnailsBorderColorResource1.ErrorMessage">
								</asp:RegularExpressionValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsRandomizeMedia" runat="server" HelpKey="lblLightBoxRandomizeMedia.HelpText" HelpText="Randomize media positions on every page load:" ResourceKey="lblLightBoxRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbSlideShowThumbnailsRandomizeMedia" runat="server" OnCheckedChanged="cbSlideShowThumbnailsRandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label3" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSSTNMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblSSTNMediaSort" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnailsFilmstripColor" runat="server" ControlName="tbSSTNBorderSize" HelpText="Set the filmstrip background color in rgb format with hex values:" Text="Filmstrip background color (hex value RRGGBB):" HelpKey="lblSlideShowThumbnailsFilmstripColor.HelpText"
									ResourceKey="lblSlideShowThumbnailsFilmstripColor" />
							</td>
							<td>
								<asp:TextBox ID="tbSSTBFilmstripBackColor" runat="server" MaxLength="6" ValidationGroup="vgSSTNSettings" Width="55px">000000</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsBorderColor1" runat="server" ControlToValidate="tbSSTBFilmstripBackColor" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowThumbnailsBorderColorResource1.ErrorMessage"
									ValidationGroup="vgSSTNSettings">
								</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="revSlideShowThumbnailsBorderColor1" runat="server" ControlToValidate="tbSSTBFilmstripBackColor" ErrorMessage="Please eneter hexadecimal color value." resourcekey="revSlideShowThumbnailsBorderColorResource1.ErrorMessage"
									ValidationExpression="^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$" ValidationGroup="vgSSTNSettings">
								</asp:RegularExpressionValidator>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowMainPAnelBackColor" runat="server" ControlName="tbSSTNBorderSize" HelpText="Set the main panel background color in rgb format with hex values:" Text="Main panel background color (hex value RRGGBB):" HelpKey="lblSlideShowMainPAnelBackColor.HelpText"
									ResourceKey="lblSlideShowMainPAnelBackColor" />
							</td>
							<td>
								<asp:TextBox ID="tbSSTBMainPAnelBackColor" runat="server" MaxLength="6" ValidationGroup="vgSSTNSettings" Width="55px">FFFFFF</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvSlideShowThumbnailsBorderColor2" runat="server" ControlToValidate="tbSSTBMainPAnelBackColor" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowThumbnailsBorderColorResource1.ErrorMessage"
									ValidationGroup="vgSSTNSettings">
								</asp:RequiredFieldValidator>
								<asp:RegularExpressionValidator ID="revSlideShowThumbnailsBorderColor2" runat="server" ControlToValidate="tbSSTBMainPAnelBackColor" ErrorMessage="Please eneter hexadecimal color value." resourcekey="revSlideShowThumbnailsBorderColorResource1.ErrorMessage"
									ValidationExpression="^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$" ValidationGroup="vgSSTNSettings">
								</asp:RegularExpressionValidator>
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td class="style48">
								<asp:Button ID="btnSlideShowThumbnailsSave" runat="server" OnClick="btnSaveSSthumbSet_Click" Text="Save settings" ValidationGroup="vgSSTNSettings" resourcekey="btnSlideShowThumbnailsSaveResource1" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button ID="btnSlideShowThumbnailsSaveClose" runat="server" OnClick="btnSSTNSaveClose_Click" Text="Save &amp; Close" ValidationGroup="vgSSTNSettings" resourcekey="btnSlideShowThumbnailsSaveCloseResource1" />
							</td>
							<td>
								<asp:Label ID="lblSlideShowThumbnailsStatus" runat="server" Width="120px" resourcekey="lblSlideShowThumbnailsStatusResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlSSthumbs2" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblSlideshowWithThumbnails2" resourcekey="lblSlideshowWithThumbnails2" runat="server" CssClass="settingsdetailtitle" Text="Slideshow with thumbnails 2"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSSthumbnails2TemplateSelect" runat="server" ResourceKey="lblSSthumbnails2TemplateSelect" HelpText="Select the control viewer template:" Text="Select template:" HelpKey="lblSSthumbnails2TemplateSelect.HelpText" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSSThumbnails2TemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSSThumbnails2TemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSSthumbnails2ThemeSelect" runat="server" HelpKey="lblSSthumbnails2ThemeSelect.HelpText" HelpText="Select CSS theme:" ResourceKey="lblSSthumbnails2ThemeSelect" Text="Sleect theme:" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSSTN2ThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>
								<asp:Label ID="lblSSthumbnails2TemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ShowTitle" ResourceKey="lblSlideShowThumbnails2ShowTitle" runat="server" HelpText="Show gallery title:" Text="Show gallery title:" HelpKey="lblSlideShowThumbnails2ShowTitle.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowThumbnails2ShowTitle" runat="server" resourcekey="cbSlideShowThumbnailsShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ShowDescription" ResourceKey="lblSlideShowThumbnails2ShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblSlideShowThumbnails2ShowDescription.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowThumbnails2ShowDescription" runat="server" resourcekey="cbSlideShowThumbnailsShowDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ShowMediaTitle" ResourceKey="lblSlideShowThumbnails2ShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblSlideShowThumbnails2ShowMediaTitle.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowThumbnails2ShowMediaTitle" runat="server" resourcekey="cbSlideShowThumbnailsShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ShowMediaDescription" ResourceKey="lblSlideShowThumbnails2ShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblSlideShowThumbnails2ShowMediaDescription.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowThumbnails2ShowMediaDescription" runat="server" resourcekey="cbSlideShowThumbnailsShowMediaDescriptionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ImageWidth" ResourceKey="lblSlideShowThumbnails2ImageWidth" runat="server" Text="Image width:" ControlName="tbSSTBWidth" HelpText="Set the width of main image panel:" HelpKey="lblSlideShowThumbnails2ImageWidth.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbSSTB2Width" runat="server" ValidationGroup="vgSSTN2Settings" Width="55px">500</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnails2ImageWidth" runat="server" ControlToValidate="tbSSTB2Width" ErrorMessage="This field is required." ValidationGroup="vgSSTN2Settings" Display="Dynamic" resourcekey="rfvSSTNWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnails2ImageWidth" runat="server" ControlToValidate="tbSSTB2Width" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTN2Settings" resourcekey="cvSlideShowThumbnailsImageWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ImageHeight" ResourceKey="lblSlideShowThumbnails2ImageHeight" runat="server" Text="Image height:" HelpText="Set the height of main image panel:" ControlName="tbSSTHHeight" HelpKey="lblSlideShowThumbnails2ImageHeight.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbSSTH2Height" runat="server" ValidationGroup="vgSSTN2Settings" Width="55px">500</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnails2ImageHeight" runat="server" ControlToValidate="tbSSTH2Height" ErrorMessage="This field is required." ValidationGroup="vgSSTN2Settings" Display="Dynamic" resourcekey="rfvSSTNHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnails2ImageHeight" runat="server" ControlToValidate="tbSSTH2Height" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTN2Settings" resourcekey="cvSlideShowThumbnailsImageHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ThumbWidth" ResourceKey="lblSlideShowThumbnails2ThumbWidth" runat="server" Text="Thumbnail width:" ControlName="tbSSTHumbwidth" HelpText="Set the width of thumbnail image in filmstrip:" HelpKey="lblSlideShowThumbnails2ThumbWidth.HelpText"></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbSS2THumbwidth" runat="server" ValidationGroup="vgSSTN2Settings" Width="55px">75</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnails2ThumbWidth" runat="server" ControlToValidate="tbSS2THumbwidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgSSTN2Settings" resourcekey="rfvSlideShowThumbnailsThumbWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnails2ThumbWidth" runat="server" ControlToValidate="tbSS2THumbwidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSSTN2Settings" resourcekey="cvSlideShowThumbnailsThumbWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ThumbHeight" ResourceKey="lblSlideShowThumbnails2ThumbHeight" runat="server" ControlName="tbSSTHumbHeight" HelpText="Set the height of thumbnail image:" Text="Thumbnail height:" HelpKey="lblSlideShowThumbnails2ThumbHeight.HelpText" />
							</td>
							<td>
								<asp:TextBox ID="tbSS2THumbHeight" runat="server" ValidationGroup="vgSSTN2Settings" Width="55px">75</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnails2ThumnHeight" runat="server" ControlToValidate="tbSS2THumbHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowThumbnailsThumnHeightResource1.ErrorMessage"
									ValidationGroup="vgSSTN2Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnails2ThumbHeight" runat="server" ControlToValidate="tbSS2THumbHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowThumbnailsThumbHeightResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgSSTN2Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ProportionalImages" runat="server" ControlName="tbSSTHumbHeight" HelpKey="lblSlideShowThumbnails2ProportionalImages.HelpText" HelpText="Proportionally resize images:" ResourceKey="lblSlideShowThumbnails2ProportionalImages"
									Text="Proportionally resize images:" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowThumbnails2ProportionalImages" runat="server" resourcekey="cbSlideShowThumbnailsProportionalImagesResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2FilmStripSize" runat="server" HelpKey="lblSlideShowThumbnails2FilmStripSize.HelpText" HelpText="Set the number of thumbnails per page:" ResourceKey="lblSlideShowThumbnails2FilmStripSize" Text="Number of thumbnails:"
									ControlName="tbSSTNFilmStripSize" />
							</td>
							<td>
								<asp:TextBox ID="tbSSTN2FilmStripSize" runat="server" ValidationGroup="vgSSTN2Settings" Width="55px">9</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnails2FilmStripSize" runat="server" ControlToValidate="tbSSTNFilmStripSize" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowThumbnailsFilmStripSizeResource1.ErrorMessage"
									ValidationGroup="vgSSTN2Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnails2FilmStripSize" runat="server" ControlToValidate="tbSSTNFilmStripSize" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowThumbnailsFilmStripSizeResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgSSTN2Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2TransitionTime" runat="server" HelpKey="lblSlideShowThumbnailsTransitionTime.HelpText" HelpText="Set the pause time between image transition in miliseconds:" ResourceKey="lblSlideShowThumbnailsTransitionTime" Text="Transition interval (ms):" />
							</td>
							<td>
								<asp:TextBox ID="tbSSTB2Transition" runat="server" ValidationGroup="vgSSTN2Settings" Width="55px">2000</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnails2TransitionTime" runat="server" ControlToValidate="tbSSTB2Transition" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowThumbnailsTransitionTimeResource1.ErrorMessage"
									ValidationGroup="vgSSTN2Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnails2TransitionTime" runat="server" ControlToValidate="tbSSTB2Transition" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowThumbnailsTransitionTimeResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgSSTN2Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2TransitionSpeed" runat="server" ControlName="tbSSTBTransitionSpeed" HelpKey="lblSlideShowThumbnails2TransitionSpeed.HelpText" HelpText="Set the transition time in miliseconds:" ResourceKey="lblSlideShowThumbnails2TransitionSpeed"
									Text="Transition speed (ms):" />
							</td>
							<td>
								<asp:TextBox ID="tbSSTB2TransitionSpeed" runat="server" ValidationGroup="vgSSTN2Settings" Width="50px">800</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvSlideShowThumbnails2TransitionSpeed" runat="server" ControlToValidate="tbSSTB2TransitionSpeed" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvSlideShowThumbnailsTransitionSpeedResource1.ErrorMessage"
									ValidationGroup="vgSSTN2Settings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvSlideShowThumbnails2TransitionSpeed" runat="server" ControlToValidate="tbSSTB2TransitionSpeed" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvSlideShowThumbnailsTransitionSpeedResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgSSTN2Settings">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2ThumbPosition" runat="server" ControlName="rblSSTBThumbNailPosition" HelpKey="lblSlideShowThumbnails2ThumbPosition.HelpText" HelpText="Set the position of thumbnail paging:" Text="Thumbnail paging position:" ResourceKey="lblSlideShowThumbnails2ThumbPosition" />
							</td>
							<td>
								<asp:RadioButtonList ID="rblSlideShowThumbnails2ThumbnailPosition" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="ListItemResource34" Selected="True" Value="top">Top</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResource35" Value="bottom">Bottom</asp:ListItem>
									<asp:ListItem resourcekey="ListItemResourceTaB" Value="tab">Top and bottom</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblSlideShowThumbnails2RandomizeMedia" runat="server" HelpKey="lblLightBoxRandomizeMedia.HelpText" HelpText="Randomize media positions on every page load:" ResourceKey="lblLightBoxRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td>
								<asp:CheckBox ID="cbSlideShowThumbnails2RandomizeMedia" runat="server" OnCheckedChanged="cbSlideShowThumbnails2RandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="Label4" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSSTN2MediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblSSTN2MediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td>
								<asp:Button ID="btnSlideShowThumbnails2Save" runat="server" OnClick="btnSlideShowThumbnails2Save_Click" resourcekey="btnSlideShowThumbnailsSaveResource1" Text="Save settings" ValidationGroup="vgSSTN2Settings" />
								&nbsp;<asp:Button ID="btnSlideShowThumbnails2SaveClose" runat="server" OnClick="btnSlideShowThumbnails2SaveClose_Click" resourcekey="btnSlideShowThumbnailsSaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgSSTN2Settings" />
								&nbsp;<asp:Label ID="lblSlideShowThumbnails2Status" runat="server" resourcekey="lblSlideShowThumbnailsStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlFlashGalSettings" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblFlashTabGallerySettings" runat="server" CssClass="settingsdetailtitle" Text="Flash Tab Gallery display settings" resourcekey="lblFlashTabGallerySettingsResource1"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlCategorySelect" runat="server" AutoPostBack="True" DataSourceID="odsGetCategories" DataTextField="CategoryName" DataValueField="CategoryID" Visible="False">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabSelectCategory" ResourceKey="lblFlashTabSelectCategory" runat="server" Text="Display category:" ControlName="ddlCategorySelect" HelpText="Select to display category or to display just one gallery:" HelpKey="lblFlashTabSelectCategory.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbFlashTabSelectCategory" runat="server" resourcekey="cbFlashTabSelectCategoryResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabGalleryWidth" ResourceKey="lblFlashTabGalleryWidth" runat="server" Text="Gallery width:" ControlName="tbPanelImageWidth" HelpText="Set the width of flash gallery. Recommended width is 800 px:" HelpKey="lblFlashTabGalleryWidth.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbPanelImageWidth" runat="server" ValidationGroup="vgFlashGallery" Width="50px">
								</asp:TextBox>
								&nbsp;
							<asp:RequiredFieldValidator ID="rfvFlashTabGalleryWidth" runat="server" ControlToValidate="tbPanelImageWidth" ErrorMessage="This filed is required." ValidationGroup="vgFlashGallery" Display="Dynamic" resourcekey="rfvFlashTabGalleryWidthResource1.ErrorMessage">
							</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvFlashTabGalleryWidth" runat="server" ControlToValidate="tbPanelImageWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSlider" resourcekey="cvFlashTabGalleryWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabGalleryHeight" ResourceKey="lblFlashTabGalleryHeight" runat="server" Text="Gallery height:" ControlName="tbPanelImageHeight" HelpText="Set the height of flash gallery:" HelpKey="lblFlashTabGalleryHeight.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbPanelImageHeight" runat="server" Width="50px" ValidationGroup="vgFlashGallery">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvFlashTabGalleryHeight" runat="server" ControlToValidate="tbPanelImageHeight" Display="Dynamic" ErrorMessage="This filed is required." ValidationGroup="vgFlashGallery" resourcekey="rfvFlashTabGalleryHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvFlashTabGalleryHeight" runat="server" ControlToValidate="tbPanelImageHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgSlider" resourcekey="cvFlashTabGalleryHeightResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabGalleryTheme" ResourceKey="lblFlashTabGalleryTheme" runat="server" HelpText="Select Flash Tab Gallery theme:" Text="Select theme:" HelpKey="lblFlashTabGalleryTheme.HelpText" />
							</td>
							<td colspan="2">
								<asp:DropDownList ID="ddlFlashGalTheme" runat="server">
									<asp:ListItem Value="gallery_black.swf" resourcekey="ListItemResource36">Black</asp:ListItem>
									<asp:ListItem Value="gallery_white.swf" resourcekey="ListItemResource37">White</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabLinkText" ResourceKey="lblFlashTabLinkText" runat="server" Text="Flash link text:" ControlName="tbFlashLinkText" HelpText="Set the text for link to open flash gallery:" HelpKey="lblFlashTabLinkText.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbFlashLinkText" runat="server" Width="400px">
								</asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabEmbedFlash" ResourceKey="lblFlashTabEmbedFlash" runat="server" Text="Embed flash:" ControlName="cbFlashEmbedInPage" HelpText="Set this if you want the flash gallery to be embeded in page:" HelpKey="lblFlashTabEmbedFlash.HelpText"></dnn:Label>
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbFlashTabEmbedInPage" runat="server" Checked="True" resourcekey="cbFlashTabEmbedInPageResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabGeteranteLink" ResourceKey="lblFlashTabGeteranteLink" runat="server" ControlName="cbFlashGenerateLinkCode" HelpText="Set this if you want link generated to be embeded in html:" Text="Generate link code:" HelpKey="lblFlashTabGeteranteLink.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbFlashTabGenerateLinkCode" runat="server" resourcekey="cbFlashTabGenerateLinkCodeResource1" />
							</td>
						</tr>
						<tr>
							<td class="style70">
								<dnn:Label ID="lblFlashTabDontShow" ResourceKey="lblFlashTabDontShow" runat="server" ControlName="cbFlashDontShowGallery" HelpText="This will not show main gallery. Use this if you have link embeded in html:" Text="Do not show main gallery: " HelpKey="lblFlashTabDontShow.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbFlashTabDontShowGallery" runat="server" resourcekey="cbFlashTabDontShowGalleryResource1" />
							</td>
						</tr>
						<tr>
							<td class="style24"></td>
							<td class="style25" colspan="2"></td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbFlashGenereteLink" runat="server" Height="150px" TextMode="MultiLine" Width="400px">
								</asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td class="style54">
								<asp:Button ID="btnFlashTabSaveSettings" runat="server" OnClick="btnFlashSettings_Click" Text="Save settings" ValidationGroup="vgFlashGallery" Width="140px" resourcekey="btnFlashTabSaveSettingsResource1" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button ID="btnFlashTabSaveClose" runat="server" OnClick="btnFGSaveClose_Click" Text="Save &amp; Close" Width="140px" ValidationGroup="vgFlashGallery" resourcekey="btnFlashTabSaveCloseResource1" />
							</td>
							<td>
								<asp:Label ID="lblFlashTabStatus" runat="server" Width="120px" resourcekey="lblFlashTabStatusResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style70">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlAudioGallerySettings" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblAudioGalleryDisplaySettins" resourcekey="AudioGalleryTitle" runat="server" Text="Audio gallery display settings" CssClass="settingsdetailtitle"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style104">&nbsp;
							</td>
							<td class="style46" colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryThemeSelect" runat="server" ControlName="ddlTGThemeSelect" HelpKey="lblAudioGalleryThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblAudioGalleryThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style46" colspan="2">
								<asp:DropDownList ID="ddlAGThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryShowTitle" runat="server" HelpKey="lblAudioGalleryShowTitle.HelpText" HelpText="Show gallery title:" ResourceKey="lblAudioGalleryShowTitle" Text="Show gallery title:" />
							</td>
							<td class="style46" colspan="2">
								<asp:CheckBox ID="cbAudioGalleryShowTitle" runat="server" resourcekey="cbAudioGalleryShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryShowDescription" ResourceKey="lblAudioGalleryShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblAudioGalleryShowDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGalleryShowDescrition" runat="server" resourcekey="cbAudioGalleryShowDescritionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryShowMediaTitle" ResourceKey="lblAudioGalleryShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblAudioGalleryShowMediaTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGalleryShowMediaTitle" runat="server" resourcekey="cbAudioGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryShowMediaDescription" ResourceKey="lblAudioGalleryShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblAudioGalleryShowMediaDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGalleryShowMediaDescrition" runat="server" resourcekey="cbAudioGalleryShowMediaDescritionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryPlayOnLoad" ResourceKey="lblAudioGalleryPlayOnLoad" runat="server" HelpText="Start playing audio file on page load:" Text="Play on load:" HelpKey="lblAudioGalleryPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGalleryPlayOnLoad" runat="server" resourcekey="cbAudioGalleryPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryItemsPrePage" ResourceKey="lblAudioGalleryItemsPrePage" runat="server" ControlName="tbAGSNumberOfItems" HelpText="Set the number of items per page:" Text="Number of items per page:" HelpKey="lblAudioGalleryItemsPrePage.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAGSNumberOfItems" runat="server" ValidationGroup="vgAGS" Width="50px">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGalleryItemsPerPage" runat="server" ControlToValidate="tbAGSNumberOfItems" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAGS" resourcekey="rfvAudioGalleryItemsPerPageResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGalleryItemsPerPage" runat="server" ControlToValidate="tbAGSNumberOfItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAGS" resourcekey="cvAudioGalleryItemsPerPageResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryColumns" ResourceKey="lblAudioGalleryColumns" runat="server" ControlName="tbAGSNumberOfItems" HelpText="Set the number of columns:" Text="Number of columns:" HelpKey="lblAudioGalleryColumns.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAGSNumberOfColumns" runat="server" ValidationGroup="vgAGS" Width="50px">1</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGalleryColumns" runat="server" ControlToValidate="tbAGSNumberOfColumns" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAGS" resourcekey="rfvAudioGalleryColumnsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGalleryColumns" runat="server" ControlToValidate="tbAGSNumberOfColumns" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAGS" resourcekey="cvAudioGalleryColumnsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryPlayerWidth" ResourceKey="lblAudioGalleryPlayerWidth" runat="server" ControlName="tbAGSPlayerWidth" HelpText="Set the width of audio player in pixels. Minimum value is 300." Text="Player width (px):" HelpKey="lblAudioGalleryPlayerWidth.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAGSPlayerWidth" runat="server" ValidationGroup="vgAGS" Width="50px">
								</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGalleryPlayerWidth" runat="server" ControlToValidate="tbAGSPlayerWidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAGS" resourcekey="rfvAudioGalleryPlayerWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvAudioGalleryPlayerWidth" runat="server" ControlToValidate="tbAGSPlayerWidth" Display="Dynamic" ErrorMessage="Minimum player width is 90px." MaximumValue="10000" MinimumValue="90" Type="Integer" ValidationGroup="vgAGS" resourcekey="rvAudioGalleryPlayerWidthResource1.ErrorMessage">
								</asp:RangeValidator>
								<asp:CompareValidator ID="cvAudioGalleryPlayerWidth" runat="server" ControlToValidate="tbAGSPlayerWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAGS" resourcekey="cvAudioGalleryPlayerWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryVolume" ResourceKey="lblAudioGalleryVolume" runat="server" ControlName="tbAudioGalleryPlayerVolume" HelpText="Audio volume:" Text="Audio volume:" HelpKey="lblAudioGalleryVolume.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAudioGalleryPlayerVolume" runat="server" ValidationGroup="vgAGS" Width="50px">100</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvAudioGalleryPlayerVolume" runat="server" ControlToValidate="tbAudioGalleryPlayerVolume" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAGS" resourcekey="rfvAudioGalleryPlayerVolumeResource1.ErrorMessage">
								</asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvAudioGalleryVolume" runat="server" ControlToValidate="tbAudioGalleryPlayerVolume" Display="Dynamic" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" Type="Integer" ValidationGroup="vgAGS" resourcekey="rvAudioGalleryVolumeResource1.ErrorMessage">
								</asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryRandomizeMedia" runat="server" HelpKey="lblLightBoxRandomizeMedia.HelpText" HelpText="Randomize media positions on every page load:" ResourceKey="lblLightBoxRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGalleryRandomizeMedia" runat="server" OnCheckedChanged="cbAudioGalleryRandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style104">
								<dnn:Label ID="Label13" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td class="style103">
								<asp:DropDownList ID="ddlAudioGalleryMediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblAudioGalleryMediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style104">
								<dnn:Label ID="lblAudioShowDownloadLink" ResourceKey="lblAudioShowDownloadLink" runat="server" HelpText="Show download link:" Text="Show download link:" HelpKey="lblAudioShowDownloadLink.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioShowDownloadLink" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style104" valign="top">
								<dnn:Label ID="lblAudioGalleryShowSocialSharing" runat="server" HelpText="Show social sharing:" Text="Show social sharing:" HelpKey="lblVideoGalleryShowSocialSharing.HelpText" ResourceKey="lblVideoGalleryShowSocialSharing" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGalleryShowSocialSharing" runat="server" AutoPostBack="True" OnCheckedChanged="cbAudioGalleryShowSocialSharing_CheckedChanged" />
								<asp:Panel ID="pnlAudioGallerySocialSharingOptions" runat="server">
									<table class="style66">
										<tr>
											<td class="style98">
												<dnn:Label ID="lblVideoGallery2SSOptions1" runat="server" HelpText="Open/Close sharing on button click:" Text="Open on button click:" HelpKey="lblVideoGallerySSOptions.HelpText" ResourceKey="lblVideoGallerySSOptions" />
											</td>
											<td>
												<asp:CheckBox ID="cbAGSSOpenOnButton" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style104">
								<dnn:Label ID="lblAudioGalleryShowSocialSharing4" runat="server" HelpText="Show textbox that contains media link:" Text="Show media link:" HelpKey="lblVideoGalleryShowBackLink.HelpText" ResourceKey="lblVideoGalleryShowBackLink" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGalleryShowMediaLink" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							<asp:Label ID="lblAudioGalleryStatus" runat="server" resourcekey="lblAudioGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnAudioGallerySave" runat="server" OnClick="btnAGSSave_Click" Text="Save settings" Width="140px" ValidationGroup="vgAGS" resourcekey="btnAudioGallerySaveResource1" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button ID="btnAudioGallerySaveClose" runat="server" OnClick="Button1_Click6" Text="Save &amp; Close" Width="140px" ValidationGroup="vgAGS" resourcekey="btnAudioGallerySaveCloseResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlStremingGallerySettings" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblStremingGalleryDisplaySettins" resourcekey="lblStremingGalleryDisplaySettins" runat="server" Text="Streaming gallery display settings" CssClass="settingsdetailtitle"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style104">&nbsp;
							</td>
							<td class="style46">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style104">
								<dnn:Label ID="lblStreamingTemplateSelect" runat="server" HelpKey="lblSSthumbnails2TemplateSelect.HelpText" HelpText="Select the control viewer template:" ResourceKey="lblSSthumbnails2TemplateSelect" Text="Select template:" />
							</td>
							<td class="style46">
								<asp:DropDownList ID="ddlSTreamingTemplateSelect" runat="server" OnSelectedIndexChanged="ddlSSThumbnailsTemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblAudioGalleryThemeSelect0" runat="server" ControlName="ddlTGThemeSelect" HelpKey="lblAudioGalleryThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblAudioGalleryThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style46">
								<asp:DropDownList ID="ddlStreamingThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td class="style46"></td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblStreamingServerURL" runat="server" HelpText="Streaming RTMP server url:" Text="Streaming RTMP server url:" HelpKey="lblStreamingServerURL.HelpText" ResourceKey="lblStreamingServerURL" />
							</td>
							<td class="style46">
								<asp:TextBox ID="tbStreanigVideoRTMPurl" runat="server" Width="500px">
								</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvAudioGalleryItemsPerPage1" runat="server" ControlToValidate="tbStreanigVideoRTMPurl" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvAudioGalleryItemsPerPageResource1.ErrorMessage" ValidationGroup="vgstreamingSettings">
								</asp:RequiredFieldValidator>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblStreamingServerVideo" runat="server" HelpText="Streaming video:" Text="Streaming video:" HelpKey="lblStreamingServerVideo.HelpText" ResourceKey="lblStreamingServerVideo" />
							</td>
							<td class="style46">
								<asp:TextBox ID="tbStreanigVideoURL" runat="server" Width="500px">
								</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvAudioGalleryItemsPerPage2" runat="server" ControlToValidate="tbStreanigVideoURL" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvAudioGalleryItemsPerPageResource1.ErrorMessage" ValidationGroup="vgstreamingSettings">
								</asp:RequiredFieldValidator>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblVideoStreamingEnterTitle" runat="server" HelpKey="lblVideoStreamingEnterTitle.HelpText" HelpText="Enter title:" Text="Enter title:" ResourceKey="lblVideoStreamingEnterTitle" />
							</td>
							<td class="style46">
								<asp:TextBox ID="tbRTMPTitle" runat="server" Width="500px">
								</asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblStreamingEnterDescription" runat="server" HelpText="Enter description:" Text="Enter description:" HelpKey="lblStreamingEnterDescription.HelpText" ResourceKey="lblStreamingEnterDescription" />
							</td>
							<td>
								<asp:TextBox ID="tbRTMPtDescription" runat="server" Width="500px">
								</asp:TextBox>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblStreamingShowTitle" ResourceKey="lblAudioGalleryShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblAudioGalleryShowMediaTitle.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbStreamingShowMediaTitle" runat="server" resourcekey="cbAudioGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblStremingShowDescription" ResourceKey="lblAudioGalleryShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblAudioGalleryShowMediaDescription.HelpText" />
							</td>
							<td>
								<asp:CheckBox ID="cbStreamingShowMediaDescrition" runat="server" resourcekey="cbAudioGalleryShowMediaDescritionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblStreamigVideoWidth" runat="server" HelpText="Streaming video width:" Text="Streaming video width:" HelpKey="lblStreamigVideoWidth.HelpText" ResourceKey="lblStreamigVideoWidth" />
							</td>
							<td>
								<asp:TextBox ID="tbStreamingWith" runat="server" ValidationGroup="vgstreamingSettings" Width="50px">600</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGalleryItemsPerPage0" runat="server" ControlToValidate="tbStreamingWith" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgstreamingSettings" resourcekey="rfvAudioGalleryItemsPerPageResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGalleryItemsPerPage0" runat="server" ControlToValidate="tbStreamingWith" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgstreamingSettings" resourcekey="cvAudioGalleryItemsPerPageResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style105">
								<dnn:Label ID="lblStreamingHeight" runat="server" ControlName="tbAGSNumberOfItems" HelpText="Streaming video height:" Text="Streaming video height:" HelpKey="lblStreamingHeight.HelpText" ResourceKey="lblStreamingHeight" />
							</td>
							<td>
								<asp:TextBox ID="tbStreamingHeight" runat="server" ValidationGroup="vgstreamingSettings" Width="50px">400</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGalleryColumns0" runat="server" ControlToValidate="tbStreamingHeight" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgstreamingSettings" resourcekey="rfvAudioGalleryColumnsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGalleryColumns0" runat="server" ControlToValidate="tbStreamingHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgstreamingSettings" resourcekey="cvAudioGalleryColumnsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style107" valign="top">
								<dnn:Label ID="lblStremingShowSocialSharing" runat="server" HelpKey="lblVideoGalleryShowSocialSharing.HelpText" HelpText="Show social sharing:" ResourceKey="lblVideoGalleryShowSocialSharing" Text="Show social sharing:" Visible="False" />
							</td>
							<td class="style108">
								<asp:CheckBox ID="cbStreamingShowSocialSharing" runat="server" OnCheckedChanged="cbStreamingShowSocialSharing_CheckedChanged" AutoPostBack="True" Visible="False" />
								<asp:Panel ID="pnlStreamigSocialSharingOptions" runat="server" Visible="False">
									<table class="style66">
										<tr>
											<td class="style98">
												<dnn:Label ID="lblVideoGallery2SSOptions3" runat="server" HelpKey="lblVideoGallerySSOptions.HelpText" HelpText="Open/Close sharing on button click:" ResourceKey="lblVideoGallerySSOptions" Text="Open on button click:" />
											</td>
											<td>
												<asp:CheckBox ID="cbStreamigSSOpenOnButton" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td>
								<asp:Label ID="lblStreamingVideoStatus" runat="server" resourcekey="lblAudioGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td>
								<asp:Button ID="btnStreamingGallerySave" runat="server" OnClick="btnStreamingGallerySave_Click" resourcekey="btnAudioGallerySaveResource1" Text="Save settings" ValidationGroup="vgstreamingSettings" Width="140px" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button ID="btnStreamingGallerySaveClose" runat="server" OnClick="btnStreamingGallerySaveClose_Click" resourcekey="btnAudioGallerySaveCloseResource1" Text="Save &amp; Close" ValidationGroup="vgstreamingSettings" Width="140px" />
							</td>
						</tr>
						<tr>
							<td class="style105">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlAudioGallery2Settings" runat="server" Visible="False" BackColor="#EFEFEF">
				<table cellpadding="0" cellspacing="0" align="center">
					<tr>
						<td>
							<div class="settingsdetailleft">
							</div>
						</td>
						<td style="background-color: #0ba2ce">
							<asp:Label ID="lblAudioGallery2DisplaySettins" runat="server" Text="Audio gallery 2 display settings" CssClass="settingsdetailtitle" resourcekey="lblAudioGallery2DisplaySettins"></asp:Label>
						</td>
						<td>
							<div class="settingsdetailright">
							</div>
						</td>
					</tr>
				</table>
				<div class="settingsdetailbgrd">
				</div>
				<div class="settingsdetailtable">
					<table cellpadding="2" cellspacing="2" align="center" width="80%">
						<tr>
							<td class="style99">&nbsp;
							</td>
							<td class="style46" colspan="2">&nbsp;
							</td>
						</tr>
						<tr>
							<td class="style99">
								<dnn:Label ID="lblAudioGallery2TemplateSelect" runat="server" HelpText="Select control template:" Text="Select control template:" HelpKey="lblAudioGallery2TemplateSelect.Text" ResourceKey="lblAudioGallery2TemplateSelect" />
							</td>
							<td class="style46" colspan="2">
								<asp:DropDownList ID="ddlAudioGallery2TemplateSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAudioGallery2TemplateSelect_SelectedIndexChanged">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style99">
								<dnn:Label ID="lblAudioGallery2ThemeSelect" runat="server" ControlName="ddlTGThemeSelect" HelpKey="lblAudioGalleryThemeSelect.HelpText" HelpText="Select the CSS theme file:" ResourceKey="lblAudioGalleryThemeSelect" Text="Select CSS:" />
							</td>
							<td class="style46" colspan="2">
								<asp:DropDownList ID="ddlAG2ThemeSelect" runat="server">
								</asp:DropDownList>
							</td>
						</tr>
						<tr>
							<td class="style99">&nbsp;
							</td>
							<td class="style46" colspan="2">
								<asp:Label ID="lblAudioGallery2TemplateInfo" runat="server"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ShowTitle" ResourceKey="lblAudioGalleryShowTitle" runat="server" HelpText="Show gallery title:" Text="Show gallery title:" HelpKey="lblAudioGalleryShowTitle.HelpText" />
							</td>
							<td class="style46" colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowTitle" runat="server" resourcekey="cbAudioGalleryShowTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ShowDescription" ResourceKey="lblAudioGalleryShowDescription" runat="server" HelpText="Show gallery description:" Text="Show gallery description:" HelpKey="lblAudioGalleryShowDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowDescrition" runat="server" resourcekey="cbAudioGalleryShowDescritionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ShowMediaTitle" ResourceKey="lblAudioGalleryShowMediaTitle" runat="server" HelpText="Show media title:" Text="Show media title:" HelpKey="lblAudioGalleryShowMediaTitle.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowMediaTitle" runat="server" resourcekey="cbAudioGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ShowMediaDescription" ResourceKey="lblAudioGalleryShowMediaDescription" runat="server" HelpText="Show media description:" Text="Show media description:" HelpKey="lblAudioGalleryShowMediaDescription.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowMediaDescrition" runat="server" resourcekey="cbAudioGalleryShowMediaDescritionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ShowMediaTitleThumnbail" runat="server" HelpText="Show media title in thumbnail:" Text="Show media title in thumbnail:" HelpKey="lblAudioGallery2ShowMediaTitleThumnbail.HelpText" ResourceKey="lblAudioGallery2ShowMediaTitleThumnbail" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowMediaTitleThumbnail" runat="server" resourcekey="cbAudioGalleryShowMediaTitleResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ShowMediaDescriptionThumbnail" runat="server" HelpText="Show media description in thumbnail:" Text="Show media description in thumbnail:" HelpKey="lblAudioGallery2ShowMediaDescriptionThumbnail.HelpText" ResourceKey="lblAudioGallery2ShowMediaDescriptionThumbnail" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowMediaDescritionThumbnail" runat="server" resourcekey="cbAudioGalleryShowMediaDescritionResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2PlayOnLoad" ResourceKey="lblAudioGalleryPlayOnLoad" runat="server" HelpText="Start playing audio file on page load:" Text="Play on load:" HelpKey="lblAudioGalleryPlayOnLoad.HelpText" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2PlayOnLoad" runat="server" resourcekey="cbAudioGalleryPlayOnLoadResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ItemsPrePage" ResourceKey="lblAudioGalleryItemsPrePage" runat="server" ControlName="tbAGSNumberOfItems" HelpText="Set the number of items per page:" Text="Number of items per page:" HelpKey="lblAudioGalleryItemsPrePage.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAG2SNumberOfItems" runat="server" ValidationGroup="vgAG2S" Width="50px">5</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGallery2ItemsPerPage" runat="server" ControlToValidate="tbAG2SNumberOfItems" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAG2S" resourcekey="rfvAudioGalleryItemsPerPageResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGallery2ItemsPerPage" runat="server" ControlToValidate="tbAG2SNumberOfItems" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAG2S" resourcekey="cvAudioGalleryItemsPerPageResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2Columns" ResourceKey="lblAudioGalleryColumns" runat="server" ControlName="tbAGSNumberOfItems" HelpText="Set the number of columns:" Text="Number of columns:" HelpKey="lblAudioGalleryColumns.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAG2SNumberOfColumns" runat="server" ValidationGroup="vgAG2S" Width="50px">5</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGallery2Columns" runat="server" ControlToValidate="tbAG2SNumberOfColumns" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAG2S" resourcekey="rfvAudioGalleryColumnsResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGallery2Columns" runat="server" ControlToValidate="tbAG2SNumberOfColumns" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAG2S" resourcekey="cvAudioGalleryColumnsResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2PlayerWidth" ResourceKey="lblAudioGalleryPlayerWidth" runat="server" ControlName="tbAGSPlayerWidth" HelpText="Set the width of audio player in pixels. Minimum value is 300." Text="Player width (px):" HelpKey="lblAudioGalleryPlayerWidth.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAG2SPlayerWidth" runat="server" ValidationGroup="vgAG2S" Width="50px">400</asp:TextBox>
								&nbsp;<asp:RequiredFieldValidator ID="rfvAudioGallery2PlayerWidth" runat="server" ControlToValidate="tbAG2SPlayerWidth" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAG2S" resourcekey="rfvAudioGalleryPlayerWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvAudioGallery2PlayerWidth" runat="server" ControlToValidate="tbAG2SPlayerWidth" Display="Dynamic" ErrorMessage="Minimum player width is 90px." MaximumValue="10000" MinimumValue="90" Type="Integer" ValidationGroup="vgAG2S" resourcekey="rvAudioGalleryPlayerWidthResource1.ErrorMessage">
								</asp:RangeValidator>
								<asp:CompareValidator ID="cvAudioGallery2PlayerWidth" runat="server" ControlToValidate="tbAG2SPlayerWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAG2S" resourcekey="cvAudioGalleryPlayerWidthResource1.ErrorMessage">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2Volume" ResourceKey="lblAudioGalleryVolume" runat="server" ControlName="tbAudioGalleryPlayerVolume" HelpText="Audio volume:" Text="Audio volume:" HelpKey="lblAudioGalleryVolume.HelpText" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAudioGallery2PlayerVolume" runat="server" ValidationGroup="vgAG2S" Width="50px">100</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvAudioGallery2PlayerVolume" runat="server" ControlToValidate="tbAudioGallery2PlayerVolume" Display="Dynamic" ErrorMessage="This field is required." ValidationGroup="vgAG2S" resourcekey="rfvAudioGalleryPlayerVolumeResource1.ErrorMessage">
								</asp:RequiredFieldValidator>
								<asp:RangeValidator ID="rvAudioGallery2Volume" runat="server" ControlToValidate="tbAudioGallery2PlayerVolume" Display="Dynamic" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" Type="Integer" ValidationGroup="vgAG2S" resourcekey="rvAudioGalleryVolumeResource1.ErrorMessage">
								</asp:RangeValidator>
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ThumbWidth" runat="server" HelpText="Thumb width:" Text="Thumb width:" HelpKey="lblAudioGallery2ThumbWidth.HelpText" ResourceKey="lblAudioGallery2ThumbWidth" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAG2SThumbWidth" runat="server" ValidationGroup="vgAGS" Width="50px">100</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvAudioGallery2ThumbsWidth" runat="server" ControlToValidate="tbAG2SThumbWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvAudioGalleryItemsPerPageResource1.ErrorMessage" ValidationGroup="vgAG2S">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGallery2ThumbsWidth" runat="server" ControlToValidate="tbAG2SThumbWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvAudioGalleryItemsPerPageResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgAG2S">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2ThumbHeight" runat="server" HelpText="Thumb height:" Text="Thumb height:" HelpKey="lblAudioGallery2ThumbHeight.HelpText" ResourceKey="lblAudioGallery2ThumbHeight" />
							</td>
							<td colspan="2">
								<asp:TextBox ID="tbAG2SThumbHeight" runat="server" ValidationGroup="vgAG2S" Width="50px">100</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvAudioGallery2ThumbsHeight" runat="server" ControlToValidate="tbAG2SThumbHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvAudioGalleryItemsPerPageResource1.ErrorMessage" ValidationGroup="vgAG2S">
								</asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvAudioGallery2ThumbsHeight" runat="server" ControlToValidate="tbAG2SThumbHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvAudioGalleryItemsPerPageResource1.ErrorMessage"
									Type="Integer" ValidationGroup="vgAG2S">
								</asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td class="style100">
								<dnn:Label ID="lblAudioGallery2RandomizeMedia" runat="server" HelpKey="lblLightBoxRandomizeMedia.HelpText" HelpText="Randomize media positions on every page load:" ResourceKey="lblLightBoxRandomizeMedia" Text="Randomize media positions:" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2RandomizeMedia" runat="server" OnCheckedChanged="cbAudioGallery2RandomizeMedia_CheckedChanged" resourcekey="cbLightBoxGallerySmartCropVerticalResource1" AutoPostBack="True" />
							</td>
						</tr>
						<tr>
							<td class="style99">
								<dnn:Label ID="Label14" runat="server" HelpText="Select media sorting options:" Text="Media sorting:" HelpKey="lblLightBoxMediaSorting.HelpText" ResourceKey="lblLightBoxMediaSorting" />
							</td>
							<td class="style102">
								<asp:DropDownList ID="ddlAudioGallery2MediaSort" runat="server">
									<asp:ListItem resourcekey="liPosition" Value="Position">Position</asp:ListItem>
									<asp:ListItem resourcekey="liDateUploaded" Value="DateUploaded">Date uploaded</asp:ListItem>
									<asp:ListItem resourcekey="liFileName" Value="FileName">Filename</asp:ListItem>
									<asp:ListItem resourcekey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;
							</td>
							<td>
								<asp:RadioButtonList ID="rblAudioGallery2MediaSortType" runat="server" RepeatDirection="Horizontal">
									<asp:ListItem resourcekey="liAscending" Selected="True" Value="ASC">Ascending</asp:ListItem>
									<asp:ListItem resourcekey="liDescending" Value="DESC">Descending</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td class="style99">
								<dnn:Label ID="lblAudio2ShowDownloadLink" runat="server" HelpText="Show download link:" Text="Show download link:" HelpKey="lblAudio2ShowDownloadLink.HelpText" ResourceKey="lblAudio2ShowDownloadLink" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudio2ShowDownloadLink" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style99" valign="top">
								<dnn:Label ID="lblAudioGalleryShowSocialSharing5" runat="server" HelpText="Show social sharing:" Text="Show social sharing:" HelpKey="lblVideoGalleryShowSocialSharing.HelpText" ResourceKey="lblVideoGalleryShowSocialSharing" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowSocialSharing" runat="server" AutoPostBack="True" OnCheckedChanged="cbAudioGallery2ShowSocialSharing_CheckedChanged" />
								<asp:Panel ID="pnlAudioGallery2SocialSharingOptions" runat="server">
									<table class="style66">
										<tr>
											<td class="style98">
												<dnn:Label ID="lblVideoGallery2SSOptions2" runat="server" HelpText="Open/Close sharing on button click:" Text="Open on button click:" HelpKey="lblVideoGallerySSOptions.HelpText" ResourceKey="lblVideoGallerySSOptions" />
											</td>
											<td>
												<asp:CheckBox ID="cbAG2SSOpenOnButton" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
						<tr>
							<td class="style99">
								<dnn:Label ID="lblAudioGalleryShowSocialSharing6" runat="server" HelpText="Show textbox that contains media link:" Text="Show media link:" HelpKey="lblVideoGalleryShowBackLink.HelpText" ResourceKey="lblVideoGalleryShowBackLink" />
							</td>
							<td colspan="2">
								<asp:CheckBox ID="cbAudioGallery2ShowMediaLink" runat="server" />
							</td>
						</tr>
						<tr>
							<td class="style100">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							<asp:Label ID="lblAudioGallery2Status" runat="server" resourcekey="lblAudioGalleryStatusResource1" Width="120px"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style100">&nbsp;
							</td>
							<td colspan="2">
								<asp:Button ID="btnAudioGallery2Save" runat="server" OnClick="btnAudioGallery2Save_Click" Text="Save settings" Width="140px" ValidationGroup="vgAG2S" resourcekey="btnAudioGallerySaveResource1" />
								&nbsp;&nbsp;&nbsp;&nbsp;
							<asp:Button ID="btnAudioGallery2SaveClose" runat="server" OnClick="btnAudioGallery2SaveClose_Click" Text="Save &amp; Close" Width="140px" ValidationGroup="vgAG2S" resourcekey="btnAudioGallerySaveCloseResource1" />
							</td>
						</tr>
						<tr>
							<td class="style100">&nbsp;
							</td>
							<td colspan="2">&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</asp:Panel>
			<asp:Panel ID="pnlLoadSaveSettings" runat="server" BackColor="#EFEFEF">
				<table align="center" width="80%">
					<tr>
						<td class="style65">&nbsp;
						</td>
						<td>&nbsp;
						</td>
					</tr>
					<tr>
						<td class="style65">&nbsp;
						</td>
						<td>
							<asp:CheckBox ID="cbSaveLoadSettingsToFile" runat="server" AutoPostBack="True" Font-Bold="True" OnCheckedChanged="cbSettingsToFile_CheckedChanged" Text="Save or load settings to another file or module" resourcekey="cbSaveLoadSettingsToFileResource1" />
						</td>
					</tr>
				</table>
				<asp:Panel ID="pnlSaveLoadSettings" runat="server" Visible="False">
					<table align="center" width="80%">
						<tr>
							<td class="style64"></td>
							<td class="style46"></td>
						</tr>
						<tr>
							<td class="style65">
								<dnn:Label ID="lblSaveSettingstoFile" ResourceKey="lblSaveSettingstoFile" runat="server" HelpText="Enter filename to save settings to:" Text="Filename:" HelpKey="lblSaveSettingstoFile.HelpText" />
							</td>
							<td>
								<asp:TextBox ID="tbSettingsFile" runat="server" Enabled="False" Width="250px">
								</asp:TextBox>
								&nbsp;<asp:Button ID="btnSaveSettingsToFile" runat="server" Enabled="False" OnClick="btnSaveSettingsToFile_Click" resourcekey="btnSaveSettingsToFileResource1" Text="Save settings" Width="120px" />
								&nbsp;<asp:Label ID="lblSettingsFilenameError" runat="server" ForeColor="Red" Text="Please enter filename." Visible="False" resourcekey="lblSettingsFilenameErrorResource1"></asp:Label>
							</td>
						</tr>
						<tr>
							<td class="style65">
								<dnn:Label ID="lblLoadSettingsFromFile" ResourceKey="lblLoadSettingsFromFile" runat="server" HelpText="Select module number or settings file to load settings from:" Text="Select settings:" HelpKey="lblLoadSettingsFromFile.HelpText" />
							</td>
							<td>
								<asp:DropDownList ID="ddlSettingsList" runat="server">
								</asp:DropDownList>
								&nbsp;<asp:Button ID="btnLoadSettingsFromFile" runat="server" OnClick="btnLoadSettings_Click" Text="Load settings" Width="120px" ValidationGroup="vvNema" resourcekey="btnLoadSettingsFromFileResource1" />
							</td>
						</tr>
						<tr>
							<td class="style65">&nbsp;
							</td>
							<td>&nbsp;
							</td>
						</tr>
					</table>
				</asp:Panel>
				<br />
			</asp:Panel>
			<br />
			<div style="padding-top: 10px;">
				<asp:Button ID="btnCloseDown" runat="server" OnClick="btnGSCLose_Click" Text="Close" resourcekey="btnCloseDown" CssClass="btnclose" TabIndex="4" />
			</div>
		</asp:Panel>
	</div>
</div>
<asp:Panel ID="pnlMainInfo" runat="server" Visible="False" />
<asp:ObjectDataSource ID="odsGetCategories" runat="server" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" SelectMethod="GetCategories" OldValuesParameterFormatString="{0}">
	<SelectParameters>
		<asp:Parameter Name="PortalID" Type="Int32" />
	</SelectParameters>
</asp:ObjectDataSource>
