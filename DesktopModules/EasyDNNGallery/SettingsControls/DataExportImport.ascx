<%@ control language="C#" autoeventwireup="true" inherits="EasyDNN.Modules.EasyDNNGallery.DataExportImport, App_Web_dataexportimport.ascx.d6cf3db9" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<asp:Panel ID="pnlMain" runat="server">
	<div id="EDGadmin">
		<div class="module_action_title_box">
			<h1><%=TopTitle%></h1>
		</div>
		<div class="main_content dashboard">
			<ul class="links">
				<li>
					<asp:LinkButton runat="server" ID="lbImport" resourcekey="lbImport" class="icon content_import" Text="Import" OnClick="lbImport_Click" /></li>
				<li>
					<asp:LinkButton runat="server" ID="lbExport" resourcekey="lbExport"  class="icon content_export" Text="Export" OnClick="lbExport_Click" />
				</li>
			</ul>
		</div>
		<div class="module_settings">
			<div class="settings_category_container">
				<div class="tabbed_container">
					<div class="module_settings">
						<div class="settings_category_container">
							<div class="edn_admin_progress_overlay_container">
								<table id="tblImportUploadHeader" runat="server" class="settings_table" cellpadding="0" cellspacing="0">
									<tr>
										<td>
											<div class="category_toggle">
												<h2><%=ImportXMLfile%></h2>
											</div>
										</td>
									</tr>
								</table>
								<table id="tblImportModeSelect" runat="server" class="settings_table" cellpadding="0" cellspacing="0">
									<tr>
										<td class="left">&nbsp;</td>
										<td class="right">&nbsp;</td>
									</tr>
									<tr>
										<td class="left">
											<dnn:Label ID="lblSelectImportMethod" resourcekey="lblSelectImportMethod" runat="server" HelpText="Select to import or upload file. Existing files are located in: /portals/portalnumber/EasyDNNGalleryExport/GalleryExport/" Text="Please select:"></dnn:Label>
										</td>
										<td class="right">
											<asp:RadioButtonList ID="rblImportModeSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblImportModeSelect_SelectedIndexChanged" RepeatDirection="Horizontal">
												<asp:ListItem resourcekey="liImport" Selected="True" Value="import">Import existing file</asp:ListItem>
												<asp:ListItem resourcekey="liUpload" Value="upload">Upload</asp:ListItem>
											</asp:RadioButtonList>
										</td>
									</tr>
								</table>
								<table id="tblImportExistingFile" runat="server" class="settings_table" cellpadding="0" cellspacing="0">
									<tr>
										<td class="left">
											<dnn:Label ID="lblSelectFileToImport" resourcekey="lblSelectFileToImport" runat="server" HelpText="Select file to import. Existing files are located in: /portals/portalnumber/EasyDNNGalleryExport/GalleryExport/" Text="Select file to import:"></dnn:Label>
										</td>
										<td>
											<asp:DropDownList ID="ddlImportXMLFile" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImportXMLFile_SelectedIndexChanged"></asp:DropDownList></td>
									</tr>
									<tr>
										<td class="left">
											<dnn:Label ID="lblFileOperations" resourcekey="lblFileOperations" runat="server" HelpText="File actions." Text="File actions:" />
										</td>
										<td class="right">
											<asp:Button ID="btnDeleteExistingXML" resourcekey="btnDeleteExistingXML" runat="server" Text="Delete" OnClick="btnDeleteExistingXML_Click" />
											<asp:Button ID="btnDownloadExistingXML" resourcekey="btnDownloadExistingXML" runat="server" Text="Download XML file" OnCommand="btnDownloadExistingXML_Command" />
											<asp:Button ID="btnDownloadExistingZIP" resourcekey="btnDownloadExistingZIP" runat="server" Text="Download ZIP file" OnClick="btnDownloadExistingZIP_Click" Visible="False" />
										</td>
									</tr>
								</table>
								<table id="tblSelectAuthorAdCategory" runat="server" class="settings_table" cellpadding="0" cellspacing="0">
									<tr>
										<td class="left">&nbsp;</td>
										<td class="right">&nbsp;</td>
									</tr>
									<tr>
										<td class="left">
											<dnn:Label ID="lblSelectUploader" resourcekey="lblSelectUploader" runat="server" HelpText="Select media uploader - if no user is selected current user will be added as media uploader." Text="Select media uploader:" />
										</td>
										<td class="right">
											<asp:DropDownList ID="ddlRoles" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlRoles_SelectedIndexChanged" CssClass="ddlgeneral">
												<asp:ListItem Value="-1">Select role</asp:ListItem>
											</asp:DropDownList>
											<asp:DropDownList ID="ddlAuthors" runat="server" AppendDataBoundItems="True" CssClass="ddlgeneral">
												<asp:ListItem Value="-1">Select uploader</asp:ListItem>
											</asp:DropDownList>
										</td>
									</tr>
								</table>
								<table id="tblUplaodXMLFile" runat="server" class="settings_table" cellpadding="0" cellspacing="0" visible="false">
									<tr>
										<td class="left">
											<dnn:Label ID="lblSelectXMLFile" resourcekey="lblSelectXMLFile" runat="server" HelpText="Select XML file." Text="Select XML file:" />
										</td>
										<td class="right">
											<asp:FileUpload ID="fuXMLFileUpload" runat="server" /></td>
									</tr>
									<tr>
										<td class="left">
											<dnn:Label ID="lblSelectZipResource" resourcekey="lblSelectZipResource"  runat="server" HelpText="Select zip file with resources." Text="Select zip resources file:" />
										</td>
										<td class="right">
											<asp:FileUpload ID="fuZipFileUpload" runat="server" /></td>
									</tr>
									<tr>
										<td class="left"></td>
										<td class="right">
											<asp:Button ID="btnXMLFileUpload" resourcekey="btnXMLFileUpload"  runat="server" Text="Upload" OnClick="btnXMLFileUpload_Click" Style="min-height: 30px; min-width: 150px" />
										</td>
									</tr>
									<tr>
										<td class="left"></td>
										<td class="right">&nbsp;</td>
									</tr>
								</table>
								<asp:UpdatePanel ID="upImport" runat="server" UpdateMode="Conditional">
									<ContentTemplate>
										<asp:UpdateProgress ID="upImportOverlay" runat="server" AssociatedUpdatePanelID="upImport" DisplayAfter="300" DynamicLayout="true">
											<ProgressTemplate>
												<div class="edn_admin_progress_overlay">
													<asp:Label ID="lblImportInfo" resourcekey="lblImportInfo"  runat="server" Style="width: 50%; display: block; margin-left: auto; margin-right: auto;" Text="Importing data may take a few minutes to finish. Please wait." Font-Size="Large" />
												</div>
											</ProgressTemplate>
										</asp:UpdateProgress>
										<table id="tblImportFromExistingFile" runat="server" class="settings_table" cellpadding="0" cellspacing="0">
											<tr>
												<td class="left"></td>
												<td class="right">
													<asp:Button ID="btnImportFromExistingXML" resourcekey="btnImportFromExistingXML" runat="server" Text="Import" OnClick="btnImportFromXML_Click" Style="min-height: 30px; min-width: 150px" />
													<asp:Label runat="server" resourcekey="lblImportMainMessage" ID="lblImportMainMessage" EnableViewState="False"></asp:Label></td>
											</tr>
										</table>
									</ContentTemplate>
								</asp:UpdatePanel>
							</div>
							<asp:UpdatePanel ID="upExportData" runat="server" UpdateMode="Conditional" Visible="False">
								<ContentTemplate>
									<div class="edn_admin_progress_overlay_container">
										<asp:UpdateProgress ID="upExportOverlay" runat="server" AssociatedUpdatePanelID="upExportData" DisplayAfter="300" DynamicLayout="true">
											<ProgressTemplate>
												<div class="edn_admin_progress_overlay">
													<asp:Label ID="lblExportInfo" resourcekey="lblExportInfo"  runat="server" Style="width: 50%; display: block; margin-left: auto; margin-right: auto;" Text="Exporting files may take a few minutes to finish. Please wait." Font-Size="Large" />
												</div>
											</ProgressTemplate>
										</asp:UpdateProgress>
										<table class="settings_table" cellpadding="0" cellspacing="0">
											<tr>
												<td colspan="2">
													<div class="category_toggle">
														<h2><%=ExportDatatoXMLFile%></h2>
													</div>
												</td>
											</tr>
											<tr>
												<td class="left">&nbsp;</td>
												<td class="right">&nbsp;</td>
											</tr>
											<tr>
												<td class="left">
													<asp:Label ID="lblExportFileName" resourcekey="lblExportFileName" runat="server" Text="Enter file name:"></asp:Label></td>
												<td class="right">
													<asp:TextBox ID="tbExportFileName" runat="server" Style="width: 250px"></asp:TextBox>
												</td>
											</tr>
											<tr>
												<td class="left">
													<asp:Label ID="lblCreateZipWithData" resourcekey="lblCreateZipWithData" runat="server" Text="Create zip file with images:"></asp:Label>
												</td>
												<td class="right">
													<asp:CheckBox ID="cbCreateZipFile" runat="server" Checked="True" />
												</td>
											</tr>
											<tr>
												<td class="left">
													<asp:Label ID="lblExportAllcategories" resourcekey="lblExportAllcategories" runat="server" Text="Export all categories:"></asp:Label></td>
												<td class="right">
													<asp:CheckBox ID="cbExportAllcategories" runat="server" Checked="True" AutoPostBack="True" OnCheckedChanged="cbExportAllcategories_CheckedChanged" /></td>
											</tr>
											<tr id="trSelectCategoriesToExport" runat="server" visible="false">
												<td class="left">
													<asp:Label ID="lblSelectCategoriesToExport" resourcekey="lblSelectCategoriesToExport" runat="server" Text="Select categories to export:"></asp:Label></td>
												<td class="right">
													<asp:CheckBoxList ID="cblSelectCategoriesToExport" runat="server" DataTextField="CategoryName" DataValueField="CategoryID" RepeatColumns="2" /></td>
											</tr>
											<tr>
												<td class="left"></td>
												<td class="right">
													<asp:Button ID="btnExportToXMLFile" resourcekey="btnExportToXMLFile" runat="server" Text="Export to XML file" OnClick="btnExportToXMLFile_Click" Style="min-height: 30px; min-width: 150px" />
												</td>
											</tr>
											<tr>
												<td class="left"></td>
												<td class="right">
													<asp:Label ID="lblExportInfoMessage"  runat="server" EnableViewState="False" /></td>
											</tr>
											<tr>
												<td class="left">
													<asp:Label ID="lblExportXMLMessage" runat="server" Text="" />
												</td>
												<td class="right">
													<asp:HyperLink ID="hlExportXMLMessage" resourcekey="hlExportXMLMessage" runat="server" Visible="false" Text="Download file."></asp:HyperLink>
												</td>
											</tr>
											<tr>
												<td class="left">
													<asp:Label ID="lblExportZipMessage" runat="server" Text="" />
												</td>
												<td class="right">
													<asp:HyperLink ID="hlDownloadZipFile" resourcekey="hlDownloadZipFile" runat="server" Visible="false" Text="Download file."></asp:HyperLink>
												</td>
											</tr>
										</table>
									</div>
								</ContentTemplate>
							</asp:UpdatePanel>
						</div>
					</div>
				</div>
				<br />
			</div>
		</div>
	</div>
</asp:Panel>
<asp:HiddenField ID="hfUploadedFile" runat="server" />







