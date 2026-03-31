<%@ control language="C#" autoeventwireup="true" inherits="EasyDNN.Modules.EasyDNNGallery.SettingsCotrols_GravityGallery, App_Web_gravitygallery.ascx.d6cf3db9" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<asp:HiddenField ID="hfLoad" runat="server" Value="0" />
<script type="text/javascript">
	function ValidateCheckBoxList(sender, args) {
		args.IsValid = false;
		eds1_8("#<%=cblMediaSelect.ClientID%>").find(":checkbox").each(function () {
			if (eds1_8(this).attr("checked")) {
				args.IsValid = true;
				return;
			}
		});
	}
	function ClientValidateEmbedURL() {
		if(!Page_ClientValidate("vgGravitySaveSettings"))
		{
			return false;
		}
		if(<%=isNewsInstalled.ToString().ToLower()%> == true)
		{
			document.getElementById('<%=lblNewsModuleValidateEror.ClientID%>').style.display = 'none';
			var chkStatus1 = document.getElementById('<%=cbGalleryDisplayNewsLink.ClientID %>');
			var chkStatus2 = document.getElementById('<%=cbItemsListDisplayNewsLink.ClientID %>');
			var chkStatus3 = document.getElementById('<%=cbDetailsDisplayNewsLink.ClientID %>');
			if ((chkStatus1 !=null && chkStatus1.checked) ||(chkStatus2 !=null &&  chkStatus2.checked) || (chkStatus3 !=null && chkStatus3.checked)) {
				var chkStatusddl = document.getElementById('<%=ddlNewsOpenDetails.ClientID %>');
				var selDDLValue = chkStatusddl.options[chkStatusddl.selectedIndex].value;
				if (selDDLValue != "0") {
					return true;
				}
				else {
					document.getElementById('<%=lblNewsModuleValidateEror.ClientID%>').style.display = 'block';
					return false;
				}
			}
			else {
				return true;
			}
		}
		else{
			return true;
		}
	}

	eds1_8().ready(function ($) {

		$('#<%=rblLigtBoxSelection.ClientID %> input[type="radio"]').change(function () {
			$smbSettings = $('#<%=pnlSMBOptions.ClientID %>');
			$smbLiteSettings = $('#<%=pnlSMBLiteOptions.ClientID %>');
			var selectedvalue = $("#<%=rblLigtBoxSelection.ClientID %> input:radio:checked").val();
			if (selectedvalue == 2) {
				$smbSettings.css('display', 'none');
				$smbLiteSettings.css('display', 'block');
			}
			else if (selectedvalue == 1) {
				$smbSettings.css('display', 'block');
				$smbLiteSettings.css('display', 'none');
			} else if (selectedvalue == 0) {
				$smbSettings.css('display', 'none');
				$smbLiteSettings.css('display', 'none');
			}
		});
		$('#<%=rblLigtBoxSelection.ClientID %> input[type="radio"]').change();
	});
</script>
<div id="edgAdminSettingsWrapper" runat="server">
	<div id="edgAdminSettings">
		<h1 class="settingsTitle">
			<asp:Label ID="lblGravityGallerySettings" resourcekey="lblGravityGallerySettings" runat="server" Text="Gravity gallery settings" /></h1>
		<asp:Panel ID="pnlPortalSharing" runat="server" Style="margin: 0 0 25px; text-align: center; font: 0/0 Arial;">
			<asp:Label ID="lblPortalSharing" runat="server" resourcekey="lblPortalSharing" Text="Select portal:" Style="font: 15px/1.3 Arial, sans-serif; margin: 0 8px 0 0;" />
			<asp:DropDownList ID="ddlPortalSharing" runat="server" AppendDataBoundItems="True" DataTextField="PortalName" DataValueField="PortalIDFrom" Style="margin-right: 15px;" OnSelectedIndexChanged="ddlPortalSharing_SelectedIndexChanged" AutoPostBack="True">
				<asp:ListItem resourcekey="liCurrentPortal" Value="-1">Current portal</asp:ListItem>
			</asp:DropDownList>
		</asp:Panel>
		<div id="pnlPresets" runat="server" class="settingsGroup square" visible="False">
			<h2>
				<asp:Label ID="lblPresetsTitle" resourcekey="lblPresetsTitle.Text" runat="server" Text="Presets" /></h2>
			<div class="content">
				<table class="settingsTable">
					<tbody>
						<tr>
							<td>
								<asp:DataList ID="dlGravityPresets" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="datalist_table" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Top" OnItemCommand="dlGravityPresets_ItemCommand">
									<ItemTemplate>
										<div>
											<h2>
												<asp:HiddenField ID="hfPresetFileName" runat="server" Value='<%#DataBinder.Eval(Container.DataItem, "PresetFileName")%>' />
												<asp:Label ID="lblPresetName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Name") %>'></asp:Label></h2>
											<asp:Image ID="imgThumbPreSet" runat="server" ImageUrl='<%# DataBinder.Eval(Container.DataItem, "Thumbnail") %>' CssClass="presetimage" />
											<asp:LinkButton ID="lbLoadXmlPreSet" runat="server" CommandArgument='<%# DataBinder.Eval(Container.DataItem, "PresetFileName") %>' CommandName="Load" CssClass="EDR_admin_button"><span>Load</span>
											</asp:LinkButton>
										</div>
									</ItemTemplate>
								</asp:DataList>
							</td>
							<td></td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblUserCreatedPresets" runat="server" Text="Select user created preset:" HelpText="Select user created preset." Visible="True" />
								<asp:DropDownList ID="ddlUserCreatedPresets" runat="server" Visible="True" AutoPostBack="True" DataTextField="Name" DataValueField="PresetFileName" OnSelectedIndexChanged="ddlUserCreatedPresets_SelectedIndexChanged">
									<asp:ListItem Value="-1">Select preset</asp:ListItem>
								</asp:DropDownList>
							</td>
							<td>
								<dnn:Label ID="lblSettingsFromOtherModulesOnThePortal" runat="server" Text="Select settings from other modules:" HelpText="Select settings from other modules." Visible="True" />
								<asp:DropDownList ID="ddlSettingsFromOtherModulesOnThePortal" runat="server" Visible="True" AutoPostBack="True" OnSelectedIndexChanged="ddlSettingsFromOtherModulesOnThePortal_SelectedIndexChanged">
									<asp:ListItem Value="-1">Select module</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="settingsGroup square">
			<h2>
				<asp:Label ID="lblCustomizeDisplayTitle" resourcekey="lblCustomizeDisplayTitle.Text" runat="server" Text="Customize display" /></h2>
			<div class="content">
				<table class="settingsTable">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblSelecttheme" ResourceKey="lblSelecttheme" runat="server" Text="Select theme:" HelpText="Select theme." />
								<asp:DropDownList ID="ddlThemeSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlThemeSelect_SelectedIndexChanged" />
							</td>
							<td>
								<dnn:Label ID="lblSelectCSSFile" runat="server" ResourceKey="lblSelectCSSFile" Text="Select style:" HelpText="Select style." Visible="False" />
								<asp:DropDownList ID="ddlStyleSelect" runat="server" Visible="False" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblCategoryTemplateSelect" runat="server" ResourceKey="lblCategoryTemplateSelect" Text="Select category template:" HelpText="Select category template." />
								<asp:DropDownList ID="ddlCategoryTemplateSelect" runat="server" />
							</td>
							<td>
								<dnn:Label ID="lblGalleryTemplateSelect" runat="server" ResourceKey="lblGalleryTemplateSelect" Text="Select gallery template:" HelpText="Select gallery template." />
								<asp:DropDownList ID="ddlGalleryTemplateSelect" runat="server" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsTemaplteSelect" runat="server" ResourceKey="lblItemsTemaplteSelect" Text="Select items template:" HelpText="Select items template:" />
								<asp:DropDownList ID="ddlItemsTemplateSelect" runat="server" />
							</td>
							<td>
								<dnn:Label ID="lblDetailsTemplateSelect" runat="server" ResourceKey="lblDetailsTemplateSelect" Text="Select details template:" HelpText="Select details template." />
								<asp:DropDownList ID="ddlDetailsTemplateSelect" runat="server" />
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="settingsGroup square">
			<h2>
				<asp:Label ID="lblSelectCategoriesToDisplay" resourcekey="lblSelectCategoriesToDisplay.Text" runat="server" Text="Choose Categories to display" /></h2>
			<div class="content itemSelectionContainer">
				<asp:UpdatePanel ID="upCategorySelection" runat="server" UpdateMode="Conditional">
					<ContentTemplate>
						<asp:DataList ID="dlListOfCategories" runat="server" CssClass="itemSelection_itemList" DataKeyField="CategoryID" RepeatLayout="Flow" RepeatDirection="Horizontal">
							<ItemTemplate>
								<span class="itemSelection_item" data-item-id='<%#Eval("CategoryID")%>'><span class="name">
									<%#Eval("Title")%></span></span>
							</ItemTemplate>
						</asp:DataList>
						<asp:Panel ID="pnlSelectCategoriesPager" runat="server" CssClass="itemSelection_itemPagination">
							<asp:Repeater ID="repPaggeingcategorieselection" runat="server" OnItemCommand="repPaggeingcategorieselection_ItemCommand">
								<ItemTemplate>
									<asp:LinkButton ID="lbCategoriesPagerPage" runat="server" CssClass='<%# Eval("class") %>' Text='<%#Eval("page") %>' CommandArgument='<%#Eval("page") %>' />
								</ItemTemplate>
							</asp:Repeater>
						</asp:Panel>
						<asp:Panel ID="pnlSelectedCategoriesHtmlContainer" runat="server" CssClass="itemSelection_selectedItemsContainer">
							<p class="itemSelection_selectedItemsTitle">
								<asp:Label ID="lblSelectedCategoriesTitle" resourcekey="lblSelectedCategoriesTitle.Text" runat="server" Text="Selected categories:" />
							</p>
							<p class="itemSelection_noItemsSelectedMsg">
								<asp:Label ID="lblNoCategoriesSelectedMsg" runat="server" resourcekey="lblNoCategoriesSelectedMsg.Text" Text="Select categories from which you want to display galleries." />
							</p>
							<asp:Literal ID="ListOfselectedcategories" runat="server" Text="" />
						</asp:Panel>
						<asp:UpdateProgress ID="upCategorySelectionProgress" runat="server" AssociatedUpdatePanelID="upCategorySelection" DisplayAfter="0" DynamicLayout="true">
							<ProgressTemplate>
								<div class="itemSelection_processingOverlay">
								</div>
							</ProgressTemplate>
						</asp:UpdateProgress>
					</ContentTemplate>
				</asp:UpdatePanel>
				<asp:TextBox ID="tbSelectedCategories" runat="server" EnableViewState="true" Style="display: none" Text="" TextMode="SingleLine" CssClass="itemSelection_selectedIds" />
			</div>
		</div>
		<asp:Panel ID="pnlGallerySelectionWrapper" runat="server" CssClass="settingsGroup square bluish galleries" Style="margin: -21px 0 40px;">
			<h2>
				<asp:Label ID="lblSelectGalleriesToDisplay" runat="server" resourcekey="lblSelectGalleriesToDisplay.Text" Text="Choose Galleries to display" /></h2>
			<div class="displayAllGalleriesFromCategories">
				<asp:CheckBox ID="cbCategoryDisplayAllGalleries" runat="server" resourcekey="cbCategoryDisplayAllGalleries.Text" AutoPostBack="True" OnCheckedChanged="cbCategoryDisplayAllGalleries_CheckedChanged" Text="Display all galleries from each selected category" />
			</div>
			<asp:Panel ID="gallerySelectionContainer" runat="server" CssClass="content itemSelectionContainer">
				<asp:UpdatePanel ID="upGallerySelection" runat="server" UpdateMode="Conditional">
					<ContentTemplate>
						<asp:Button ID="btnSelectGaleriesFromCategories" runat="server" OnClick="btnSelectGaleriesFromCategories_Click" CssClass="refreshGalleryItemsTrigger" Text="Load gallery items" Style="display: none;" />
						<asp:DataList ID="dlListOfGalleries" runat="server" CssClass="itemSelection_itemList" DataKeyField="GalleryID" RepeatLayout="Flow" RepeatDirection="Horizontal">
							<ItemTemplate>
								<span class="itemSelection_item" data-item-id='<%#Eval("GalleryID")%>'><span class="name">
									<%#Eval("Title")%>
									(<%#Eval("ParentCategory.Title")%>)</span></span>
							</ItemTemplate>
						</asp:DataList>
						<asp:Panel ID="pnlSelectGalleriessPager" runat="server" CssClass="itemSelection_itemPagination">
							<asp:Repeater ID="repPaggeingGalleryselection" runat="server" OnItemCommand="repPaggeingGalleryselection_ItemCommand">
								<ItemTemplate>
									<asp:LinkButton ID="lbGalleriesPagerPage" runat="server" CssClass='<%# Eval("class") %>' Text='<%#Eval("page") %>' CommandArgument='<%#Eval("page") %>' />
								</ItemTemplate>
							</asp:Repeater>
						</asp:Panel>
						<asp:Panel ID="pnlSelectedGalleriesHtmlContainer" runat="server" CssClass="itemSelection_selectedItemsContainer">
							<p class="itemSelection_selectedItemsTitle">
								<asp:Label ID="lblSelectedGalleriesTitle" runat="server" resourcekey="lblSelectedGalleriesTitle.Text" Text="Selected galleries:" />
							</p>
							<p class="itemSelection_noItemsSelectedMsg">
								<asp:Label ID="lblNoGalleriesSelectedMsg" runat="server" resourcekey="lblNoGalleriesSelectedMsg.Text" Text="Select galleries that you want to display." />
							</p>
							<asp:Literal ID="ListOfselectedGallery" runat="server" Text="" />
						</asp:Panel>
						<asp:UpdateProgress ID="upGallerySelectionProgress" runat="server" AssociatedUpdatePanelID="upGallerySelection" DisplayAfter="0" DynamicLayout="true">
							<ProgressTemplate>
								<div class="itemSelection_processingOverlay">
								</div>
							</ProgressTemplate>
						</asp:UpdateProgress>
					</ContentTemplate>
				</asp:UpdatePanel>
				<asp:TextBox ID="tbSelectedGalleries" runat="server" EnableViewState="true" Style="display: none" Text="" TextMode="SingleLine" CssClass="itemSelection_selectedIds" />
			</asp:Panel>
		</asp:Panel>
		<div class="edsgg_admin_sectionTogglesWrapper">
			<div class="section categories">
				<h3>
					<%=Categories%></h3>
				<asp:Label ID="lblExternalCategoriesSectionToggle" runat="server" CssClass="onOffToggle blue"> <span class="offText"><%=Off%></span> <span class="onText"><%=On%></span> <span class="slider"></span></asp:Label>
			</div>
			<div class="section galleries">
				<h3>
					<%=Galleries %></h3>
				<asp:Label ID="lblExternalGalleriesSectionToggle" runat="server" CssClass="onOffToggle yellow"> <span class="offText"><%=Off%></span> <span class="onText"><%=On%></span> <span class="slider"></span></asp:Label>
			</div>
			<div class="section items">
				<h3>
					<%=Items%></h3>
				<asp:Label ID="lblExternalItemsSectionToggle" runat="server" CssClass="onOffToggle green"> <span class="offText"><%=Off%></span> <span class="onText"><%=On%></span> <span class="slider"></span></asp:Label>
			</div>
			<div class="section details">
				<h3>
					<%=Details%></h3>
				<asp:Label ID="lblExternalDetailsSectionToggle" runat="server" CssClass="onOffToggle red"> <span class="offText"><%=Off%></span> <span class="onText"><%=On%></span> <span class="slider"></span></asp:Label>
			</div>
		</div>
		<div class="settingsGroup edgDisplaySettings edgCategories">
			<h3>
				<asp:Label ID="lblCategoryDisplayOptions" runat="server" resourcekey="lblCategoryDisplayOptions.Text" Text="Category display level" />
				<asp:Label ID="lblCategoriesSectionToggle" runat="server" CssClass="onOffToggle blue">
					<asp:CheckBox ID="cbDisplayCategoriesPage" runat="server" CssClass="normalCheckBox" Checked="True" />
					<span class="offText">
						<%=Off%></span> <span class="onText">
							<%=On%></span> <span class="slider"></span></asp:Label>
			</h3>
			<asp:Panel ID="pnlCategoryDisplayOptions" runat="server">
				<div class="edgGalleryLevel">
					<span>1</span>
				</div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblCategoryThumbnailWidth" ResourceKey="lblCategoryThumbnailWidth" runat="server" Text="Thumbnail width:" HelpText="Category thumbnail width." />
							</td>
							<td>
								<asp:TextBox ID="tbCategoryThumbnailWidth" runat="server">220</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbCategoryThumbnailWidth" runat="server" ControlToValidate="tbCategoryThumbnailWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbCategoryThumbnailWidth" runat="server" ControlToValidate="tbCategoryThumbnailWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblCategoryThumbnailHeight" ResourceKey="lblCategoryThumbnailHeight" runat="server" Text="Thumbnail height:" HelpText="Category thumbnail height." />
							</td>
							<td>
								<asp:TextBox ID="tbCategoryThumbnailHeight" runat="server">180</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbCategoryThumbnailHeight" runat="server" ControlToValidate="tbCategoryThumbnailHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbCategoryThumbnailHeight" runat="server" ControlToValidate="tbCategoryThumbnailHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblCategoryShowTitle" ResourceKey="lblCategoryShowTitle" runat="server" Text="Show title:" HelpText="Show category title."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbCategoryShowTitle" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblCategoryTitleLimit" ResourceKey="lblCategoryTitleLimit" runat="server" Text="Title character limit:" HelpText="Category title limit (0 - no limit)."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbCategoryTitleLimit" runat="server">0</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbCategoryTitleLimit" runat="server" ControlToValidate="tbCategoryTitleLimit" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbCategoryTitleLimit" runat="server" ControlToValidate="tbCategoryTitleLimit" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblCategoryShowDescription" runat="server" ResourceKey="lblCategoryShowDescription" Text="Show description:" HelpText="Show category description."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbCategoryShowDescription" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblCategoryDescriptionLimit" runat="server" ResourceKey="lblCategoryDescriptionLimit" Text="Description character limit:" HelpText="Category description limit (0 - no limit)."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbCategoryDescriptionLimit" runat="server">0</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbCategoryDescriptionLimit" runat="server" ControlToValidate="tbCategoryDescriptionLimit" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbCategoryDescriptionLimit" runat="server" ControlToValidate="tbCategoryDescriptionLimit" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblNumberofcategoryitemsperpage" runat="server" ResourceKey="lblNumberofcategoryitemsperpage" Text="Number of category items per page:" HelpText="Number of category items per page."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbNumberofcategoryitemsperpage" runat="server">20</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbNumberofcategoryitemsperpage" runat="server" ControlToValidate="tbNumberofcategoryitemsperpage" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbNumberofcategoryitemsperpage" runat="server" ControlToValidate="tbNumberofcategoryitemsperpage" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>		
							</td>
							<td>
								<dnn:Label ID="lblNumberOfCategoryPagingLinks" runat="server" ResourceKey="lblNumberOfCategoryPagingLinks" Text="Number of category paging links:" HelpText="Number of category paging links."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbNumberOfCategoryPagingLinks" runat="server">10</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbNumberOfCategoryPagingLinks" runat="server" ControlToValidate="tbNumberOfCategoryPagingLinks" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbNumberOfCategoryPagingLinks" runat="server" ControlToValidate="tbNumberOfCategoryPagingLinks" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblCategoryDisplayNumberOfGalleries" runat="server" ResourceKey="lblCategoryDisplayNumberOfGalleries" Text="Display the number of galleries:" HelpText="Display the number of galleries for each category."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbCategoryDisplayNumberOfGalleries" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblCategoryDisplaySharingButtons" runat="server" ResourceKey="lblCategoryDisplaySharingButtons" Text="Sharing buttons:" HelpText="Display sharing buttons."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbCategoryDisplaySharingButtons" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblCategoryDisplayShowRSS" runat="server" ResourceKey="lblCategoryDisplayShowRSS" Text="RSS links:" HelpText="Show RSS links to individual categories and a link to the RSS for the list of categories."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbCategoryDisplayShowRSS" runat="server" Checked="True" />
							</td>
							<td></td>
							<td></td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblCategoryDisplaySortingOptions" runat="server" ResourceKey="lblCategoryDisplaySortingOptions" Text="Sorting option:" HelpText="Sorting option."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlCategoryItemsSorting" runat="server">
									<asp:ListItem Value="0" ResourceKey="liPosition">Position</asp:ListItem>
									<asp:ListItem Value="1" ResourceKey="liTitle">Title</asp:ListItem>
								</asp:DropDownList>
								&nbsp;<asp:DropDownList ID="ddlCategoryItemsSortingDirection" runat="server">
									<asp:ListItem Value="0" ResourceKey="liAscending">Ascending</asp:ListItem>
									<asp:ListItem Value="1" ResourceKey="liDescending">Descending</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</asp:Panel>
		</div>
		<div class="settingsGroup edgDisplaySettings edgGalleries">
			<h3>
				<asp:Label ID="lblDisplayGalleriesPage" resourcekey="lblDisplayGalleriesPage" runat="server" Text="Gallery display level" />
				<asp:Label ID="lblGalleriesSectionToggle" runat="server" CssClass="onOffToggle yellow">
					<asp:CheckBox ID="cbDisplayGalleriesPage" runat="server" CssClass="normalCheckBox" Checked="True" />
					<span class="offText">
						<%=Off%></span> <span class="onText">
							<%=On%></span> <span class="slider"></span></asp:Label>
			</h3>
			<asp:Panel ID="pnlGalleryOptions" runat="server">
				<div class="edgGalleryLevel">
					<span>2</span>
				</div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryThumbnailwidth" ResourceKey="lblGalleryThumbnailwidth" runat="server" Text="Thumbnail width:" HelpText="Gallery thumbnail width"></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbGalleryThumbnailwidth" runat="server">220</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbGalleryThumbnailwidth" runat="server" ControlToValidate="tbGalleryThumbnailwidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbGalleryThumbnailwidth" runat="server" ControlToValidate="tbGalleryThumbnailwidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblGalleryThumbnailheight" ResourceKey="lblGalleryThumbnailheight" runat="server" Text="Thumbnail height:" HelpText="Gallery thumbnail height."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbGalleryThumbnailheight" runat="server">180</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbGalleryThumbnailheight" runat="server" ControlToValidate="tbGalleryThumbnailheight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbGalleryThumbnailheight" runat="server" ControlToValidate="tbGalleryThumbnailheight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplayTitle" ResourceKey="lblGalleryDisplayTitle" runat="server" Text="Show title:" HelpText="Show gallery title."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayTitle" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblGalleryTitleLimit" ResourceKey="lblGalleryTitleLimit" runat="server" Text="Title character limit:" HelpText="Gallery title limit (0 - no limit)."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbGalleryTitleLimit" runat="server">0</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbGalleryTitleLimit" runat="server" ControlToValidate="tbGalleryTitleLimit" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbGalleryTitleLimit" runat="server" ControlToValidate="tbGalleryTitleLimit" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplayDescription" ResourceKey="lblGalleryDisplayDescription" runat="server" Text="Show description:" HelpText="Show gallery description."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayDescription" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblGalleryDescriptionLimit" ResourceKey="lblGalleryDescriptionLimit" runat="server" Text="Description character limit:" HelpText="Gallery description limit (0 - no limit)."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbGalleryDescriptionLimit" runat="server">0</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbGalleryDescriptionLimit" runat="server" ControlToValidate="tbGalleryDescriptionLimit" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbGalleryDescriptionLimit" runat="server" ControlToValidate="tbGalleryDescriptionLimit" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblNumberofgalleryitemsperpage" ResourceKey="lblNumberofgalleryitemsperpage" runat="server" Text="Number of gallery items per page:" HelpText="Number of gallery items per page."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbNumberofgalleryitemsperpage" runat="server">20</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbNumberofgalleryitemsperpage" runat="server" ControlToValidate="tbNumberofgalleryitemsperpage" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>
								<asp:CompareValidator ID="cvtbNumberofgalleryitemsperpage" runat="server" ControlToValidate="tbNumberofgalleryitemsperpage" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblNumberofgallerypaginglinks" ResourceKey="lblNumberofgallerypaginglinks" runat="server" Text="Number of gallery paging links:" HelpText="Number of gallery paging links."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbNumberofgallerypaginglinks" runat="server">5</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbNumberofgallerypaginglinks" runat="server" ControlToValidate="tbNumberofgallerypaginglinks" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbNumberofgallerypaginglinks" runat="server" ControlToValidate="tbNumberofgallerypaginglinks" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplayOwnerInfo" ResourceKey="lblGalleryDisplayOwnerInfo" runat="server" Text="Owner info:" HelpText="Show the owner info for each gallery."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayOwnerInfo" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblGalleryDisplaySharingButtons" ResourceKey="lblGalleryDisplaySharingButtons" runat="server" Text="Sharing buttons:" HelpText="Show sharing buttons"></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplaySharingButtons" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplayNumberOfGalleryViews" ResourceKey="lblGalleryDisplayNumberOfGalleryViews" runat="server" Text="Number of gallery views:" HelpText="Show the number of views the gallery got."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayNumberOfGalleryViews" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblGalleryDisplayNumberOfGalleryItems" ResourceKey="lblGalleryDisplayNumberOfGalleryItems" runat="server" Text="Number of gallery items:" HelpText="Show the number of items in each gallery."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayNumberOfGalleryItems" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplayNumberOfGalleryImages" ResourceKey="lblGalleryDisplayNumberOfGalleryImages" runat="server" Text="Number of gallery images:" HelpText="Show the number of images in each gallery."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayNumberOfGalleryImages" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblGalleryDisplayNumnberOfGalleryVideos" ResourceKey="lblGalleryDisplayNumnberOfGalleryVideos" runat="server" Text="Number of gallery videos:" HelpText="Show the number of videos in each gallery."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayNumnberOfGalleryVideos" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplayNumnberOfGalleryAudios" ResourceKey="lblGalleryDisplayNumnberOfGalleryAudios" runat="server" Text="Number of gallery audio files:" HelpText="Show the number number of audio files in each gallery."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayNumnberOfGalleryAudios" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblGalleryDisplayShowRss" ResourceKey="lblGalleryDisplayShowRss" runat="server" Text="RSS links:" HelpText="Show RSS links to individual galleries and a link to the RSS for the list of galleries."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbGalleryDisplayShowRss" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplayBreadCrumbs" ResourceKey="lblGalleryDisplayBreadCrumbs" runat="server" Text="Bread crumbs:" HelpText="Show bread crumbs."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbGalleryDisplayBreadCrumbs" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblGalleryDisplaySortiongOptions" ResourceKey="lblGalleryDisplaySortiongOptions" runat="server" Text="Sorting option:" HelpText="Sorting option."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlGalleryItemsSorting" runat="server">
									<asp:ListItem ResourceKey="liPosition" Value="0">Position</asp:ListItem>
									<asp:ListItem ResourceKey="liTitle" Value="1">Title</asp:ListItem>
									<asp:ListItem ResourceKey="liDateCreated" Value="2">Date created</asp:ListItem>
									<asp:ListItem ResourceKey="liDateLastModified" Value="3">Date last modified</asp:ListItem>
									<asp:ListItem ResourceKey="liPublishDate" Value="4">Publish date</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList ID="ddlGalleryItemsDirection" runat="server">
									<asp:ListItem ResourceKey="liAscending" Value="0">Ascending</asp:ListItem>
									<asp:ListItem ResourceKey="liDescending" Value="1">Descending</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr runat="server" id="trGalleryDisplayNewsLink">
							<td>
								<dnn:Label ID="lblGalleryDisplayNewsLink" ResourceKey="lblGalleryDisplayNewsLink" runat="server" Text="Show link to news article:" HelpText="Display link to news article."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbGalleryDisplayNewsLink" runat="server" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</asp:Panel>
		</div>
		<div class="settingsGroup edgDisplaySettings edgItems">
			<h3>
				<asp:Label ID="lblDisplayListItemPage" Resourcekey="lblDisplayListItemPage" runat="server" Text="Item display level" />
				<asp:Label ID="lblItemsSectionToggle" runat="server" CssClass="onOffToggle green">
					<asp:CheckBox ID="cbDisplayListItemPage" runat="server" CssClass="normalCheckBox" Checked="True" />
					<span class="offText">
						<%=Off%></span> <span class="onText">
							<%=On%></span> <span class="slider"></span></asp:Label>
			</h3>
			<asp:Panel ID="pnlItemListOptions" runat="server">
				<div class="edgGalleryLevel">
					<span>3</span>
				</div>
				<table border="0" cellpadding="0" cellspacing="0" class="edggalleryDisplayOptions">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListThumbnailwidth" ResourceKey="lblItemsListThumbnailwidth" runat="server" Text="Thumbnail width:" HelpText="Items list thumbnail width."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbItemsListThumbnailwidth" runat="server">220</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbItemsListThumbnailwidth" runat="server" ControlToValidate="tbItemsListThumbnailwidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbItemsListThumbnailwidth" runat="server" ControlToValidate="tbItemsListThumbnailwidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblItemsListThumbnailheight" ResourceKey="lblItemsListThumbnailheight" runat="server" Text="Thumbnail height:" HelpText="Items list thumbnail height."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbItemsListThumbnailheight" runat="server">180</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbItemsListThumbnailheight" runat="server" ControlToValidate="tbItemsListThumbnailheight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbItemsListThumbnailheight" runat="server" ControlToValidate="tbItemsListThumbnailheight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
									
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayTitle" ResourceKey="lblItemsListDisplayTitle" runat="server" Text="Show title:" HelpText="Item list display title."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayTitle" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblItemTitleLimit" ResourceKey="lblItemTitleLimit" runat="server" Text="Title character limit:" HelpText="Item title limit (0 - no limit)."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbItemTitleLimit" runat="server">0</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbItemTitleLimit" runat="server" ControlToValidate="tbItemTitleLimit" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbItemTitleLimit" runat="server" ControlToValidate="tbItemTitleLimit" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayDescription" ResourceKey="lblItemsListDisplayDescription" runat="server" Text="Show description:" HelpText="Items list display description."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayDescription" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblItemDescriptionLimit" ResourceKey="lblItemDescriptionLimit" runat="server" Text="Description character limit:" HelpText="Item description limit (0 - no limit)."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbItemDescriptionLimit" runat="server">0</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbItemDescriptionLimit" runat="server" ControlToValidate="tbItemDescriptionLimit" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbItemDescriptionLimit" runat="server" ControlToValidate="tbItemDescriptionLimit" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblNumberOfItemsListItemsPerPage" ResourceKey="lblNumberOfItemsListItemsPerPage" runat="server" Text="Number of items per page:" HelpText="Number of items per page."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbNumberOfItemsListItemsPerPage" runat="server">20</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbNumberOfItemsListItemsPerPage" runat="server" ControlToValidate="tbNumberOfItemsListItemsPerPage" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbNumberOfItemsListItemsPerPage" runat="server" ControlToValidate="tbNumberOfItemsListItemsPerPage" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblNumberOfItemsListPagingLinks" ResourceKey="lblNumberOfItemsListPagingLinks" runat="server" Text="Number of item paging links:" HelpText="Number of item paging links."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbNumberOfItemsListPagingLinks" runat="server">5</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbNumberOfItemsListPagingLinks" runat="server" ControlToValidate="tbNumberOfItemsListPagingLinks" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbNumberOfItemsListPagingLinks" runat="server" ControlToValidate="tbNumberOfItemsListPagingLinks" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayUploaderInfo" ResourceKey="lblItemsListDisplayUploaderInfo" runat="server" Text="Uploader info:" HelpText="Show uploader info."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayUploaderInfo" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblItemsListDisplayItemNumberOfViews" ResourceKey="lblItemsListDisplayItemNumberOfViews" runat="server" Text="Number of item views:" HelpText="Items list display item number of views."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayItemNumberOfViews" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayNumberOfLikes" ResourceKey="lblItemsListDisplayNumberOfLikes" runat="server" Text="Number of item likes:" HelpText="Items list display item number of likes."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayNumberOfLikes" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblItemsListDisplayMediaRatingValue" ResourceKey="lblItemsListDisplayMediaRatingValue" runat="server" Text="Show item rating:" HelpText="Display item rating."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayMediaRatingValue" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayItemsShareButtons" ResourceKey="lblItemsListDisplayItemsShareButtons" runat="server" Text="Sharing buttons:" HelpText="Items list display items sharing buttons."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayItemsShareButtons" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblItemsListDisplayMediaDownload" ResourceKey="lblItemsListDisplayMediaDownload" runat="server" Text="Show item download link:" HelpText="Show a download link for each item if the user has the permission to download items. This also shows the number of downloads for each item, if that is used in the template."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayMediaDownload" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayMediaType" ResourceKey="lblItemsListDisplayMediaType" runat="server" Text="Show media type:" HelpText="Items list display media type."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayMediaType" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblItemListDisplayBreadCrumbs" ResourceKey="lblItemListDisplayBreadCrumbs" runat="server" Text="Bread crumbs:" HelpText="Items list display bread crumbs."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemListDisplayBreadCrumbs" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblListItemNumberOfLatestCommentsToDisplay" ResourceKey="lblListItemNumberOfLatestCommentsToDisplay" runat="server" Text="Number of latest comments to show:" HelpText="Items list number of latest comments to display."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbListItemNumberOfLatestCommentsToDisplay" runat="server">3</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbListItemNumberOfLatestCommentsToDisplay" runat="server" ControlToValidate="tbListItemNumberOfLatestCommentsToDisplay" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
								<asp:CompareValidator ID="cvtbListItemNumberOfLatestCommentsToDisplay" runat="server" ControlToValidate="tbListItemNumberOfLatestCommentsToDisplay" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblItemsListDisplayumberOfComments" ResourceKey="lblItemsListDisplayumberOfComments" runat="server" Text="Show number of comments:" HelpText="Items list display number of comments."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayumberOfComments" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayItemsShowRss" ResourceKey="lblItemsListDisplayItemsShowRss" runat="server" Text="RSS link:" HelpText="Show a link to the RSS containing that gallery's items."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayShowRss" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lbItemsListDisplayEmailLink" ResourceKey="lbItemsListDisplayEmailLink" runat="server" Text="Display email link:" HelpText="Display email link."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbItemsListDisplayEmailLink" runat="server" Checked="False" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblItemsListDisplayLikeButtons" ResourceKey="lblItemsListDisplayLikeButtons" runat="server" Text="Show like buttons:" HelpText="Display like buttons."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbItemsListDisplayLikeButtons" runat="server" AutoPostBack="True" OnCheckedChanged="cbItemsListDisplayLikeButtons_CheckedChanged" />
								<div id="divItemListSocialButtonSelection" runat="server" style="padding: 10px 0 0" visible="false">
									<span style="margin: 0 5px 0 0;">
										<asp:CheckBox ID="cbItemsListDisplayLikeButtonFacebook" runat="server" Text="Facebook" /></span> <span style="margin: 0 5px 0 0;">
											<asp:CheckBox ID="cbItemsListDisplayLikeButtonGooglePlus" runat="server" Text="Google+" /></span> <span style="margin: 0 5px 0 0;">
												<asp:CheckBox ID="cbItemsListDisplayLikeButtonTwitter" runat="server" Text="Twitter" /></span> <span style="margin: 0 5px 0 0;">
													<asp:CheckBox ID="cbItemsListDisplayLikeButtonPinterest" runat="server" Text="Pinterest" /></span> <span style="margin: 0 5px 0 0;">
														<asp:CheckBox ID="cbItemsListDisplayLikeButtonLinkedIn" runat="server" Text="LinkedIn" /></span>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblListItemSortingOption" ResourceKey="lblListItemSortingOption" runat="server" Text="Sorting option:" HelpText="Sorting option."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:DropDownList ID="ddlListItemsSorting" runat="server">
									<asp:ListItem ResourceKey="liPosition" Value="0">Position</asp:ListItem>
									<asp:ListItem ResourceKey="liTitle" Value="1">Title</asp:ListItem>
									<asp:ListItem ResourceKey="liFilename" Value="2">Filename</asp:ListItem>
									<asp:ListItem ResourceKey="liDateUploaded" Value="3">DateUploaded</asp:ListItem>
								</asp:DropDownList>
								<asp:DropDownList ID="ddlListItemsSortingDirection" runat="server">
									<asp:ListItem ResourceKey="liAscending" Value="0">Ascending</asp:ListItem>
									<asp:ListItem ResourceKey="liDescending" Value="1">Descending</asp:ListItem>
								</asp:DropDownList>
							</td>
						</tr>
						<tr runat="server" id="trItemsListDisplayNewsLink">
							<td>
								<dnn:Label ID="lblItemsListDisplayNewsLink" ResourceKey="lblItemsListDisplayNewsLink" runat="server" Text="Show link to news article:" HelpText="Display link to news article."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbItemsListDisplayNewsLink" runat="server" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</asp:Panel>
		</div>
		<div class="settingsGroup edgDisplaySettings edgItemDetails">
			<h3>
				<asp:Label ID="lblDisplayDetailsPage" ResourceKey="lblDisplayDetailsPage" runat="server" Text="Details display level" />
				<asp:Label ID="lblDetailsSectionToggle" runat="server" CssClass="onOffToggle red">
					<asp:CheckBox ID="cbDisplayDetailsPage" runat="server" CssClass="normalCheckBox" Checked="True" />
					<span class="offText"><%=Off%></span> <span class="onText"><%=On%></span> <span class="slider"></span></asp:Label>
			</h3>
			<asp:Panel ID="pnlDetailsPageOptions" runat="server">
				<div class="edgGalleryLevel">
					<span>4</span>
				</div>
				<table border="0" cellpadding="0" cellspacing="0" class="edggalleryDisplayOptions">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblDtailsThumbnailWidth" ResourceKey="lblDtailsThumbnailWidth" runat="server" Text="Thumbnail width:" HelpText="Details thumbnail width."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbDetailsThumbnailWidth" runat="server">800</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbDetailsThumbnailWidth" runat="server" ControlToValidate="tbDetailsThumbnailWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbDetailsThumbnailWidth" runat="server" ControlToValidate="tbDetailsThumbnailWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblDtailsThumbnailHeight" ResourceKey="lblDtailsThumbnailHeight" runat="server" Text="Thumbnail height:" HelpText="Details thumbnail height."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbDtailsThumbnailHeight" runat="server">800</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbDtailsThumbnailHeight" runat="server" ControlToValidate="tbDtailsThumbnailHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbDtailsThumbnailHeight" runat="server" ControlToValidate="tbDtailsThumbnailHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayTitle" ResourceKey="lblDetailsDisplayTitle" runat="server" Text="Show title:" HelpText="Show title in details."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayTitle" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblDetailsDisplayDescription" ResourceKey="lblDetailsDisplayDescription" runat="server" Text="Show description:" HelpText="Show description in details."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayDescription" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayUploaderInfo" ResourceKey="lblDetailsDisplayUploaderInfo" runat="server" Text="Show uploader info:" HelpText="Display uploader info."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayUploaderInfo" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblDetailsDisplayItemNumberOfViews" ResourceKey="lblDetailsDisplayItemNumberOfViews" runat="server" Text="Number of views:" HelpText="Display item number of views."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayItemNumberOfViews" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayNumberOfLikes" ResourceKey="lblDetailsDisplayNumberOfLikes" runat="server" Text="Number of likes:" HelpText="Display item number of likes."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayNumberOfLikes" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblDetailsDisplayDisplayUsersWhoLikedMedia" ResourceKey="lblDetailsDisplayDisplayUsersWhoLikedMedia" runat="server" Text="Show users who liked an item:" HelpText="Show a list of users who have liked an item."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayDisplayUsersWhoLikedMedia" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsNumberOfUsersWhoLikedMedia" ResourceKey="lblDetailsNumberOfUsersWhoLikedMedia" runat="server" Text="Number of users who liked an item:" HelpText="The number of users who have liked an item."></dnn:Label>
							</td>
							<td>
								<asp:TextBox ID="tbDetailsNumberOfUsersWhoLikedMedia" runat="server">10</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbDetailsNumberOfUsersWhoLikedMedia" runat="server" ControlToValidate="tbDetailsNumberOfUsersWhoLikedMedia" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbDetailsNumberOfUsersWhoLikedMedia" runat="server" ControlToValidate="tbDetailsNumberOfUsersWhoLikedMedia" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
							<td>
								<dnn:Label ID="lblDetailsDisplayNumberOfDownloads" ResourceKey="lblDetailsDisplayNumberOfDownloads" runat="server" HelpText="Show a download link for each item if the user has the permission to download items. This also shows the number of downloads for each item, if that is used in the template." Text="Show item download link:" />
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayNumberOfDownloads" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayMediaRatingValue" ResourceKey="lblDetailsDisplayMediaRatingValue" runat="server" Text="Show rating:" HelpText="Display media rating value."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayMediaRatingValue" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblDetailsDisplayItemsShareButtons" ResourceKey="lblDetailsDisplayItemsShareButtons" runat="server" Text="Sharing buttons:" HelpText="Display sharing buttons."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayItemsShareButtons" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayNumberOfComments" ResourceKey="lblDetailsDisplayNumberOfComments" runat="server" Text="Number of comments:" HelpText="Display number of comments."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayNumberOfComments" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblDetailsDisplayExifData" ResourceKey="lblDetailsDisplayExifData" runat="server" Text="Exif data:" HelpText="Display media exif data."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayExifData" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayMediaType" ResourceKey="lblDetailsDisplayMediaType" runat="server" Text="Show media type:" HelpText="Display media type."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayMediaType" runat="server" Checked="True" />
							</td>
							<td>
								<dnn:Label ID="lblDetailsDisplayBreadCrumbs" ResourceKey="lblDetailsDisplayBreadCrumbs" runat="server" Text="Bread crumbs:" HelpText="Display bread crumbs."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayBreadCrumbs" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayEmailLink" ResourceKey="lblDetailsDisplayEmailLink"  runat="server" Text="Display email link:" HelpText="Display email link."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbDetailsDisplayEmailLink" runat="server" Checked="False" />
							</td>
							<td>
							</td>
							<td>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblDetailsDisplayLikeButtons" ResourceKey="lblDetailsDisplayLikeButtons"  runat="server" Text="Show like buttons:" HelpText="Display like buttons."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbDetailsDisplayLikeButtons" runat="server" AutoPostBack="True" OnCheckedChanged="cbDetailsDisplayLikeButtons_CheckedChanged" Checked="True" />
								<div id="divDetailsSocialButtonSelection" runat="server" style="padding: 10px 0 0">
									<span style="margin: 0 5px 0 0;">
										<asp:CheckBox ID="cbDetailsDisplayLikeButtonFacebook" runat="server" ResourceKey="cbDetailsDisplayLikeButtonFacebook" Text="Facebook" Checked="True" /></span> <span style="margin: 0 5px 0 0;">
											<asp:CheckBox ID="cbDetailsDisplayLikeButtonGooglePlus" runat="server" ResourceKey="cbDetailsDisplayLikeButtonGooglePlus" Text="Google+" Checked="True" /></span> <span style="margin: 0 5px 0 0;">
												<asp:CheckBox ID="cbDetailsDisplayLikeButtonTwitter" runat="server" ResourceKey="cbDetailsDisplayLikeButtonTwitter" Text="Twitter" Checked="True" /></span> <span style="margin: 0 5px 0 0;">
													<asp:CheckBox ID="cbDetailsDisplayLikeButtonPinterest" runat="server" ResourceKey="cbDetailsDisplayLikeButtonPinterest" Text="Pinterest" Checked="True" /></span> <span style="margin: 0 5px 0 0;">
														<asp:CheckBox ID="cbDetailsDisplayLikeButtonLinkedIn" runat="server" ResourceKey="cbDetailsDisplayLikeButtonLinkedIn" Text="LinkedIn" Checked="True" /></span>
								</div>
							</td>
						</tr>
						<tr runat="server" id="trDetailsDisplayNewsLink">
							<td>
								<dnn:Label ID="lblDetailsDisplayNewsLink" ResourceKey="lblDetailsDisplayNewsLink"  runat="server" Text="Show link to news article:" HelpText="Display link to news article."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbDetailsDisplayNewsLink" runat="server" />
							</td>
						</tr>
						<tr id="trPostCommentNotificationToJournal" runat="server">
							<td>
								<dnn:Label ID="lblPostCommentNotificationToJournal" ResourceKey="lblPostCommentNotificationToJournal" runat="server" Text="Post comment notification to Journal:" HelpText="Every time a user posts a comment on an item, a notification for the comment is added to that user's DNN Journal."></dnn:Label>
							</td>
							<td colspan="3">
								<asp:CheckBox ID="cbPostCommentNotificationToJournal" runat="server" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</asp:Panel>
		</div>
		<div class="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3><%=Generaloptions%></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblAvatarProvider" ResourceKey="lblAvatarProvider" runat="server" Text="Select avatar provider:" HelpText="Select avatar provider." />
							</td>
							<td>
								<asp:RadioButtonList ID="rblAvatarProvider" runat="server" RepeatDirection="Horizontal" CssClass="radioButtonTable">
									<asp:ListItem resourcekey="liGravatar" Selected="True" Value="1">Gravatar</asp:ListItem>
									<asp:ListItem resourcekey="liDNNProfile" Value="2">DNN profile</asp:ListItem>
									<asp:ListItem resourcekey="liNoAvatars" Value="0">No avatars</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblSelectResiznigMethod" ResourceKey="lblSelectResiznigMethod" runat="server" Text="Select image resize method:" HelpText="Select image resize method." />
							</td>
							<td>
								<asp:RadioButtonList ID="rblSelectResiznigMethod" runat="server" RepeatDirection="Horizontal" CssClass="radioButtonTable">
									<asp:ListItem resourcekey="liProportional" Value="2" Selected="True">Proportional</asp:ListItem>
									<asp:ListItem resourcekey="liCrop" Value="1">Crop</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblUseMasonryLayout" ResourceKey="lblUseMasonryLayout" runat="server" Text="Use masonry layout:" HelpText="Use masonry mayout."></dnn:Label>
							</td>
							<td>
								<asp:CheckBox ID="cbUseMasonryLayout" runat="server" Checked="True" />
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblSelectTypeOfMedia" ResourceKey="lblSelectTypeOfMedia" runat="server" Text="Select type of media:" HelpText="Select type of media that will be displayed."></dnn:Label>
							</td>
							<td>
								<asp:CheckBoxList ID="cblMediaSelect" runat="server" RepeatDirection="Horizontal" ValidationGroup="vgTGSettings" CssClass="settingsTable" RepeatLayout="Flow">
									<asp:ListItem ResourceKey="liImage" Selected="True" Value="Image">Image</asp:ListItem>
									<asp:ListItem ResourceKey="liVideo" Selected="True" Value="Video">Video</asp:ListItem>
									<asp:ListItem ResourceKey="liAudio" Selected="True" Value="Audio">Audio</asp:ListItem>
								</asp:CheckBoxList>
								<asp:CustomValidator ID="cvMedeaSelectValidator" Display="Dynamic" ValidationGroup="vgGravitySaveSettings" runat="server" ClientValidationFunction="ValidateCheckBoxList" SetFocusOnError="True">Please select at least one media type.</asp:CustomValidator>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</div>
		<div class="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3><%=Paginationoptions%></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr>
							<td style="vertical-align: top; padding-top: 13px;">
								<dnn:Label ID="lblPagingTypeTitle" ResourceKey="lblPagingTypeTitle" runat="server" Text="Set the pagination type:" HelpText="Set the pagination type."></dnn:Label>
							</td>
							<td>
								<asp:RadioButtonList ID="rblSelectPaginationType" runat="server" RepeatDirection="Vertical" CssClass="radioButtonTable">
									<asp:ListItem resourcekey="liNormalPagination" Value="NormalPagination">Classical pagination</asp:ListItem>
									<asp:ListItem resourcekey="liInfiniteOnButtonClick" Value="InfiniteOnButtonClick" Selected="True">Infinite scroll pagination with Load more button</asp:ListItem>
									<asp:ListItem resourcekey="liInfiniteOnButtonClickAndScroll" Value="InfiniteOnButtonClickAndScroll">Infinite scroll pagination with automatic item loading</asp:ListItem>
								</asp:RadioButtonList>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</div>
		<div class="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3>
				<asp:Label ID="lblLitghboxSetup" resourcekey="lblLitghboxSetup" runat="server" Text="Lightbox" /></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr>
							<td style="vertical-align: top; padding-top: 13px;">
								<dnn:Label ID="lblLightboxSetting" resourcekey="lblLightboxSetting" runat="server" Text="Use lightbox to open items:" HelpText="Use lightbox to open items."></dnn:Label>
							</td>
							<td>
								<asp:RadioButtonList ID="rblLigtBoxSelection" runat="server" RepeatDirection="Horizontal" CssClass="radioButtonTable">
									<asp:ListItem resourcekey="liNo" Value="0">No</asp:ListItem>
									<asp:ListItem resourcekey="liSocialMediaBox" Value="1" Selected="True">SocialMediaBox</asp:ListItem>
									<asp:ListItem resourcekey="liSocialMediaBoxLite" Value="2" Selected="False">SocialMediaBox Lite</asp:ListItem>
								</asp:RadioButtonList>
								<asp:Panel ID="pnlSMBOptions" runat="server">
									<div style="display: block; margin: 15px 0 0; padding: 0; text-align: center;">
										<img alt="" src="<%=ModulePath.Replace("/SettingsControls", "") %>static/settings/images/icons/smb.png" />
									</div>
									<table cellspacing="0" cellpadding="0" border="0" style="width: 100%; margin-top: 10px;">
										<tr>
											<td style="width: auto;">
												<dnn:Label ID="lblsmbShowThumbnails" resourcekey="lblsmbShowThumbnails" runat="server" Text="Show thumbnails panel:" HelpText="Show thumbnails panel."></dnn:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSmbShowThumbnails" runat="server" />
											</td>
											<td>
												<dnn:Label ID="lblsmbShowDetailsPanel" resourcekey="lblsmbShowDetailsPanel" runat="server" Text="Show Item details panel:" HelpText="Show Item details panel."></dnn:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSocialMediaBoxShowDetails" runat="server" Checked="True" />
											</td>
										</tr>
										<tr>
											<td colspan="4" style="width: auto; padding: 0;">
												<table id="tblSmbOPtions" runat="server" cellspacing="0" cellpadding="0" border="0" style="width: 100%;">
													<tr>
														<td style="width: 223px;">
															<dnn:Label ID="lblSmbShowTitle" resourcekey="lblSmbShowTitle" runat="server" Text="Show title:" HelpText="Show title."></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbSmbShowTitle" runat="server" Checked="True" />
														</td>
														<td>
															<dnn:Label ID="lblSmbShowDescription" resourcekey="lblSmbShowDescription" runat="server" Text="Show description:" HelpText="Show description:"></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbSmbShowDescription" runat="server" Checked="True" />
														</td>
													</tr>
													<tr>
														<td style="width: 223px;">
															<dnn:Label ID="lblsmbShowEmail" resourcekey="lblsmbShowEmail" runat="server" Text="Show email link:" HelpText="Show email link."></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbsmbShowEmailLink" runat="server" Checked="True" />
														</td>
														<td>
															<dnn:Label ID="lblsmbShowUploaderInfo" resourcekey="lblsmbShowUploaderInfo" runat="server" Text="Show user info:" HelpText="Show information about the user who added the image or other media."></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbSmbShowUploaderInfo" runat="server" Checked="True" />
														</td>
													</tr>
													<tr>
														<td style="width: 223px;">
															<dnn:Label ID="lblSmbShowDownloadLink" resourcekey="lblSmbShowDownloadLink" runat="server" Text="Show downlink link:" HelpText="Show downlink link."></dnn:Label>
														</td>
														<td>
															<asp:CheckBox ID="cbSmbShowDownloadLink" runat="server" Checked="True" />
														</td>
														<td></td>
														<td></td>
													</tr>
													<tr id="trsmbSocialSharing" runat="server">
														<td style="width: auto;">
															<dnn:Label ID="lblSocialMediaBoxShowSocialSharing" resourcekey="lblSocialMediaBoxShowSocialSharing" runat="server" Text="Show social sharing buttons:" HelpText="Show social sharing buttons."></dnn:Label>
														</td>
														<td colspan="3">
															<asp:Panel ID="pnlSmbSocialSharingButons" runat="server" Style="margin-top: 5px">
																<asp:CheckBox ID="cbSmbShowFacebook" resourcekey="cbSmbShowFacebook" runat="server" Text="Facebook" Checked="True" />
																<asp:CheckBox ID="cbSmbShowGooglePlus" resourcekey="cbSmbShowGooglePlus" runat="server" Text="Google+" Checked="True" />
																<asp:CheckBox ID="cbSmbShowTwitter" resourcekey="cbSmbShowTwitter" runat="server" Text="Twitter" Checked="True" />
																<asp:CheckBox ID="cbSmbShowPintrest" resourcekey="cbSmbShowPintrest" runat="server" Text="Pinterest" Checked="True" />
																<asp:CheckBox ID="cbSmbShowLinkedIn" resourcekey="cbSmbShowLinkedIn" runat="server" Text="LinkedIn" Checked="True" />
															</asp:Panel>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</asp:Panel>
								<asp:Panel ID="pnlSMBLiteOptions" runat="server">
									<div style="display: block; margin: 15px 0 0; padding: 0; text-align: center;">
										<img alt="" src="<%=ModulePath.Replace("/SettingsControls", "") %>static/settings/images/icons/smblight.png" />
									</div>
									<table cellspacing="0" cellpadding="0" border="0" style="width: 100%; margin-top: 15px;">
										<tr>
											<td style="width: 223px;">
												<dnn:Label ID="lblSmbLiteShowTitle" resourcekey="lblSmbLiteShowTitle" runat="server" Text="Show title:" HelpText="Show title."></dnn:Label>
											</td>
											<td>
												<asp:CheckBox ID="cbSmbLiteShowTitle" runat="server" Checked="True" />
											</td>
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
												<dnn:Label ID="lblSmbLiteShowSocialSharing" resourcekey="lblSmbLiteShowSocialSharing" runat="server" Text="Show social sharing buttons:" HelpText="Show social sharing buttons"></dnn:Label>
											</td>
											<td td colspan="3">
												<asp:Panel ID="pnlSmbLiteSocialSharingButons" resourcekey="liNone" runat="server" Style="margin-top: 5px">
													<asp:CheckBox ID="cbSmbLiteShowFacebook" resourcekey="cbSmbLiteShowFacebook" runat="server" Text="Facebook" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowGooglePlus" resourcekey="cbSmbLiteShowGooglePlus" runat="server" Text="Google+" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowTwitter" resourcekey="cbSmbLiteShowTwitter" runat="server" Text="Twitter" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowPintrest" resourcekey="cbSmbLiteShowPintrest" runat="server" Text="Pinterest" Checked="True" />
													<asp:CheckBox ID="cbSmbLiteShowLinkedIn" resourcekey="cbSmbLiteShowLinkedIn" runat="server" Text="LinkedIn" Checked="True" />
												</asp:Panel>
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</div>
		<div class="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3>
				<asp:Label ID="lblGoogleMapsSetup" resourcekey="lblGoogleMapsSetup" runat="server" Text="Google Maps:" /></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr id="trGmapsInfo" runat="server" visible="false">
							<td colspan="2" style="text-align: center;">
								<p style="margin: 0;">
									<asp:Label ID="lblSetupGoolgeMapsApiKey" resourcekey="lblSetupGoolgeMapsApiKey" runat="server" Text="To enable Google Maps, please go to the API Connection control (Dasboard -> API settings) and enter your Google Maps API key."></asp:Label>
								</p>
							</td>
						</tr>
						<tr>
							<td style="vertical-align: top; padding-top: 13px;">
								<dnn:Label ID="lblEnableGoogleMaps" resourcekey="lblEnableGoogleMaps" runat="server" Text="Google Maps:" HelpText="If an item has GPS coordinates in it's EXIF data, a Google Maps map showing the location is displayed on it's details page." />
							</td>
							<td>
								<asp:CheckBox ID="cbEnableGoogleMaps" runat="server" AutoPostBack="True" />
								<asp:Panel ID="pnlMapsOptions" runat="server">
									<table cellspacing="0" cellpadding="0" border="0">
										<tr>
											<td style="width: 200px;">
												<dnn:Label ID="lblGoogleMapsWidth" resourcekey="lblGoogleMapsWidth" runat="server" Text="Map width:" HelpText="Set the width of the map in pixels or percentage." />
											</td>
											<td>
												<p style="margin: 0 10px 0 0; float: left;">
													<asp:TextBox ID="tbGoogleMapsWidth" runat="server">500</asp:TextBox>
												</p>
												<asp:RadioButtonList ID="rblMapWidthType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblMapWidthType_SelectedIndexChanged" RepeatDirection="Horizontal" CssClass="radioButtonTable">
													<asp:ListItem resourcekey="liPixel" Value="False" Selected="True">Pixel</asp:ListItem>
													<asp:ListItem resourcekey="liPercentage" Value="True">Percentage</asp:ListItem>
												</asp:RadioButtonList>
												<asp:RequiredFieldValidator ID="rfvGoogleMapsWidth" runat="server" ControlToValidate="tbGoogleMapsWidth" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvGoogleMapsWidth.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvGoogleMapsWidth" runat="server" ControlToValidate="tbGoogleMapsWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvGoogleMapsWidth.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
												<asp:RangeValidator ID="rvGoogleMapsWidthPixels" runat="server" ControlToValidate="tbGoogleMapsWidth" Display="Dynamic" ErrorMessage="Enter value between 0-1000." MaximumValue="1000" MinimumValue="0" resourcekey="rvGoogleMapsWidthPixels.ErrorMessage" SetFocusOnError="True"
													Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:RangeValidator>
												<asp:RangeValidator ID="rvGoogleMapsWidthPercent" runat="server" ControlToValidate="tbGoogleMapsWidth" Display="Dynamic" ErrorMessage="Enter value between 0-100." MaximumValue="100" MinimumValue="0" resourcekey="rvGoogleMapsWidthPercent.ErrorMessage" SetFocusOnError="True"
													Type="Integer" ValidationGroup="vgGravitySaveSettings" Enabled="False" Visible="False"></asp:RangeValidator>
											</td>
										</tr>
										<tr>
											<td style="width: 200px;">
												<dnn:Label ID="lblGoogleMapsHeight" resourcekey="lblGoogleMapsHeight" runat="server" Text="Map height:" HelpText="Set the height of the map in pixels or percentage." />
											</td>
											<td>
												<asp:TextBox ID="tbGoogleMapsHeight" runat="server">500</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvGoogleMapsHeight" runat="server" ControlToValidate="tbGoogleMapsHeight" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvGoogleMapsHeight.ErrorMessage"
													ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvGoogleMapsHeight" runat="server" ControlToValidate="tbGoogleMapsHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvGoogleMapsHeight.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td style="width: 200px;">
												<dnn:Label ID="lblGoogleMapsZoomLevel" runat="server" resourcekey="lblGoogleMapsZoomLevel" Text="Maps zoom level:" HelpText="Maps zoom level" />
											</td>
											<td>
												<asp:TextBox ID="tbGoogleMapsZoomLevel" runat="server">12</asp:TextBox>
												<asp:RequiredFieldValidator ID="rfvMapsZoomLevel" runat="server" ControlToValidate="tbGoogleMapsZoomLevel" Display="Dynamic" ErrorMessage="This field is required." resourcekey="rfvMapsZoomLevel.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvMapsZoomLevel" runat="server" ControlToValidate="tbGoogleMapsZoomLevel" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvMapsZoomLevel.ErrorMessage"
													SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td style="width: 200px;">
												<dnn:Label ID="lblGoogleMapType" resourcekey="lblGoogleMapType" runat="server" Text="Select Google Map type:" HelpText="Select Google Map type" />
											</td>
											<td>
												<asp:RadioButtonList ID="rblGoogleMapType" runat="server" RepeatDirection="Horizontal" CssClass="radioButtonTable">
													<asp:ListItem resourcekey="liRoadmap" Selected="True" Value="ROADMAP">ROADMAP</asp:ListItem>
													<asp:ListItem resourcekey="liSatellite" Value="SATELLITE">SATELLITE</asp:ListItem>
													<asp:ListItem resourcekey="liHybrid" Value="HYBRID">HYBRID</asp:ListItem>
													<asp:ListItem resourcekey="liTerrain" Value="TERRAIN">TERRAIN</asp:ListItem>
												</asp:RadioButtonList>
											</td>
										</tr>
										<tr>
											<td style="width: 200px;">
												<dnn:Label ID="lblGoogleMapsShowMarkerInfo" runat="server" resourcekey="lblGoogleMapsShowMarkerInfo" Text="Show marker info:" HelpText="Show marker info"/>
											</td>
											<td>
												<asp:CheckBox ID="cbGoogleMapsShowMarkerInfo" runat="server" />
											</td>
										</tr>
									</table>
								</asp:Panel>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</div>
		<asp:Panel ID="pnlRssSettingsWrapper" runat="server" CssClass="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3>
				<asp:Label ID="lblRssSettings" resourcekey="lblRssSettings" runat="server" Text="RSS settings" /></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblNumberOfRSSLinks" resourcekey="lblNumberOfRSSLinks" runat="server" Text="Setup the number of RSS links:" HelpText="Setup the number of RSS liks" />
							</td>
							<td>
								<asp:TextBox ID="tbNumerOfRSSLinks" runat="server">10</asp:TextBox>
								<asp:RequiredFieldValidator ID="rfvtbNumerOfRSSLinks" runat="server" ControlToValidate="tbNumerOfRSSLinks" Display="Dynamic" ErrorMessage="This field is required." resourcekey="RequiredField.ErrorMessage" ValidationGroup="vgGravitySaveSettings"></asp:RequiredFieldValidator>		
<asp:CompareValidator ID="cvtbNumerOfRSSLinks" runat="server" ControlToValidate="tbNumerOfRSSLinks" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="OnlyNumber.ErrorMessage" SetFocusOnError="True" Type="Integer" ValidationGroup="vgGravitySaveSettings"></asp:CompareValidator>
							</td>
						</tr>
						<tr>
							<td>
								<dnn:Label ID="lblRSSIncludeImageInDescription" resourcekey="lblRSSIncludeImageInDescription" runat="server" Text="Include image in RSS description:" HelpText="Include image in RSS description" />
							</td>
							<td>
								<asp:CheckBox ID="cbRSSIncludeImageInDescription" runat="server" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</asp:Panel>
		<asp:Panel ID="pnlSelectNewsInstance" runat="server" CssClass="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3>
				<asp:Label ID="lblNewsInstanceConncetion" resourcekey="lblNewsInstanceConncetion"  runat="server" Text="EasyDNNnews connection" /></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblNewsOpenDetails" resourcekey="lblNewsOpenDetails" runat="server" Text="EasyDNNnews instance:" HelpText="If a gallery is included in any news article, you can select a news instance in which the article that contains the gallery will be displayed." />
							</td>
							<td>
								<asp:DropDownList ID="ddlNewsOpenDetails" runat="server" AppendDataBoundItems="True">
									<asp:ListItem Value="0">Select news module instance</asp:ListItem>
								</asp:DropDownList>
								<asp:Label ID="lblNewsModuleValidateEror" resourcekey="lblNewsModuleValidateEror" runat="server" Style="display: none" ForeColor="Red" Text="Please select a news instance."></asp:Label>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</asp:Panel>
		<asp:Panel ID="pnlCommunityModeWrapper" runat="server" CssClass="settingsGroup edgDisplaySettings edgAditionalOptions" Visible="True" Enabled="False">
			<h3>
				<asp:Label ID="lblCommunityMode" resourcekey="lblCommunityMode" runat="server" Text="Community mode" /></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblEnableCommunityMode" resourcekey="lblEnableCommunityMode" runat="server" Text="Enable community mode:" HelpText="Enable community mode." />
							</td>
							<td>
								<asp:Label ID="lblEnableCommunityModeMessage" resourcekey="lblEnableCommunityModeMessage" runat="server" Text="Community mode option can be enabled only when the module is added within Activity feed pages (User's or Group's)." />
								<asp:CheckBox ID="cbEnableCommunityMode" runat="server" Visible="False" AutoPostBack="True" OnCheckedChanged="cbEnableCommunityMode_CheckedChanged" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</asp:Panel>
		<asp:Panel ID="pnlCacheSettings" runat="server" CssClass="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3>
				<asp:Label ID="lblCacheSettigns" resourcekey="lblCacheSettigns" runat="server" Text="Cache settings" /></h3>
			<div>
				<table cellspacing="0" cellpadding="0" border="0" class="edggalleryDisplayOptions twoColumn">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblUseCache" resourcekey="lblUseCache" runat="server" Text="Use cache:" HelpText="Cache data to improve performance." />
							</td>
							<td>
								<asp:CheckBox ID="cbUseCache" runat="server" Visible="True" Checked="True" />
							</td>
						</tr>
					</tbody>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</asp:Panel>
		<asp:Panel ID="pnlPermissionWrapper" runat="server" CssClass="settingsGroup edgDisplaySettings edgAditionalOptions">
			<h3>
				<asp:Label ID="lblSetupPermissions" resourcekey="lblSetupPermissions" runat="server" Text="Permissions" /></h3>
			<div>
				<div class="module_settings" style="background: none;">
					<div style="background: #fff; border: 0; width: auto; padding: 0 0 15px;">
						<div class="first_coll_fixed_table">
							<asp:GridView ID="gvRolePermisionSettings" runat="server" CssClass="settings_table permissionsNotifications" AutoGenerateColumns="False" DataKeyNames="RoleID" CellPadding="0" OnRowDataBound="gvRolePermisionSettings_RowDataBound">
								<AlternatingRowStyle CssClass="second" />
								<Columns>
									<asp:TemplateField HeaderText="Roles">
										<ItemTemplate>
											<p>
												<asp:Label ID="lblRoleName" runat="server" Text='<%#Eval("RoleName")%>'></asp:Label>
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
						<div class="first_coll_fixed_table">
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
				<table style="margin: 10px 0; width: 100%;">
					<tr>
						<td colspan="2" style="text-align: center">
							<asp:Label ID="lblAdduserMessage" runat="server" EnableViewState="False" ForeColor="Red" />
						</td>
					</tr>
					<tr>
						<td style="text-align: right;">
							<asp:Label ID="lblUsernameToAdd" resourcekey="lblUsernameToAdd" runat="server" Text="Add user by username:" Font-Bold="True" />
						</td>
						<td style="text-align: left; padding-left: 10px;">
							<asp:TextBox ID="tbUserNameToAdd" runat="server" />
							<asp:LinkButton ID="lbUsernameAddPermissions" resourcekey="lbUsernameAddPermissions" runat="server" Text="Add" OnClick="lbUsernameAddPermissions_Click" />
						</td>
					</tr>
				</table>
				<div class="dnnClear">
				</div>
			</div>
		</asp:Panel>
		<asp:Label ID="lblSaveMessage" runat="server" EnableViewState="False" CssClass="saveMessage successMessage" Visible="false" />
		<p style="margin: 0 0 20px; text-align: center;">
			<asp:Button ID="btnSaveGravityGallerySettings" resourcekey="btnSaveGravityGallerySettings" runat="server" Text="Save" OnClick="btnSaveGravityGallerySettings_Click" ValidationGroup="vgGravitySaveSettings" OnClientClick="return ClientValidateEmbedURL()" Style="height: 26px" />
			<asp:Button ID="btnSaveCloseGravityGallerySettings" resourcekey="btnSaveCloseGravityGallerySettings" runat="server" Text="Save &amp; Close" OnClick="btnSaveCloseGravityGallerySettings_Click" ValidationGroup="vgGravitySaveSettings" OnClientClick="return ClientValidateEmbedURL()" />
			<asp:Button ID="btnCancelSaveGravitySettings" resourcekey="btnCancelSaveGravitySettings" runat="server" Text="Close" OnClick="btnCancelSaveGravitySettings_Click" ValidationGroup="vgGravitySaveSettings" />
		</p>
		<div id="pnlSavePresets" runat="server" class="settingsGroup square" visible="false">
			<h2>
				<asp:Label ID="lblSavePresetsTitle" resourcekey="lblSavePresetsTitle" runat="server" Text="Save Preset" /></h2>
			<div class="content">
				<table class="settingsTable">
					<tbody>
						<tr>
							<td>
								<dnn:Label ID="lblSaveCurrentSettingsAsPreset" runat="server" Text="Enter preset name:" HelpText="Enter preset name. The preset name will be also used as filename." Visible="True" ControlName="tbSavePreset" />
							</td>
							<td>
								<asp:TextBox ID="tbSavePreset" runat="server" Width="300px"></asp:TextBox>
							</td>
						</tr>
						<tr>
							<td>
								<asp:Label ID="lblSavePresetMessage" runat="server" EnableViewState="False" CssClass="saveMessage successMessage" Visible="false" />
							</td>
						</tr>
						<tr>
							<td>
								<asp:Button ID="btnSavePreset" runat="server" OnClick="btnSavePreset_Click" Text="Save preset" />
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<asp:Literal ID="ltMessage" runat="server" Text="" EnableViewState="False" Visible="False" />
<asp:ObjectDataSource ID="odsGallery" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetGaleries">
	<SelectParameters>
		<asp:Parameter Name="CategoryID" Type="Int32" />
	</SelectParameters>
</asp:ObjectDataSource>
