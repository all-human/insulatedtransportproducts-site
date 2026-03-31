<%@ control language="C#" inherits="EasyDNN.Modules.EasyDNNGallery.Upload, App_Web_upload.ascx.af09375b" autoeventwireup="true" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<style type="text/css">
	.style1 {
		width: 100%;
		height: 104px;
	}

	.style3 {
		width: 147px;
	}

	.style4 {
		width: 165px;
	}

	.style6 {
		width: 146px;
	}

	.style7 {
		width: 388px;
	}

	.style9 {
		width: 189px;
	}

	.style10 {
		width: 345px;
	}

	.style11 {
		width: 206px;
	}

	.style12 {
		width: 149px;
		height: 23px;
	}

	.style13 {
		height: 23px;
	}

	.style16 {
		width: 236px;
	}

	.style17 {
		width: 237px;
	}

	.style18 {
		width: 250px;
	}

	.style19 {
		width: 33px;
	}

	.style20 {
		width: 167px;
	}

	.auto-style1 {
		width: 119px;
	}

	.auto-style2 {
		height: 28px;
	}
</style>
<script type="text/javascript">
	simpleFineUploaderSettings = function () {
		return {
			endpoint: '<%=ModulePath%>htmluploader.ashx?portalid=<%=PortalId%>&userid=<%=UserId%>',
			params: {
				moduleId: '<%=ModuleId%>'
			},
			allowedExtensions: ['jpg', 'jpeg', 'gif', 'png', 'bmp'],
			allowPreviewThumbnails: true,
			onAllUploadsComplete: function () {
				document.getElementById('<%=btnSaveMultiImageUpload.ClientID%>').click();
			},
			localization: {
				'Queued': '<%=Localization.GetString("Queued.Text", this.LocalResourceFile)%>',
				'Retry': '<%=Localization.GetString("Retry.Text", this.LocalResourceFile)%>',
				'Cancel': '<%=Localization.GetString("Cancel.Text", this.LocalResourceFile)%>',
				'no preview avalible': '<%=Localization.GetString("NoPreviewAvalible.Text", this.LocalResourceFile)%>',
				'of': '<%=Localization.GetString("Of.Text", this.LocalResourceFile)%>',
				'Upload failed': '<%=Localization.GetString("Uploadfailed.Text", this.LocalResourceFile)%>'
			}
		}
	};
	simpleVideoFineUploaderSettings = function () {
		return {
			endpoint: '<%=ModulePath%>htmluploader.ashx?portalid=<%=PortalId%>&userid=<%=UserId%>',
			params: {
				moduleId: '<%=ModuleId%>'
			},
			allowedExtensions: ['mov', 'mp4', 'flv', 'swf', '3gp'],
			allowPreviewThumbnails: false,
			onAllUploadsComplete: function () {
				document.getElementById('<%=btnSaveMultiVideoUpload.ClientID%>').click();
			},
			localization: {
				'Queued': '<%=Localization.GetString("Queued.Text", this.LocalResourceFile)%>',
				'Retry': '<%=Localization.GetString("Retry.Text", this.LocalResourceFile)%>',
				'Cancel': '<%=Localization.GetString("Cancel.Text", this.LocalResourceFile)%>',
				'no preview avalible': '<%=Localization.GetString("NoPreviewAvalible.Text", this.LocalResourceFile)%>',
				'of': '<%=Localization.GetString("Of.Text", this.LocalResourceFile)%>',
				'Upload failed': '<%=Localization.GetString("Uploadfailed.Text", this.LocalResourceFile)%>'
			}
		}
	};
	simpleAudioFineUploaderSettings = function () {
		return {
			endpoint: '<%=ModulePath%>htmluploader.ashx?portalid=<%=PortalId%>&userid=<%=UserId%>',
			params: {
				moduleId: '<%=ModuleId%>'
			},
			allowedExtensions: ['mp3'],
			allowPreviewThumbnails: false,
			onAllUploadsComplete: function () {
				document.getElementById('<%=btnSaveMultiAudioUpload.ClientID%>').click();
			},
			localization: {
				'Queued': '<%=Localization.GetString("Queued.Text", this.LocalResourceFile)%>',
				'Retry': '<%=Localization.GetString("Retry.Text", this.LocalResourceFile)%>',
				'Cancel': '<%=Localization.GetString("Cancel.Text", this.LocalResourceFile)%>',
				'no preview avalible': '<%=Localization.GetString("NoPreviewAvalible.Text", this.LocalResourceFile)%>',
				'of': '<%=Localization.GetString("Of.Text", this.LocalResourceFile)%>',
				'Upload failed': '<%=Localization.GetString("Uploadfailed.Text", this.LocalResourceFile)%>'
			}
		}
	};
	function SaveCheckedChekboxes() {
		var roleViewChecked = ",";
		<%=jQuery%>('#pnlAllSettings span.categoryRoleView > input').each(function () {
			if (<%=jQuery%>(this).is(':checked')) {
				roleViewChecked = roleViewChecked +<%=jQuery%>(this).parent().data('cid') + ",";
			}
		});
		<%=jQuery%>('#<%=hfCategoryRolesAndPermisionsView.ClientID%>').val(roleViewChecked);
		var roleViewChecked = ",";
		<%=jQuery%>('#pnlAllSettings span.categoryRoleEdit > input').each(function () {
			if (<%=jQuery%>(this).is(':checked')) {
				roleViewChecked = roleViewChecked +<%=jQuery%>(this).parent().data('cid') + ",";
			}
		});
		<%=jQuery%>('#<%=hfCategoryRolesAndPermisionsEdit.ClientID%>').val(roleViewChecked);
	}
	function SaveGalleryCheckedChekboxes() {
		if (typeof (Page_ClientValidate) == 'function') {
			if (Page_ClientValidate("vgSaveGalleryPermisions") == false) {
				return false;
			}
		}
		var roleViewChecked = ",";
		<%=jQuery%>('#pnlAllGallerySettings span.galleryRoleView > input').each(function () {
			if (<%=jQuery%>(this).is(':checked')) {
				roleViewChecked = roleViewChecked +<%=jQuery%>(this).parent().data('cid') + ",";
			}
		});
		<%=jQuery%>('#<%=hfGalleryRolesAndPermisionsView.ClientID%>').val(roleViewChecked);
		var roleViewChecked = ",";
		<%=jQuery%>('#pnlAllGallerySettings span.galleryRoleEdit > input').each(function () {
			if (<%=jQuery%>(this).is(':checked')) {
				roleViewChecked = roleViewChecked +<%=jQuery%>(this).parent().data('cid') + ",";
			}
		});
		<%=jQuery%>('#<%=hfGalleryRolesAndPermisionsEdit.ClientID%>').val(roleViewChecked);
	}
	function clickAllcheckboxes(viewOrEdit) {
		var cbSelector = '#pnlAllSettings span.categoryRoleView > input';
		if (viewOrEdit === 'Edit') {
			if (<%=jQuery%>(this).closest('td').children(':input').last().val() === 'All users') {
				cbSelector = '#pnlAllSettings span.categoryRoleView > input, #pnlAllSettings span.categoryRoleEdit > input';
			}
			else {
				cbSelector = "none";
			}
			var parentTr = <%=jQuery%>(this).closest('tr').find('span > input:first');
			if (<%=jQuery%>(this).is(':checked')) {
				var domElem = parentTr[0];
				domElem.checked = true;
				parentTr.prop("disabled", true);
			}
			else {
				if (<%=jQuery%>(this).closest('table').find('span > input:first').is(':checked') === false) {
					var parentTr = <%=jQuery%>(this).closest('tr').find('span > input:first');
					<%=jQuery%>(parentTr).removeAttr("disabled");
					<%=jQuery%>(parentTr).removeProp("disabled");
					<%=jQuery%>(parentTr).prop("disabled", false);
				}
			}
			if (<%=jQuery%>(this).parent().data('cid') == -2) {
				var checked = <%=jQuery%>(this).is(':checked');
				<%=jQuery%>('#pnlAllSettings span.categoryUserEdit > input, #pnlAllSettings span.categoryUserView > input').each(function () {
					<%=jQuery%>(this).prop("disabled", checked);
				});
			}
		}
		else {
			if (<%=jQuery%>(this).parent().data('cid') == -2) {
				var checked = <%=jQuery%>(this).is(':checked');
				<%=jQuery%>('#pnlAllSettings span.categoryUserView > input').each(function () {
					<%=jQuery%>(this).prop("disabled", checked);
				});
			}
			if (<%=jQuery%>(this).closest('td').children(':input').last().val() != 'All users') {
				cbSelector = "none";
			}
		}
		if (cbSelector != "none") {
			var idViewAll = (<%=jQuery%>(this).attr("id"));
			if (<%=jQuery%>(this).is(':checked')) {
				<%=jQuery%>(cbSelector).each(function () {
					var parentTr = <%=jQuery%>(this);
					parentTr[0].checked = true;
					if (idViewAll != <%=jQuery%>(this).attr("id"))
						<%=jQuery%>(this).prop("disabled", true);
				});
			}
			else {
				<%=jQuery%>(cbSelector).each(function () {
					if (<%=jQuery%>(this).closest('td').children(':input').last().val() != 'Administrators') {
						if (<%=jQuery%>(this).closest('table').find('span > input:first').is(':checked') === false || (<%=jQuery%>(this).attr('name').indexOf("cbCategoryRoleEdit") != -1) || (<%=jQuery%>(this).closest('td').children(':input').last().val() === 'All users')) {
							if (<%=jQuery%>(this).closest('tr').find('span > input:last').is(':checked') === false || <%=jQuery%>(this).attr('name').indexOf("cbCategoryRoleEdit") != -1) {
								<%=jQuery%>(this).removeAttr("disabled");
								<%=jQuery%>(this).removeProp("disabled");
								<%=jQuery%>(this).prop("disabled", false);
							}
						}
					}
				});
			}
		}
	}

	function clickAllGalleryCheckboxes(viewOrEdit) {
		var cbSelector = '#pnlAllGallerySettings span.galleryRoleView > input';
		if (viewOrEdit === 'Edit') {
			if (<%=jQuery%>(this).closest('td').children(':input').last().val() === 'All users') {
				cbSelector = '#pnlAllGallerySettings span.galleryRoleView > input, #pnlAllGallerySettings span.galleryRoleEdit > input';
			}
			else {
				cbSelector = "none";
			}
			var parentTr = <%=jQuery%>(this).closest('tr').find('span > input:first');
			if (<%=jQuery%>(this).is(':checked')) {
				var domElem = parentTr[0];
				domElem.checked = true;
				parentTr.prop("disabled", true);
			}
			else {
				if (<%=jQuery%>(this).closest('table').find('span > input:first').is(':checked') === false) {
					var parentTr = <%=jQuery%>(this).closest('tr').find('span > input:first');
					<%=jQuery%>(parentTr).removeAttr("disabled");
					<%=jQuery%>(parentTr).removeProp("disabled");
					<%=jQuery%>(parentTr).prop("disabled", false);
				}
			}
			if (<%=jQuery%>(this).parent().data('cid') == -2) {
				var checked = <%=jQuery%>(this).is(':checked');
				<%=jQuery%>('#pnlAllGallerySettings span.galleryUserEdit > input, #pnlAllGallerySettings span.galleryUserView > input').each(function () {
					<%=jQuery%>(this).prop("disabled", checked);
				});
			}
		}
		else {
			if (<%=jQuery%>(this).parent().data('cid') == -2) {
				var checked = <%=jQuery%>(this).is(':checked');
				<%=jQuery%>('#pnlAllGallerySettings span.galleryUserView > input').each(function () {
					<%=jQuery%>(this).prop("disabled", checked);
				});
			}
			if (<%=jQuery%>(this).closest('td').children(':input').last().val() != 'All users') {
				cbSelector = "none";
			}
		}
		if (cbSelector != "none") {
			var idViewAll = (<%=jQuery%>(this).attr("id"));
			if (<%=jQuery%>(this).is(':checked')) {
				<%=jQuery%>(cbSelector).each(function () {
					var parentTr = <%=jQuery%>(this);
					parentTr[0].checked = true;
					if (idViewAll != <%=jQuery%>(this).attr("id"))
						<%=jQuery%>(this).prop("disabled", true);
				});
			}
			else {
				<%=jQuery%>(cbSelector).each(function () {
					if (<%=jQuery%>(this).closest('td').children(':input').last().val() != 'Administrators') {
						if (<%=jQuery%>(this).closest('table').find('span > input:first').is(':checked') === false || (<%=jQuery%>(this).attr('name').indexOf("cbGalleryRoleEdit") != -1) || (<%=jQuery%>(this).closest('td').children(':input').last().val() === 'All users')) {
							if (<%=jQuery%>(this).closest('tr').find('span > input:last').is(':checked') === false || <%=jQuery%>(this).attr('name').indexOf("cbGalleryRoleEdit") != -1) {
								<%=jQuery%>(this).removeAttr("disabled");
								<%=jQuery%>(this).removeProp("disabled");
								<%=jQuery%>(this).prop("disabled", false);
							}
						}
					}
				});
			}
		}
	}
	function SelectAllMedia() {
		<%=jQuery%>('#<%=gvGalleryImages.ClientID%> span.EGMediaSelect > input').each(function () {
			this.checked = true;
		});
	}

	function DeSelectAllMedia() {
		<%=jQuery%>('#<%=gvGalleryImages.ClientID%> span.EGMediaSelect > input').each(function () {
			this.checked = false;
		});
	}

	function SelectAllGalleries() {
		<%=jQuery%>('#<%=gvGalleries.ClientID%> span.EGMediaSelect > input').each(function () {
			this.checked = true;
		});
	}

	function DeSelectAllGalleries() {
		<%=jQuery%>('#<%=gvGalleries.ClientID%> span.EGMediaSelect > input').each(function () {
			this.checked = false;
		});
	}
	function ProvjeriRBL3(rbl3, div3, div4) {
		var rdolist2 = document.getElementById(rbl3);
		var myitems2 = rdolist2.getElementsByTagName('input');
		var elementRef8 = document.getElementById(div3);
		var elementRef9 = document.getElementById(div4);
		if (myitems2[0].checked) {
			elementRef8.style.display = 'none';
			elementRef9.style.display = 'none';
		}
		if (myitems2[1].checked) {
			elementRef8.style.display = 'block';
			elementRef9.style.display = 'none';
		}
		if (myitems2[2].checked) {
			elementRef8.style.display = 'none';
			elementRef9.style.display = 'block';
		}
	}

	function ProvjeriRBL3Met2(rbl3, div3, div4) {
		var rdolist2 = document.getElementById(rbl3);
		var myitems2 = rdolist2.getElementsByTagName('input');
		var elementRef8 = document.getElementById(div3);
		var elementRef9 = document.getElementById(div4);
		if (myitems2[2].checked) {
			elementRef8.style.display = 'none';
			elementRef9.style.display = 'none';
		}
		if (myitems2[0].checked) {
			elementRef8.style.display = 'block';
			elementRef9.style.display = 'none';
		}
		if (myitems2[1].checked) {
			elementRef8.style.display = 'none';
			elementRef9.style.display = 'block';
		}
	}

	function Sakrij(sto) {
		var elementRef = document.getElementById(sto);
		elementRef.style.display = (elementRef.style.display == 'none') ? 'block' : 'none';
	}

	function SakrijDva(sto, sto2) {
		var elementRef2 = document.getElementById(sto);
		var elementRef3 = document.getElementById(sto2);
		elementRef2.style.display = (elementRef2.style.display == 'none') ? 'block' : 'none';
		elementRef3.style.display = (elementRef3.style.display == 'none') ? 'block' : 'none';
	}

	function SakrijTri(sto, sto2, sto3) {
		var elementRef2 = document.getElementById(sto);
		var elementRef3 = document.getElementById(sto2);
		var elementRef4 = document.getElementById(sto3);
		elementRef2.style.display = (elementRef2.style.display == 'none') ? 'block' : 'none';
		elementRef3.style.display = (elementRef3.style.display == 'none') ? 'block' : 'none';
		elementRef4.style.display = (elementRef4.style.display == 'none') ? 'block' : 'none';
	}

	function ProvjeriRBL(rbl, div1, div2) {
		var rdolist = document.getElementById(rbl);
		var myitems = rdolist.getElementsByTagName('input');
		var elementRef6 = document.getElementById(div1);
		var elementRef7 = document.getElementById(div2);
		if (myitems[0].checked) {
			elementRef6.style.display = 'block';
			elementRef7.style.display = 'none';
		}
		else {
			elementRef6.style.display = 'none';
			elementRef7.style.display = 'block';
		}
	}

	<%=jQuery%>(document).ready(function ($) {
		$('#<%=tbPublishDate.ClientID%>').datepick({ dateFormat: "<%=dateFormat%>" });
		$('#<%=tbExpireDate.ClientID%>').datepick({ dateFormat: "<%=dateFormat%>" });
		var moduleId = "<%=ModuleId%>";
		var userId = "<%=UserId%>";
		if ('<%=gms.EnableCommunityMode.ToString()%>' === 'True') {
			$('#<%=lbSocialSecurityGroups.ClientID %>').dropdownchecklist({
				forceMultiple: true,
				minWidth: 180,
				width: 180,
				emptyText: '<span class="empty">None</span>'
			});
			$('#<%=lbGallerySocialSecurityGroups.ClientID %>').dropdownchecklist({
				forceMultiple: true,
				minWidth: 180,
				width: 180,
				emptyText: '<span class="empty">None</span>'
			});
		}
		if ('<%=useHtmlUpload%>' === 'True') {
			if ($('#<%=pnlImageUploadfineUploader.ClientID%>').length > 0) {
				eds1_10('#galleryImageFineUploaderContainer').edsFineUploader_1_2(simpleFineUploaderSettings());
			}
			else if ($('#<%=pnlVideoUploadfineUploader.ClientID%>').length > 0) {
				eds1_10('#galleryVideoFineUploaderContainer').edsFineUploader_1_2(simpleVideoFineUploaderSettings());
			}
			else if ($('#<%=pnlAudioUploadfineUploader.ClientID%>').length > 0) {
				eds1_10('#galleryAudioFineUploaderContainer').edsFineUploader_1_2(simpleAudioFineUploaderSettings());
			}
	}
	else {
			///////
		$('#<%=GalfileInput.ClientID%>').uploadify({
				'uploader': '<%=ModulePath%>js/uploadify.swf',
			'script': '<%=ModulePath%>UploadImages.ashx?portalid=<%=PortalId%>',
			'scriptData': { 'id': moduleId, 'id2': userId },
			'cancelImg': '<%=ModulePath%>images/cancel.png',
			'multi': true,
			'fileDesc': 'Image Files',
			'fileExt': '*.jpg;*.png;*.gif;*.bmp;*.jpeg',
			'queueSizeLimit': 100,
			'buttonText': '<%=SelectImages%>',
			'onAllComplete': function (event, queueID, fileObj, response, data) {
				document.getElementById('<%=btnSaveMultiImageUpload.ClientID%>').click();
			},
			'onError': function (event, queueID, fileObj, errorObj) {
				var msg;
				if (errorObj.status == 404) {
					alert('Could not find upload script. Use a path relative to: ' + '<?= getcwd() ?>');
					msg = 'Could not find upload script.';
				}
				else if 
				 (errorObj.type === "HTTP")
					msg = errorObj.type + ": " + errorObj.status;
				else if (errorObj.type === "File Size")
					msg = fileObj.name + '<br>' + errorObj.type + ' Limit: ' + Math.round(errorObj.sizeLimit / 1024) + 'KB';
				else
					msg = errorObj.type + ": " + errorObj.text;
				$.jGrowl('<p></p>' + msg, {
					theme: 'error',
					header: 'ERROR',
					sticky: true
				});
				<%=jQuery%>("#<%=GalfileInput.ClientID%>" + queueID).fadeOut(250, function () { <%=jQuery%>("#<%=GalfileInput.ClientID%>" + queueID).remove() });
				return false;
			},
			'onComplete': function (a, b, c, d, e) {
				var size = Math.round(c.size / 1024);
				$.jGrowl('<p></p>' + c.name + ' - ' + size + 'KB', {
					theme: 'success',
					header: 'Upload Complete',
					life: 3000,
					sticky: false
				});
			}
		});
			///////
		$('#<%=MultiVideoFileInput.ClientID%>').uploadify({
				'uploader': '<%=ModulePath%>js/uploadify.swf',
				'script': '<%=ModulePath%>UploadVideos.ashx?portalid=<%=PortalId%>',
				'scriptData': { 'id': moduleId, 'id2': userId },
				'cancelImg': '<%=ModulePath%>images/cancel.png',
				'multi': true,
				'fileDesc': 'Video Files',
				'fileExt': '*.mov;*.mp4;*.flv;*.swf;*.3gp',
				'queueSizeLimit': 100,
				'buttonText': '<%=SelectVideos%>',
				'onAllComplete': function (event, queueID, fileObj, response, data) {
					document.getElementById('<%=btnSaveMultiVideoUpload.ClientID%>').click();
				},
				'onError': function (event, queueID, fileObj, errorObj) {
					var msg;
					if (errorObj.status == 404) {
						alert('Could not find upload script. Use a path relative to: ' + '<?= getcwd() ?>');
						msg = 'Could not find upload script.';
					}
					else if (errorObj.type === "HTTP")
						msg = errorObj.type + ": " + errorObj.status;
					else if (errorObj.type === "File Size")
						msg = fileObj.name + '<br>' + errorObj.type + ' Limit: ' + Math.round(errorObj.sizeLimit / 1024) + 'KB';
					else
						msg = errorObj.type + ": " + errorObj.text;
					$.jGrowl('<p></p>' + msg, {
						theme: 'error',
						header: 'ERROR',
						sticky: true
					});
					$("#<%=MultiVideoFileInput.ClientID%>" + queueID).fadeOut(250, function () { <%=jQuery%>("#<%=MultiVideoFileInput.ClientID%>" + queueID).remove() });
				return false;
			},
				'onComplete': function (a, b, c, d, e) {
					var size = Math.round(c.size / 1024);
					$.jGrowl('<p></p>' + c.name + ' - ' + size + 'KB', {
						theme: 'success',
						header: 'Upload Complete',
						life: 3000,
						sticky: false
					});
				}
			});
			////////
		$('#<%=MultiAudioFileInput.ClientID%>').uploadify({
				'uploader': '<%=ModulePath%>js/uploadify.swf',
				'script': '<%=ModulePath%>UploadAudio.ashx?portalid=<%=PortalId%>',
				'scriptData': { 'id': moduleId, 'id2': userId },
				'cancelImg': '<%=ModulePath%>images/cancel.png',
			'multi': true,
			'fileDesc': 'Video Files',
			'fileExt': '*.mp3',
			'queueSizeLimit': 100,
			'buttonText': '<%=SelectAudio%>',
				'onAllComplete': function (event, queueID, fileObj, response, data) {
					document.getElementById('<%=btnSaveMultiAudioUpload.ClientID%>').click();
				},
				'onError': function (event, queueID, fileObj, errorObj) {
					var msg;
					if (errorObj.status == 404) {
						alert('Could not find upload script. Use a path relative to: ' + '<?= getcwd() ?>');
						msg = 'Could not find upload script.';
					}
					else if (errorObj.type === "HTTP")
						msg = errorObj.type + ": " + errorObj.status;
					else if (errorObj.type === "File Size")
						msg = fileObj.name + '<br>' + errorObj.type + ' Limit: ' + Math.round(errorObj.sizeLimit / 1024) + 'KB';
					else
						msg = errorObj.type + ": " + errorObj.text;
					$.jGrowl('<p></p>' + msg, {
						theme: 'error',
						header: 'ERROR',
						sticky: true
					});
					$("#<%=MultiAudioFileInput.ClientID%>" + queueID).fadeOut(250, function () { $("#<%=MultiAudioFileInput.ClientID%>" + queueID).remove() });
				return false;
			},
				'onComplete': function (a, b, c, d, e) {
					var size = Math.round(c.size / 1024);
					$.jGrowl('<p></p>' + c.name + ' - ' + size + 'KB', {
						theme: 'success',
						header: 'Upload Complete',
						life: 3000,
						sticky: false
					});
				}
			});
	}
	});
</script>
<div id="mainUpload" runat="server">
	<div id="divUpload">
		<table width="100%" cellpadding="0" cellspacing="0">
			<tr>
				<td align="center">
					<div id="EDGAdminContent">
						<div style="width: 800px">
							<asp:Label ID="lblPortalID" runat="server" Visible="False" />
							<asp:ObjectDataSource ID="odsCategories" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetCategoriesByUser" UpdateMethod="UpdateCategory" DeleteMethod="DeleteCategory">
								<DeleteParameters>
									<asp:Parameter Name="CategoryID" Type="Int32" />
								</DeleteParameters>
								<UpdateParameters>
									<asp:Parameter Name="CategoryID" Type="Int32" />
									<asp:Parameter Name="CategoryName" Type="String" />
									<asp:Parameter Name="CategoryDescription" Type="String" />
									<asp:Parameter Name="Position" Type="Int32" />
								</UpdateParameters>
								<SelectParameters>
									<asp:ControlParameter ControlID="lblPortalID" Name="PortalID" PropertyName="Text" Type="Int32" />
									<asp:Parameter Name="UserID" Type="Int32" />
									<asp:Parameter Name="byUser" Type="Boolean" />
									<asp:Parameter Name="isAdmin" Type="Boolean" />
								</SelectParameters>
							</asp:ObjectDataSource>
							<asp:ObjectDataSource ID="odsMoveCategories" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetCategoriesByUser" OnSelecting="odsMoveCategories_Selecting">
								<SelectParameters>
									<asp:ControlParameter ControlID="lblPortalID" Name="PortalID" PropertyName="Text" Type="Int32" />
									<asp:Parameter Name="UserID" Type="Int32" />
									<asp:Parameter Name="byUser" Type="Boolean" />
									<asp:Parameter Name="isAdmin" Type="Boolean" />
								</SelectParameters>
							</asp:ObjectDataSource>
							<asp:ObjectDataSource ID="odsMoveGalleries" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetGaleries" DeleteMethod="DeleteGallery" UpdateMethod="UpdateGalley">
								<DeleteParameters>
									<asp:Parameter Name="GalleryID" Type="Int32" />
								</DeleteParameters>
								<UpdateParameters>
									<asp:Parameter Name="GalleryID" Type="Int32" />
									<asp:Parameter Name="GalleryName" Type="String" />
									<asp:Parameter Name="Position" Type="Int32" />
								</UpdateParameters>
								<SelectParameters>
									<asp:ControlParameter ControlID="ddlMoveCategory" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
								</SelectParameters>
							</asp:ObjectDataSource>
							<asp:ObjectDataSource ID="odsMoveGalleriesByUserID" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetGaleriesByUserID" DeleteMethod="DeleteGallery" UpdateMethod="UpdateGalley">
								<DeleteParameters>
									<asp:Parameter Name="GalleryID" Type="Int32" />
								</DeleteParameters>
								<UpdateParameters>
									<asp:Parameter Name="GalleryID" Type="Int32" />
									<asp:Parameter Name="GalleryName" Type="String" />
									<asp:Parameter Name="Position" Type="Int32" />
								</UpdateParameters>
								<SelectParameters>
									<asp:ControlParameter ControlID="ddlMoveCategory" Name="CategoryID" PropertyName="SelectedValue" Type="Int32" />
									<asp:Parameter Name="UserID" Type="Int32" />
									<asp:Parameter Name="byUser" Type="Boolean" />
									<asp:Parameter Name="isAdmin" Type="Boolean" />
								</SelectParameters>
							</asp:ObjectDataSource>
							<asp:ObjectDataSource ID="odsGalleries" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetGaleriesByUserID" DeleteMethod="DeleteGallery" UpdateMethod="UpdateGalley" OnSelecting="odsGalleries_Selecting" OnSelected="odsGalleries_Selected">
								<DeleteParameters>
									<asp:Parameter Name="GalleryID" Type="Int32" />
								</DeleteParameters>
								<UpdateParameters>
									<asp:Parameter Name="GalleryID" Type="Int32" />
									<asp:Parameter Name="GalleryName" Type="String" />
									<asp:Parameter Name="GalleryDescription" Type="String" />
									<asp:Parameter Name="Position" Type="Int32" />
								</UpdateParameters>
								<SelectParameters>
									<asp:Parameter Name="CategoryID" Type="Int32" />
									<asp:Parameter Name="UserID" Type="Int32" />
									<asp:Parameter Name="byUser" Type="Boolean" />
									<asp:Parameter Name="isAdmin" Type="Boolean" />
								</SelectParameters>
							</asp:ObjectDataSource>
							<asp:ObjectDataSource ID="odsTopGalleris" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetTop5GaleriesByUserID" OldValuesParameterFormatString="original_{0}" EnableViewState="False" OnSelecting="odsTopGalleris_Selecting">
								<SelectParameters>
									<asp:Parameter Name="PortalID" Type="Int32" />
									<asp:ControlParameter ControlID="ddlNumLastGals" Name="NumberOfGals2" PropertyName="SelectedValue" Type="Int32" />
									<asp:Parameter Name="UserID" Type="Int32" />
									<asp:Parameter Name="byUserID" Type="Boolean" />
									<asp:Parameter Name="isAdmin" Type="Boolean" />
								</SelectParameters>
							</asp:ObjectDataSource>
							<asp:ObjectDataSource ID="odsCommunityCategories" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetCommunityModeCategories" OnSelecting="odsCommunityCategories_Selecting">
								<SelectParameters>
									<asp:Parameter Name="PortalID" Type="Int32" />
								</SelectParameters>
							</asp:ObjectDataSource>
							<asp:ObjectDataSource ID="odsGalleryImages" TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess" runat="server" SelectMethod="GetImagesFromGallery" UpdateMethod="UpdateGalleryImage" DeleteMethod="DeleteImage">
								<DeleteParameters>
									<asp:Parameter Name="PictureID" Type="Int32" />
								</DeleteParameters>
								<SelectParameters>
									<asp:ControlParameter ControlID="lblSelectedDataKey2" Name="GalleryID" PropertyName="Text" Type="Int32" />
								</SelectParameters>
								<UpdateParameters>
									<asp:Parameter Name="PictureID" Type="Int32" />
									<asp:Parameter Name="Title" Type="String" />
									<asp:Parameter Name="Description" Type="String" />
									<asp:Parameter Name="ThumbUrl" Type="String" />
									<asp:Parameter Name="Position" Type="Int32" />
									<asp:Parameter Name="MediaType" Type="String" />
								</UpdateParameters>
							</asp:ObjectDataSource>
							<asp:HiddenField ID="hfCategoriesByUserID" runat="server" />
							<asp:HiddenField ID="hfGalleriesByUserID" runat="server" />
							<asp:HiddenField ID="hfMainSelectedCategory" runat="server" />
							<asp:Panel ID="pnlLastModGals" runat="server" border="0" Width="850px">
								<div align="right" style="padding-bottom: 10px;">
									<asp:Button ID="btnSaveClose" resourcekey="btnSaveClose" runat="server" OnClick="btnCloseMM_Click" Text="Save & Close" Style="margin-right: 5px;" CssClass="btnsaveclose" />
									<asp:Button ID="btnClose" runat="server" OnClick="btnCloseMM_Click" Text="Close" resourcekey="btnCloseResource1" CssClass="btnclose" />
								</div>
								<div class="lastmodbox">
									<div class="lastmodtitle">
										<asp:Label ID="lblLastModifiedGalleriesTitle" resourcekey="lblLastModifiedGalleriesTitle" runat="server" Text="&lt;b&gt;Last&lt;/b&gt; added/modified galleries" CssClass="lastaddedtitle">
										</asp:Label>
									</div>
									<table>
										<tr>
											<td>
												<dnn:Label ID="lblNumberOfLastModifiedGalleriesPerPage" runat="server" ResourceKey="lblNumberOfLastModifiedGalleriesPerPage" ControlName="ddlNumOfCatSelect" HelpText="Select the number of galleris to display on one page:" Text="Select the number of galleries per page:"
													CssClass="labeltext" HelpKey="lblNumberOfLastModifiedGalleriesPerPage.HelpText" />
											</td>
											<td>
												<asp:DropDownList ID="ddlNumLastGals" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNumLastGals_SelectedIndexChanged" CssClass="ddlpageitems">
													<asp:ListItem Text="5" resourcekey="ListItemResource1">
													</asp:ListItem>
													<asp:ListItem Text="10" resourcekey="ListItemResource2">
													</asp:ListItem>
													<asp:ListItem Text="15" resourcekey="ListItemResource3">
													</asp:ListItem>
													<asp:ListItem Text="20" resourcekey="ListItemResource4">
													</asp:ListItem>
													<asp:ListItem Text="30" resourcekey="ListItemResource5">
													</asp:ListItem>
												</asp:DropDownList>
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="3">
												<asp:DataList ID="dlLastModified" runat="server" DataSourceID="odsTopGalleris" RepeatColumns="2" DataKeyField="GalleryID" OnItemCommand="dlLastModified_ItemCommand" CellPadding="2" CellSpacing="2" HorizontalAlign="Left" EnableViewState="False">
													<ItemStyle HorizontalAlign="Left" />
													<ItemTemplate>
														<asp:LinkButton ID="lbGalleryLastModifiedName" runat="server" CommandArgument='<%#Eval("GalleryID")%>' CommandName="Open" CssClass="lastmodgallery" resourcekey="LinkButton9Resource1"><%#((DataRowView)Container.DataItem)["GalleryName"]%></asp:LinkButton>
														<asp:Label ID="lblGalleryLastModifiedDate" runat="server" Text='<%#String.Format("({0})",((DataRowView)Container.DataItem)["DateLastModified"])%>' CssClass="labeltext" resourcekey="Label5Resource1"></asp:Label>
													</ItemTemplate>
												</asp:DataList>
											</td>
										</tr>
									</table>
								</div>
							</asp:Panel>
							<asp:Panel ID="pnlCategories" runat="server" BorderColor="#EFEFEF" Width="850px" HorizontalAlign="Center">
								<div id="categoryHeaderWrapper" class="headercat" runat="server">
									<div class="bordercattop">
									</div>
									<table cellpadding="0" cellspacing="0" width="100%">
										<tr>
											<td>
												<table cellpadding="0" cellspacing="0" width="100%">
													<tr>
														<td>&nbsp;<table cellpadding="0" cellspacing="0" class="style1">
															<tr>
																<td align="right">
																	<img alt="Manage Category" src="<%=ModulePath%>images/categorythumb.png" style="width: 88px; height: 90px" />
																</td>
																<td align="left">
																	<asp:Label ID="lblManageCategoriesTitle" resourcekey="lblManageCategoriesTitle" runat="server" CssClass="Categorytitle" Text="Manage &lt;/br&gt; categories"></asp:Label>
																</td>
															</tr>
														</table>
														</td>
													</tr>
													<tr>
														<td style="padding-left: 80px;">
															<div>
																<asp:Label ID="lblNumOfCats" runat="server" Text="Number of categories:" CssClass="textnumbercategory" resourcekey="lblNumOfCatsResource1"></asp:Label>
																<asp:Label ID="lblCategoriesNumber" runat="server" CssClass="textnumbercategory" resourcekey="lblCategoriesNumberResource1"></asp:Label>
															</div>
														</td>
													</tr>
												</table>
											</td>
											<td>
												<asp:Panel ID="pnlAddCategoryBox" runat="server">
													<table align="center" cellpadding="0" cellspacing="0" class="addcategorybox">
														<tr>
															<td bgcolor="#E2F0F7">
																<div class="boxaddcategorytop" align="left">
																	<asp:Label ID="lblAddNewCategory" resourcekey="lblAddNewCategory" runat="server" CssClass="AddNewCategory" Text="Add NEW Category"></asp:Label>
																</div>
																<table cellpadding="0" cellspacing="0" align="center" width="280px" style="margin-top: 5px; margin-bottom: 5px;">
																	<tr>
																		<td>
																			<dnn:Label ID="lblEnterNewCategoryName" runat="server" ControlName="tbCatName" HelpText="Enter the name for the new category:" Text="Category name:" ResourceKey="lblEnterNewCategoryName" CssClass="tooltip" HelpKey="lblEnterNewCategoryName.HelpText" />
																		</td>
																		<td rowspan="4">
																			<asp:Button ID="btnAddcat" runat="server" CssClass="addcategorybutton" OnClick="btnAddcat_Click" ValidationGroup="vgAddcategory" ToolTip="Add Category" resourcekey="btnAddcatResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbCatName" runat="server" CssClass="box1" MaxLength="500"></asp:TextBox>
																			<div>
																				<asp:RequiredFieldValidator ID="rfvNewCategoryName" runat="server" ControlToValidate="tbCatName" Display="Dynamic" ErrorMessage="Category name is required." ValidationGroup="vgAddcategory" CssClass="requestfield" resourcekey="rfvNewCategoryNameResource1.ErrorMessage">
																				</asp:RequiredFieldValidator>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<dnn:Label ID="lblEnterNewCategoryDescription" runat="server" ControlName="tbCatDesc" HelpText="Enter the description for the new category:" Text="Description:" ResourceKey="lblEnterNewCategoryDescription" CssClass="tooltip" HelpKey="lblEnterNewCategoryDescription.HelpText" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbCatDesc" runat="server" CssClass="box1" MaxLength="2000"></asp:TextBox>
																		</td>
																	</tr>
																</table>
																<div class="boxaddcategorybot">
																</div>
															</td>
														</tr>
													</table>
												</asp:Panel>
											</td>
										</tr>
									</table>
									<div class="bordercatbot">
									</div>
								</div>
								<div class="categorylistbox">
									<asp:Label ID="lblCategoriesStatusMessage" runat="server" CssClass="category_message_info" EnableViewState="False" AssociatedControlID="gvCategories" />
									<asp:GridView ID="gvCategories" runat="server" align="center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" border="0" CellPadding="4" CssClass="categoryliststylebox" DataKeyNames="CategoryID" DataSourceID="odsCategories"
										ForeColor="Black" GridLines="None" OnDataBound="gvCategories_DataBound" OnRowCommand="gvCategories_RowCommand" OnRowCreated="gvCategories_RowCreated" OnRowDeleted="gvCategories_RowDeleted" OnRowUpdated="gvCategories_RowUpdated" OnSelectedIndexChanged="gvCategories_SelectedIndexChanged"
										ShowFooter="True" Width="800px" OnRowDeleting="gvCategories_RowDeleting" EnableModelValidation="True">
										<AlternatingRowStyle CssClass="categorygrid1" />
										<Columns>
											<asp:TemplateField HeaderText="Actions" ShowHeader="False">
												<EditItemTemplate>
													<asp:LinkButton ID="lbCategoriesUpdate" runat="server" CommandName="Update" CssClass="categorycontrollink" Text="Update" resourcekey="lbCategoriesUpdateResource1"></asp:LinkButton>
													&nbsp;<asp:LinkButton ID="lbCategoriesCancel" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="categorycontrollinklight" Text="Cancel" resourcekey="lbCategoriesCancelResource1"></asp:LinkButton>
												</EditItemTemplate>
												<ItemTemplate>
													<asp:LinkButton ID="lbCategoriesSelect" runat="server" CausesValidation="False" CommandName="Select" CssClass="categorycontrollink" Text="Open" resourcekey="lbCategoriesSelectResource1"></asp:LinkButton>
													&nbsp;
													<asp:LinkButton ID="lbCategoriesEdit" runat="server" CausesValidation="False" CommandName="Edit" CssClass="categorycontrollinklight" Text="Edit" resourcekey="lbCategoriesEditResource1"></asp:LinkButton>
													&nbsp;&nbsp;<asp:LinkButton ID="lbCategoriesDelete" runat="server" CommandName="Delete" CssClass="categorycontrollinklight" OnClientClick="return confirm('Are you sure you want to delete this category?');" Text="Delete" resourcekey="lbCategoriesDeleteResource1"></asp:LinkButton>
													<br />
													<asp:LinkButton ID="lbCategoryPermissions" runat="server" CausesValidation="False" CommandArgument='<%#((DataRowView)Container.DataItem)["CategoryID"]%>' CommandName="SetupPermissions" CssClass="contentcategorycontrollinklight" Text="Setup permissions" />
													<br />
													<asp:LinkButton ID="lbCategoryContentLocalization" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="ContentLocalization" CssClass="contentcategorycontrollinklight" Text="Content Localization"
														resourcekey="lbMediaContentLocalization" Visible='<%#Convert.ToBoolean(ViewState["EnableLocalization"])%>'></asp:LinkButton>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Center" Width="180px" />
											</asp:TemplateField>
											<asp:BoundField DataField="CategoryID" HeaderText="ID" ReadOnly="True" SortExpression="CategoryID">
												<ControlStyle ForeColor="Black" />
												<ItemStyle HorizontalAlign="Center" />
											</asp:BoundField>
											<asp:TemplateField HeaderText="Name" SortExpression="CategoryName">
												<EditItemTemplate>
													<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CategoryName") %>' MaxLength="500"></asp:TextBox>
												</EditItemTemplate>
												<ItemTemplate>
													<asp:LinkButton ID="lbCategoriesOpenCategoryName" runat="server" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Open" CssClass="categorycontrollinklight" Text='<%# Bind("CategoryName") %>' resourcekey="lbCategoriesOpenCategoryNameResource1"></asp:LinkButton>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Center" />
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Description">
												<EditItemTemplate>
													<asp:TextBox ID="tbgvCategoryDescriptionEdit" runat="server" Text='<%# Bind("CategoryDescription") %>' TextMode="MultiLine" MaxLength="2000" Height="85" Width="350"></asp:TextBox>
												</EditItemTemplate>
												<ItemTemplate>
													<asp:Label ID="lblgvCategoryDescription" runat="server" Text='<%# ((DataRowView)Container.DataItem)["CategoryDescription"] %>'></asp:Label>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Center" />
											</asp:TemplateField>
											<asp:TemplateField HeaderText="No. of Galleries">
												<ItemTemplate>
													<asp:Label ID="lblCategoryNumberItems" runat="server" Text='<%#((DataRowView)Container.DataItem)["GalleryCount"]%>'></asp:Label>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Center" />
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Position" SortExpression="Position">
												<EditItemTemplate>
													<asp:TextBox ID="tbCategoryPosition" runat="server" CssClass="boxposition" Text='<%# Bind("Position") %>'></asp:TextBox>
												</EditItemTemplate>
												<FooterTemplate>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td>
																<asp:Button ID="btnCategorySavePosition" runat="server" CssClass="btnsavepositioncat" OnClick="btnCatSavePosition_Click" Text="Save Positions" resourcekey="btnCategorySavePositionResource1" />
															</td>
															<td>
																<asp:ImageButton ID="btnRearrangeCategoryPositions" runat="server" ImageUrl="~/DesktopModules/EasyDNNGallery/images/rearrangecat.png" OnClick="btnGalPosRearange_Click" ToolTip="Rearrange category positions numbers." resourcekey="btnRearrangeCategoryPositionsResource1" />
															</td>
														</tr>
													</table>
												</FooterTemplate>
												<ItemTemplate>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td style="padding-right: 10px;">
																<div>
																	<asp:TextBox ID="tbCategoryPosition" runat="server" CssClass="boxposition" Text='<%# Bind("Position") %>'></asp:TextBox>
																</div>
															</td>
															<td>
																<asp:ImageButton ID="imgCategoryUp" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Up" ImageUrl="~/images/action_up.gif" Text="Up" resourcekey="imgCategoryUpResource1" />
																</div>
																<div>
																	<asp:ImageButton ID="imgCategoryDown" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Down" ImageUrl="~/images/action_down.gif" text="Down" resourcekey="imgCategoryDownResource1" />
																</div>
															</td>
														</tr>
													</table>
												</ItemTemplate>
												<FooterStyle HorizontalAlign="Center" />
												<ItemStyle HorizontalAlign="Center" />
											</asp:TemplateField>
										</Columns>
										<FooterStyle CssClass="categorygrid1" />
										<HeaderStyle CssClass="categoryboxheaderbgrd" Font-Names="arial" Font-Size="14px" ForeColor="White" VerticalAlign="Middle" />
										<PagerStyle BackColor="#E3E1E1" CssClass="pagecat" ForeColor="#556C20" Height="45px" HorizontalAlign="Center" />
										<RowStyle CssClass="categorygrid2" />
										<SelectedRowStyle CssClass="categorygridselected" />
									</asp:GridView>
									<table cellpadding="2" cellspacing="2" align="center">
										<tr>
											<td>&nbsp;&nbsp;<dnn:Label ID="lblNumberofCatlSelect" runat="server" ControlName="ddlNumOfCatSelect" HelpText="Select the number of categories to display on one page:" Text="Categories per page:" ResourceKey="lblNumberofCatlSelect" CssClass="labeltext" HelpKey="lblNumberofCatlSelect.HelpText" />
											</td>
											<td>
												<asp:DropDownList ID="ddlNumOfCatSelect" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlNumOfCatSelect_SelectedIndexChanged" CssClass="ddlpageitems">
													<asp:ListItem Text="10" resourcekey="ListItemResource6">
													</asp:ListItem>
													<asp:ListItem Text="30" resourcekey="ListItemResource7">
													</asp:ListItem>
													<asp:ListItem Text="50" resourcekey="ListItemResource8">
													</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
									&nbsp;
								</div>
							</asp:Panel>
							<asp:Panel ID="pnlCategoryContentLocalization" runat="server" Visible="False" BorderColor="#EFEFEF" BorderStyle="none" Width="850px">
								<div class="contentcategories">
									<table width="750px">
										<tr>
											<td align="center" colspan="2">&nbsp;
												<asp:Label ID="lblCategoryContentLocalization" runat="server" CssClass="contenttitle" Font-Bold="True" resourcekey="lblCategoryContentLocalization" Text="Content localization">
												</asp:Label>
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td class="style12" align="left">
												<asp:Label ID="lblContentLocalizationCategoryTitle" resourcekey="lblContentLocalizationCategoryTitle" runat="server" Text="Category title:" Font-Bold="True"></asp:Label>
											</td>
											<td class="style13" align="left">
												<asp:Label ID="lblContentLocalizationCategoryTitleOriginal" runat="server"></asp:Label>
											</td>
										</tr>
										<tr>
											<td align="left">
												<asp:Label ID="lblContentLocalizationCategoryDescription" resourcekey="lblContentLocalizationCategoryDescription" runat="server" Text="Category description:" Font-Bold="True"></asp:Label>
											</td>
											<td align="left">
												<asp:Label ID="lblContentLocalizationCategoryDescriptionOriginal" runat="server"></asp:Label>
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td align="left">&nbsp;
											</td>
										</tr>
										<tr>
											<td align="left">
												<asp:Label ID="lblDefPortalLang" runat="server" Text="Default portal language:"></asp:Label>
											</td>
											<td align="left">
												<asp:Label ID="lblDefaultPortalLangugage" runat="server"></asp:Label>
											</td>
										</tr>
										<tr>
											<td align="left">
												<asp:Label ID="lblCategoryLocalizationLocalizedLanguages" runat="server" resourcekey="lblCategoryLocalizationLocalizedLanguages" Text="Localized languages:"></asp:Label>
											</td>
											<td align="left">
												<asp:Label ID="lblCategoryLocalizationLocalizedLanguagesList" runat="server"></asp:Label>
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td align="left">&nbsp;
											</td>
										</tr>
										<tr>
											<td align="left">
												<dnn:Label ID="lblCategoryLocalizationSelectLanguage" runat="server" HelpKey="lblCategoryLocalizationSelectLanguage.HelpText" HelpText="Select the languange you want to edit. There is no need to edit dafault language." ResourceKey="lblCategoryLocalizationSelectLanguage"
													Text="Select language:" />
											</td>
											<td align="left">
												<asp:DropDownList ID="ddlCategoryLocalizationSelectLanguage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategoryLocalizationSelectLanguage_SelectedIndexChanged">
													<asp:ListItem Value="0">Select language</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
										<tr>
											<td align="left">
												<dnn:Label ID="lblCategoryLocalizationTitle" runat="server" HelpKey="lblCategoryLocalizationTitle.HelpText" HelpText="Title:" ResourceKey="lblCategoryLocalizationTitle" Text="Title:" />
											</td>
											<td align="left">
												<asp:TextBox ID="tbCategoryLocalizationTitle" runat="server" Style="width: 250px">
												</asp:TextBox>
												&nbsp;
												<asp:Button ID="btnCategoryLocalizationCopyDefault" runat="server" OnClick="btnCategoryLocalizationCopyDefault_Click" resourcekey="btnCategoryLocalizationCopyDefault" Text="Copy default values" />
											</td>
										</tr>
										<tr>
											<td align="left">
												<dnn:Label ID="lblCategoryLocalizationDescription" runat="server" HelpKey="lblCategoryLocalizationDescription.HelpText" HelpText="Description:" ResourceKey="lblCategoryLocalizationDescription" Text="Description:" />
											</td>
											<td align="left">
												<dnn:TextEditor ID="txtCategoryLocalizationDescription" runat="server" Height="300" Width="550" />
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td>
												<asp:Button ID="btnCategoryLocalizationUpdate" resourcekey="btnCategoryLocalizationUpdate" runat="server" Text="Update" OnClick="btnCategoryLocalizationUpdate_Click" />
												&nbsp;
												<asp:Button ID="btnCategoryLocalizationClose" resourcekey="btnGalleryLocalizationClose" runat="server" Text="Close" OnClick="btnCategoryLocalizationClose_Click" Style="height: 26px" />
											</td>
										</tr>
									</table>
								</div>
							</asp:Panel>
							<asp:Panel ID="pnlCategoryPermissionSettings" runat="server" Visible="False" BorderColor="#EFEFEF" BorderStyle="none" Width="850px">
								<div class="contentcategories">
									<table width="750px">
										<tr>
											<td align="center" colspan="3">&nbsp;
												<asp:Label ID="lblPermissionsSettingTitle" resourcekey="lblPermissionsSettingTitle" runat="server" CssClass="contenttitle" Font-Bold="True" Text="Setup Permissions"></asp:Label>
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td align="right" class="auto-style1">
												<asp:Label ID="lblPermissinsCategoryName" resourcekey="lblPermissinsCategoryName" runat="server" Font-Bold="True" Text="Category name: "></asp:Label>
											</td>
											<td align="left">&nbsp;<asp:Label ID="lblPermissionsCategoryName" runat="server" Font-Bold="True"></asp:Label>
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td colspan="2">
												<div class="settingsdetailtable">
													<div id="pnlAllSettings" class="module_settings">
														<div id="pnlPermissions" runat="server" class="settings_category_container">
															<div class="category_content" style="padding: 0;">
																<div class="first_coll_fixed_table singleTable">
																	<asp:GridView ID="gvRolePermisionSettings" runat="server" AutoGenerateColumns="False" CellPadding="0" CssClass="settings_table permissionsNotifications" DataKeyNames="RoleID" OnRowDataBound="gvRolePermisionSettings_RowDataBound" OnDataBound="gvRolePermisionSettings_DataBound" Style="margin: 0 auto;">
																		<AlternatingRowStyle CssClass="second" />
																		<Columns>
																			<asp:TemplateField HeaderText="Roles">
																				<ItemTemplate>
																					<p>
																						<asp:Label ID="lblRoleName" runat="server" resourcekey="lblRoleNameResource1" Text='<%#Eval("RoleName")%>'></asp:Label>
																					</p>
																				</ItemTemplate>
																				<HeaderStyle CssClass="header_cell" />
																				<ItemStyle CssClass="subjectName" />
																			</asp:TemplateField>
																			<asp:TemplateField HeaderText="View">
																				<ItemTemplate>
																					<asp:HiddenField ID="hfRoleID" runat="server" Value='<%# GetRoleID(Eval("RoleID"))%>' />
																					<asp:HiddenField ID="hfCategoryRoleNameView" runat="server" Value='<%# Eval("RoleName") %>' />
																					<asp:CheckBox ID='cbCategoryRoleView' data-cid='<%#GetRoleID(Eval("RoleID"))%>' runat="server" CssClass="categoryRoleView" Checked='<%#Convert.ToBoolean(Eval("View"))%>' OnClick='clickAllcheckboxes.call(this,"View");' CausesValidation="True" />
																				</ItemTemplate>
																			</asp:TemplateField>
																			<asp:TemplateField HeaderText="Edit">
																				<ItemTemplate>
																					<asp:HiddenField ID="hfCategoryRoleNameEdit" runat="server" Value='<%# Eval("RoleName") %>' />
																					<asp:CheckBox ID="cbCategoryRoleEdit" data-cid='<%#GetRoleID(Eval("RoleID"))%>' CssClass="categoryRoleEdit" runat="server" Checked='<%#Convert.ToBoolean(Eval("Edit"))%>' OnClick='clickAllcheckboxes.call(this,"Edit");' CausesValidation="True" />
																				</ItemTemplate>
																			</asp:TemplateField>
																		</Columns>
																	</asp:GridView>
																</div>
																<div class="first_coll_fixed_table singleTable" style="margin: 15px 0 0;">
																	<asp:GridView ID="gvUserPermisionSettings" runat="server" AutoGenerateColumns="False" CellPadding="0" CssClass="settings_table permissionsNotifications" DataKeyNames="UserID" OnRowCommand="gvUserPermisionSettings_RowCommand" Style="margin: 0 auto;">
																		<AlternatingRowStyle CssClass="second" />
																		<Columns>
																			<asp:TemplateField HeaderText="Users">
																				<ItemTemplate>
																					<p>
																						<asp:Label ID="lblUserName" runat="server" resourcekey="lblRoleNameResource1" Text='<%#Eval("UserName")%>'></asp:Label>
																					</p>
																				</ItemTemplate>
																				<HeaderStyle CssClass="header_cell" />
																				<ItemStyle CssClass="subjectName" />
																			</asp:TemplateField>
																			<asp:TemplateField HeaderText="View">
																				<ItemTemplate>
																					<asp:HiddenField ID="hfUserID" runat="server" Value='<%# Eval("UserID") %>' />
																					<asp:HiddenField ID="hfUsername" runat="server" Value='<%# Eval("Username") %>' />
																					<asp:CheckBox ID='cbCategoryUserView' CssClass="categoryUserView" runat="server" Checked='<%#Convert.ToBoolean(Eval("View"))%>' />
																				</ItemTemplate>
																			</asp:TemplateField>
																			<asp:TemplateField HeaderText="Edit">
																				<ItemTemplate>
																					<asp:CheckBox ID="cbCategoryUserEdit" CssClass="categoryUserEdit" runat="server" Checked='<%#Convert.ToBoolean(Eval("Edit"))%>' />
																				</ItemTemplate>
																			</asp:TemplateField>
																			<asp:TemplateField HeaderText="">
																				<ItemTemplate>
																					<asp:LinkButton ID="lbUserPermissionsRemove" resourcekey="lbUserPermissionsRemove" runat="server" CausesValidation="False" CommandArgument='<%#Eval("UserID")%>' CommandName="Remove" OnClientClick="return confirm('Are you sure you want to remove this user?');"
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
																<asp:Label ID="lblUsernameToAdd" runat="server" Font-Bold="True" resourcekey="lblUsernameToAdd" Text="Add user by username:" />&nbsp;
															</td>
															<td style="width: 250px; text-align: left;">
																<asp:TextBox ID="tbUserNameToAdd" runat="server" />
																<asp:LinkButton ID="lbUsernameAddPermissions" runat="server" OnClick="lbUsernameAddPermissions_Click" resourcekey="lbUsernameAddPermissions" Text="Add" />
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
														</tr>
													</table>
												</div>
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
											<td colspan="2" align="center">
												<asp:HiddenField ID="hfPermissionsCategoryID" runat="server" />
												<asp:HiddenField ID="hfCategoryRolesAndPermisionsView" runat="server" />
												<asp:HiddenField ID="hfCategoryRolesAndPermisionsEdit" runat="server" />
												<asp:Button ID="btnSaveCategoryPermissions" resourcekey="btnSaveCategoryPermissions" runat="server" OnClick="btnSaveCategoryPermissions_Click" Text="Save permissions" OnClientClick="SaveCheckedChekboxes()" />
												&nbsp;
												<asp:Button ID="btnCategoryPermissionsClose" runat="server" OnClick="btnCategoryPermissionsClose_Click" resourcekey="btnGalleryLocalizationClose" Text="Close" />
											</td>
										</tr>
										<tr>
											<td align="left">&nbsp;
											</td>
										</tr>
									</table>
								</div>
							</asp:Panel>
							<asp:Panel ID="pnlGallery" runat="server" Visible="False" BorderColor="#EFEFEF" Width="850px" HorizontalAlign="Center">
								<asp:Panel ID="pnlCommunityModeCats" runat="server" Visible="False" CssClass="user_dashboard">
									<asp:Repeater ID="repCommunityModeCats" runat="server" OnItemCommand="repCommunityModeCats_ItemCommand">
										<ItemTemplate>
											<asp:LinkButton ID="lbCategory" runat="server" CssClass="my_gallery" CommandArgument='<%#((DataRowView)Container.DataItem)["CategoryID"]%>' CommandName="OpenCategory"><%#((DataRowView)Container.DataItem)["CategoryName"]%></asp:LinkButton>
										</ItemTemplate>
									</asp:Repeater>
								</asp:Panel>
								<div class="headergal">
									<div class="bordergaltop">
									</div>
									<table cellpadding="0" cellspacing="0" width="100%">
										<tr>
											<td>
												<table cellpadding="0" cellspacing="0" width="100%">
													<tr>
														<td>&nbsp;<table cellpadding="0" cellspacing="0" class="style1">
															<tr>
																<td align="right" class="style3">
																	<img alt="Manage Gallery" src="<%=ModulePath%>images/gallerythumb.png" style="width: 111px; height: 100px" />
																</td>
																<td align="left">
																	<asp:Label ID="lblManageGalleriesTitle" resourcekey="lblManageGalleriesTitle" runat="server" CssClass="Gallerytitle" Text="Manage &lt;/br&gt; Galleries"></asp:Label>
																</td>
															</tr>
														</table>
														</td>
													</tr>
													<tr>
														<td style="padding-left: 80px;">
															<div>
																<asp:Label ID="lblNumberOfGalleries" runat="server" Text="Number of galleries:" CssClass="textnumbercategory" resourcekey="lblNumberOfGalleriesResource1"></asp:Label>
																<asp:Label ID="lblGalleriesNumber" runat="server" CssClass="textnumbercategory" resourcekey="lblGalleriesNumberResource1">
																</asp:Label>
															</div>
														</td>
													</tr>
												</table>
											</td>
											<td>
												<asp:Panel ID="pnlAddGallery" runat="server" DefaultButton="btnAddGallery">
													<table align="center" cellpadding="0" cellspacing="0" class="addcategorybox">
														<tr>
															<td bgcolor="#e5eca9">
																<div class="boxaddgallerytop" align="left">
																	<asp:Label ID="lblAddNewGallery" resourcekey="lblAddNewGallery" runat="server" CssClass="AddNewGallery" Text="Add NEW Gallery"></asp:Label>
																</div>
																<table cellpadding="0" cellspacing="0" align="center" width="280px" style="margin-top: 5px; margin-bottom: 5px;">
																	<tr>
																		<td>
																			<dnn:Label ID="lblEnterNewGalleryName" runat="server" ControlName="tbAddGallery" HelpText="Enter the name of new gallery." Text="Gallery name:" ResourceKey="lblEnterNewGalleryName" CssClass="tooltip2" HelpKey="lblEnterNewGalleryName.HelpText" />
																		</td>
																		<td rowspan="4">
																			<asp:Button ID="btnAddGallery" runat="server" OnClick="btnAddGallery_Click" ValidationGroup="vgAddGalley" ToolTip="Add Gallery" CssClass="addgallerybutton" resourcekey="btnAddGalleryResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbAddGallery" runat="server" ValidationGroup="vgAddGalley" CssClass="box2" defaultbutton="button_id" MaxLength="500">
																			</asp:TextBox>
																			<div>
																				<asp:RequiredFieldValidator ID="rfvEnterNewGalleryName" runat="server" ControlToValidate="tbAddGallery" ErrorMessage="Gallery name is required." ValidationGroup="vgAddGalley" Display="Dynamic" CssClass="requestfield" resourcekey="rfvEnterNewGalleryNameResource1.ErrorMessage">
																				</asp:RequiredFieldValidator>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<dnn:Label ID="lblEnterNewGalleryDescription" runat="server" ControlName="tbAddGallery" HelpText="Enter the description of new gallery." Text="Gallery description:" ResourceKey="lblEnterNewGalleryDescription" CssClass="tooltip2" HelpKey="lblEnterNewGalleryDescription.HelpText" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<asp:TextBox ID="tbAddGalleryDescription" runat="server" ValidationGroup="vgAddGalley" CssClass="box2" MaxLength="2000">
																			</asp:TextBox>
																		</td>
																	</tr>
																	<tr id="trGallerysharing" runat="server" visible="false">
																		<td>
																			<dnn:Label ID="lblJournalSharing" runat="server" ControlName="tbAddGallery" HelpText="Privacy settings:" Text="Privacy settings:" CssClass="tooltip2" HelpKey="lblJournalSharing.HelpText" ResourceKey="dnnUserGalleryPrivacy.Text" />
																			<asp:DropDownList ID="ddlPostToJournal" CssClass="ddlvisibility" runat="server" />
																			<div id="pnlSocialSecuritySelect" runat="server" visible="False" style="text-align: right;">
																				<dnn:Label ID="lblGallerySocialGroupsCreate" runat="server" CssClass="tooltip2" Text="Social groups:" HelpText="Social groups:" style="text-align: right;" />
																				<asp:ListBox ID="lbSocialSecurityGroups" runat="server" SelectionMode="Multiple"></asp:ListBox>
																			</div>
																		</td>
																	</tr>
																</table>
																<div class="boxaddgallerybot">
																</div>
															</td>
														</tr>
													</table>
												</asp:Panel>
											</td>
										</tr>
									</table>
									<div class="bordergalbot">
									</div>
								</div>
								<div class="gallerylistbox">
									<table id="tblSelCatInGalleries" runat="server" cellpadding="0" cellspacing="0" width="100%" style="padding-left: 27px;">
										<tr>
											<td align="left">
												<table cellpadding="0" cellspacing="0" class="selectcategory">
													<tr>
														<td>
															<div class="selcatleft">
															</div>
														</td>
														<td valign="middle">
															<asp:Label ID="lblSelectedCatategory" runat="server" Text="Selected category:" CssClass="selectcategorytxt" resourcekey="lblSelectedCatategoryResource1"></asp:Label>
															<asp:Label ID="lblSelCatName" runat="server" CssClass="selectcategorytxtbold" resourcekey="lblSelCatNameResource1">
															</asp:Label>
														</td>
														<td>
															<div class="selcatright">
															</div>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
									<br />
									<asp:Label ID="lblGalleryStatusMessage" runat="server" AssociatedControlID="gvGalleries" EnableViewState="False" CssClass="gallelry_message_info"></asp:Label>
									<asp:GridView ID="gvGalleries" runat="server" align="center" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" border="0" CellPadding="4" CssClass="galleryliststylebox" DataKeyNames="GalleryID" DataSourceID="odsGalleries" ForeColor="Black"
										GridLines="None" OnDataBound="gvGalleries_DataBound" OnRowCommand="gvGalleries_RowCommand" OnRowCreated="gvGalleries_RowCreated" OnRowDataBound="gvGalleries_RowDataBound" OnRowDeleted="gvGalleries_RowDeleted" OnRowUpdated="gvGalleries_RowUpdated"
										OnSelectedIndexChanged="gvGalleries_SelectedIndexChanged" ShowFooter="True" Width="800px" OnRowDeleting="gvGalleries_RowDeleting" EnableModelValidation="True" OnPreRender="gvGalleries_PreRender">
										<AlternatingRowStyle CssClass="gallerygrid1" />
										<Columns>
											<asp:TemplateField HeaderText="Actions" InsertVisible="False" ShowHeader="False">
												<EditItemTemplate>
													<asp:LinkButton ID="lbGalleriesUpdate" runat="server" CommandName="Update" CssClass="gallerycontrollink" Text="Update" resourcekey="lbGalleriesUpdateResource1"></asp:LinkButton>
													&nbsp;<asp:LinkButton ID="lbGalleriesCancel" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="gallerycontrollinklight" Text="Cancel" resourcekey="lbGalleriesCancelResource1"></asp:LinkButton>
												</EditItemTemplate>
												<ItemTemplate>
													<asp:LinkButton ID="lbGalleriesSelect" runat="server" CausesValidation="False" CommandName="Select" CssClass="gallerycontrollink" Text="Open" resourcekey="lbGalleriesSelectResource1"></asp:LinkButton>
													&nbsp;
													<asp:LinkButton ID="lbGalleriesEdit" runat="server" CausesValidation="False" CommandName="Edit" CssClass="gallerycontrollinklight" Text="Edit" resourcekey="lbGalleriesEditResource1"></asp:LinkButton>
													<br />
													<asp:LinkButton ID="lbGalleriesDelete" runat="server" CommandName="Delete" CssClass="gallerycontrollinklight" OnClientClick="return confirm('Are you sure you want to delete this gallery?');" Text="Delete" resourcekey="lbGalleriesDeleteResource1"></asp:LinkButton>
													<br />
													<asp:LinkButton ID="lbGalleryPermissions" runat="server" CausesValidation="False" CommandArgument='<%#((DataRowView)Container.DataItem)["GalleryID"]%>' CommandName="SetupPermissions" CssClass="contentcategorycontrollinklight" Text="Setup dates/permissions" />
													<br />
													<asp:LinkButton ID="lbGalleryContentLocalization" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="ContentLocalization" CssClass="contentcontrollinklight" Text="Content Localization" resourcekey="lbGalleryContentLocalization"
														Visible='<%#Convert.ToBoolean(ViewState["EnableLocalization"])%>'></asp:LinkButton>
													<br />
													<asp:CheckBox ID="cbGallerySelected" CssClass="EGMediaSelect" resourcekey="cbSelected" runat="server" Text="Select" />
													<asp:HiddenField ID="hfGalleryID" runat="server" Value='<%#((DataRowView)Container.DataItem)["GalleryID"]%>' />
												</ItemTemplate>
												<FooterTemplate>
													<asp:LinkButton ID="lbSelectAll" resourcekey="lbSelectAll" OnClientClick="SelectAllGalleries(); return false;" runat="server" Text="Select all"></asp:LinkButton>
													<asp:LinkButton ID="lbDeselectAll" resourcekey="lbDeselectAll" OnClientClick="DeSelectAllGalleries(); return false;" runat="server" Text="Deselect all"></asp:LinkButton>
													<asp:LinkButton ID="lbMoveGalleries" runat="server" Text="Move/Copy galleries" OnClick="lbMoveGalleries_Click"></asp:LinkButton>
													<asp:Panel ID="pnlMoveMultipleGalleries" runat="server" Visible="false">
													<asp:DropDownList ID="ddlCategoryMultipleGalleryMove" runat="server" CssClass="inputboxmovecopy" DataSourceID="odsMoveCategories" DataTextField="CategoryName" DataValueField="CategoryID">
													</asp:DropDownList>
														<asp:Button ID="btnmove" runat="server" Text="Move" resourcekey="btnmoveResource1" CssClass="btnmoveclose" OnClick="btnmove_Click" />
														<asp:Button ID="btnCopy" runat="server" Text="Copy" resourcekey="btncopyResource1" CssClass="btnmoveclose" OnClick="btnCopy_Click" />
														<asp:Button ID="btnCancelMultipleGalleryMove" runat="server" Text="Cancel" CssClass="btnmoveclose" OnClick="btnCancelMultipleGalleryMove_Click" />
													</asp:Panel>
												</FooterTemplate>
												<ItemStyle HorizontalAlign="Left" Width="160px" />
											</asp:TemplateField>
											<asp:BoundField DataField="GalleryID" HeaderText="ID" ReadOnly="True" SortExpression="GalleryID">
												<ItemStyle HorizontalAlign="Center" />
											</asp:BoundField>
											<asp:TemplateField HeaderText="Name" SortExpression="GalleryName">
												<EditItemTemplate>
													<asp:TextBox ID="tbGalleriesEditName" runat="server" Text='<%# Bind("GalleryName") %>'></asp:TextBox>
												</EditItemTemplate>
												<ItemTemplate>
													<asp:LinkButton ID="lbGalleriesOpenGalleryName" runat="server" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Open" CssClass="gallerycontrollinklight" Text='<%# Bind("GalleryName") %>' resourcekey="lbGalleriesOpenGalleryNameResource1"></asp:LinkButton>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Center" />
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Description">
												<EditItemTemplate>
													<asp:TextBox ID="tbgvGalleryDescription" runat="server" Text='<%# Bind("GalleryDescription") %>' Height="85" Width="350" TextMode="MultiLine"></asp:TextBox>
												</EditItemTemplate>
												<ItemTemplate>
													<asp:Label ID="lblgvGalleryDescription" runat="server" Text='<%# Bind("GalleryDescription") %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="No. of Items">
												<ItemTemplate>
													<asp:Label ID="lblGalleriesNumberofItems" runat="server" Text='<%# ((DataRowView)Container.DataItem)["MediaCount"] %>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Last Modified" SortExpression="DateLastModified">
												<ItemTemplate>
													<asp:Label ID="lblgvLastModifiedDate" runat="server" Text='<%#EasyDNN.Modules.EasyDNNGallery.DateTimeHelpers.GetTimeFromUtc(Convert.ToDateTime(Eval("DateLastModified")), PortalSettings)%>'></asp:Label>
												</ItemTemplate>
											</asp:TemplateField>
											<asp:TemplateField HeaderText="Position" SortExpression="Position">
												<EditItemTemplate>
													<asp:TextBox ID="tbPosition" runat="server" CssClass="boxposition2" Text='<%# Bind("Position") %>'></asp:TextBox>
												</EditItemTemplate>
												<FooterTemplate>
													<table>
														<tr>
															<td>
																<asp:Button ID="btnGallerySavePositions" runat="server" CssClass="btnsaveposition" OnClick="btnGallerySavePositions_Click" resourcekey="btnGallerySavePositionsResource1" Text="Save Positions" />
															</td>
															<td>
																<asp:ImageButton ID="imgbtnrearrangegal" runat="server" ImageUrl="~/DesktopModules/EasyDNNGallery/images/rearrangegal.png" OnClick="btnCatPosRearange_Click" resourcekey="imgbtnrearrangegalResource1" ToolTip="Rearrange gallery positions numbers in category." />
															</td>
														</tr>
													</table>
												</FooterTemplate>
												<ItemTemplate>
													<table cellpadding="0" cellspacing="0">
														<tr>
															<td style="padding-right: 10px;">
																<asp:TextBox ID="tbPosition" runat="server" CssClass="boxposition2" Text='<%# Eval("Position") %>'></asp:TextBox>
															</td>
															<td>
																<div>
																	<asp:ImageButton ID="ibtGalleriesUp" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Up" ImageUrl="~/images/action_up.gif" resourcekey="ibtGalleriesUpResource1" Text="Move" />
																</div>
																<div>
																	<asp:ImageButton ID="ibtGalleriesDown" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Down" ImageUrl="~/images/action_down.gif" resourcekey="ibtGalleriesDownResource1" Text="Move" />
																</div>
															</td>
														</tr>
													</table>
												</ItemTemplate>
												<ItemStyle HorizontalAlign="Center" />
											</asp:TemplateField>
										</Columns>
										<FooterStyle CssClass="gallerygrid1" />
										<HeaderStyle CssClass="galleryboxheaderbgrd" Font-Names="arial" Font-Size="14px" ForeColor="#343E1C" VerticalAlign="Middle" />
										<PagerStyle BackColor="#E3E1E1" CssClass="pagegal" ForeColor="#556C20" Height="45px" HorizontalAlign="Center" />
										<RowStyle CssClass="gallerygrid2" />
										<SelectedRowStyle CssClass="gallerygridselected" />
									</asp:GridView>
									<table id="tblNumOfGalSelect" runat="server" cellpadding="2" cellspacing="2" align="center">
										<tr>
											<td>
												<asp:Panel ID="pnlGalleryViewOptions" runat="server">
													<dnn:Label ID="lblNumberofGalleriesPerPage" runat="server" ControlName="ddlNumOfGalSelect" HelpText="Select the number of galleries to to display on one page:" Text="Items per page:" ResourceKey="lblNumberofGalleriesPerPage" CssClass="labeltext" HelpKey="lblNumberofGalleriesPerPage.HelpText" />
												</asp:Panel>
											</td>
											<td>
												<asp:DropDownList ID="ddlNumOfGalSelect" runat="server" AutoPostBack="True" CssClass="ddlpageitems" OnSelectedIndexChanged="ddlNumOfGalSelect_SelectedIndexChanged">
													<asp:ListItem resourcekey="ListItemResource9" Text="10">
													</asp:ListItem>
													<asp:ListItem resourcekey="ListItemResource10" Text="30">
													</asp:ListItem>
													<asp:ListItem resourcekey="ListItemResource11" Text="50">
													</asp:ListItem>
												</asp:DropDownList>
											</td>
										</tr>
									</table>
								</div>
								<asp:Panel ID="pnlGalleryContentLocalization" runat="server" Visible="False">
									<div class="localizationlistbox">
										<table width="750px" align="center">
											<tr>
												<td align="center" colspan="2">&nbsp;
													<asp:Label ID="lblGalleryContentLocalization" runat="server" CssClass="contenttitle" Font-Bold="True" resourcekey="lblGalleryContentLocalization" Text="Content localization">
													</asp:Label>
												</td>
											</tr>
											<tr>
												<td class="style20" align="left">&nbsp;
												</td>
												<td>&nbsp;
												</td>
											</tr>
											<tr>
												<td align="left" class="style20">
													<asp:Label ID="lblContentLocalizationGalleryTitle" resourcekey="lblContentLocalizationGalleryTitle" runat="server" Text="Gallery title:" Font-Bold="True"></asp:Label>
												</td>
												<td align="left">
													<asp:Label ID="lblContentLocalizationGalleryTitleOriginal" runat="server"></asp:Label>
												</td>
											</tr>
											<tr>
												<td align="left" class="style20">
													<asp:Label ID="lblContentLocalizationGalleryDescription" resourcekey="lblContentLocalizationGalleryDescription" runat="server" Text="Gallery description:" Font-Bold="True"></asp:Label>
												</td>
												<td align="left">
													<asp:Label ID="lblContentLocalizationGalleryDescriptionOriginal" runat="server"></asp:Label>
												</td>
											</tr>
											<tr>
												<td align="left" class="style20">&nbsp;
												</td>
												<td align="left">&nbsp;
												</td>
											</tr>
											<tr>
												<td align="left" class="style20">
													<asp:Label ID="lblDefPortalLangGal" runat="server" Text="Default portal language:"></asp:Label>
												</td>
												<td align="left">
													<asp:Label ID="lblDefaultPortalLangugageGal" runat="server"></asp:Label>
												</td>
											</tr>
											<tr>
												<td align="left" class="style20">
													<asp:Label ID="lblGalleryLocalizationLocalizedLanguages" runat="server" resourcekey="lblGalleryLocalizationLocalizedLanguages" Text="Localized languages:"></asp:Label>
												</td>
												<td align="left">
													<asp:Label ID="lblGalleryLocalizationLocalizedLanguagesList" runat="server"></asp:Label>
												</td>
											</tr>
											<tr>
												<td class="style20" align="left">&nbsp;
												</td>
												<td>&nbsp;
												</td>
											</tr>
											<tr>
												<td class="style20" align="left">
													<dnn:Label ID="lblGalleryLocalizationSelectLanguage" runat="server" HelpKey="lblContentLocalizationSelectLanguage.HelpText" ResourceKey="lblGalleryLocalizationSelectLanguage" HelpText="Select the languange you want to edit. There is no need to edit dafault language."
														Text="Select language:" />
												</td>
												<td align="left">
													<asp:DropDownList ID="ddlGalleryLocalizationSelectLanguage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlGalleryLocalizationSelectLanguage_SelectedIndexChanged">
														<asp:ListItem Value="0">Select language</asp:ListItem>
													</asp:DropDownList>
												</td>
											</tr>
											<tr>
												<td class="style20" align="left">
													<dnn:Label ID="lblGalleryLocalizationTitle" runat="server" HelpKey="lblContentLocalizationTitle.HelpText" HelpText="Title:" ResourceKey="lblContentLocalizationTitle" Text="Title:" />
												</td>
												<td align="left">
													<asp:TextBox ID="tbGalleryLocalizationTitle" runat="server" Style="width: 250px">
													</asp:TextBox>
													&nbsp;
													<asp:Button ID="btnGalleryLocalizationCopyDefault" runat="server" OnClick="btnGalleryLocalizationCopyDefault_Click" resourcekey="btnGalleryLocalizationCopyDefault" Text="Copy default values" />
												</td>
											</tr>
											<tr>
												<td class="style20" align="left">
													<dnn:Label ID="lblGalleryLocalizationDescription" runat="server" HelpKey="lblContentLocalizationDescription.HelpText" HelpText="Description:" ResourceKey="lblContentLocalizationDescription" Text="Description:" />
												</td>
												<td align="left">
													<dnn:TextEditor ID="txtGalleryLocalizationDescription" runat="server" Height="300" Width="550" />
												</td>
											</tr>
											<tr>
												<td class="style20" align="left">&nbsp;
												</td>
												<td>&nbsp;
												</td>
											</tr>
											<tr>
												<td class="style20" align="left">&nbsp;
												</td>
												<td>
													<asp:Button ID="btnGalleryLocalizationUpdate" resourcekey="btnGalleryLocalizationUpdate" runat="server" Text="Update" OnClick="btnGalleryLocalizationUpdate_Click" />
													&nbsp;
													<asp:Button ID="btnGalleryLocalizationClose" resourcekey="btnGalleryLocalizationClose" runat="server" Text="Close" OnClick="btnGalleryLocalizationClose_Click" />
												</td>
											</tr>
										</table>
									</div>
								</asp:Panel>
								<asp:Panel ID="pnlGalleryPermissionSettings" runat="server" Visible="False" BorderColor="#EFEFEF" BorderStyle="none" Width="850px">
									<div class="contentcategories">
										<table width="750px">
											<tr>
												<td align="center" colspan="3">
													<asp:Label ID="lblGalleryPermissionsSettingTitle" resourcekey="lblGalleryPermissionsSettingTitle" runat="server" CssClass="contenttitle" Font-Bold="True" Text="Gallery Permissions"></asp:Label>
												</td>
											</tr>
											<tr>
												<td align="left">&nbsp;</td>
												<td align="right" class="auto-style1">&nbsp;</td>
												<td align="left">&nbsp;</td>
											</tr>
											<tr>
												<td align="left">&nbsp;
												</td>
												<td align="right" class="auto-style1">
													<asp:Label ID="lblPermissinsGalleryNameTitle" resourcekey="lblPermissinsGalleryNameTitle" runat="server" Font-Bold="True" Text="Gallery name:"></asp:Label>
												</td>
												<td align="left">&nbsp;<asp:Label ID="lblPermissionsGalleryName" runat="server" Font-Bold="True"></asp:Label>
												</td>
											</tr>
											<tr>
												<td align="left">&nbsp; </td>
												<td colspan="2">
													<div class="settingsdetailtable">
														<div id="pnlAllGallerySettings" class="module_settings">
															<div id="pnlGalleryPermissions" runat="server" class="settings_Gallery_container">
																<div class="Gallery_content">
																	<div class="first_coll_fixed_table singleTable">
																		<asp:GridView ID="gvGalleryRolePermisionSettings" runat="server" AutoGenerateColumns="False" CellPadding="0" CssClass="settings_table permissionsNotifications" DataKeyNames="RoleID" OnDataBound="gvGalleryRolePermisionSettings_DataBound" OnRowDataBound="gvGalleryRolePermisionSettings_RowDataBound" Style="margin: 0 auto;">
																			<AlternatingRowStyle CssClass="second" />
																			<Columns>
																				<asp:TemplateField HeaderText="Roles">
																					<ItemTemplate>
																						<p>
																							<asp:Label ID="lblRoleName" runat="server" resourcekey="lblRoleNameResource1" Text='<%#Eval("RoleName")%>'></asp:Label>
																						</p>
																					</ItemTemplate>
																					<HeaderStyle CssClass="header_cell" />
																					<ItemStyle CssClass="subjectName" />
																				</asp:TemplateField>
																				<asp:TemplateField HeaderText="View">
																					<ItemTemplate>
																						<asp:HiddenField ID="hfRoleID" runat="server" Value='<%# GetRoleID(Eval("RoleID"))%>' />
																						<asp:HiddenField ID="hfGalleryRoleNameView" runat="server" Value='<%# Eval("RoleName") %>' />
																						<asp:CheckBox ID="cbGalleryRoleView" runat="server" Checked='<%#Convert.ToBoolean(Eval("View"))%>' CssClass="galleryRoleView" data-cid='<%#GetRoleID(Eval("RoleID"))%>' OnClick="clickAllGalleryCheckboxes.call(this,&quot;View&quot;);" />
																					</ItemTemplate>
																				</asp:TemplateField>
																				<asp:TemplateField HeaderText="Edit">
																					<ItemTemplate>
																						<asp:HiddenField ID="hfGalleryRoleNameEdit" runat="server" Value='<%# Eval("RoleName") %>' />
																						<asp:CheckBox ID="cbGalleryRoleEdit" runat="server" Checked='<%#Convert.ToBoolean(Eval("Edit"))%>' CssClass="galleryRoleEdit" data-cid='<%#GetRoleID(Eval("RoleID"))%>' OnClick="clickAllGalleryCheckboxes.call(this,&quot;Edit&quot;);" />
																					</ItemTemplate>
																				</asp:TemplateField>
																			</Columns>
																		</asp:GridView>
																	</div>
																	<div class="first_coll_fixed_table singleTable" style="margin: 15px 0 0;">
																		<asp:GridView ID="gvGalleryUserPermisionSettings" runat="server" AutoGenerateColumns="False" CellPadding="0" CssClass="settings_table permissionsNotifications" DataKeyNames="UserID" OnRowCommand="gvGalleryUserPermisionSettings_RowCommand" Style="margin: 0 auto;">
																			<AlternatingRowStyle CssClass="second" />
																			<Columns>
																				<asp:TemplateField HeaderText="Users">
																					<ItemTemplate>
																						<p>
																							<asp:Label ID="lblUserName" runat="server" resourcekey="lblRoleNameResource1" Text='<%#Eval("UserName")%>'></asp:Label>
																						</p>
																					</ItemTemplate>
																					<HeaderStyle CssClass="header_cell" />
																					<ItemStyle CssClass="subjectName" />
																				</asp:TemplateField>
																				<asp:TemplateField HeaderText="View">
																					<ItemTemplate>
																						<asp:HiddenField ID="hfUserID" runat="server" Value='<%# Eval("UserID") %>' />
																						<asp:HiddenField ID="hfUsername" runat="server" Value='<%# Eval("Username") %>' />
																						<asp:CheckBox ID="cbGalleryUserView" runat="server" Checked='<%#Convert.ToBoolean(Eval("View"))%>' CssClass="galleryUserView" />
																					</ItemTemplate>
																				</asp:TemplateField>
																				<asp:TemplateField HeaderText="Edit">
																					<ItemTemplate>
																						<asp:CheckBox ID="cbGalleryUserEdit" runat="server" Checked='<%#Convert.ToBoolean(Eval("Edit"))%>' CssClass="galleryUserEdit" />
																					</ItemTemplate>
																				</asp:TemplateField>
																				<asp:TemplateField HeaderText="">
																					<ItemTemplate>
																						<asp:LinkButton ID="lbUserPermissionsRemove" runat="server" CausesValidation="False" CommandArgument='<%#Eval("UserID")%>' CommandName="Remove" OnClientClick="return confirm('Are you sure you want to remove this user?');" resourcekey="lbUserPermissionsRemove" Text="Remove"></asp:LinkButton>
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
																<td>&nbsp;
																</td>
															</tr>
															<tr>
																<td class="subject" colspan="2">
																	<asp:Label ID="lblGalleryAdduserMessage" runat="server" EnableViewState="False" ForeColor="Red" />
																</td>
															</tr>
															<tr>
																<td class="subject">
																	<asp:Label ID="lblGalleryUsernameToAdd" runat="server" Font-Bold="True" resourcekey="lblUsernameToAdd" Text="Add user by username:" />&nbsp;
																</td>
																<td style="width: 250px; text-align: left;">
																	<asp:TextBox ID="tbGalleryUserNameToAdd" runat="server" />
																	<asp:LinkButton ID="lbGalleryUsernameAddPermissions" runat="server" OnClick="lbGalleryUsernameAddPermissions_Click" resourcekey="lbUsernameAddPermissions" Text="Add" />
																</td>
															</tr>
															<tr>
																<td>&nbsp;
																</td>
															</tr>
														</table>
													</div>
												</td>
											</tr>
											<tr>
												<td></td>
												<td></td>
												<td></td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td align="center" colspan="3">
													<asp:Label ID="lblGalleryActiveTitle" resourcekey="lblGalleryActiveTitle" runat="server" CssClass="contenttitle" Font-Bold="True" Text="Draft/publish mode"></asp:Label>
												</td>
											</tr>
											<tr>
												<td></td>
												<td align="right" style="width: 200px">
													<dnn:Label ID="lblGalleryActiveMode" ResourceKey="lblGalleryActiveMode" runat="server" Text="Draft/publish mode:" HelpText="Draft/publish mode."></dnn:Label>
												</td>
												<td align="left">
													<asp:RadioButtonList ID="rblGalleryActiveMode" runat="server" RepeatDirection="Horizontal" Style="float: left;">
														<asp:ListItem resourcekey="liDraft" Value="False">Draft</asp:ListItem>
														<asp:ListItem resourcekey="liPublish" Value="True">Publish</asp:ListItem>
													</asp:RadioButtonList>
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td align="right" style="width: 200px">
													<dnn:Label ID="lblGalleryApproved" runat="server" Text="Approved:" HelpText="Approve gallery."></dnn:Label>
												</td>
												<td align="left">
													<asp:CheckBox ID="cbGalleryApproved" runat="server" />
												</td>
											</tr>
											<tr>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
												<td>&nbsp;</td>
											</tr>
											<tr>
												<td align="center" colspan="3">&nbsp;
													<asp:Label ID="lblGalleryDatesSettingTitle" resourcekey="lblGalleryDatesSettingTitle" runat="server" CssClass="contenttitle" Font-Bold="True" Text="Publish/Expire Date"></asp:Label>
												</td>
											</tr>
											<tr>
												<td align="left">&nbsp;</td>
												<td align="right" class="auto-style1">
													<dnn:Label ID="lblGalleryPublishDate" runat="server" Text="Publish date:" HelpText="Gallery publish date."></dnn:Label>
												</td>
												<td align="left">
													<asp:TextBox ID="tbPublishDate" runat="server" CssClass="text_generic center" ValidationGroup="vgSaveGalleryPermisions" Width="90px" />
													<asp:Label ID="lblPubDateError" runat="server" ForeColor="Red" Text="Invalid date." Visible="false" />
													<asp:TextBox ID="tbPublishTime" runat="server" CssClass="text_generic center" ValidationGroup="vgEditArticle" Width="50px" />
													<asp:RegularExpressionValidator ID="revPublishTIme" runat="server" ControlToValidate="tbPublishTime" ErrorMessage="hh:mm" ValidationExpression="([0-1]?[0-9]|2[0-3]):([0-5][0-9])" ValidationGroup="vgSaveGalleryPermisions" /></td>
											</tr>
											<tr>
												<td align="left">&nbsp;</td>
												<td align="right" class="auto-style1">
													<dnn:Label ID="lblGalleryExpireDate" runat="server" Text="Expire date:" HelpText="Gallery expire date."></dnn:Label>
												</td>
												<td align="left">
													<asp:TextBox ID="tbExpireDate" runat="server" CssClass="text_generic center" ValidationGroup="vgSaveGalleryPermisions" Width="90px" />
													<asp:Label ID="lblExpireDateError" runat="server" ForeColor="Red" Text="Invalid date." Visible="false" />
													<asp:TextBox ID="tbExpireTime" runat="server" CssClass="text_generic center" ValidationGroup="vgSaveGalleryPermisions" Width="50px" />
													<asp:RegularExpressionValidator ID="revPublishTIme0" runat="server" ControlToValidate="tbExpireTime" ErrorMessage="hh:mm" ValidationExpression="([0-1]?[0-9]|2[0-3]):([0-5][0-9])" ValidationGroup="vgSaveGalleryPermisions" />
												</td>
											</tr>
											<tr>
												<td align="left">&nbsp;</td>
												<td colspan="2">
													<asp:Label ID="lblGalleryDatesPermissionsSaveMessage" runat="server" EnableViewState="False" ForeColor="Red" />
													<asp:Label ID="lblMainDateMessage" runat="server" EnableViewState="False" ForeColor="Red" />
												</td>
											</tr>
											<tr>
												<td align="left">&nbsp; </td>
												<td colspan="2">
													<asp:HiddenField ID="hfPermissionsGalleryID" runat="server" />
													<asp:HiddenField ID="hfGalleryRolesAndPermisionsView" runat="server" />
													<asp:HiddenField ID="hfGalleryRolesAndPermisionsEdit" runat="server" />
													<asp:Button ID="btnSaveGalleryPermissions" resourcekey="btnSaveGalleryPermissions" runat="server" OnClick="btnSaveGalleryPermissions_Click" OnClientClick="SaveGalleryCheckedChekboxes()" Text="Save" ValidationGroup="vgSaveGalleryPermisions" />
													&nbsp;
													<asp:Button ID="btnGalleryPermissionsClose" runat="server" OnClick="btnGalleryPermissionsClose_Click" resourcekey="btnGalleryLocalizationClose" Text="Close" />
												</td>
											</tr>
										</table>
									</div>
								</asp:Panel>
								&nbsp;
								<div id="divSaveCloseButtons" runat="server" style="padding-top: 10px;">
									<asp:Button ID="btnSaveCloseDown" runat="server" OnClick="btnCloseMM_Click" Text="Save & Close" Style="margin-right: 5px;" resourcekey="btnSaveClose.Text" CssClass="btnsaveclose" />
									<asp:Button ID="btnCloseDown" runat="server" OnClick="btnCloseMM_Click" Text="Close" resourcekey="btnCloseResource1.Text" CssClass="btnclose" />
								</div>
							</asp:Panel>
						</div>
						<asp:Panel ID="pnlMediaManager" runat="server" Enabled="False" Visible="False" border="0" Width="800px">
							<table cellpadding="2" cellspacing="2" width="800px">
								<tr>
									<td align="right">
										<asp:Button ID="btnclosemedia" runat="server" OnClick="Button1_Click1" Text="Close media manager" ToolTip="Close Media Manager and return to Gallery Manager." resourcekey="btnclosemediaResource1" CssClass="btnclosemediamanager" />
									</td>
								</tr>
							</table>
							<div class="headermedia">
								<div class="bordermedtop">
								</div>
								<table cellpadding="0" cellspacing="0">
									<tr>
										<td class="style4">
											<img alt="Manage Media" src="<%=ModulePath%>images/mediamanagerthumb.png" style="width: 124px; height: 103px" />
										</td>
										<td align="left">
											<asp:Label ID="lblMediaManagerTitle" resourcekey="lblMediaManagerTitle" runat="server" CssClass="MediaManagerTitle" Text="&lt;b&gt;Media&lt;/b&gt; Manager"></asp:Label>
											<table cellpadding="0" cellspacing="0">
												<tr>
													<td>
														<asp:Label ID="lblAddEditDelete" resourcekey="lblAddEditDelete" runat="server" CssClass="AddEditDelete" Text="Add | Edit | Delete"></asp:Label>
													</td>
													<td>
														<asp:Label ID="lblImagesVideoAudio" resourcekey="lblImagesVideoAudio" runat="server" CssClass="ImagesVideoAudio" Text="Images | Video | Audio"></asp:Label>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								&nbsp;<div class="bordermedbot">
								</div>
							</div>
							<div class="gallerylistbox">
								<table cellpadding="2" cellspacing="2" border="0" width="100%">
									<tr>
										<td align="left">
											<table id="showCatName" runat="server" cellpadding="0" cellspacing="0" class="selectcategory" style="margin-bottom: 7px;">
												<tr>
													<td>
														<div class="selcatleft">
														</div>
													</td>
													<td valign="middle">
														<asp:Label ID="lblSelectedCatName" runat="server" Text="Selected category name:" CssClass="selectcategorytxt" resourcekey="lblSelectedCatNameResource1"></asp:Label>
														<asp:Label ID="lblSelCatNameAtMediaManager" runat="server" CssClass="selectcategorytxtbold" resourcekey="lblSelCatNameAtMediaManagerResource1"></asp:Label>
													</td>
													<td>
														<div class="selcatright">
														</div>
													</td>
												</tr>
											</table>
										</td>
										<td rowspan="3" valign="middle">
											<table id="movecopyGal" cellpadding="0" cellspacing="0" class="boxmovecopy" align="right" runat="server">
												<tr>
													<td style="background-color: #cbe48c">
														<div class="boxmovecopytop" align="left">
															<asp:Label ID="lblMoveCopyTitle" resourcekey="lblMoveCopyTitle" runat="server" CssClass="MoveCopyTitle" Text="Move or copy gallery to another category:"></asp:Label>
														</div>
														<table cellpadding="0" cellspacing="0" style="height: 35px;" width="100%">
															<tr>
																<td align="center">
																	<asp:DropDownList ID="ddlCategoryMove" runat="server" CssClass="inputboxmovecopy" DataSourceID="odsMoveCategories" DataTextField="CategoryName" DataValueField="CategoryID">
																	</asp:DropDownList>
																</td>
																<td>
																	<asp:Button ID="btnmove0" runat="server" Text="Move" OnClick="btnMoveGallery_Click" resourcekey="btnmoveResource1" CssClass="btnmoveclose" />
																	<asp:Button ID="btncopy0" runat="server" Text="Copy" OnClick="btncopy_Click" resourcekey="btncopyResource1" CssClass="btnmoveclose" />
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
										<td align="left">
											<table cellpadding="0" cellspacing="0" class="selectgalegory" style="margin-left: 35px;">
												<tr>
													<td>
														<div class="selgalleft">
														</div>
													</td>
													<td valign="middle">
														<asp:Label ID="lblSelectedGalleryNameTitle" runat="server" Text="Selected Gallery Name:" CssClass="selectcategorytxt" resourcekey="lblSelectedGalleryNameTitleResource1">
														</asp:Label>
														<asp:Label ID="lblSelectedGalleryName" runat="server" CssClass="selectcategorytxtbold" resourcekey="lblSelectedGalleryNameResource1"></asp:Label>
													</td>
													<td>
														<div class="selgalright">
														</div>
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="right">
											<table>
												<tr id="trUserGalleryPrivacy" runat="server" visible="false">
													<td style="width: 60%">
														<dnn:Label ID="dnnUserGalleryPrivacy" runat="server" ControlName="tbAddGallery" HelpText="lblJournalSharing.HelpText" Text="Privacy settings:" CssClass="tooltip2" HelpKey="Privacy settings:" ResourceKey="dnnUserGalleryPrivacy" />
													</td>
													<td style="width: 40%">
														<asp:DropDownList ID="ddlPostToJournalSettings" CssClass="ddlvisibility" runat="server" Style="margin-right: 16px;" />
													</td>
												</tr>
												<tr id="divGalleryGroups" runat="server" visible="False">
													<td style="width: 60%">
														<dnn:Label ID="lblGallerySocialSecurityGroups" runat="server" CssClass="tooltip2" Text="Social groups:" HelpText="Social groups:" />
													</td>
													<td style="width: 40%">
														<asp:ListBox ID="lbGallerySocialSecurityGroups" runat="server" SelectionMode="Multiple"></asp:ListBox>
													</td>
												</tr>
												<tr id="trSaveGallerySharing" runat="server" visible="False">
													<td></td>
													<td align="right">
														<asp:Button ID="btnSaveGallerySharing" resourcekey="btnSaveGallerySharing" runat="server" Text="Save" CssClass="btnsaveposition" OnClick="btnSaveGallerySharing_Click" Style="margin-right: 16px;" />
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td align="center">
											<asp:Label ID="lblNumberOfMediaFiles" runat="server" Text="Number of media files in gallery:" CssClass="labeltext2" resourcekey="lblNumberOfMediaFilesResource1"></asp:Label>
											<asp:Label ID="lblImagesNumber" runat="server" CssClass="labeltext2" resourcekey="lblImagesNumberResource1">
											</asp:Label>
											<br />
											<asp:Label ID="lblSelectedGalleryID" runat="server" Text="Selected Gallery ID: " Visible="False" resourcekey="lblSelectedGalleryIDResource1"></asp:Label>
											<asp:Label ID="lblSelectedDataKey2" runat="server" Visible="False" resourcekey="lblSelectedDataKey2Resource1">
											</asp:Label>
										</td>
									</tr>
								</table>
								<br />
								<table cellpadding="0" cellspacing="0">
									<tr>
										<td>
											<asp:Label ID="lblMedidaManagerMessage" runat="server" resourcekey="lblMedidaManagerMessageResource1" AssociatedControlID="gvGalleryImages" EnableViewState="False" CssClass="media_message_info"></asp:Label>
											<asp:GridView ID="gvGalleryImages" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" border="0" CellPadding="4" CssClass="galleryliststylebox" DataKeyNames="PictureID" DataSourceID="odsGalleryImages" ForeColor="Black" OnDataBound="gvGalleryImages_DataBound"
												OnPreRender="gvGalleryImages_PreRender" OnRowCancelingEdit="gvGalleryImages_RowCancelingEdit" OnRowCommand="gvGalleryImages_RowCommand" OnRowCreated="gvGalleryImages_RowCreated" OnRowDeleted="gvGalleryImages_RowDeleted" OnRowEditing="gvGalleryImages_RowEditing"
												OnRowUpdated="gvGalleryImages_RowUpdated" ShowFooter="True" Width="800px" GridLines="Horizontal" OnRowDataBound="gvGalleryImages_RowDataBound" OnRowDeleting="gvGalleryImages_RowDeleting1">
												<AlternatingRowStyle CssClass="gallerygrid1" />
												<Columns>
													<asp:TemplateField HeaderText="Action" ShowHeader="False">
														<EditItemTemplate>
															<asp:LinkButton ID="lbMediaUpdate" runat="server" CommandName="Update" CssClass="gallerycontrollink" Text="Update" resourcekey="lbMediaUpdateResource1"></asp:LinkButton>
															&nbsp;<asp:LinkButton ID="lbMediaCancel" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="gallerycontrollink" Text="Cancel" resourcekey="lbMediaCancelResource1"></asp:LinkButton>
														</EditItemTemplate>
														<ItemTemplate>
															<asp:LinkButton ID="lbMediaEdit" runat="server" CausesValidation="False" CommandName="Edit" CssClass="gallerycontrollinklight" Text="Quick Edit" resourcekey="lbMediaEditResource1"></asp:LinkButton>
															<asp:LinkButton ID="lbMediaSelect" runat="server" CausesValidation="False" CommandArgument='<%#((DataRowView)Container.DataItem)["PictureID"]%>' CommandName="Open" CssClass="gallerycontrollink" Text="Open in editor" resourcekey="lbMediaSelectResource1"></asp:LinkButton>
															<asp:LinkButton ID="lbMediaDelete" runat="server" CommandName="Delete" CssClass="gallerycontrollinklight" OnClientClick="return confirm('Are you sure you want to delete this media?');" Text="Delete" resourcekey="lbMediaDeleteResource1"></asp:LinkButton>
															<asp:LinkButton ID="lbMediaMove" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Move" CssClass="gallerycontrollinklight" Text="Move/Copy" resourcekey="lbMediaMoveResource1"></asp:LinkButton>
															<asp:LinkButton ID="lbMediaContentLocalization" runat="server" CausesValidation="False" CommandArgument='<%#((DataRowView)Container.DataItem)["PictureID"]%>' CommandName="ContentLocalization" CssClass="gallerycontrollinklight" Text="Content Localization" resourcekey="lbMediaContentLocalization" Visible='<%#Convert.ToBoolean(ViewState["EnableLocalization"])%>'></asp:LinkButton>
															<asp:CheckBox ID="cbMediaSelected" CssClass="EGMediaSelect" resourcekey="cbSelected" runat="server" Text="Select" />
															<asp:HiddenField ID="hfMediaID" runat="server" Value='<%#((DataRowView)Container.DataItem)["PictureID"]%>' />
														</ItemTemplate>
														<FooterTemplate>
															<asp:LinkButton ID="lbSelectAll" resourcekey="lbSelectAll" OnClientClick="SelectAllMedia(); return false;" runat="server" Text="Select all"></asp:LinkButton>
															<asp:LinkButton ID="lbDeselectAll" resourcekey="lbDeselectAll" OnClientClick="DeSelectAllMedia(); return false;" runat="server" Text="Deselect all"></asp:LinkButton>
															<asp:LinkButton ID="lbDeleteSelected" resourcekey="lbDeleteSelected" runat="server" Text="Delete Selected" CommandName="DeleteSelected"></asp:LinkButton>
														</FooterTemplate>
														<ControlStyle Width="70px" />
														<ItemStyle HorizontalAlign="Left" Width="70px" Wrap="True" />
													</asp:TemplateField>
													<asp:BoundField DataField="PictureID" HeaderText="ID" ReadOnly="True">
														<ItemStyle HorizontalAlign="Center" Width="20px" />
													</asp:BoundField>
													<asp:BoundField DataField="GalleryID" HeaderText="GalleryID" ReadOnly="True" Visible="False" />
													<asp:TemplateField HeaderText="Title" SortExpression="Title">
														<EditItemTemplate>
															<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
														</EditItemTemplate>
														<ItemTemplate>
															<asp:HiddenField ID="hfMediaEnabled" runat="server" Value='<%# ((DataRowView)Container.DataItem)["MediaApproved"] %>' />
															<asp:LinkButton ID="lbMediaTitleOpen" runat="server" CommandArgument='<%#((DataRowView)Container.DataItem)["PictureID"]%>' CommandName="Open" CssClass="gallerycontrollinklight" Text='<%# Bind("Title") %>' resourcekey="lbMediaTitleOpenResource1"></asp:LinkButton>
														</ItemTemplate>
													</asp:TemplateField>
													<asp:TemplateField HeaderText="Description">
														<EditItemTemplate>
															<asp:TextBox ID="tbMediaEditDescription" runat="server" Height="150px" Text='<%# Bind("Description") %>' TextMode="MultiLine" Width="120px"></asp:TextBox>
														</EditItemTemplate>
														<ItemTemplate>
															<asp:Label ID="lblMediaDescription" runat="server" Text='<%# ((DataRowView)Container.DataItem)["Description"]%>' resourcekey="lblMediaDescriptionResource1"></asp:Label>
														</ItemTemplate>
													</asp:TemplateField>
													<asp:TemplateField HeaderText="Thumbnail">
														<ItemTemplate>
															<asp:HyperLink ID="hlMediaThumbnailOpen" runat="server" NavigateUrl='<%# ((DataRowView)Container.DataItem)["FileName"] %>' Target="_blank" resourcekey="hlMediaThumbnailOpenResource1">
																<asp:Image ID="Image1" runat="server" BorderColor="White" BorderStyle="Solid" BorderWidth="3px" Width='<%#GetWidth(Eval("Info"))%>' Height='<%#GetHeight(Eval("Info"))%>' CssClass="imagethumbbrd" ImageUrl='<%# GetThumbnailURL(Eval("ThumbUrl"),Eval("Info"),Eval("FileName")) %>' />
															</asp:HyperLink>
															<br />
															<asp:Label ID="lblMediaImageUrl" runat="server" Text='<%# ((DataRowView)Container.DataItem)["ImageUrl"]%>' resourcekey="lblMediaImageUrlResource1"></asp:Label>
														</ItemTemplate>
														<ItemStyle HorizontalAlign="Center" />
													</asp:TemplateField>
													<asp:TemplateField HeaderText="Position" SortExpression="Position">
														<EditItemTemplate>
															<asp:TextBox ID="tbMediaPosition" runat="server" CssClass="boxposition2" Text='<%#Bind("Position")%>'></asp:TextBox>
														</EditItemTemplate>
														<FooterTemplate>
															<table>
																<tr>
																	<td>
																		<asp:Button ID="btnMediaSavePositions" runat="server" CssClass="btnsaveposition" OnClick="btnSavePositions_Click" Text="Save Positions" ToolTip="Save Positions" resourcekey="btnMediaSavePositionsResource1" />
																	</td>
																	<td>
																		<asp:ImageButton ID="imgbtnRearangeMediaPositions" runat="server" ImageUrl="~/DesktopModules/EasyDNNGallery/images/rearrangegal.png" OnClick="btnOrgPozicije_Click" ToolTip="Rearrange media positions numbers in gallery." />
																	</td>
																</tr>
															</table>
														</FooterTemplate>
														<ItemTemplate>
															<table cellpadding="0" cellspacing="0">
																<tr>
																	<td style="padding-right: 10px;">
																		<asp:TextBox ID="tbMediaPosition" runat="server" CssClass="boxposition2" Text='<%#((DataRowView)Container.DataItem)["Position"]%>'></asp:TextBox>
																	</td>
																	<td>
																		<asp:ImageButton ID="imbMediaUp" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Up" Height="16px" ImageUrl="~/images/action_up.gif" Text="Up" resourcekey="imbMediaUpResource1" />
																		<br />
																		<asp:ImageButton ID="imbMediaDown" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Down" ImageUrl="~/images/action_down.gif" Text="Gore" resourcekey="imbMediaDownResource1" />
																	</td>
																</tr>
															</table>
															<br />
														</ItemTemplate>
														<ItemStyle HorizontalAlign="Center" />
													</asp:TemplateField>
													<asp:TemplateField ShowHeader="False" Visible="False">
														<ItemTemplate>
															<asp:ImageButton ID="imbMediaUp2" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Up" ImageUrl="~/images/action_up.gif" Text="Up" resourcekey="imbMediaUp2Resource1" />
															<br />
															<asp:ImageButton ID="imbMediaDown2" runat="server" CausesValidation="False" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" CommandName="Down" ImageUrl="~/images/action_down.gif" Text="Gore" resourcekey="imbMediaDown2Resource1" />
														</ItemTemplate>
													</asp:TemplateField>
													<asp:BoundField DataField="MediaType" HeaderText="Type" ReadOnly="True" SortExpression="MediaType">
														<ControlStyle Width="50px" />
														<FooterStyle Width="50px" />
														<HeaderStyle Width="50px" />
														<ItemStyle HorizontalAlign="Center" Width="50px" />
													</asp:BoundField>
													<asp:TemplateField HeaderText="Approved" SortExpression="MediaApproved">
														<ItemTemplate>
															<asp:Image ID="Image2" runat="server" ImageUrl="~/DesktopModules/EasyDNNGallery/images/accept.png" AlternateText="Approved" Visible='<%#Convert.ToBoolean(GetApproved(Eval("MediaApproved")))%>' />
															<asp:Image ID="Image3" runat="server" ImageUrl="~/DesktopModules/EasyDNNGallery/images/remove.png" AlternateText="Unapproved" Visible='<%#!Convert.ToBoolean(GetApproved(Eval("MediaApproved")))%>' /><br />
															<asp:LinkButton ID="lbApprove" CssClass="approvelink" runat="server" CommandName="Approve" CommandArgument='<%#((DataRowView)Container.DataItem)["PictureID"]%>' Visible='<%#!Convert.ToBoolean(GetApproved(Eval("MediaApproved")))%>' Text="Approve" resourcekey="lbApprove"
																Font-Bold="False" CausesValidation="False"></asp:LinkButton>
															<asp:LinkButton ID="lbUnApprove" CssClass="approvelink2" runat="server" CommandName="Unapprove" CommandArgument='<%#((DataRowView)Container.DataItem)["PictureID"]%>' Visible='<%#Convert.ToBoolean(GetApproved(Eval("MediaApproved")))%>' Text="Unapprove"
																resourcekey="lbUnApprove" CausesValidation="False" Font-Bold="False"></asp:LinkButton>
															<div style="margin-top: 10px;">
																<asp:Label ID="lblUploadedBy" runat="server" resourcekey="lblUploadedBy" Text="Uploaded by:" Style="font-size: 10px;"></asp:Label><br />
																<asp:Label ID="lblUserName" runat="server" Style="font-size: 10px;" Text='<%#GetUserName(Eval("UserID"))%>'></asp:Label>
															</div>
														</ItemTemplate>
														<ItemStyle HorizontalAlign="Center" />
													</asp:TemplateField>
												</Columns>
												<FooterStyle CssClass="gallerygrid1" />
												<HeaderStyle CssClass="galleryboxheaderbgrd" Font-Names="arial" Font-Size="14px" ForeColor="#343E1C" VerticalAlign="Middle" />
												<PagerStyle BackColor="#E3E1E1" CssClass="pagegal" ForeColor="#556C20" Height="45px" HorizontalAlign="Center" />
												<RowStyle CssClass="gallerygrid2" />
												<SelectedRowStyle CssClass="gallerygridselected" />
											</asp:GridView>
											<table cellpadding="2" cellspacing="2" align="center">
												<tr>
													<td>
														<dnn:Label ID="lblNumberOfMediaPerPage" runat="server" Text="Items per page:" HelpText="Select the number of items to display on one page." ResourceKey="lblNumberOfMediaPerPage" CssClass="labeltext" HelpKey="lblNumberOfMediaPerPage.HelpText"></dnn:Label>
													</td>
													<td>&nbsp;<asp:DropDownList ID="ddlImagesPerPage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImagesPerPage_SelectedIndexChanged" CssClass="ddlpageitems">
														<asp:ListItem Text="10" resourcekey="ListItemResource12">
														</asp:ListItem>
														<asp:ListItem Text="30" resourcekey="ListItemResource13">
														</asp:ListItem>
														<asp:ListItem Text="50" resourcekey="ListItemResource14">
														</asp:ListItem>
													</asp:DropDownList>
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
								<br />
								<asp:Panel ID="pnlMoveMedia" runat="server" Visible="False" OnPreRender="pnlMoveMedia_PreRender">
									<div class="tblmovecopy">
										<table cellpadding="2" cellspacing="2">
											<tr>
												<td>
													<asp:Label ID="lblMoveORCopyMedia" runat="server" Text="Move or copy selected media" CssClass="subtitleregion" resourcekey="lblMoveORCopyMediaResource1"></asp:Label>
												</td>
												<td></td>
											</tr>
											<tr>
												<td align="right">&nbsp;
												</td>
												<td align="left">&nbsp;
												</td>
											</tr>
											<tr>
												<td align="right">
													<dnn:Label ID="lblMediaMoveID" ResourceKey="lblMediaMoveID" runat="server" HelpText="ID of the selected media." Text="ID:" HelpKey="lblMediaMoveID.HelpText" />
												</td>
												<td align="left">
													<asp:Label ID="lblMoveMediaID2" runat="server" Text="ID"></asp:Label>
												</td>
											</tr>
											<tr>
												<td align="right">
													<dnn:Label ID="lblMoveMediaTitle" ResourceKey="lblMoveMediaTitle" runat="server" Text="Title:" HelpText="Title of the selected media." HelpKey="lblMoveMediaTitle.HelpText"></dnn:Label>
												</td>
												<td align="left">
													<asp:Label ID="lblMoveMedoaTitle2" runat="server" Text="Title"></asp:Label>
												</td>
											</tr>
											<tr>
												<td></td>
												<td align="center">
													<asp:LinkButton ID="btnRefrehsData" runat="server" CssClass="refresh" ToolTip="Refresh category and gallery list" OnClick="btnRefrehsData_Click"></asp:LinkButton>
												</td>
											</tr>
											<tr>
												<td align="right" class="auto-style2">
													<dnn:Label ID="lblMoveMediaSelectCategory" ResourceKey="lblMoveMediaSelectCategory" runat="server" Text="Select category:" HelpText="Select the category to move or copy image to:" HelpKey="lblMoveMediaSelectCategory.HelpText"></dnn:Label>
												</td>
												<td align="left" class="auto-style2">
													<asp:DropDownList ID="ddlMoveCategory" runat="server" AutoPostBack="True" DataTextField="CategoryName" DataValueField="CategoryID" Width="250" OnSelectedIndexChanged="ddlMoveCategory_SelectedIndexChanged">
													</asp:DropDownList>
												</td>
											</tr>
											<tr>
												<td align="right">
													<dnn:Label ID="lblMedijaMoveGallerySelect" ResourceKey="lblMedijaMoveGallerySelect" runat="server" Text="Select gallery:" HelpText="Select the gallery to move or copy image to:" HelpKey="lblMedijaMoveGallerySelect.HelpText"></dnn:Label>
												</td>
												<td align="left">
													<asp:DropDownList ID="ddlMMSelectGallery" runat="server" DataSourceID="odsMoveGalleries" DataTextField="GalleryName" DataValueField="GalleryID" Width="250">
													</asp:DropDownList>
												</td>
											</tr>
											<tr>
												<td align="right">&nbsp;
												</td>
												<td align="left">&nbsp;
												</td>
											</tr>
											<tr>
												<td align="right">&nbsp;
												</td>
												<td align="left">
													<asp:Button ID="btnMoveMediaCopy" runat="server" OnClick="btnMMCopy_Click" Text="Copy" Width="90px" resourcekey="btnMoveMediaCopyResource1" />
													&nbsp;&nbsp;<asp:Button ID="btnMoveMediaMove" runat="server" OnClick="btnMMMove_Click" Text="Move" Width="90px" resourcekey="btnMoveMediaMoveResource1" />
													&nbsp;
													<asp:Button ID="btnMoveMediaCancel" runat="server" OnClick="btnMMMoveCancel_Click" Text="Cancel" Width="90px" resourcekey="btnMoveMediaCancelResource1" />
												</td>
											</tr>
										</table>
									</div>
								</asp:Panel>
								<br />
								<asp:Panel ID="pnlMediaUpload" runat="server" Width="800px">
									<div class="headeruploadmedia">
										<div>
										</div>
										<div>
											<asp:Label ID="lblAddMedia2" resourcekey="lblAddMedia2" runat="server" Text="Add Media" CssClass="Addmedia2"></asp:Label>
											<asp:Label ID="lblAddImagesaudiovideo" resourcekey="lblAddImagesaudiovideo" runat="server" Text="| Images | video | audio" CssClass="Addmedia3"></asp:Label>
										</div>
									</div>
									<asp:Label ID="lblUploadMediaStatus" runat="server" Visible="False" resourcekey="lblUploadMediaStatusResource1">
									</asp:Label>
									<table cellpadding="0" cellspacing="0" style="height: 40px;">
										<tr>
											<td align="center">
												<div style="float: left; padding-right: 5px;">
													<asp:Button ID="imgSelectImageUpload" runat="server" Text="images" OnClick="imgSelectImageUpload_Click" resourcekey="imgSelectImageUploadResource1" CssClass="btnimages" />
												</div>
												<div style="float: left; padding-right: 5px;">
													<asp:Button ID="imgSelectVidoeUpload" runat="server" Text="video" OnClick="imgSelectVidoeUpload_Click" resourcekey="imgSelectVidoeUploadResource1" CssClass="btnvideo" />
												</div>
												<div style="float: left;">
													<asp:Button ID="imgSelectAudioUpload" runat="server" Text="audio" OnClick="imgSelectAudioUpload_Click" resourcekey="imgSelectAudioUploadResource1" CssClass="btnaudio" />
												</div>
											</td>
										</tr>
									</table>
									<asp:Panel ID="pnlImageUploads" runat="server" Width="800px">
										<div class="imagesuploadbox">
											<div class="uploadimagesboxbgrd">
												<div class="addimagestitlebgrd">
													<table style="height: 120px;" cellpadding="0" cellspacing="0" class="style1">
														<tr>
															<td class="style9" valign="bottom" align="left">
																<asp:Label ID="lblAddImages" resourcekey="lblAddImages" runat="server" Text="Add images" CssClass="AddDesc"></asp:Label>
															</td>
															<td align="left">
																<table style="padding-top: 30px;">
																	<tr>
																		<td align="center">
																			<dnn:Label ID="lblImageUploadsTitle" runat="server" CssClass="subtitleregion" HelpKey="lblImageUploadsTitle.HelpText" HelpText="Select if you wish to upload simg image file or a zip file with images." ResourceKey="lblImageUploadsTitle" Text="Image upload" />
																		</td>
																	</tr>
																	<tr>
																		<td align="center">
																			<asp:RadioButtonList ID="rblImageUploadType" runat="server" AutoPostBack="True" CssClass="subtitleregion" OnSelectedIndexChanged="rblUpload_SelectedIndexChanged" RepeatDirection="Horizontal">
																				<asp:ListItem resourcekey="ListItemResource15" Text="Upload single image" Value="single">
																				</asp:ListItem>
																				<asp:ListItem resourcekey="MultiImageUpload" Value="multi">Multi image upload</asp:ListItem>
																				<asp:ListItem resourcekey="ListItemResource16" Text="Upload Zip file" Value="zip">
																				</asp:ListItem>
																				<asp:ListItem resourcekey="ListItemResource17" Text="Add images from server folder" Value="imagefolder">
																				</asp:ListItem>
																			</asp:RadioButtonList>
																		</td>
																	</tr>
																</table>
															</td>
														</tr>
													</table>
												</div>
												<asp:Panel ID="pnlZipUpload" runat="server" Visible="False" Width="850px">
													<table cellpadding="2" cellspacing="2" style="width: 650px; text-align: left;">
														<tr>
															<td align="center" colspan="2">
																<div style="margin-top: 25px; margin-bottom: 15px;">
																	<asp:Label ID="lblZipUploadTitle" runat="server" Text="Zip file upload" CssClass="subtitleregion" resourcekey="lblZipUploadTitleResource1"></asp:Label>
																	<asp:RadioButtonList ID="rblZipUploadSource" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblTUSelect_SelectedIndexChanged" RepeatDirection="Horizontal" CellPadding="2" CellSpacing="2" CssClass="subtitleregion">
																		<asp:ListItem Selected="True" Value="upload" Text="Upload Zip file" resourcekey="ListItemResource18">
																		</asp:ListItem>
																		<asp:ListItem Value="server" Text="Add zip from server folder" resourcekey="ListItemResource19">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																</div>
															</td>
														</tr>
														<tr>
															<td align="center" colspan="2">
																<asp:Panel ID="pnlZUpload" runat="server">
																	<table style="width: 650px; text-align: left;">
																		<tr>
																			<td class="style17">
																				<dnn:Label ID="lblZipUploadFileSelect" ResourceKey="lblZipUploadFileSelect" runat="server" HelpText="Please select zip file to upload:" Text="Zip file to upload:" HelpKey="lblZipUploadFileSelect.HelpText" />
																			</td>
																			<td>
																				<asp:FileUpload ID="fuZipUpload" runat="server" Width="300px" />
																			</td>
																		</tr>
																	</table>
																</asp:Panel>
																<asp:Panel ID="pnlZUAddFromServer" runat="server" Visible="False">
																	<table style="width: 650px; text-align: left;">
																		<tr>
																			<td colspan="2">
																				<asp:Label ID="lblZipUploadFromServerFileSelect" runat="server" Text="Select zip file:" CssClass="subtitleregion" resourcekey="lblZipUploadFromServerFileSelectResource1">
																				</asp:Label>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblZipUploadSelectFolder" ResourceKey="lblZipUploadSelectFolder" runat="server" Text="Select folder:" HelpText="Select folder:" HelpKey="lblZipUploadSelectFolder.HelpText"></dnn:Label>
																			</td>
																			<td>
																				<asp:DropDownList ID="ddlZUFolders" runat="server" AppendDataBoundItems="True" AutoPostBack="True" OnSelectedIndexChanged="ddlZUFolders_SelectedIndexChanged">
																					<asp:ListItem Value="\" Text="Root" resourcekey="ListItemResource20">
																					</asp:ListItem>
																				</asp:DropDownList>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblZipUploadFolderSelectFile" ResourceKey="lblZipUploadFolderSelectFile" runat="server" Text="Select zip file to add:" HelpText="Select zip file to add:"></dnn:Label>
																			</td>
																			<td>
																				<asp:DropDownList ID="ddlZUFiles" runat="server">
																				</asp:DropDownList>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblZipUploadMainGallFolder" ResourceKey="lblZipUploadMainGallFolder" runat="server" Text="Show main gallery folder:" HelpText="Add main EasyDNN gallery folder to folders list:" HelpKey="lblZipUploadMainGallFolder.HelpText"></dnn:Label>
																			</td>
																			<td>
																				<asp:CheckBox ID="cbZUShowMainGalFolder" runat="server" AutoPostBack="True" OnCheckedChanged="cbZUShowMainGalFolder_CheckedChanged" resourcekey="cbZUShowMainGalFolderResource1" />
																			</td>
																		</tr>
																	</table>
																</asp:Panel>
															</td>
														</tr>
														<tr>
															<td class="style16">
																<dnn:Label ID="lblZipSubtitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
															</td>
															<td>
																<asp:TextBox ID="tbZipSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td class="style16">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style16" valign="top" rowspan="2">
																<dnn:Label ID="lblZipUploadDescription" ResourceKey="lblZipUploadDescription" runat="server" Text=" Description:" HelpText="Enter description for images from zip file." HelpKey="lblZipUploadDescription.HelpText"></dnn:Label>
																&nbsp;
															</td>
															<td>
																<div id="DivZipDescriptionTB" runat="server">
																	<asp:TextBox ID="tbZipDescription" runat="server" Height="150px" Width="300px" MaxLength="4000">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div id="DivZipUseMetadataDescriptionCB" runat="server">
																	<asp:CheckBox ID="cbZipUploadUseExifMetadataDescription" runat="server" Text="Use Exif metadata as description" resourcekey="cbZipUploadUseExifMetadataDescriptionResource1" />
																</div>
																<div id="DivZipUseMetadataDescriptionOptions" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cblZipUploadMetadataDescriptionOptions" runat="server">
																		<asp:ListItem Text="Artist" resourcekey="ListItemResource21">
																		</asp:ListItem>
																		<asp:ListItem Text="Copyright" resourcekey="ListItemResource22">
																		</asp:ListItem>
																		<asp:ListItem Value="ImageDescription" Text="Image description" resourcekey="ListItemResource23">
																		</asp:ListItem>
																		<asp:ListItem Text="Make" resourcekey="ListItemResource24">
																		</asp:ListItem>
																		<asp:ListItem Text="Model" resourcekey="ListItemResource25">
																		</asp:ListItem>
																		<asp:ListItem Value="SubjectLocation" Text="Subject location" resourcekey="ListItemResource26">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16" valign="top">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style16" valign="top">
																<dnn:Label ID="lblZipUploadMediaUrl" ResourceKey="lblZipUploadMediaUrl" runat="server" HelpText="Enter url for media link:" Text="Enter url:" HelpKey="lblZipUploadMediaUrl.HelpText" />
															</td>
															<td>
																<asp:TextBox ID="tbZipImageUrl" runat="server" Width="300px">
																</asp:TextBox>
															</td>
														</tr>
														<tr>
															<td class="style16" valign="top">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style16" rowspan="3" valign="top">
																<dnn:Label ID="lblZipUploadFilenameAsTitle" runat="server" HelpKey="lblZipUploadFilenameAsTitle.HelpText" HelpText="Use filename or metada of image from zip file to set title:" ResourceKey="lblZipUploadFilenameAsTitle" Text="Set title:" />
																&nbsp;
															</td>
															<td>
																<div id="ZIPTitleTextBox" runat="server">
																	<asp:TextBox ID="tbZIPImageTitle" runat="server" MaxLength="250" ValidationGroup="Validationg1" Width="300px">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div id="DivZipUseFileNameCB" runat="server">
																	<asp:CheckBox ID="cbZipUpladUseFilenameTitle" runat="server" CausesValidation="True" resourcekey="cbZipUpladUseFilenameTitleResource1" Text="Use filename as title" />
																</div>
																<div id="divZUUseFilename" runat="server" style="display: none">
																	<asp:CheckBox ID="cbZipUploadTitleRemoveExtenzion" runat="server" resourcekey="cbZipUploadTitleRemoveExtenzionResource1" Text="Remove extension" />
																	<br />
																	<asp:CheckBox ID="cbZipUploadTitleReplaceUnderscore" runat="server" resourcekey="cbZipUploadTitleReplaceUnderscoreResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																	<br />
																	<asp:CheckBox ID="cbZipUploadTitleReplaceMinus" runat="server" resourcekey="cbZipUploadTitleReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																	<asp:RadioButtonList ID="rblZipUploadTitleOptions" runat="server">
																		<asp:ListItem resourcekey="ListItemResource27" Text="Set this to change title to uppercase" Value="AllUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource28" Text="Set this to change title to lowercase" Value="AllLowercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource29" Text="Set this to change first letter of every 
										word in title to uppercase"
																			Value="AllFirstUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource30" Text="Set this to change first letter of title to 
										uppercase"
																			Value="FirstUppercase">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div id="DivZipUseMetadataCB" runat="server">
																	<asp:CheckBox ID="cbZipUploadUseExifMetadataTitle" runat="server" Text="Use Exif metadata as title" resourcekey="cbZipUploadUseExifMetadataTitleResource1" />
																</div>
																<div id="DivZipUseMetadataOptions" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cblZipUploadMetadataOptions" runat="server">
																		<asp:ListItem Text="Artist" resourcekey="ListItemResource31">
																		</asp:ListItem>
																		<asp:ListItem Text="Copyright" resourcekey="ListItemResource32">
																		</asp:ListItem>
																		<asp:ListItem Value="ImageDescription" Text="Image description" resourcekey="ListItemResource33">
																		</asp:ListItem>
																		<asp:ListItem Text="Make" resourcekey="ListItemResource34">
																		</asp:ListItem>
																		<asp:ListItem Text="Model" resourcekey="ListItemResource35">
																		</asp:ListItem>
																		<asp:ListItem Value="SubjectLocation" Text="Subject location" resourcekey="ListItemResource36">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style16">
																<dnn:Label ID="lblIZipUploadImageResize" ResourceKey="lblIZipUploadImageResize" runat="server" HelpText="Propotionaly resize uploaded images:" Text="Resize image:" HelpKey="lblIZipUploadImageResize.HelpText" />
															</td>
															<td>
																<asp:CheckBox ID="cbZipUploadImageResize" runat="server" resourcekey="cbZipUploadImageResizeResource1" />
															</td>
														</tr>
														<tr>
															<td class="style16">&nbsp;
															</td>
															<td>
																<div id="divZUImageResize" runat="server" style="display: none">
																	<asp:Panel ID="pnlZipUploadImageResize" runat="server">
																		<table>
																			<tr>
																				<td>
																					<asp:Label ID="lblZipUploadResizeWidth" runat="server" Text="Max width:" resourcekey="lblZipUploadResizeWidthResource1">
																					</asp:Label>
																				</td>
																				<td>
																					<asp:TextBox ID="tbZipUploadImageResizeWidth" runat="server" Width="50px" Text="800">
																					</asp:TextBox>
																					&nbsp;<asp:CompareValidator ID="cvZipUploadResizeWidth" runat="server" ControlToValidate="tbZipUploadImageResizeWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgZipUpload" resourcekey="cvZipUploadResizeWidthResource1.ErrorMessage"></asp:CompareValidator>
																					<asp:RequiredFieldValidator ID="rfvZipUploadResizeWidth" runat="server" ControlToValidate="tbZipUploadImageResizeWidth" ErrorMessage="This filed is required." ValidationGroup="vgZipUpload" resourcekey="rfvZipUploadResizeWidthResource1.ErrorMessage">
																					</asp:RequiredFieldValidator>
																				</td>
																			</tr>
																			<tr>
																				<td class="style41">
																					<asp:Label ID="lblZipUploadResizeHeight" runat="server" Text="Max height:" resourcekey="lblZipUploadResizeHeightResource1">
																					</asp:Label>
																				</td>
																				<td>
																					<asp:TextBox ID="tbZipUploadImageResizeHeight" runat="server" Width="50px" Text="600">
																					</asp:TextBox>
																					&nbsp;<asp:CompareValidator ID="cvZipUploadResizeHeight" runat="server" ControlToValidate="tbZipUploadImageResizeHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgZipUpload" resourcekey="cvZipUploadResizeHeightResource1.ErrorMessage"></asp:CompareValidator>
																					<asp:RequiredFieldValidator ID="rfvZipUploadResizeHeight" runat="server" ControlToValidate="tbZipUploadImageResizeHeight" ErrorMessage="This filed is required." ValidationGroup="vgZipUpload" resourcekey="rfvZipUploadResizeHeightResource1.ErrorMessage">
																					</asp:RequiredFieldValidator>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<asp:CheckBox ID="cbZipOriginalAsDownload" runat="server" Text="Use unresized image as download version." />
																				</td>
																				<td></td>
																			</tr>
																		</table>
																	</asp:Panel>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16">&nbsp;
															</td>
															<td>
																<asp:Label ID="lblZipUploadMessage" runat="server" CssClass="image_upload_message" EnableViewState="False" resourcekey="lblZipUploadMessageResource1"></asp:Label>
																&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style16">&nbsp;
															</td>
															<td>
																<asp:Button ID="btnUploadZipFile" runat="server" OnClick="UploadZipButton_Click" Text="Upload Zip file" ValidationGroup="vgZipUpload" Width="140px" resourcekey="btnUploadZipFileResource1" />
															</td>
														</tr>
														<tr>
															<td class="style16">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style16">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
													</table>
												</asp:Panel>
												<asp:Panel ID="pnlImageSettings" runat="server" Width="850px" Visible="False">
													<div style="margin-top: 25px; margin-bottom: 15px;">
														<asp:Label ID="lblSingleImageTitle" runat="server" CssClass="subtitleregion" Text="Single image upload" resourcekey="lblSingleImageTitleResource1"></asp:Label><br />
														<asp:RadioButtonList ID="rblSingleImageUploadSelectSource" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="rblSIUSelction_SelectedIndexChanged" CssClass="subtitleregion">
															<asp:ListItem Selected="True" Text="Upload" resourcekey="ListItemResource37">
															</asp:ListItem>
															<asp:ListItem Value="server" Text="Add from server folder" resourcekey="ListItemResource38">
															</asp:ListItem>
														</asp:RadioButtonList>
													</div>
													<table cellpadding="2" cellspacing="2" style="width: 650px; text-align: left;">
														<tr>
															<td colspan="2">
																<asp:Panel ID="pnlSIUAddfromServer" runat="server" Visible="False">
																	<table width="100%">
																		<tr>
																			<td colspan="2">
																				<asp:Label ID="lblSingleImageUploadServerTitle" runat="server" Text="Add  images from server folder:" CssClass="subtitleregion" resourcekey="lblSingleImageUploadServerTitleResource1">
																				</asp:Label>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblSingleImageUploadServerSelectFolder" ResourceKey="lblSingleImageUploadServerSelectFolder" runat="server" Text="Select folder:" HelpText="Select folder:" HelpKey="lblSingleImageUploadServerSelectFolder.HelpText"></dnn:Label>
																			</td>
																			<td>
																				<asp:DropDownList ID="ddlSIUSelectfolder" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="ddlSIUSelectfolder_SelectedIndexChanged">
																					<asp:ListItem Value="\" Text="Root" resourcekey="ListItemResource39">
																					</asp:ListItem>
																				</asp:DropDownList>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblSingleImageUploadServerSelectFile" ResourceKey="lblSingleImageUploadServerSelectFile" runat="server" Text="Select image file to add:" HelpText="Select image file to add:" HelpKey="lblSingleImageUploadServerSelectFile.HelpText"></dnn:Label>
																			</td>
																			<td>
																				<asp:DropDownList ID="ddlSIUSelectFile" runat="server">
																				</asp:DropDownList>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblSingleImageUploadServerShowMainGalleryFolder" ResourceKey="lblSingleImageUploadServerShowMainGalleryFolder" runat="server" Text="Show main gallery folder:" HelpText="Add main EasyDNN gallery folder to folders list:" HelpKey="lblSingleImageUploadServerShowMainGalleryFolder.HelpText"></dnn:Label>
																			</td>
																			<td>
																				<asp:CheckBox ID="cbSIUShowMinGalFOlder" runat="server" AutoPostBack="True" OnCheckedChanged="cbSIUShowMinGalFOlder_CheckedChanged" CausesValidation="True" resourcekey="cbSIUShowMinGalFOlderResource1" />
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblSingleImageUploadServerDeleteOriginal" ResourceKey="lblSingleImageUploadServerDeleteOriginal" runat="server" HelpText="File will be copied to gallery folder. Delete original file:" Text="Delete original file:" HelpKey="lblSingleImageUploadServerDeleteOriginal.HelpText" />
																			</td>
																			<td>
																				<asp:CheckBox ID="cbSIUDeleteOriginalFile" runat="server" CausesValidation="True" resourcekey="cbSIUDeleteOriginalFileResource1" />
																			</td>
																		</tr>
																	</table>
																</asp:Panel>
																<asp:Panel ID="pnlSIUCOmp" runat="server" Width="100%">
																	<table width="100%">
																		<tr>
																			<td style="width: 249px">
																				<dnn:Label ID="lblSingleImageUploadSelectFile" ResourceKey="lblSingleImageUploadSelectFile" runat="server" HelpText="Select image file to upload:" Text="Image file to upload:" HelpKey="lblSingleImageUploadSelectFile.HelpText" />
																			</td>
																			<td>
																				<asp:FileUpload ID="fuImageUpload" runat="server" Height="25px" Width="300px" />
																			</td>
																		</tr>
																	</table>
																</asp:Panel>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblSingleImageUploadTitle" ResourceKey="lblSingleImageUploadTitle" runat="server" HelpText="Enter the image title:" Text="Image title:" HelpKey="lblSingleImageUploadTitle.HelpText" />
															</td>
															<td>
																<div id="SIUTitleTextBox" runat="server">
																	<asp:TextBox ID="tbImageTitle" runat="server" ValidationGroup="Validationg1" Width="300px" MaxLength="250">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<div id="DivUseFilenameCB" runat="server">
																	<asp:CheckBox ID="cbSingleImageUploadFilenameAsTitle" runat="server" Text="Use filename as title" resourcekey="cbSingleImageUploadFilenameAsTitleResource1" />
																</div>
																<div id="SIUTitleFeomFilename" runat="server" style="display: none">
																	<asp:Panel ID="pnlIUFilenameasTitle" runat="server">
																		&nbsp;&nbsp;
																		<asp:CheckBox ID="cbSingleImageUploadRemoveExtenzion" runat="server" Text="Remove extension" resourcekey="cbSingleImageUploadRemoveExtenzionResource1" />
																		<br />
																		&nbsp;&nbsp;
																		<asp:CheckBox ID="cbSingleImageUploadTitleReplaceUnderscore" runat="server" Text="Set this to replace &quot;_&quot; with blank space in title" resourcekey="cbSingleImageUploadTitleReplaceUnderscoreResource1" />
																		<br />
																		&nbsp;&nbsp;
																		<asp:CheckBox ID="cbSinbleImageUploadTitleReplaceMinus" runat="server" Text="Set this to replace &quot;-&quot; with blank space in title" resourcekey="cbSinbleImageUploadTitleReplaceMinusResource1" />
																		<asp:RadioButtonList ID="rblSingleImageUploadFilenameTitleOptions" runat="server">
																			<asp:ListItem Value="AllUppercase" Text="Set this to change title to uppercase" resourcekey="ListItemResource40">
																			</asp:ListItem>
																			<asp:ListItem Value="AllLowercase" Text="Set this to change title to lowercase" resourcekey="ListItemResource41">
																			</asp:ListItem>
																			<asp:ListItem Value="AllFirstUppercase" Text="Set this to change first letter of every 
										word in title to uppercase"
																				resourcekey="ListItemResource42">
																			</asp:ListItem>
																			<asp:ListItem Value="FirstUppercase" Text="Set this to change first letter of title to 
										uppercase"
																				resourcekey="ListItemResource43">
																			</asp:ListItem>
																		</asp:RadioButtonList>
																	</asp:Panel>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16">
																<dnn:Label ID="lblSingleImageSubtitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
															</td>
															<td>
																<asp:TextBox ID="tbSingleImageSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<div id="DivUseExifMetada" runat="server">
																	<asp:CheckBox ID="cbSingleImageUploadTitleUseMetadata" runat="server" Text="Use Exif metadata as title" resourcekey="cbSingleImageUploadTitleUseMetadataResource1" />
																</div>
																<div id="DivSIUseExifMetadata" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cblSingleImageUploadTitleUseMetadataOptions" runat="server">
																		<asp:ListItem Text="Artist" resourcekey="ListItemResource44">
																		</asp:ListItem>
																		<asp:ListItem Text="Copyright" resourcekey="ListItemResource45">
																		</asp:ListItem>
																		<asp:ListItem Value="ImageDescription" Text="Image description" resourcekey="ListItemResource46">
																		</asp:ListItem>
																		<asp:ListItem Text="Make" resourcekey="ListItemResource47">
																		</asp:ListItem>
																		<asp:ListItem Text="Model" resourcekey="ListItemResource48">
																		</asp:ListItem>
																		<asp:ListItem Value="SubjectLocation" Text="Subject location" resourcekey="ListItemResource49">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td valign="top">
																<dnn:Label ID="lblSingleImageUploadDescription" ResourceKey="lblSingleImageUploadDescription" runat="server" HelpText="Enter the image description." Text="Description:" HelpKey="lblSingleImageUploadDescription.HelpText" />
																&nbsp;
															</td>
															<td valign="top">
																<div id="DivSIDescriptionTextBox" runat="server">
																	<asp:TextBox ID="tbImageDescription" runat="server" Height="150px" MaxLength="4000" TextMode="MultiLine" Width="300px">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td valign="top">&nbsp;
															</td>
															<td>
																<div id="DivSIUseMetadataDescription" runat="server">
																	<asp:CheckBox ID="cbSingleImageUploadseExifMetadataDescription" runat="server" Text="Use Exif metadata as description" resourcekey="cbSingleImageUploadseExifMetadataDescriptionResource1" />
																</div>
																<div id="DivSIUseExifMetadataDescriptionOptions" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cbSingleImageUploadseExifMetadataDescriptionOptions" runat="server">
																		<asp:ListItem Text="Artist" resourcekey="ListItemResource50">
																		</asp:ListItem>
																		<asp:ListItem Text="Copyright" resourcekey="ListItemResource51">
																		</asp:ListItem>
																		<asp:ListItem Value="ImageDescription" Text="Image description" resourcekey="ListItemResource52">
																		</asp:ListItem>
																		<asp:ListItem Text="Make" resourcekey="ListItemResource53">
																		</asp:ListItem>
																		<asp:ListItem Text="Model" resourcekey="ListItemResource54">
																		</asp:ListItem>
																		<asp:ListItem Value="SubjectLocation" Text="Subject location" resourcekey="ListItemResource55">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblSingleUmageUploadUrl" ResourceKey="lblSingleUmageUploadUrl" runat="server" HelpText="Enter url for media link:" Text="Enter url:" HelpKey="lblSingleUmageUploadUrl.HelpText" />
															</td>
															<td>
																<asp:TextBox ID="tbSIImageUrl" runat="server" Width="300px">
																</asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr id="trSiUploadImageResize" runat="server">
															<td>
																<dnn:Label ID="lblSingleImageUploadResize" ResourceKey="lblSingleImageUploadResize" runat="server" Text="Resize image:" HelpText="Proportionaly resize uploaded image:" HelpKey="lblSingleImageUploadResize.HelpText"></dnn:Label>
															</td>
															<td>
																<asp:CheckBox ID="cbImageUploadResize" runat="server" OnCheckedChanged="cbImageUploadResize_CheckedChanged" resourcekey="cbImageUploadResizeResource1" />
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<div id="divSIUResize" runat="server" style="display: none">
																	<asp:Panel ID="pnlImageUploadResize" runat="server">
																		<table>
																			<tr>
																				<td>
																					<asp:Label ID="lblImageUploadResizeWidth" runat="server" Text="Max width:" resourcekey="lblImageUploadResizeWidthResource1">
																					</asp:Label>
																				</td>
																				<td>
																					<asp:TextBox ID="tbImageUploadResizeWidth" runat="server" Width="50px" Text="800">
																					</asp:TextBox>
																					<asp:CompareValidator ID="cvImagerResize" runat="server" ControlToValidate="tbImageUploadResizeWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageUpload" resourcekey="cvImagerResizeResource1.ErrorMessage">
																					</asp:CompareValidator>
																					<asp:RequiredFieldValidator ID="rfvImageUpload" runat="server" ControlToValidate="tbImageUploadResizeWidth" ErrorMessage="This filed is required." ValidationGroup="vgImageUpload" resourcekey="rfvImageUploadResource1.ErrorMessage">
																					</asp:RequiredFieldValidator>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<asp:Label ID="lblImageUploadResizeHeight" runat="server" Text="Max height:" resourcekey="lblImageUploadResizeHeightResource1">
																					</asp:Label>
																				</td>
																				<td>
																					<asp:TextBox ID="tbImageUploadResizeHeight" runat="server" Width="50px" Text="600">
																					</asp:TextBox>
																					<asp:CompareValidator ID="cvImagerResizeHeight" runat="server" ControlToValidate="tbImageUploadResizeHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgImageUpload" resourcekey="cvImagerResizeHeightResource1.ErrorMessage">
																					</asp:CompareValidator>
																					<asp:RequiredFieldValidator ID="rfvImageUploadHeight" runat="server" ControlToValidate="tbImageUploadResizeHeight" ErrorMessage="This filed is required." ValidationGroup="vgImageUpload" resourcekey="rfvImageUploadHeightResource1.ErrorMessage">
																					</asp:RequiredFieldValidator>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<asp:CheckBox ID="cbSIUOriginalAsDownload" runat="server" Text="Use unresized image as download version." />
																				</td>
																				<td></td>
																			</tr>
																		</table>
																	</asp:Panel>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<asp:Label ID="Label2" runat="server" Text="Image Format:" Visible="False" resourcekey="Label2Resource1">
																</asp:Label>
															</td>
															<td class="style7">
																<asp:Label ID="lblFileName" runat="server" Visible="False" resourcekey="lblFileNameResource1">
																</asp:Label>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td class="style7">
																<asp:Label ID="lblSingleImageUploadMessage" runat="server" CssClass="image_upload_message" EnableViewState="False" resourcekey="lblMessageResource1" AssociatedControlID="btnSingleImageUpload"></asp:Label>
																&nbsp;
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td class="style7">
																<asp:Button ID="btnSingleImageUpload" runat="server" OnClick="btnUploadImage_Click" Text="Upload image file" ValidationGroup="vgImageUpload" Width="140px" resourcekey="btnSingleImageUploadResource1" />
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td class="style7">&nbsp;
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td class="style7">&nbsp;
															</td>
														</tr>
													</table>
												</asp:Panel>
												<asp:Panel ID="pnlMultiImageUpload" runat="server" Visible="False" Width="850px">
													<div style="margin-top: 25px; margin-bottom: 15px;">
														<asp:Label ID="lblMultiImageTitle" resourcekey="lblMultiImageTitle" runat="server" CssClass="subtitleregion" Text="Multi image upload"></asp:Label>
														<br />
													</div>
													<table cellpadding="2" cellspacing="2" style="width: 650px; text-align: left;">
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblMultiImageUploadTitle" runat="server" HelpText="Enter the image title:" ResourceKey="lblSingleImageUploadTitle" HelpKey="lblSingleImageUploadTitle.HelpText" Text="Image title:" />
															</td>
															<td>
																<div id="MIUTitleTextBox" runat="server">
																	<asp:TextBox ID="tbMultiImageTitle" runat="server" MaxLength="250" ValidationGroup="Validationg1" Width="300px">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td></td>
															<td>
																<div id="MultiDivUseFilenameCB" runat="server">
																	<asp:CheckBox ID="cbMultiImageUploadFilenameAsTitle" runat="server" resourcekey="cbSingleImageUploadFilenameAsTitleResource1" Text="Use filename as title" />
																</div>
																<div id="MIUTitleFeomFilename" runat="server" style="display: none">
																	<asp:Panel ID="pnlMIUFilenameasTitle" runat="server">
																		&nbsp;&nbsp;
																		<asp:CheckBox ID="cbMultiImageUploadRemoveExtenzion" runat="server" resourcekey="cbSingleImageUploadRemoveExtenzionResource1" Text="Remove extension" />
																		<br />
																		&nbsp;&nbsp;
																		<asp:CheckBox ID="cbMultiImageUploadTitleReplaceUnderscore" runat="server" resourcekey="cbSingleImageUploadTitleReplaceUnderscoreResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																		<br />
																		&nbsp;&nbsp;
																		<asp:CheckBox ID="cbMultiImageUploadTitleReplaceMinus" runat="server" resourcekey="cbSinbleImageUploadTitleReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																		<asp:RadioButtonList ID="rblMultiImageUploadFilenameTitleOptions0" runat="server">
																			<asp:ListItem resourcekey="ListItemResource40" Text="Set this to change title to uppercase" Value="AllUppercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource41" Text="Set this to change title to lowercase" Value="AllLowercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource42" Text="Set this to change first letter of every 
										word in title to uppercase"
																				Value="AllFirstUppercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource43" Text="Set this to change first letter of title to 
										uppercase"
																				Value="FirstUppercase">
																			</asp:ListItem>
																		</asp:RadioButtonList>
																	</asp:Panel>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<div id="MultiDivUseExifMetada" runat="server">
																	<asp:CheckBox ID="cbMultiImageUploadTitleUseMetadata" runat="server" resourcekey="cbSingleImageUploadTitleUseMetadataResource1" Text="Use Exif metadata as title" />
																</div>
																<div id="MultiDivSIUseExifMetadata" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cblMultiImageUploadTitleUseMetadataOptions" runat="server">
																		<asp:ListItem resourcekey="ListItemResource44" Text="Artist">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource45" Text="Copyright">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource46" Text="Image description" Value="ImageDescription">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource47" Text="Make">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource48" Text="Model">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource49" Text="Subject location" Value="SubjectLocation">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16">
																<dnn:Label ID="lblMultiImageSubtitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
															</td>
															<td>
																<asp:TextBox ID="tbMultiImageSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td rowspan="2" valign="top">
																<dnn:Label ID="lblMultiImageUploadDescription" runat="server" HelpKey="lblSingleImageUploadDescription.HelpText" HelpText="Enter the image description." ResourceKey="lblSingleImageUploadDescription" Text="Description:" />
																&nbsp;
															</td>
															<td>
																<div id="DivMIDescriptionTextBox" runat="server">
																	<asp:TextBox ID="tbMultiImageDescription" runat="server" Height="150px" MaxLength="4000" TextMode="MultiLine" Width="300px">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div id="DivMIUseMetadataDescription" runat="server">
																	<asp:CheckBox ID="cbMultiImageUploadseExifMetadataDescription" runat="server" resourcekey="cbSingleImageUploadseExifMetadataDescriptionResource1" Text="Use Exif metadata as description" />
																</div>
																<div id="DivMIUseExifMetadataDescriptionOptions" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cbMultiImageUploadseExifMetadataDescriptionOptions" runat="server">
																		<asp:ListItem resourcekey="ListItemResource50" Text="Artist">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource51" Text="Copyright">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource52" Text="Image description" Value="ImageDescription">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource53" Text="Make">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource54" Text="Model">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource55" Text="Subject location" Value="SubjectLocation">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr id="trMultiIUEnterUrl" runat="server">
															<td>
																<dnn:Label ID="lblMultiUmageUploadUrl" runat="server" HelpKey="lblUmageUploadUrl.HelpText" HelpText="Enter url for media link:" ResourceKey="lblSingleUmageUploadUrl" Text="Enter url:" />
															</td>
															<td>
																<asp:TextBox ID="tbMIImageUrl" runat="server" Width="300px">
																</asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr id="trMultiImageUplaodResize" runat="server">
															<td>
																<dnn:Label ID="lblMultiImageUploadResize" runat="server" HelpKey="lblSingleImageUploadResize.HelpText" HelpText="Proportionaly resize uploaded image:" ResourceKey="lblSingleImageUploadResize" Text="Resize image:" />
															</td>
															<td>
																<asp:CheckBox ID="cbMultiUploadResize" runat="server" OnCheckedChanged="cbImageUploadResize_CheckedChanged" resourcekey="cbImageUploadResizeResource1" />
															</td>
														</tr>
														<tr id="trMultiImageUplaodResize2" runat="server">
															<td>&nbsp;
															</td>
															<td>
																<div id="divMIUResize" runat="server" style="display: none">
																	<asp:Panel ID="pnlMultiImageUploadResize" runat="server">
																		<table>
																			<tr>
																				<td>
																					<asp:Label ID="lblMultiImageUploadResizeWidth" runat="server" resourcekey="lblImageUploadResizeWidthResource1" Text="Max width:"></asp:Label>
																				</td>
																				<td>
																					<asp:TextBox ID="tbMultiImageUploadResizeWidth" runat="server" Text="800" Width="50px">
																					</asp:TextBox>
																					<asp:CompareValidator ID="cvImagerResize0" runat="server" ControlToValidate="tbMultiImageUploadResizeWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImagerResizeResource1.ErrorMessage" Type="Integer"
																						ValidationGroup="vgImageUpload">
																					</asp:CompareValidator>
																					<asp:RequiredFieldValidator ID="rfvImageUpload0" runat="server" ControlToValidate="tbMultiImageUploadResizeWidth" ErrorMessage="This filed is required." resourcekey="rfvImageUploadResource1.ErrorMessage" ValidationGroup="vgImageUpload">
																					</asp:RequiredFieldValidator>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<asp:Label ID="lblMultiImageUploadResizeHeight" runat="server" resourcekey="lblImageUploadResizeHeightResource1" Text="Max height:"></asp:Label>
																				</td>
																				<td>
																					<asp:TextBox ID="tbMultiImageUploadResizeHeight" runat="server" Text="600" Width="50px">
																					</asp:TextBox>
																					<asp:CompareValidator ID="cvImagerResizeHeight0" runat="server" ControlToValidate="tbMultiImageUploadResizeHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvImagerResizeHeightResource1.ErrorMessage"
																						Type="Integer" ValidationGroup="vgImageUpload">
																					</asp:CompareValidator>
																					<asp:RequiredFieldValidator ID="rfvImageUploadHeight0" runat="server" ControlToValidate="tbMultiImageUploadResizeHeight" ErrorMessage="This filed is required." resourcekey="rfvImageUploadHeightResource1.ErrorMessage" ValidationGroup="vgImageUpload">
																					</asp:RequiredFieldValidator>
																				</td>
																			</tr>
																			<tr>
																				<td>
																					<asp:CheckBox ID="cbMIUOriginalAsDownload" runat="server" Text="Use unresized image as download version." />
																				</td>
																				<td></td>
																			</tr>
																		</table>
																	</asp:Panel>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<asp:Label ID="Label6" runat="server" resourcekey="Label2Resource1" Text="Image Format:" Visible="False"></asp:Label>
															</td>
															<td class="style7">
																<asp:Label ID="lblFileName0" runat="server" resourcekey="lblFileNameResource1" Visible="False">
																</asp:Label>
																<asp:Label ID="lblPathtoSave" runat="server" Visible="False"></asp:Label>
															</td>
														</tr>
														<tr id="trPostToJournal" runat="server" visible="false">
															<td>
																<dnn:Label ID="lblPostToJurnal" runat="server" Text="Post to Journal:" HelpText="Post to Journal:" EnableViewState="True" HelpKey="lblPostToJurnal.HelpText" ResourceKey="lblMAUPostToJournal.Text" />
															</td>
															<td class="style7">
																<asp:CheckBox ID="cbMUIPostToJournal" runat="server" />
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td class="style7">
																<asp:Label ID="lblMultiImageUploadMessage" runat="server" CssClass="image_upload_message" EnableViewState="False" resourcekey="lblMessageResource1"></asp:Label>
															</td>
														</tr>
													</table>
													<br />
													<asp:Panel ID="pnlImageUploadUploadify" runat="server">
														<table cellpadding="0" cellspacing="0" align="center" class="multiuploadcontrol">
															<tr>
																<td>
																	<div style="display: block; float: left; margin-left: 30px; padding-top: 4px;">
																		<asp:FileUpload ID="GalfileInput" runat="server" />
																	</div>
																	<div style="display: block; float: left; margin-left: 15px;">
																		<a class="btnUpload" href="javascript:jQuery('#<%=GalfileInput.ClientID%>').uploadifyUpload();">
																			<%=startUpload%></a> <a href="javascript:jQuery('#<%=GalfileInput.ClientID%>').uploadifyClearQueue();">
																				<%=ViewState["ClearQueue"]%>
																			</a>
																	</div>
																	<br />
																</td>
															</tr>
														</table>
													</asp:Panel>
													<asp:Panel ID="pnlImageUploadfineUploader" runat="server" Visible="False">
														<div id="galleryImageFineUploaderContainer" class="EDS_simpleFineUploader">
															<div class="uploader">
															</div>
															<div class="uploadControls">
																<div class="actions">
																	<span class="action fileSelection">
																		<asp:Label ID="galleryFineUploaderSelectFiles" runat="server" resourcekey="fineUploaderSelectFiles" Text="Select images" />
																		<span class="dnnInputFileWrapper">
																			<input type="file" value="" multiple="multiple" /></span> </span><span class="action upload">
																				<asp:Label ID="galleryFineUploaderStartUpload" runat="server" resourcekey="fineUploaderStartUpload" Text="Start upload" />
																			</span>
																</div>
																<div class="dndContainer">
																	<p>
																		<asp:Label ID="galleryFineUploaderDragImagesHere" runat="server" resourcekey="fineUploaderDragImagesHere" Text="Drag images here" />
																	</p>
																</div>
															</div>
															<div class="uploadDetails">
																<ol class="fileUploadList">
																</ol>
															</div>
														</div>
													</asp:Panel>
													<div style="display: none; line-height: 0pt;">
														<asp:Button ID="btnSaveMultiImageUpload" runat="server" OnClick="MultiImageUpload" Text="Save" />
													</div>
													<br />
													<br />
												</asp:Panel>
												<asp:Panel ID="pnaAddFolder" runat="server" Visible="False" Width="850px">
													<table style="width: 650px; text-align: left;">
														<tr>
															<td colspan="2">&nbsp;
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<asp:Label ID="lblImageUpladoFromFolderTitle" runat="server" CssClass="subtitleregion" Text="Add images from folder" resourcekey="lblImageUpladoFromFolderTitleResource1">
																</asp:Label>
															</td>
														</tr>
														<tr>
															<td colspan="2">&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style18">
																<dnn:Label ID="lblAddImagesFromFolderSelectFolder" runat="server" Text="Select folder:" ResourceKey="lblAddImagesFromFolderSelectFolderResource1" HelpText="Select folder:"></dnn:Label>
															</td>
															<td>
																<asp:DropDownList ID="ddlAddImageFolder" runat="server" Style="margin-left: 0px" AppendDataBoundItems="True">
																	<asp:ListItem Value="\" Text="Root" resourcekey="ListItemResource56">
																	</asp:ListItem>
																</asp:DropDownList>
															</td>
														</tr>
														<tr>
															<td class="style18">
																<dnn:Label ID="lblAddImagesFromFolderShowMainGallery" ResourceKey="lblAddImagesFromFolderShowMainGallery" runat="server" Text="Show main gallery folder:" HelpText="Add main EasyDNN gallery folder to folders list:" HelpKey="lblAddImagesFromFolderShowMainGallery.HelpText"></dnn:Label>
															</td>
															<td>
																<asp:CheckBox ID="chIUShowMainGalFolder" runat="server" AutoPostBack="True" OnCheckedChanged="chIUShowMainGalFolder_CheckedChanged" resourcekey="chIUShowMainGalFolderResource1" />
															</td>
														</tr>
														<tr>
															<td class="style18" rowspan="3" valign="top">
																<dnn:Label ID="lblAddImagesFromFolderTitleUse" ResourceKey="lblAddImagesFromFolderTitleUse" runat="server" HelpText="Use filename or exif metadata as title:" Text="Set title:" HelpKey="lblAddImagesFromFolderTitleUse.HelpText" />
															</td>
															<td>
																<div id="ServerFolderTitleTextBox" runat="server">
																	<asp:TextBox ID="tbServerFolderTitleName" runat="server" MaxLength="250" ValidationGroup="Validationg1" Width="300px">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div id="DivImageFolderUseFilenameCB" runat="server">
																	<asp:CheckBox ID="cbAddImagesFromFolderTitleFilename" runat="server" resourcekey="cbAddImagesFromFolderTitleFilenameResource1" Text="Use filename as title" />
																	<br />
																</div>
																<div id="divIAFUseFilename" runat="server" style="display: none">
																	<asp:CheckBox ID="cbIUAFRemoveExtenzion" runat="server" resourcekey="cbIUAFRemoveExtenzionResource1" Text="Remove extension" />
																	<br />
																	<asp:CheckBox ID="cbAFReplaceTitle" runat="server" resourcekey="cbAFReplaceTitleResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																	<br />
																	<asp:CheckBox ID="cbAFReplaceMinus" runat="server" resourcekey="cbAFReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																	<asp:RadioButtonList ID="rblImageFolderTitleOptions" runat="server">
																		<asp:ListItem resourcekey="ListItemResource57" Text="Set this to change title to uppercase" Value="AllUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource58" Text="Set this to change title to lowercase" Value="AllLowercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource59" Text="Set this to change first letter of every 
										word in title to uppercase"
																			Value="AllFirstUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource60" Text="Set this to change first letter of title to 
										uppercase"
																			Value="FirstUppercase">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div id="DivImageFolderMetadataCB" runat="server">
																	<asp:CheckBox ID="cbAddImagesFromFolderTitleMetadata" runat="server" Text="Use Exif metadata as title" resourcekey="cbAddImagesFromFolderTitleMetadataResource1" />
																</div>
																<div id="DivImageFolderTitleUseExifMetadataOptions" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cblImageFolderMetadataOptions" runat="server">
																		<asp:ListItem Text="Artist" resourcekey="ListItemResource61">
																		</asp:ListItem>
																		<asp:ListItem Text="Copyright" resourcekey="ListItemResource62">
																		</asp:ListItem>
																		<asp:ListItem Value="ImageDescription" Text="Image description" resourcekey="ListItemResource63">
																		</asp:ListItem>
																		<asp:ListItem Text="Make" resourcekey="ListItemResource64">
																		</asp:ListItem>
																		<asp:ListItem Text="Model" resourcekey="ListItemResource65">
																		</asp:ListItem>
																		<asp:ListItem Value="SubjectLocation" Text="Subject location" resourcekey="ListItemResource66">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16">
																<dnn:Label ID="lblImagesFromFolderSubstitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
															</td>
															<td>
																<asp:TextBox ID="tbImagesFromFolderSubstitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td class="style18" rowspan="2">&nbsp;
																<dnn:Label ID="lblAddImagesFromFolderDescription" ResourceKey="lblAddImagesFromFolderDescription" runat="server" HelpText="Enter or use exif metadata as description:" Text="Set description:" />
															</td>
															<td>
																<div id="DivImageFolderDescriptionTB" runat="server">
																	<asp:TextBox ID="tbIUAFImageDescription" runat="server" Height="150px" TextMode="MultiLine" Width="300px" MaxLength="4000">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<div id="DivUmageFolderUseMetadataDescriptionCB" runat="server">
																	<asp:CheckBox ID="cbAddImagesFromFolderDescriptionUseMetadata" runat="server" Text="Use Exif metadata as description" resourcekey="cbAddImagesFromFolderDescriptionUseMetadataResource1" />
																</div>
																<div id="DivImageFolderuseMetadaDescriptionOptions" runat="server" style="display: none">
																	<asp:CheckBoxList ID="cblAddImagesFromFolderDescriptionMetadataOptions" runat="server">
																		<asp:ListItem Text="Artist" resourcekey="ListItemResource67">
																		</asp:ListItem>
																		<asp:ListItem Text="Copyright" resourcekey="ListItemResource68">
																		</asp:ListItem>
																		<asp:ListItem Value="ImageDescription" Text="Image description" resourcekey="ListItemResource69">
																		</asp:ListItem>
																		<asp:ListItem Text="Make" resourcekey="ListItemResource70">
																		</asp:ListItem>
																		<asp:ListItem Text="Model" resourcekey="ListItemResource71">
																		</asp:ListItem>
																		<asp:ListItem Value="SubjectLocation" Text="Subject location" resourcekey="ListItemResource72">
																		</asp:ListItem>
																	</asp:CheckBoxList>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style18">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style18">
																<dnn:Label ID="lblAddImagesFromFolderUrl" ResourceKey="lblAddImagesFromFolderUrl" runat="server" HelpText="Enter url for media link:" Text="Enter url:" HelpKey="lblAddImagesFromFolderUrl.HelpText" />
															</td>
															<td>
																<asp:TextBox ID="tbAFImagesUrl" runat="server" Width="300px">
																</asp:TextBox>
															</td>
														</tr>
														<tr>
															<td class="style18">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr id="trResizeImage" runat="server">
															<td class="style18">
																<dnn:Label ID="lblAddImagesFromFolderResize" ResourceKey="lblAddImagesFromFolderResize" runat="server" HelpText="Proportionaly resize uploaded image:" Text="Resize image:" HelpKey="lblAddImagesFromFolderResize.HelpText" />
															</td>
															<td>
																<asp:CheckBox ID="cbAFImageUploadResize" runat="server" OnCheckedChanged="cbImageUploadResize_CheckedChanged" resourcekey="cbAFImageUploadResizeResource1" />
															</td>
														</tr>
														<tr>
															<td class="style18">&nbsp;
															</td>
															<td rowspan="2">
																<div id="divAIFImagResize" runat="server" style="display: none">
																	<table>
																		<tr>
																			<td>
																				<asp:Label ID="lblAddImagesFromFolderResizeWidth" runat="server" Text="Max width:" resourcekey="lblAddImagesFromFolderResizeWidthResource1"></asp:Label>
																			</td>
																			<td>
																				<asp:TextBox ID="tbAFImageUploadResizeWidth" runat="server" Width="50px" Text="800" ValidationGroup="vgAFImages">
																				</asp:TextBox>
																				<asp:CompareValidator ID="cvAddImagesFromFolderResizeWidth" runat="server" ControlToValidate="tbAFImageUploadResizeWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAFImages" resourcekey="cvAddImagesFromFolderResizeWidthResource1.ErrorMessage">
																				</asp:CompareValidator>
																				<asp:RequiredFieldValidator ID="rfvAddImagesFromFolderResize" runat="server" ControlToValidate="tbAFImageUploadResizeWidth" ErrorMessage="This filed is required." ValidationGroup="vgAFImages" resourcekey="rfvAddImagesFromFolderResizeResource1.ErrorMessage">
																				</asp:RequiredFieldValidator>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<asp:Label ID="lblAddImagesFromFolderResizeHeight" runat="server" Text="Max height:" resourcekey="lblAddImagesFromFolderResizeHeightResource1"></asp:Label>
																			</td>
																			<td>
																				<asp:TextBox ID="tbAFImageUploadResizeHeight" runat="server" Width="50px" Text="600" ValidationGroup="vgAFImages">
																				</asp:TextBox>
																				<asp:CompareValidator ID="cvAddImagesFromFolderResizeHeight" runat="server" ControlToValidate="tbAFImageUploadResizeHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgAFImages"
																					resourcekey="cvImagerResizeHeightResource1.ErrorMessage">
																				</asp:CompareValidator>
																				<asp:RequiredFieldValidator ID="rfvAddImagesFromFolderHeight" runat="server" ControlToValidate="tbAFImageUploadResizeHeight" ErrorMessage="This filed is required." ValidationGroup="vgAFImages" resourcekey="rfvAddImagesFromFolderHeightResource1.ErrorMessage">
																				</asp:RequiredFieldValidator>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<asp:CheckBox ID="cbServerFolderOriginalAsDownload" runat="server" Text="Use unresized image as download version." />
																			</td>
																			<td></td>
																		</tr>
																	</table>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style18">&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style18">&nbsp;
															</td>
															<td>
																<asp:Label ID="lblImageFromFolderMessage" runat="server" CssClass="image_upload_message" EnableViewState="False" resourcekey="lblAIFMessageResource1"></asp:Label>
															</td>
														</tr>
														<tr>
															<td class="style18">&nbsp;
															</td>
															<td>
																<asp:Button ID="btnAddImagesFromFolder" runat="server" OnClick="btnAFImages_Click" resourcekey="btnAddImagesFromFolderResource1" Text="Add images" ValidationGroup="vgAFImages" Width="140px" />
																&nbsp;
															</td>
														</tr>
														<tr>
															<td class="style18">&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
													</table>
												</asp:Panel>
											</div>
										</div>
									</asp:Panel>
								</asp:Panel>
								<asp:Panel ID="pnlVideoUpload" runat="server" Visible="False">
									<div class="videouploadbox">
										<div class="uploadvideoboxbgrd">
											<div class="addvideotitlebgrd">
												<table style="height: 120px;" cellpadding="0" cellspacing="0" class="style1">
													<tr>
														<td align="left" class="style6" valign="bottom">
															<asp:Label ID="lblAddVideo" resourcekey="lblAddVideo" runat="server" CssClass="AddDesc" Text="Add video"></asp:Label>
														</td>
														<td>
															<table align="center" style="padding-top: 30px;">
																<tr>
																	<td align="center">
																		<dnn:Label ID="lblVideoUploadMainTitle" runat="server" CssClass="subtitleregion" HelpKey="lblVideoUploadMainTitle.HelpText" HelpText="Select to add video file or to add embed video from other video site." ResourceKey="lblVideoUploadMainTitle" Text="Add Video" />
																	</td>
																</tr>
																<tr>
																	<td align="center">
																		<asp:RadioButtonList ID="rblVideoUploadTypeSelect" runat="server" AutoPostBack="True" CssClass="subtitleregion" OnSelectedIndexChanged="rblVideoUpload_SelectedIndexChanged" RepeatDirection="Horizontal">
																			<asp:ListItem resourcekey="ListItemResource73" Text="Upload Video" Value="UploadFlash">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource74" Text="Embed video" Value="Embedvideo">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="AmazonS3" Value="amazons3">Amazon S3</asp:ListItem>
																		</asp:RadioButtonList>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</div>
											<asp:Panel ID="pnlAmazonS3VideoAupload" runat="server" Visible="False">
												<table style="width: 650px; text-align: left;">
													<tr>
														<td align="center" colspan="2">
															<asp:Label ID="lblAmazonS3Title" resourcekey="liAmazonS3" runat="server" Text="Amazon S3" CssClass="subtitleregion"></asp:Label>
														</td>
													</tr>
													<tr>
														<td class="style10" colspan="2">&nbsp;
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonUploadVideoURL" runat="server" HelpText="Aamazon S3 video URL link." Text="Aamazon S3 video URL link:" HelpKey="lblAmazonUploadVideoURL.HelpText" ResourceKey="lblAmazonUploadVideoURL" />
														</td>
														<td>
															<asp:TextBox ID="tbAmazonVideoURL" runat="server" Width="350px" ValidationGroup="vgAmazonVideoUpload" Font-Size="11px">
															</asp:TextBox>
															<asp:RequiredFieldValidator ID="rfvAmazonVideoURL" runat="server" ControlToValidate="tbAmazonVideoURL" ErrorMessage="This filed is required." resourcekey="rfvEmbedVideoCodeResource1.ErrorMessage" ValidationGroup="vgAmazonVideoUpload">
															</asp:RequiredFieldValidator>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonUploadVideoTitle" runat="server" HelpKey="lblAmazonUploadVideoTitle.HelpText" HelpText="Enter the title of video file:" ResourceKey="lblAmazonUploadVideoTitle" Text="Video title:" />
														</td>
														<td>
															<div id="divAmazonVideoTitle" runat="server">
																<asp:TextBox ID="tbAmazonVideoTitle" runat="server" Width="300px">
																</asp:TextBox>
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:CheckBox ID="cbAmazonUploadFilenameAsTitle" runat="server" resourcekey="cbVideoUploadFilenameAsTitleResource1" Text="Use filename as title" />
															<div id="divAmazonFilenameAsTitle" runat="server" style="display: none">
																<asp:Panel ID="pnlVUFilenameasTitle0" runat="server">
																	<asp:CheckBox ID="cbAmazonVideoUploadTitleRemoveExtenzion" runat="server" resourcekey="cbVideoUploadTitleRemoveExtenzionResource1" Text="Remove extension" />
																	<br />
																	<asp:CheckBox ID="cbAmazonVideoUploadTitleReplaceUnderscore" runat="server" resourcekey="cbVideoUploadTitleReplaceUnderscoreResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																	<br />
																	<asp:CheckBox ID="cbAmazonVideoUploadTitleReplaceMinus" runat="server" resourcekey="cbVideoUploadTitleReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																	<asp:RadioButtonList ID="rblAmazonVideoUploadTitleOptions" runat="server">
																		<asp:ListItem resourcekey="ListItemResource79" Text="Set this to change title to uppercase" Value="AllUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource80" Text="Set this to change title to lowercase" Value="AllLowercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource81" Text="Set this to change first letter of every 
										word in title to uppercase"
																			Value="AllFirstUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource82" Text="Set this to change first letter of title to 
										uppercase"
																			Value="FirstUppercase">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																</asp:Panel>
															</div>
														</td>
													</tr>
													<tr>
														<td class="style16">
															<dnn:Label ID="lblAmazonVideoUploadSubstitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbAmazonVideoUploadSubstitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonVideoUploadDescription" runat="server" ControlName="tbFlashDescription" HelpKey="lblVideoUploadDescription.HelpText" HelpText="Enter the video description:" ResourceKey="lblVideoUploadDescription" Text="Description:" />
														</td>
														<td>
															<asp:TextBox ID="tbAmazonVideoDescription" runat="server" Height="150px" MaxLength="4000" TextMode="MultiLine" Width="300px">
															</asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonUploadWidth" runat="server" ControlName="tbFlashWidth" HelpKey="lblVideoUploadWidth.HelpText" HelpText="Enter the video width to be used displaying video:" ResourceKey="lblVideoUploadWidth" Text="Video width:" />
														</td>
														<td>
															<asp:TextBox ID="tbAmazonVideoWidth" runat="server" ValidationGroup="vgAmazonVideoUpload" Width="50px">
															</asp:TextBox>
															<asp:CompareValidator ID="cvAmazonVideoUploadWidth" runat="server" ControlToValidate="tbAmazonVideoWidth" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoUploadWidthResource1.ErrorMessage" Type="Integer" ValidationGroup="vgAmazonVideoUpload">
															</asp:CompareValidator>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonVideoUploadHeight" runat="server" ControlName="tbFlashHeight" HelpKey="lblVideoUploadHeight.HelpText" HelpText="Enter the video height to be used when displaying video:" ResourceKey="lblVideoUploadHeight" Text="Video height:" />
														</td>
														<td>
															<asp:TextBox ID="tbAmazonVideoHeight" runat="server" Width="50px" ValidationGroup="vgAmazonVideoUpload">
															</asp:TextBox>
															<asp:CompareValidator ID="cvAmazonVideoUploadHeight" runat="server" ControlToValidate="tbAmazonVideoHeight" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoUploadheightResource1.ErrorMessage" Type="Integer" ValidationGroup="vgAmazonVideoUpload">
															</asp:CompareValidator>
														</td>
													</tr>
													<tr>
														<td class="style231">
															<dnn:Label ID="lblAmazonVideoUploadThumbnail" runat="server" HelpKey="lblVideoUploadThumbnail.HelpText" HelpText="Upload the thumbnail for video file or use standard image:" ResourceKey="lblVideoUploadThumbnail" Text="Thumbnail:" />
														</td>
														<td class="style232">
															<asp:RadioButtonList ID="rblAmazonVideoThumbnailSelect" runat="server" OnLoad="rblFlashThumbnail_Load" RepeatDirection="Horizontal">
																<asp:ListItem resourcekey="ListItemResource83" Selected="True" Text="Use standard image" Value="standard">
																</asp:ListItem>
																<asp:ListItem resourcekey="ListItemResource84" Text="Upload" Value="Upload">
																</asp:ListItem>
															</asp:RadioButtonList>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<div id="divAmazonStandardImage" runat="server">
																<asp:Label ID="lblAmazonVideoUploadSelectStandardThumbnail" runat="server" resourcekey="lblVideoUploadSelectStandardThumbnailResource1" Text="Select standard thumbnail:"></asp:Label>
																&nbsp;<asp:DropDownList ID="ddlAmazobVideoThumbSelect" runat="server" OnLoad="ddlAmazobVideoThumbSelect_Load">
																</asp:DropDownList>
															</div>
														</td>
													</tr>
													<tr>
														<td class="style22">&nbsp;
														</td>
														<td class="style23">
															<div id="divAmazonUploadThumb" runat="server" style="display: none">
																<asp:Label ID="lblVideoUploadSelectThumbnailToUpload0" runat="server" resourcekey="lblVideoUploadSelectThumbnailToUploadResource1" Text="Select thumbnail to upload:"></asp:Label>
																&nbsp;
																<asp:FileUpload ID="fuAmazonThumbnail" runat="server" Width="322px" />
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Label ID="lblAmazonUploadMessage" runat="server"></asp:Label>
															&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Button ID="btnAmazonVideoUpload" runat="server" OnClick="btnAmazonVideoUpload_Click" resourcekey="btnAmazonVideoUpload" Style="height: 26px" Text="Upload" ValidationGroup="vgAmazonVideoUpload" Width="90px" />
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
												</table>
											</asp:Panel>
											<asp:Panel ID="pnlFlashUploadFlash" runat="server" Visible="False" Width="850px">
												<table style="width: 650px; text-align: left;">
													<tr>
														<td>
															<div align="center" style="margin-top: 25px; margin-bottom: 15px;">
																<asp:Label ID="lblVideoUploadTitle" runat="server" CssClass="subtitleregion" Text="Video Upload" resourcekey="lblVideoUploadTitleResource1"></asp:Label>
																<br />
																<asp:RadioButtonList ID="rblVideoUploadSelctSource" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblVUSelctSorce_SelectedIndexChanged" RepeatDirection="Horizontal" CausesValidation="True" CssClass="subtitleregion">
																	<asp:ListItem Selected="True" Value="upload" Text="Upload video" resourcekey="ListItemResource75">
																	</asp:ListItem>
																	<asp:ListItem resourcekey="MultiVideoUpload" Value="multi">Multi video upload</asp:ListItem>
																	<asp:ListItem Value="server" Text="Add single video from server folder" resourcekey="ListItemResource76">
																	</asp:ListItem>
																	<asp:ListItem Value="folder" Text="Add all videos from server folder" resourcekey="ListItemResource77">
																	</asp:ListItem>
																</asp:RadioButtonList>
															</div>
														</td>
													</tr>
												</table>
												<asp:Panel ID="pnlSingleVideoUpload" runat="server">
													<table style="width: 650px; text-align: left;">
														<tr>
															<td class="style10" colspan="2">&nbsp; &nbsp;&nbsp;<asp:Panel ID="pnlUVUpload" runat="server">
																<table style="width: 650px; text-align: left;">
																	<tr>
																		<td>
																			<dnn:Label ID="lblVideoUploadFileSelect" runat="server" HelpKey="lblVideoUploadFileSelect.HelpText" HelpText="Select the file to upload:" ResourceKey="lblVideoUploadFileSelect" Text="Please select the file to upload:" />
																		</td>
																		<td>
																			<asp:FileUpload ID="fuFlash" runat="server" Width="300px" />
																		</td>
																	</tr>
																</table>
															</asp:Panel>
																<br />
																<asp:Panel ID="pnlVideoUploadFromServer" runat="server" Visible="False">
																	<table style="width: 650px; text-align: left;">
																		<tr>
																			<td colspan="2">
																				<asp:Label ID="lblVideoUploadAddFileFromServer" runat="server" CssClass="subtitleregion" resourcekey="lblVideoUploadAddFileFromServerResource1" Text="Add video from folder:">
																				</asp:Label>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblVideoUploadFolderSelect" runat="server" HelpKey="lblVideoUploadFolderSelect.HelpText" HelpText="Select folder:" ResourceKey="lblVideoUploadFolderSelect" Text="Select folder:" />
																			</td>
																			<td>
																				<asp:DropDownList ID="ddlVideoUploadFolders" runat="server" AppendDataBoundItems="True" AutoPostBack="True" CausesValidation="True" OnSelectedIndexChanged="ddlFolders_SelectedIndexChanged">
																					<asp:ListItem resourcekey="ListItemResource78" Text="Root" Value="\">
																					</asp:ListItem>
																				</asp:DropDownList>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblVideoUploadFiles" runat="server" HelpKey="lblVideoUploadFiles.HelpText" HelpText="Select file:" ResourceKey="lblVideoUploadFiles" Text="Select file:" />
																			</td>
																			<td>
																				<asp:DropDownList ID="ddlVUFiles" runat="server" DataTextField="Name" DataValueField="Name">
																				</asp:DropDownList>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblVideoUploadShowMainGalleryFolder" runat="server" HelpKey="lblVideoUploadShowMainGalleryFolder.HelpText" HelpText="Add main EasyDNN gallery folder to folders list:" ResourceKey="lblVideoUploadShowMainGalleryFolder" Text="Show main gallery folder:" />
																			</td>
																			<td>
																				<asp:CheckBox ID="cbVUShowMainGalFolder" runat="server" AutoPostBack="True" OnCheckedChanged="cbVUShowMainGalFolder_CheckedChanged" resourcekey="cbVUShowMainGalFolderResource1" />
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblVideoUploadDeleteOriginalFile" runat="server" HelpKey="lblVideoUploadDeleteOriginalFile.HelpText" HelpText="File will be copied to gallery folder. Delete original file:" ResourceKey="lblVideoUploadDeleteOriginalFile" Text="Delete original file:" />
																			</td>
																			<td>
																				<asp:CheckBox ID="cbVUDeleteFile" runat="server" resourcekey="cbVUDeleteFileResource1" />
																			</td>
																		</tr>
																	</table>
																</asp:Panel>
															</td>
														</tr>
														<tr>
															<td colspan="2">
																<asp:Panel ID="pnlAVF" runat="server" Visible="False">
																	<table style="width: 650px; text-align: left;">
																		<tr>
																			<td>
																				<dnn:Label ID="lblAddVideoFolderSelectFolder" runat="server" HelpKey="lblAddVideoFolderSelectFolder.HelpText" HelpText="Select folder:" ResourceKey="lblAddVideoFolderSelectFolder" Text="Select folder:" />
																			</td>
																			<td>
																				<asp:DropDownList ID="ddlAVFFolders" runat="server" AutoPostBack="True" CausesValidation="True">
																				</asp:DropDownList>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblAddVideoFolderShowMainGalleryFolder" runat="server" HelpKey="lblAddVideoFolderShowMainGalleryFolder.HelpText" HelpText="Add main EasyDNN gallery folder to folders list:" ResourceKey="lblAddVideoFolderShowMainGalleryFolder" Text="Show main gallery folder:" />
																			</td>
																			<td>
																				<asp:CheckBox ID="cbAVFShowMainGalFolder" runat="server" AutoPostBack="True" OnCheckedChanged="cbAVFShowMainGalFolder_CheckedChanged" resourcekey="cbAVFShowMainGalFolderResource1" />
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<dnn:Label ID="lblAddVideoFolderDeleteOriginalFile" runat="server" HelpKey="lblAddVideoFolderDeleteOriginalFile.HelpText" HelpText="File will be copied to gallery folder. Delete original file:" ResourceKey="lblAddVideoFolderDeleteOriginalFile" Text="Delete original file:" />
																			</td>
																			<td>
																				<asp:CheckBox ID="cbAVFDeleteFile" runat="server" resourcekey="cbAVFDeleteFileResource1" />
																			</td>
																		</tr>
																	</table>
																</asp:Panel>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblVideoUploadVideoTitle" runat="server" ControlName="tbFlashTitle" HelpKey="lblVideoUploadVideoTitle.HelpText" HelpText="Enter the title of video file:" ResourceKey="lblVideoUploadVideoTitle" Text="Video title:" />
															</td>
															<td>
																<div id="divVideoTitle" runat="server">
																	<asp:TextBox ID="tbFlashTitle" runat="server" Width="300px">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<asp:CheckBox ID="cbVideoUploadFilenameAsTitle" runat="server" resourcekey="cbVideoUploadFilenameAsTitleResource1" Text="Use filename as title" />
																<div id="divVUFilenameAsTitle" runat="server" style="display: none">
																	<asp:Panel ID="pnlVUFilenameasTitle" runat="server">
																		<asp:CheckBox ID="cbVideoUploadTitleRemoveExtenzion" runat="server" resourcekey="cbVideoUploadTitleRemoveExtenzionResource1" Text="Remove extension" />
																		<br />
																		<asp:CheckBox ID="cbVideoUploadTitleReplaceUnderscore" runat="server" resourcekey="cbVideoUploadTitleReplaceUnderscoreResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																		<br />
																		<asp:CheckBox ID="cbVideoUploadTitleReplaceMinus" runat="server" resourcekey="cbVideoUploadTitleReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																		<asp:RadioButtonList ID="rblVideoUploadTitleOptions" runat="server">
																			<asp:ListItem resourcekey="ListItemResource79" Text="Set this to change title to uppercase" Value="AllUppercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource80" Text="Set this to change title to lowercase" Value="AllLowercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource81" Text="Set this to change first letter of every 
										word in title to uppercase"
																				Value="AllFirstUppercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource82" Text="Set this to change first letter of title to 
										uppercase"
																				Value="FirstUppercase">
																			</asp:ListItem>
																		</asp:RadioButtonList>
																	</asp:Panel>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16">
																<dnn:Label ID="lblVideoUploadSubstitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
															</td>
															<td>
																<asp:TextBox ID="tbVideoUploadSubstitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblVideoUploadDescription" runat="server" ControlName="tbFlashDescription" HelpKey="lblVideoUploadDescription.HelpText" HelpText="Enter the video description:" ResourceKey="lblVideoUploadDescription" Text="Description:" />
															</td>
															<td>
																<asp:TextBox ID="tbFlashDescription" runat="server" Height="150px" MaxLength="4000" TextMode="MultiLine" Width="300px">
																</asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblVideoUploadWidth" runat="server" ControlName="tbFlashWidth" HelpKey="lblVideoUploadWidth.HelpText" HelpText="Enter the video width to be used displaying video:" ResourceKey="lblVideoUploadWidth" Text="Video width:" />
															</td>
															<td>
																<asp:TextBox ID="tbFlashWidth" runat="server" ValidationGroup="vgVideoUpload" Width="50px">
																</asp:TextBox>
																<asp:CompareValidator ID="cvVideoUploadWidth" runat="server" ControlToValidate="tbFlashWidth" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoUploadWidthResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVideoUpload">
																</asp:CompareValidator>
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblVideoUploadHeight" runat="server" ControlName="tbFlashHeight" HelpKey="lblVideoUploadHeight.HelpText" HelpText="Enter the video height to be used when displaying video:" ResourceKey="lblVideoUploadHeight" Text="Video height:" />
															</td>
															<td>
																<asp:TextBox ID="tbFlashHeight" runat="server" Width="50px">
																</asp:TextBox>
																<asp:CompareValidator ID="cvVideoUploadheight" runat="server" ControlToValidate="tbFlashHeight" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoUploadheightResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVideoUpload">
																</asp:CompareValidator>
															</td>
														</tr>
														<tr>
															<td class="style231">
																<dnn:Label ID="lblVideoUploadThumbnail" runat="server" HelpKey="lblVideoUploadThumbnail.HelpText" HelpText="Upload the thumbnail for video file or use standard image:" ResourceKey="lblVideoUploadThumbnail" Text="Thumbnail:" />
															</td>
															<td class="style232">
																<asp:RadioButtonList ID="rblVideoThumbnailSelect" runat="server" OnLoad="rblFlashThumbnail_Load" RepeatDirection="Horizontal">
																	<asp:ListItem resourcekey="ListItemResource83" Selected="True" Text="Use standard image" Value="standard">
																	</asp:ListItem>
																	<asp:ListItem resourcekey="ListItemResource84" Text="Upload" Value="Upload">
																	</asp:ListItem>
																</asp:RadioButtonList>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<div id="divVUStandardImage" runat="server">
																	<asp:Label ID="lblVideoUploadSelectStandardThumbnail" runat="server" resourcekey="lblVideoUploadSelectStandardThumbnailResource1" Text="Select standard thumbnail:"></asp:Label>
																	&nbsp;<asp:DropDownList ID="ddlVUThumbSelect" runat="server" OnLoad="dllVUThumbSelect_Load">
																	</asp:DropDownList>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style22">&nbsp;
															</td>
															<td class="style23">
																<div id="divVUUploadThumb" runat="server" style="display: none">
																	<asp:Label ID="lblVideoUploadSelectThumbnailToUpload" runat="server" resourcekey="lblVideoUploadSelectThumbnailToUploadResource1" Text="Select thumbnail to upload:"></asp:Label>
																	&nbsp;
																	<asp:FileUpload ID="fuFlashThumbnail" runat="server" Width="322px" />
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
																<dnn:Label ID="lblVideoUploadStartupImage" runat="server" HelpText="Upload the image for video file or use standard image to be used as startup image:" Text="Startup image:" HelpKey="lblVideoUploadStartupImage.HelpText" ResourceKey="lblVideoUploadStartupImage" />
															</td>
															<td>
																<asp:CheckBox ID="cbVideoStartUp" runat="server" resourcekey="cbVideoStartUp" Text="Use thumbnail as startup image" Checked="True" />
																<div id="DivVUStartupImagesetup" runat="server" style="display: none">
																	<asp:RadioButtonList ID="rblVideoStartupImageSelect" runat="server" OnLoad="rblFlashThumbnail_Load" RepeatDirection="Horizontal">
																		<asp:ListItem resourcekey="ListItemResource83" Selected="True" Text="Use standard image" Value="standard">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource84" Text="Upload" Value="Upload">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																	<div id="divVUStandardStartImage" runat="server">
																		<asp:Label ID="lblVideoUploadSelectStartImage" runat="server" resourcekey="lblVideoUploadSelectStartImage" Text="Select standard start image:"></asp:Label>
																		&nbsp;<asp:DropDownList ID="ddlVUStartImageSelect" runat="server" OnLoad="dllVUThumbSelect_Load">
																		</asp:DropDownList>
																	</div>
																	<div id="divVideoStartupImage" runat="server" style="display: none">
																		<asp:Label ID="lblVideoStartupImage" runat="server" resourcekey="lblVideoStartupImage" Text="Select thumbnail to upload:"></asp:Label>
																		&nbsp;
																		<asp:FileUpload ID="fuVideoStartupImage" runat="server" Width="322px" />
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<asp:Label ID="lblSingleVideoUploadMessage" runat="server" CssClass="video_upload_message" EnableViewState="False" resourcekey="lblVideoMessageResource1"></asp:Label>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<asp:Button ID="btnVideoUpload" runat="server" OnClick="btnFashUpload_Click" resourcekey="btnVideoUploadResource1" Style="height: 26px" Text="Upload" ValidationGroup="vgVideoUpload" Width="90px" />
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
															</td>
														</tr>
													</table>
												</asp:Panel>
												<asp:Panel ID="pnlMultiVideoUpload" runat="server" Visible="False">
													<table style="width: 650px; text-align: left;">
														<tr>
															<td>
																<dnn:Label ID="lblMultiVideoUploadVideoTitle" runat="server" ControlName="tbFlashTitle" HelpKey="lblVideoUploadVideoTitle.HelpText" HelpText="Enter the title of video file:" ResourceKey="lblVideoUploadVideoTitle" Text="Video title:" />
															</td>
															<td>
																<div id="divMultiVideoTitle" runat="server">
																	<asp:TextBox ID="tbMultiFlashTitle" runat="server" Width="300px">
																	</asp:TextBox>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<asp:CheckBox ID="cbMultiVideoUploadFilenameAsTitle" runat="server" resourcekey="cbVideoUploadFilenameAsTitleResource1" Text="Use filename as title" />
																<div id="divMultiVUFilenameAsTitle" runat="server" style="display: none">
																	<asp:Panel ID="pnlMultiVUFilenameasTitle" runat="server">
																		<asp:CheckBox ID="cbMultiVideoUploadTitleRemoveExtenzion" runat="server" resourcekey="cbVideoUploadTitleRemoveExtenzionResource1" Text="Remove extension" />
																		<br />
																		<asp:CheckBox ID="cbMultiVideoUploadTitleReplaceUnderscore" runat="server" resourcekey="cbVideoUploadTitleReplaceUnderscoreResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																		<br />
																		<asp:CheckBox ID="cbMultiVideoUploadTitleReplaceMinus" runat="server" resourcekey="cbVideoUploadTitleReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																		<asp:RadioButtonList ID="rblMulitVideoUploadTitleOptionsList" runat="server">
																			<asp:ListItem resourcekey="ListItemResource79" Text="Set this to change title to uppercase" Value="AllUppercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource80" Text="Set this to change title to lowercase" Value="AllLowercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource81" Text="Set this to change first letter of every 
										word in title to uppercase"
																				Value="AllFirstUppercase">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource82" Text="Set this to change first letter of title to 
										uppercase"
																				Value="FirstUppercase">
																			</asp:ListItem>
																		</asp:RadioButtonList>
																	</asp:Panel>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style16">
																<dnn:Label ID="lblMultiVideoUploadSubtitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
															</td>
															<td>
																<asp:TextBox ID="tbMultiVideoUploadSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblMultiVideoUploadDescription" runat="server" ControlName="tbFlashDescription" HelpKey="lblVideoUploadDescription.HelpText" HelpText="Enter the video description:" ResourceKey="lblVideoUploadDescription" Text="Description:" />
															</td>
															<td>
																<asp:TextBox ID="tbMultiFlashDescription" runat="server" Height="150px" MaxLength="4000" TextMode="MultiLine" Width="300px">
																</asp:TextBox>
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblMultiVideoUploadWidth" runat="server" ControlName="tbFlashWidth" HelpKey="lblVideoUploadWidth.HelpText" HelpText="Enter the video width to be used displaying video:" ResourceKey="lblVideoUploadWidth" Text="Video width:" />
															</td>
															<td>
																<asp:TextBox ID="tbMultiFlashWidth" runat="server" ValidationGroup="vgVideoUpload" Width="50px">
																</asp:TextBox>
																<asp:CompareValidator ID="cvMultiVideoUploadWidth" runat="server" ControlToValidate="tbMultiFlashWidth" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoUploadWidthResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVideoUpload">
																</asp:CompareValidator>
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblMultiVideoUploadHeight" runat="server" ControlName="tbFlashHeight" HelpKey="lblVideoUploadHeight.HelpText" HelpText="Enter the video height to be used when displaying video:" ResourceKey="lblVideoUploadHeight" Text="Video height:" />
															</td>
															<td>
																<asp:TextBox ID="tbMultiFlashHeight" runat="server" Width="50px">
																</asp:TextBox>
																<asp:CompareValidator ID="cvMultiVideoUploadheight" runat="server" ControlToValidate="tbMultiFlashHeight" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoUploadheightResource1.ErrorMessage" Type="Integer" ValidationGroup="vgVideoUpload">
																</asp:CompareValidator>
															</td>
														</tr>
														<tr>
															<td class="style231">
																<dnn:Label ID="lblMultiVideoUploadThumbnail" runat="server" HelpKey="lblVideoUploadThumbnail.HelpText" HelpText="Upload the thumbnail for video file or use standard image:" ResourceKey="lblVideoUploadThumbnail" Text="Thumbnail:" />
															</td>
															<td class="style232">
																<asp:RadioButtonList ID="rblMultiVideoThumbnailSelect" runat="server" OnLoad="rblFlashThumbnail_Load" RepeatDirection="Horizontal">
																	<asp:ListItem resourcekey="ListItemResource83" Selected="True" Text="Use standard image" Value="standard">
																	</asp:ListItem>
																	<asp:ListItem resourcekey="ListItemResource84" Text="Upload" Value="Upload">
																	</asp:ListItem>
																</asp:RadioButtonList>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>
																<div id="divMultiVUStandardImage" runat="server">
																	<asp:Label ID="lblMultiVideoUploadSelectStandardThumbnail" runat="server" resourcekey="lblVideoUploadSelectStandardThumbnailResource1" Text="Select standard thumbnail:"></asp:Label>
																	&nbsp;<asp:DropDownList ID="ddlMultiVUThumbSelect" runat="server" OnLoad="ddlMultiVUThumbSelect_Load">
																	</asp:DropDownList>
																</div>
															</td>
														</tr>
														<tr>
															<td class="style22">&nbsp;
															</td>
															<td class="style23">
																<div id="divMultiVUUploadThumb" runat="server" style="display: none">
																	<asp:Label ID="lblMultiVideoUploadSelectThumbnailToUpload" runat="server" resourcekey="lblVideoUploadSelectThumbnailToUploadResource1" Text="Select thumbnail to upload:"></asp:Label>
																	&nbsp;
																	<asp:FileUpload ID="fuMultiFlashThumbnail" runat="server" Width="322px" />
																</div>
															</td>
														</tr>
														<tr>
															<td>
																<dnn:Label ID="lblVideoMultiUploadStartupImage" runat="server" HelpText="Upload the image for video file or use standard image to be used as startup image:" Text="Startup image:" ResourceKey="lblVideoMultiUploadStartupImage" HelpKey="lblVideoMultiUploadStartupImage.HelpText" />
															</td>
															<td>
																<asp:CheckBox ID="cbMultiVideoStartUp" runat="server" Text="Upload startup image" resourcekey="cbMultiVideoStartUp" Checked="True" />
																<div id="DivMUltiVideoStartupSetup" runat="server" style="display: none">
																	<asp:RadioButtonList ID="rblMultiVideoStartupImageSelect" runat="server" OnLoad="rblFlashThumbnail_Load" RepeatDirection="Horizontal">
																		<asp:ListItem resourcekey="ListItemResource83" Selected="True" Text="Use standard image" Value="standard">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource84" Text="Upload" Value="Upload">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																	<div id="divMultiVUStandardStartImage" runat="server">
																		<asp:Label ID="lblMultiStartupImage" runat="server" resourcekey="lblMultiStartupImage" Text="Select standard start image:"></asp:Label>
																		&nbsp;<asp:DropDownList ID="ddlMultiStartupStandard" runat="server" OnLoad="dllVUThumbSelect_Load">
																		</asp:DropDownList>
																		<br />
																	</div>
																	<div id="DivMultiStartupUpload" runat="server" style="display: none">
																		<asp:Label ID="lblMultiStartupUpload" runat="server" resourcekey="lblMultiStartupUpload" Text="Select thumbnail to upload:"></asp:Label>
																		&nbsp;
																		<asp:FileUpload ID="fuMultiStartupUpload" runat="server" Width="322px" />
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<td>&nbsp;
															</td>
															<td>&nbsp;
																<asp:Label ID="lblMultiVideoUploadMessage" runat="server" CssClass="video_upload_message" EnableViewState="False"></asp:Label>
															</td>
														</tr>
													</table>
													<br />
													<asp:Panel ID="pnlVideoUploadUploadify" runat="server">
														<table cellpadding="0" cellspacing="0" align="center" class="multiuploadcontrol">
															<tr>
																<td>
																	<div style="display: block; float: left; margin-left: 30px; padding-top: 4px;">
																		<asp:FileUpload ID="MultiVideoFileInput" runat="server" EnableTheming="True" />
																	</div>
																	<div style="display: block; float: left; margin-left: 15px;">
																		<a class="btnUpload" href="javascript:jQuery('#<%=MultiVideoFileInput.ClientID%>').uploadifyUpload();">
																			<%=startUpload%></a> <a href="javascript:jQuery('#<%=MultiVideoFileInput.ClientID%>').uploadifyClearQueue();">
																				<%=ViewState["ClearQueue"]%></a>
																	</div>
																</td>
															</tr>
														</table>
													</asp:Panel>
													<asp:Panel ID="pnlVideoUploadfineUploader" runat="server" Visible="False">
														<div id="galleryVideoFineUploaderContainer" class="EDS_simpleFineUploader">
															<div class="uploader">
															</div>
															<div class="uploadControls">
																<div class="actions">
																	<span class="action fileSelection">
																		<asp:Label ID="galleryVideoFineUploaderSelectFiles" runat="server" resourcekey="fineVideoUploaderSelectFiles" Text="Select videos" />
																		<span class="dnnInputFileWrapper">
																			<input type="file" value="" multiple="multiple" /></span> </span><span class="action upload">
																				<asp:Label ID="galleryVideoFineUploaderStartUpload" runat="server" resourcekey="fineUploaderStartUpload" Text="Start upload" />
																			</span>
																</div>
																<div class="dndContainer">
																	<p>
																		<asp:Label ID="galleryVideoFineUploaderDragImagesHere" runat="server" resourcekey="fineUploaderDragImagesHere" Text="Drag images here" />
																	</p>
																</div>
															</div>
															<div class="uploadDetails">
																<ol class="fileUploadList">
																</ol>
															</div>
														</div>
													</asp:Panel>
													<div style="display: none; line-height: 0pt;">
														<asp:Button ID="btnSaveMultiVideoUpload" runat="server" OnClick="MultiVideoUpload" Text="Save" />
													</div>
													<br />
													<br />
												</asp:Panel>
											</asp:Panel>
											<asp:Panel ID="pnlFlashEmbeedFlasf" runat="server" Visible="False">
												<div style="margin-top: 25px; margin-bottom: 15px;">
													<table style="width: 650px; text-align: left;">
														<tr>
															<td align="center">
																<dnn:Label ID="lblEmbedVideoTitle" ResourceKey="lblEmbedVideoTitle" runat="server" Text="Embed Video" HelpText="Embed video from various video sites." CssClass="subtitleregion" HelpKey="lblEmbedVideoTitle.HelpText"></dnn:Label>
															</td>
														</tr>
														<tr>
															<td align="center">
																<asp:RadioButtonList ID="rblEmbedVideoSourceSelect" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblVideoSources_SelectedIndexChanged" Height="29px" Width="415px" CssClass="subtitleregion">
																	<asp:ListItem Text="YouTube" Value="YouTube" resourcekey="ListItemResource85" Selected="True">
																	</asp:ListItem>
																	<asp:ListItem Text="Vimeo" Value="Vimeo" resourcekey="ListItemResource86">
																	</asp:ListItem>
																	<asp:ListItem Text="Dailymotion" resourcekey="ListItemResource87">
																	</asp:ListItem>
																	<asp:ListItem Text="Metacafe" resourcekey="ListItemResource88">
																	</asp:ListItem>
																	<asp:ListItem resourcekey="liBitsOnTheRun" Value="bitsrun">Bits on the Run</asp:ListItem>
																	<asp:ListItem resourcekey="liBrightCrove" Value="Brightcove">Brightcove</asp:ListItem>
																	<asp:ListItem Text="Others" resourcekey="ListItemResource89">
																	</asp:ListItem>
																</asp:RadioButtonList>
																<asp:RequiredFieldValidator ID="rfvEmbedVideoSourceSelect" runat="server" ControlToValidate="rblEmbedVideoSourceSelect" ErrorMessage="Please select." ValidationGroup="EmbedVideo" resourcekey="rfvEmbedVideoSourceSelectResource1.ErrorMessage">
																</asp:RequiredFieldValidator>
															</td>
														</tr>
													</table>
												</div>
												<br />
												<table style="width: 650px; text-align: left;">
													<tr id="trEnterEmbedCodeRow" runat="server" visible="false">
														<td>
															<dnn:Label ID="lblEmbedVideoCode" ResourceKey="lblEmbedVideoCode" runat="server" Text="Embed code:" ControlName="tbFlashEmbedUrl" HelpText="Enter video embed code:" HelpKey="lblEmbedVideoCode.HelpText"></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbVideoEmbedCode" runat="server" Width="300px" MaxLength="2500" TextMode="MultiLine" Height="150px" ValidationGroup="EmbedVideo">
															</asp:TextBox>
														</td>
														<td>
															<asp:RequiredFieldValidator ID="rfvEmbedVideoCode" runat="server" ControlToValidate="tbVideoEmbedCode" ErrorMessage="This filed is required." ValidationGroup="EmbedVideo" resourcekey="rfvEmbedVideoCodeResource1.ErrorMessage">
															</asp:RequiredFieldValidator>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblEembedVideoUrl" ResourceKey="lblEembedVideoUrl" runat="server" Text="Video url:" ControlName="tbEmbedShortUrl" HelpText="Enter video url:" HelpKey="lblEembedVideoUrl.HelpText"></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbEmbedVideoURL" runat="server" Width="300px" ValidationGroup="EmbedVideo">
															</asp:TextBox>
														</td>
														<td>
															<asp:RequiredFieldValidator ID="rfvEmbedVideoURL" runat="server" ControlToValidate="tbEmbedVideoURL" ErrorMessage="This filed is required." ValidationGroup="EmbedVideo" resourcekey="rfvEmbedVideoURLResource1.ErrorMessage">
															</asp:RequiredFieldValidator>
														</td>
													</tr>
													<tr id="trEmbedVideoDimensions" runat="server">
														<td>
															<dnn:Label ID="lblEmbedVideoDimensions" runat="server" Text="Video dimensions:" HelpText="Video dimensions:" HelpKey="lblEmbedVideoDimensions.HelpText" ResourceKey="lblEmbedVideoDimensions"></dnn:Label>
														</td>
														<td>
															<asp:Label ID="lblEmbedVideoWidth" ResourceKey="lblEmbedVideoWidth" runat="server" Text="Width:"></asp:Label>
															<asp:TextBox ID="tbEmbedVideoWidth" runat="server" Width="30px" ValidationGroup="EmbedVideo">560</asp:TextBox>
															&nbsp;<asp:RequiredFieldValidator ID="rfvEmbedVideoWidth" runat="server" ControlToValidate="tbEmbedVideoWidth" Display="Dynamic" ErrorMessage="This filed is required." resourcekey="rfvEmbedVideoURLResource1.ErrorMessage" ValidationGroup="EmbedVideo"></asp:RequiredFieldValidator>
															<asp:CompareValidator ID="cvEmbedVideoWidth" runat="server" ControlToValidate="tbEmbedVideoWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoEditHeightResource1.ErrorMessage" Type="Integer"
																ValidationGroup="EmbedVideo">
															</asp:CompareValidator>
															<asp:Label ID="lblEmbedVideoHeight" ResourceKey="lblEmbedVideoHeight" runat="server" Text="Height:"></asp:Label>
															<asp:TextBox ID="tbEmbedVideoHeight" runat="server" Width="30px" ValidationGroup="EmbedVideo">315</asp:TextBox>
															<asp:RequiredFieldValidator ID="rfvEmbedVideoCode0" runat="server" ControlToValidate="tbEmbedVideoHeight" Display="Dynamic" ErrorMessage="This filed is required." resourcekey="rfvEmbedVideoCodeResource1.ErrorMessage" ValidationGroup="EmbedVideo">
															</asp:RequiredFieldValidator>
															<asp:CompareValidator ID="cvEmbedVideoHeight" runat="server" ControlToValidate="tbEmbedVideoHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" resourcekey="cvVideoEditHeightResource1.ErrorMessage" Type="Integer"
																ValidationGroup="EmbedVideo">
															</asp:CompareValidator>
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblEmbedVideoEnterTitle" ResourceKey="lblEmbedVideoEnterTitle" runat="server" Text="Video title:" ControlName="tbFlashEmbedTitle" HelpText="Enter video title." HelpKey="lblEmbedVideoEnterTitle.HelpText"></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbFlashEmbedTitle" runat="server" Width="300px" ValidationGroup="EmbedVideo">
															</asp:TextBox>
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td class="style16">
															<dnn:Label ID="lblEmbedVideoSubttle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbEmbedVideoSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblEmbedVideoDescription" ResourceKey="lblEmbedVideoDescription" runat="server" Text="Description:" ControlName="tbFlashEmbedDescription" HelpText="Enter video description." HelpKey="lblEmbedVideoDescription.HelpText"></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbFlashEmbedDescription" runat="server" Height="150px" TextMode="MultiLine" Width="300px" MaxLength="4000">
															</asp:TextBox>
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>
															<asp:RadioButtonList ID="rblEmbedVideoThumbnail" runat="server" OnSelectedIndexChanged="rblEVThumbCreate_SelectedIndexChanged" Width="176px" AutoPostBack="True">
																<asp:ListItem Selected="True" Value="Autocreate" Text="Auto create thumbnail" resourcekey="ListItemResource90">
																</asp:ListItem>
																<asp:ListItem Value="Upload" Text="Upload thumbnail" resourcekey="ListItemResource91">
																</asp:ListItem>
																<asp:ListItem Value="standard" Text="Use standard image" resourcekey="ListItemResource92">
																</asp:ListItem>
															</asp:RadioButtonList>
														</td>
														<td colspan="2">
															<div id="divEVEFileUpload" runat="server" style="display: none">
																<asp:FileUpload ID="fuEmbedAddThumb" runat="server" Width="300px" />
																<br />
															</div>
															<div id="divEVESelectThumb" runat="server" style="display: none">
																<asp:DropDownList ID="ddlVUEVSelectThumbnail" runat="server" OnLoad="ddlVUEVSelectThumbnail_Load" CausesValidation="True">
																</asp:DropDownList>
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr id="trMVUPostToJournal" runat="server" visible="false">
														<td>
															<dnn:Label ID="lblMVUPostToJournal" runat="server" Text="Post to Journal:" HelpText="Post to Journal:" EnableViewState="True" ResourceKey="lblMAUPostToJournal.Text" />
														</td>
														<td class="style7">
															<asp:CheckBox ID="cbMvUPostToJournal" runat="server" />
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Label ID="lblEVUploadMessage" runat="server" CssClass="video_upload_message" resourcekey="lblEVUploadMessageResource1"></asp:Label>
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Button ID="btnAddEmbedVideo" runat="server" OnClick="btnAddEmbedFlash_Click" resourcekey="btnAddEmbedVideoResource1" Style="height: 26px" Text="Add" ValidationGroup="EmbedVideo" Width="90px" />
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
												</table>
												<br />
												<br />
											</asp:Panel>
										</div>
									</div>
								</asp:Panel>
								<asp:Panel ID="pnlAudioUpload" runat="server" Visible="False">
									<div class="audiouploadbox">
										<div class="uploadaudioboxbgrd">
											<div class="addaudiotitlebgrd">
												<table style="height: 120px;" cellpadding="0" cellspacing="0" class="style1">
													<tr>
														<td align="left" class="style11" valign="bottom">
															<asp:Label ID="lblAddAudio" resourcekey="lblAddAudio" runat="server" CssClass="AddDesc" Text="Add audio"></asp:Label>
														</td>
														<td>
															<table style="width: 650px; text-align: left; padding-top: 30px">
																<tr>
																	<td align="center">
																		<dnn:Label ID="lblAudioUploadTitle" runat="server" CssClass="subtitleregion" HelpKey="lblAudioUploadTitle.HelpText" HelpText="Select to upload adio file or to add audio file from upload folder." ResourceKey="lblAudioUploadTitle" Text="Audio Upload" />
																	</td>
																</tr>
																<tr>
																	<td align="center">
																		<asp:RadioButtonList ID="rblAudioUploadSelectType" runat="server" AutoPostBack="True" CssClass="subtitleregion" OnSelectedIndexChanged="rblSelectAudioUpload_SelectedIndexChanged" RepeatDirection="Horizontal">
																			<asp:ListItem resourcekey="ListItemResource93" Text="Upload audio file" Value="upload">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="MultiAudioUpload" Value="multi">Multi audio file upload</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource94" Text="Add audio file from server" Value="audioserver">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="ListItemResource95" Text="Add all files from server folder" Value="folder">
																			</asp:ListItem>
																			<asp:ListItem resourcekey="liAmazonS3" Value="AmazonS3">Amazon S3</asp:ListItem>
																		</asp:RadioButtonList>
																	</td>
																</tr>
															</table>
														</td>
													</tr>
												</table>
											</div>
											<asp:Panel ID="pnlAmazonS3AudioUpload" runat="server" Visible="False">
												<table style="width: 650px; text-align: left;">
													<tr>
														<td align="center" colspan="2">
															<asp:Label ID="lblAmazonS3Title0" resourcekey="liAmazonS3" runat="server" CssClass="subtitleregion" Text="Amazon S3"></asp:Label>
														</td>
													</tr>
													<tr>
														<td class="style10" colspan="2">&nbsp;
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonUploadAudioURL" runat="server" HelpText="Aamazon S3 audio URL link." Text="Aamazon S3 audio URL link:" HelpKey="lblAmazonUploadAudioURL.HelpText" ResourceKey="lblAmazonUploadAudioURL.Text" />
														</td>
														<td>
															<asp:TextBox ID="tbAmazonAudioURL" runat="server" Font-Size="11px" ValidationGroup="vgAmazonAudioUpload" Width="350px">
															</asp:TextBox>
															<asp:RequiredFieldValidator ID="rfvAmazonAudioURL" runat="server" ControlToValidate="tbAmazonAudioURL" ErrorMessage="This filed is required." resourcekey="rfvEmbedVideoCodeResource1.ErrorMessage" ValidationGroup="vgAmazonAudioUpload">
															</asp:RequiredFieldValidator>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonUploadAudioTitle" runat="server" HelpText="Enter the title of audio file:" Text="Audio title:" HelpKey="lblAmazonUploadAudioTitle.HelpText" ResourceKey="lblAmazonUploadAudioTitle.Text" />
														</td>
														<td>
															<div id="divAmazonAudioTitle" runat="server">
																<asp:TextBox ID="tbAmazonAudioTitle" runat="server" Width="300px">
																</asp:TextBox>
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:CheckBox ID="cbAmazonAudioUploadFilenameAsTitle" runat="server" resourcekey="cbVideoUploadFilenameAsTitleResource1" Text="Use filename as title" />
															<div id="divAmazonAudioFilenameAsTitle" runat="server" style="display: none">
																<asp:Panel ID="pnlVUFilenameasTitle1" runat="server">
																	<asp:CheckBox ID="cbAmazonAudioUploadTitleRemoveExtenzion" runat="server" resourcekey="cbVideoUploadTitleRemoveExtenzionResource1" Text="Remove extension" />
																	<br />
																	<asp:CheckBox ID="cbAmazonAudioUploadTitleReplaceUnderscore" runat="server" resourcekey="cbVideoUploadTitleReplaceUnderscoreResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																	<br />
																	<asp:CheckBox ID="cbAmazonAudioUploadTitleReplaceMinus" runat="server" resourcekey="cbVideoUploadTitleReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																	<asp:RadioButtonList ID="rblAmazonAudioUploadTitleOptions" runat="server">
																		<asp:ListItem resourcekey="ListItemResource79" Text="Set this to change title to uppercase" Value="AllUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource80" Text="Set this to change title to lowercase" Value="AllLowercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource81" Text="Set this to change first letter of every 
										word in title to uppercase"
																			Value="AllFirstUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource82" Text="Set this to change first letter of title to 
										uppercase"
																			Value="FirstUppercase">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																</asp:Panel>
															</div>
														</td>
													</tr>
													<tr>
														<td class="style16">
															<dnn:Label ID="lblAmazonAudioUploadSubtitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbAmazonAudioUploadSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAmazonAudioUploadDescription" runat="server" ControlName="tbFlashDescription" HelpText="Enter the audio description:" Text="Description:" HelpKey="lblAmazonAudioUploadDescription.HelpText" ResourceKey="lblAmazonAudioUploadDescription.Text" />
														</td>
														<td>
															<asp:TextBox ID="tbAmazonAudioDescription" runat="server" Height="150px" MaxLength="4000" TextMode="MultiLine" Width="300px">
															</asp:TextBox>
														</td>
													</tr>
													<tr>
														<td class="style231">
															<dnn:Label ID="lblAmazonAudioUploadThumbnail" runat="server" HelpText="Upload the thumbnail for audio file or use standard image:" Text="Thumbnail:" HelpKey="lblAmazonAudioUploadThumbnail.HelpText" ResourceKey="lblAmazonAudioUploadThumbnail.Text" />
														</td>
														<td class="style232">
															<asp:RadioButtonList ID="rblAmazonAudioThumbnailSelect" runat="server" OnLoad="rblFlashThumbnail_Load" RepeatDirection="Horizontal">
																<asp:ListItem resourcekey="ListItemResource83" Selected="True" Text="Use standard image" Value="standard">
																</asp:ListItem>
																<asp:ListItem resourcekey="ListItemResource84" Text="Upload" Value="Upload">
																</asp:ListItem>
															</asp:RadioButtonList>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<div id="divAmazonAudioStandardImage" runat="server">
																<asp:Label ID="lblAmazonAudioUploadSelectStandardThumbnail" runat="server" resourcekey="lblVideoUploadSelectStandardThumbnailResource1" Text="Select standard thumbnail:"></asp:Label>
																&nbsp;<asp:DropDownList ID="ddlAmazobAudioThumbSelect" runat="server" OnLoad="ddlAmazobVideoThumbSelect_Load">
																</asp:DropDownList>
															</div>
														</td>
													</tr>
													<tr>
														<td class="style22">&nbsp;
														</td>
														<td class="style23">
															<div id="divAmazonAudioUploadThumb" runat="server" style="display: none">
																<asp:Label ID="lblAudioUploadSelectThumbnailToUpload" runat="server" resourcekey="lblVideoUploadSelectThumbnailToUploadResource1" Text="Select thumbnail to upload:"></asp:Label>
																&nbsp;
																<asp:FileUpload ID="fuAmazonAudioThumbnail" runat="server" Width="322px" />
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Label ID="lblAmazonAudioUploadMessage" runat="server" CssClass="audio_upload_message" EnableViewState="False"></asp:Label>
															&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Button ID="btnAmazonAudioUpload" runat="server" OnClick="btnAmazonAudioUpload_Click" resourcekey="btnAmazonVideoUpload" Style="height: 26px" Text="Upload" ValidationGroup="vgAmazonAudioUpload" Width="90px" />
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
												</table>
											</asp:Panel>
											<asp:Panel ID="pnlAuFile" runat="server" Visible="False">
												<table style="width: 650px; text-align: left;">
													<tr>
														<td colspan="2">&nbsp;
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<asp:Label ID="lblAudioUploadFile" runat="server" CssClass="subtitleregion" Text="Upload audio file" resourcekey="lblAudioUploadFileResource1"></asp:Label>
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<asp:Panel ID="pnlAUUploadFile" runat="server">
																<table style="width: 650px; text-align: left;">
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadSelectFile" ResourceKey="lblAudioUploadSelectFile" runat="server" HelpText="Select audio file to upload:" Text="Select file:" HelpKey="lblAudioUploadSelectFile.HelpText" />
																		</td>
																		<td>
																			<asp:FileUpload ID="fuAudio" runat="server" Width="300px" />
																		</td>
																	</tr>
																</table>
															</asp:Panel>
															<asp:Panel ID="pnlAUAddFileFromServer" runat="server" Visible="False">
																<table style="width: 650px; text-align: left;">
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadSelectFolder" ResourceKey="lblAudioUploadSelectFolder" runat="server" Text="Select folder:" HelpText="Select folder:" HelpKey="lblAudioUploadSelectFolder.HelpText"></dnn:Label>
																		</td>
																		<td>
																			<asp:DropDownList ID="ddlAUFolders" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlAUFolders_SelectedIndexChanged">
																			</asp:DropDownList>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadSelectFileFromFolder" ResourceKey="lblAudioUploadSelectFileFromFolder" runat="server" Text="Select audio file:" HelpText="Select audio file:" HelpKey="lblAudioUploadSelectFileFromFolder.HelpText"></dnn:Label>
																		</td>
																		<td>
																			<asp:DropDownList ID="ddlAUFiles" runat="server">
																			</asp:DropDownList>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadShowMainGalleryFolder" ResourceKey="lblAudioUploadShowMainGalleryFolder" runat="server" Text="Show main gallery folder:" HelpText="Add main EasyDNN gallery folder to folders list:" HelpKey="lblAudioUploadShowMainGalleryFolder.HelpText"></dnn:Label>
																		</td>
																		<td>
																			<asp:CheckBox ID="cbAUShowMinGalFolder" runat="server" AutoPostBack="True" OnCheckedChanged="cbAUShowMinGalFolder_CheckedChanged" resourcekey="cbAUShowMinGalFolderResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadDeleteOriginalFile" ResourceKey="lblAudioUploadDeleteOriginalFile" runat="server" HelpText="File will be copied to gallery folder. Delete original file:" Text="Delete original file:" HelpKey="lblAudioUploadDeleteOriginalFile.HelpText" />
																		</td>
																		<td>
																			<asp:CheckBox ID="cbAUDeleteOriginalFile" runat="server" resourcekey="cbAUDeleteOriginalFileResource1" />
																		</td>
																	</tr>
																</table>
															</asp:Panel>
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<asp:Panel ID="pnlAAF" runat="server">
																<table style="width: 650px; text-align: left;">
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadAddFolderSelect" runat="server" Text="Select folder:" ResourceKey="lblAudioUploadAddFolderSelectResource1" HelpText="Select folder:"></dnn:Label>
																		</td>
																		<td>
																			<asp:DropDownList ID="ddlAddAudioFolder" runat="server" Style="margin-left: 0px">
																			</asp:DropDownList>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadAddFolderShowMainGalleryFolder" ResourceKey="lblAudioUploadAddFolderShowMainGalleryFolder" runat="server" HelpText="Add main EasyDNN gallery folder to folders list:" Text="Show main gallery folder:" HelpKey="lblAudioUploadAddFolderShowMainGalleryFolder.HelpText" />
																		</td>
																		<td>
																			<asp:CheckBox ID="cbAAFShowMainGalFolder" runat="server" AutoPostBack="True" OnCheckedChanged="cbAAFShowMainGalFolder_CheckedChanged" resourcekey="cbAAFShowMainGalFolderResource1" />
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<dnn:Label ID="lblAudioUploadAddFolderDeleteOriginalFile" ResourceKey="lblAudioUploadAddFolderDeleteOriginalFile" runat="server" HelpText="File will be copied to gallery folder. Delete original file:" Text="Delete original file:" HelpKey="lblAudioUploadAddFolderDeleteOriginalFile.HelpText"
																				Visible="True" />
																		</td>
																		<td>
																			<asp:CheckBox ID="cbAAFDeleteOriginalFile" runat="server" resourcekey="cbAAFDeleteOriginalFileResource1" />
																		</td>
																	</tr>
																</table>
															</asp:Panel>
														</td>
													</tr>
													<tr>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAudioUploadEnterTitle" ResourceKey="lblAudioUploadEnterTitle" runat="server" Text="Title:" ControlName="tbAudioTitle" HelpText="Enter the audio file title:" HelpKey="lblAudioUploadEnterTitle.HelpText"></dnn:Label>
														</td>
														<td>
															<div id="divAUTitleTextBox" runat="server">
																<asp:TextBox ID="tbAudioTitle" runat="server" Width="300px">
																</asp:TextBox>
															</div>
														</td>
													</tr>
													<tr>
														<td></td>
														<td>
															<asp:CheckBox ID="cbAudioUploadFilenameAsTitle" runat="server" Text="Use filename as title" resourcekey="cbAudioUploadFilenameAsTitleResource1" />
															<div id="divAUFilenameAsTitle" runat="server" style="display: none">
																<asp:Panel ID="pnlAUFilenameasTitle" runat="server">
																	<asp:CheckBox ID="cbAudioUploadRemoveExtenzion" runat="server" Text="Remove extension" resourcekey="cbAudioUploadRemoveExtenzionResource1" />
																	<br />
																	<asp:CheckBox ID="cbAudioUploadTitleReplaceUnderscore" runat="server" Text="Set this to replace &quot;_&quot; with blank space in title" resourcekey="cbAudioUploadTitleReplaceUnderscoreResource1" />
																	<br />
																	<asp:CheckBox ID="cbAudioUploadTitleReplaceMinus" runat="server" Text="Set this to replace &quot;-&quot; with blank space in title" resourcekey="cbAudioUploadTitleReplaceMinusResource1" />
																	<asp:RadioButtonList ID="rblAudioUploadTitleOptions" runat="server">
																		<asp:ListItem Value="AllUppercase" Text="Set this to change title to uppercase" resourcekey="ListItemResource97">
																		</asp:ListItem>
																		<asp:ListItem Value="AllLowercase" Text="Set this to change title to lowercase" resourcekey="ListItemResource98">
																		</asp:ListItem>
																		<asp:ListItem Value="AllFirstUppercase" Text="Set this to change first letter of every 
										word in title to uppercase"
																			resourcekey="ListItemResource99">
																		</asp:ListItem>
																		<asp:ListItem Value="FirstUppercase" Text="Set this to change first letter of title to 
										uppercase"
																			resourcekey="ListItemResource100">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																</asp:Panel>
															</div>
														</td>
													</tr>
													<tr>
														<td class="style16">
															<dnn:Label ID="lblAudioUploadSubtitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbAudioUploadSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAudioUploadDescription" ResourceKey="lblAudioUploadDescription" runat="server" ControlName="tbAudioDescription" HelpText="Enter the audio file description:" Text="Description:" HelpKey="lblAudioUploadDescription.HelpText" />
														</td>
														<td>
															<asp:TextBox ID="tbAudioDescription" runat="server" Height="100px" TextMode="MultiLine" Width="300px" MaxLength="4000">
															</asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblAudioUploadThumbnailSelect" ResourceKey="lblAudioUploadThumbnailSelect" runat="server" HelpText="Upload the thumbnail for video file or use standard image:" Text="Thumbnail:" HelpKey="lblAudioUploadThumbnailSelect.HelpText" />
														</td>
														<td>
															<asp:RadioButtonList ID="rblAudioUploadSelectThumbSource" runat="server" RepeatDirection="Horizontal">
																<asp:ListItem Selected="True" Value="standard" Text="Use standard image" resourcekey="ListItemResource101">
																</asp:ListItem>
																<asp:ListItem Value="upload" Text="Upload" resourcekey="ListItemResource102">
																</asp:ListItem>
															</asp:RadioButtonList>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<div id="divAUSelectStantard" runat="server">
																<asp:DropDownList ID="ddlAUSelectSTandThumb" runat="server" OnLoad="ddlAUSelectSTandThumb_Load">
																</asp:DropDownList>
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<div id="divAUUploadThumb" runat="server" style="display: none">
																<asp:FileUpload ID="fuAudioUpload" runat="server" />
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Label ID="lblAudioUploadMessage" runat="server" resourcekey="lblAudioMessageResource1" AssociatedControlID="btnUploadAudio" CssClass="audio_upload_message" EnableViewState="False"></asp:Label>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Button ID="btnUploadAudio" runat="server" OnClick="btnUploadAudio_Click" Text="Upload" Width="90px" resourcekey="btnUploadAudioResource1" />
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
												</table>
											</asp:Panel>
											<asp:Panel ID="pnlMultiAudioFileUpload" runat="server" Visible="False">
												<table style="width: 650px; text-align: left;">
													<tr>
														<td colspan="2">&nbsp;
														</td>
													</tr>
													<tr>
														<td colspan="2">
															<asp:Label ID="lblMultiAudioUploadFile" runat="server" CssClass="subtitleregion" resourcekey="lblMultiAudioUploadFile" Text="Multi upload audio file"></asp:Label>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>&nbsp;
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblMultiAudioUploadEnterTitle" runat="server" ControlName="tbAudioTitle" HelpKey="lblAudioUploadEnterTitle.HelpText" HelpText="Enter the audio file title:" ResourceKey="lblAudioUploadEnterTitle" Text="Title:" />
														</td>
														<td>
															<div id="divMultiAUTitleTextBox" runat="server">
																<asp:TextBox ID="tbMultiAudioTitle" runat="server" Width="300px">
																</asp:TextBox>
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:CheckBox ID="cbMultiAudioUploadFilenameAsTitle" runat="server" resourcekey="cbAudioUploadFilenameAsTitleResource1" Text="Use filename as title" />
															<div id="divMultiAUFilenameAsTitle" runat="server" style="display: none">
																<asp:Panel ID="pnlAUFilenameasTitle0" runat="server">
																	<asp:CheckBox ID="cbMultiAudioUploadRemoveExtenzion" runat="server" resourcekey="cbAudioUploadRemoveExtenzionResource1" Text="Remove extension" />
																	<br />
																	<asp:CheckBox ID="cbMultiAudioUploadTitleReplaceUnderscore" runat="server" resourcekey="cbAudioUploadTitleReplaceUnderscoreResource1" Text="Set this to replace &quot;_&quot; with blank space in title" />
																	<br />
																	<asp:CheckBox ID="cbMultiAudioUploadTitleReplaceMinus" runat="server" resourcekey="cbAudioUploadTitleReplaceMinusResource1" Text="Set this to replace &quot;-&quot; with blank space in title" />
																	<asp:RadioButtonList ID="rblMultiAudioUploadTitleOptions" runat="server">
																		<asp:ListItem resourcekey="ListItemResource97" Text="Set this to change title to uppercase" Value="AllUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource98" Text="Set this to change title to lowercase" Value="AllLowercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource99" Text="Set this to change first letter of every 
										word in title to uppercase"
																			Value="AllFirstUppercase">
																		</asp:ListItem>
																		<asp:ListItem resourcekey="ListItemResource100" Text="Set this to change first letter of title to 
										uppercase"
																			Value="FirstUppercase">
																		</asp:ListItem>
																	</asp:RadioButtonList>
																</asp:Panel>
															</div>
														</td>
													</tr>
													<tr>
														<td class="style16">
															<dnn:Label ID="lblMultiAudioUploadSubtitle" runat="server" Text=" Subtitle:" HelpText="Enter subtitle for images from zip file."></dnn:Label>
														</td>
														<td>
															<asp:TextBox ID="tbMultiAudioUploadSubtitle" runat="server" Height="50px" MaxLength="2000" Width="300px"></asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblMultiAudioUploadDescription" runat="server" ControlName="tbAudioDescription" HelpKey="lblAudioUploadDescription.HelpText" HelpText="Enter the audio file description:" ResourceKey="lblAudioUploadDescription" Text="Description:" />
														</td>
														<td>
															<asp:TextBox ID="tbMultiAudioDescription" runat="server" Height="100px" MaxLength="4000" TextMode="MultiLine" Width="300px">
															</asp:TextBox>
														</td>
													</tr>
													<tr>
														<td>
															<dnn:Label ID="lblMultiAudioUploadThumbnailSelect" runat="server" HelpKey="lblAudioUploadThumbnailSelect.HelpText" HelpText="Upload the thumbnail for video file or use standard image:" ResourceKey="lblAudioUploadThumbnailSelect" Text="Thumbnail:" />
														</td>
														<td>
															<asp:RadioButtonList ID="rblMultiAudioUploadSelectThumbSource" runat="server" RepeatDirection="Horizontal">
																<asp:ListItem resourcekey="ListItemResource101" Selected="True" Text="Use standard image" Value="standard">
																</asp:ListItem>
																<asp:ListItem resourcekey="ListItemResource102" Text="Upload" Value="upload">
																</asp:ListItem>
															</asp:RadioButtonList>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<div id="divMultiAUSelectStantard" runat="server">
																<asp:DropDownList ID="ddlMultiAUSelectSTandThumb" runat="server" OnLoad="ddlMultiAUSelectSTandThumb_Load">
																</asp:DropDownList>
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<div id="divMultiAUUploadThumb" runat="server" style="display: none">
																<asp:FileUpload ID="fuMultiAudioUpload" runat="server" />
															</div>
														</td>
													</tr>
													<tr>
														<td>&nbsp;
														</td>
														<td>
															<asp:Label ID="lblMultiAudioUploadMessage" runat="server" resourcekey="lblAudioMessageResource1" CssClass="audio_upload_message" EnableViewState="False"></asp:Label>
														</td>
													</tr>
													<tr id="trMAUPostToJournal" runat="server" visible="false">
														<td>
															<dnn:Label ID="lblMAUPostToJournal" runat="server" Text="Post to Journal:" HelpText="Post to Journal:" EnableViewState="True" HelpKey="lblPostToJurnal.HelpText" ResourceKey="lblMAUPostToJournal" />
														</td>
														<td class="style7">
															<asp:CheckBox ID="cbMAUPostToJournal" runat="server" />
														</td>
													</tr>
												</table>
												<br />
												<asp:Panel ID="pnlAudioUploadUploadify" runat="server" Visible="True">
													<table cellpadding="0" cellspacing="0" align="center" class="multiuploadcontrol">
														<tr>
															<td>
																<div style="display: block; float: left; margin-left: 30px; padding-top: 4px;">
																	<asp:FileUpload ID="MultiAudioFileInput" runat="server" EnableTheming="True" />
																</div>
																<div style="display: block; float: left; margin-left: 15px;">
																	<a class="btnUpload" href="javascript:jQuery('#<%=MultiAudioFileInput.ClientID%>').uploadifyUpload();">
																		<%=startUpload%></a> <a href="javascript:jQuery('#<%=MultiAudioFileInput.ClientID%>').uploadifyClearQueue();">
																			<%=ViewState["ClearQueue"]%></a>
																</div>
																<br />
															</td>
														</tr>
													</table>
												</asp:Panel>
												<asp:Panel ID="pnlAudioUploadfineUploader" runat="server" Visible="False">
													<div id="galleryAudioFineUploaderContainer" class="EDS_simpleFineUploader">
														<div class="uploader">
														</div>
														<div class="uploadControls">
															<div class="actions">
																<span class="action fileSelection">
																	<asp:Label ID="galleryAudioFineUploaderSelectFiles" runat="server" resourcekey="fineAudioUploaderSelectFiles" Text="Select Audios" />
																	<span class="dnnInputFileWrapper">
																		<input type="file" value="" multiple="multiple" /></span> </span><span class="action upload">
																			<asp:Label ID="galleryAudioFineUploaderStartUpload" runat="server" resourcekey="fineUploaderStartUpload" Text="Start upload" />
																		</span>
															</div>
															<div class="dndContainer">
																<p>
																	<asp:Label ID="galleryAudioFineUploaderDragImagesHere" runat="server" resourcekey="fineUploaderDragImagesHere" Text="Drag images here" />
																</p>
															</div>
														</div>
														<div class="uploadDetails">
															<ol class="fileUploadList">
															</ol>
														</div>
													</div>
												</asp:Panel>
												<div style="display: none; line-height: 0pt;">
													<asp:Button ID="btnSaveMultiAudioUpload" runat="server" OnClick="MultiAudioUpload" Text="Save" />
												</div>
												<br />
												<br />
											</asp:Panel>
										</div>
									</div>
								</asp:Panel>
								<table cellpadding="2" cellspacing="2" width="800px" style="padding-top: 15px; padding-right: 10px;">
									<tr>
										<td align="right">
											<asp:Button ID="btnclosemedia2" runat="server" OnClick="Button1_Click1" Text="Close media manager" ToolTip="Close Media Manager and return to Gallery Manager." resourcekey="btnclosemediaResource1" CssClass="btnclosemediamanager" />
										</td>
									</tr>
								</table>
							</div>
						</asp:Panel>
						<asp:Panel ID="pnlImageEdit" runat="server" Width="800px" Visible="False" border="0">
							<div class="imagesuploadbox">
								<div class="uploadimagesboxbgrd">
									<table id="tblImageEdit" runat="server" cellpadding="2" cellspacing="0" style="width: 650px; text-align: left;">
										<tr>
											<td colspan="2">&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<asp:Label ID="lblImageEditorTitle" runat="server" CssClass="subtitleregion" Text="Image Edit" resourcekey="lblImageEditorTitleResource1"></asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>
												<asp:Label ID="lblImageEditorGalleryName" runat="server" Text="Gallery:" resourcekey="lblImageEditorGalleryNameResource1">
												</asp:Label>
												<asp:Label ID="lblIEGalleryName2" runat="server" resourcekey="lblIEGalleryName2Resource1">
												</asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>
												<asp:HyperLink ID="hlIEViewImage" runat="server" Target="_blank">
													<asp:Image ID="imgEditPanelthumb" runat="server" BorderWidth="1px" />
												</asp:HyperLink>
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td class="style19">
												<dnn:Label ID="lblImageEditorFilename" ResourceKey="lblImageEditorFilename" runat="server" ControlName="tbEditTitlePanel" HelpText="Filename:" Text="Filename:" HelpKey="lblImageEditorFilename.HelpText" />
											</td>
											<td>
												<asp:Label ID="lblImageEditorFilename2" runat="server" resourcekey="lblImageEditorFilename2Resource1">
												</asp:Label>
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td class="style19">
												<dnn:Label ID="lblImageEditorImageTitle" ResourceKey="lblImageEditorImageTitle" runat="server" Text="Image title:" HelpText="Edit image title:" ControlName="tbEditTitlePanel" HelpKey="lblImageEditorImageTitle.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbEditTitlePanel" runat="server" Width="300px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td class="style19">
												<dnn:Label ID="lblImageEditorImageSubtitle" ResourceKey="lblImageEditorImageSubtitle" runat="server" Text="Image subtitle:" HelpText="Edit image subtitle:" ControlName="tbEditTitlePanel" HelpKey="lblImageEditorImageSubtitle.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbEditSubtitlePanel" runat="server" Width="300px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td class="style19">
												<dnn:Label ID="lblImageEditorDescription" ResourceKey="lblImageEditorDescription" runat="server" HelpText="Edit description:" Text="Description:" HelpKey="lblImageEditorDescription.HelpText" />
											</td>
											<td>
												<dnn:TextEditor ID="txtDescHmlEdit" runat="server" Height="350" Width="550" />
											</td>
										</tr>
										<tr id="trEdiImageURL" runat="server">
											<td class="style19">
												<dnn:Label ID="lblImageEditorUrl" ResourceKey="lblImageEditorUrl" runat="server" ControlName="tbEditImageUrl" HelpText="Edit Media Url link:" Text="Media Url:" HelpKey="lblImageEditorUrl.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbEditImageUrl" runat="server" Width="300px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr id="trEdiReplaceImage" runat="server">
											<td class="style19">
												<dnn:Label ID="lblImageEditorReplaceImage" ResourceKey="lblImageEditorReplaceImage" runat="server" HelpText="Use this to upload new image." Text="Replace image:" HelpKey="lblImageEditorReplaceImage.HelpText" />
											</td>
											<td style="margin-left: 40px">
												<asp:FileUpload ID="fuReplaceImage" runat="server" />
												&nbsp;&nbsp;
												<asp:Button ID="btnImageEditorReplaceImage" runat="server" OnClick="btnReplacemage_Click" Style="height: 26px" Text="Replace" resourcekey="btnImageEditorReplaceImageResource1" ValidationGroup="vgReplaceImage" />
												<br />
												<asp:CheckBox ID="cbIEResizeNewImage" resourcekey="cbIEResizeNewImage" runat="server" Text="Resize new image" AutoPostBack="True" OnCheckedChanged="cbIEResizeNewImage_CheckedChanged" />
												<br />
												<asp:Panel ID="pnlIEResizeNewImage" runat="server" Visible="False">
													<asp:Label ID="lblIEResizeWidth" resourcekey="lblIEResizeWidth" runat="server" Text="Width:">
													</asp:Label>
													<asp:TextBox ID="tbIEResizeWidth" runat="server" Width="40px" ValidationGroup="vgReplaceImage">800</asp:TextBox>
													&nbsp;&nbsp;
													<asp:Label ID="lblResizeHeight" resourcekey="lblResizeHeight" runat="server" Text="Height:">
													</asp:Label>
													<asp:TextBox ID="tbIEResizeHeight" runat="server" Width="40px" ValidationGroup="vgReplaceImage">600</asp:TextBox>
													<br />
													<asp:RequiredFieldValidator ID="rfvIEWidth" runat="server" ControlToValidate="tbIEResizeWidth" ErrorMessage="Please enter width." ValidationGroup="vgReplaceImage">
													</asp:RequiredFieldValidator>
													<asp:RequiredFieldValidator ID="rfvIEHeight" runat="server" ControlToValidate="tbIEResizeHeight" ErrorMessage="Please enter height." ValidationGroup="vgReplaceImage">
													</asp:RequiredFieldValidator>
													<br />
													<asp:CheckBox ID="cbIEUseUnresizedAsDownload" runat="server" Text="Use unresized image as download version." />
												</asp:Panel>
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td style="margin-left: 40px">&nbsp;
											</td>
										</tr>
										<tr id="trEditImageHiRes" runat="server">
											<td class="style19">&nbsp;
												<dnn:Label ID="lblHiResVersion" runat="server" HelpText="Upload downloadable version of the image." Text="Upload downloadable version:" HelpKey="lblHiResVersion.HelpText" ResourceKey="lblHiResVersion" />
											</td>
											<td>
												<asp:HyperLink ID="hlIEDownloadImage" runat="server" Target="_blank">
													<asp:Image ID="imgEditPanelthumbDownload" runat="server" BorderWidth="1px" Visible="False" />
												</asp:HyperLink>
												<br />
												<br />
												<asp:FileUpload ID="fuIEHiResVersion" runat="server" Height="25px" Width="300px" />
												<br />
												<asp:Button ID="btnHiRes" runat="server" resourcekey="btnHiRes" OnClick="btnHiRes_Click" Text="Upload downloadable version" />
												<asp:Button ID="btnUseViewVersionAsDownload" resourcekey="btnUseViewVersionAsDownload" runat="server" OnClick="btnUseViewVersionAsDownload_Click" Text="Use view version as download" />
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="2">&nbsp;
											</td>
										</tr>
										<tr id="trEditImageEmpty" runat="server">
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>
												<asp:Button ID="btnImageEditorSave" runat="server" OnClick="btnImageEditPanelSave_Click" Text="Save " Width="90px" resourcekey="btnImageEditorSaveResource1" />
												&nbsp;&nbsp;&nbsp;&nbsp;
												<asp:Button ID="btnImageEditorCancel" runat="server" OnClick="btnCancelEditPanel_Click" Text="Cancel" Width="90px" resourcekey="btnImageEditorCancelResource1" />
											</td>
										</tr>
										<tr>
											<td class="style19">&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
									</table>
								</div>
							</div>
						</asp:Panel>
						<asp:Panel ID="pnlEmbedVideoEdit" runat="server" Visible="False" border="0" Width="800px">
							<div class="videouploadbox">
								<div class="uploadvideoboxbgrd">
									<table style="width: 650px; text-align: left;">
										<tr>
											<td colspan="2">&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<asp:Label ID="lblEmbedVideoEditorTitle" runat="server" CssClass="subtitleregion" Text="Embed Video Edit" resourcekey="lblEmbedVideoEditorTitleResource1"></asp:Label>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;<asp:Label ID="lblEVEInfo" runat="server" Visible="False"></asp:Label>
												&nbsp;
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<asp:Label ID="lblEmbedVideoEditGalleryName" runat="server" Text="Gallery:" resourcekey="lblEmbedVideoEditGalleryNameResource1">
												</asp:Label>
												&nbsp;<asp:Label ID="lblEVGalleryName" runat="server" resourcekey="lblEVGalleryNameResource1"></asp:Label>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblEmbedVideoEditTitle" ResourceKey="lblEmbedVideoEditTitle" runat="server" ControlName="tbEMbedVideoEditTitle" HelpText="Edit video title:" Text="Video title:" HelpKey="lblEmbedVideoEditTitle.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbEMbedVideoEditTitle" runat="server" Width="300px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblEmbedVideoEditSubTitle" runat="server" ControlName="tbEMbedVideoEditTitle" HelpText="Edit video subtitle:" Text="Video title:" />
											</td>
											<td>
												<asp:TextBox ID="tbEmbedVideoEditSubTitle" runat="server" Width="300px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblEmbedVideoEditCode" ResourceKey="lblEmbedVideoEditCode" runat="server" ControlName="tbEmbedVideoEditUrl" HelpText="Edit embed video code:" Text="Embed video code:" HelpKey="lblEmbedVideoEditCode.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbEmbedVideoEditUrl" runat="server" Width="300px" Height="150px" TextMode="MultiLine">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblEmbedVideoEditUrl" ResourceKey="lblEmbedVideoEditUrl" runat="server" ControlName="tbEmbedEditURL" HelpText="Edit video Url:" Text="Video Url:" HelpKey="lblEmbedVideoEditUrl.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbEmbedEditURL" runat="server" Width="352px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblEmbedVideoEditDescription" ResourceKey="lblEmbedVideoEditDescription" runat="server" ControlName="txtEVEDescription" HelpText="Edit description:" Text="Description:" HelpKey="lblEmbedVideoEditDescription.HelpText" />
											</td>
											<td>&nbsp;
												<dnn:TextEditor ID="txtEVEDescription" runat="server" Height="250" Width="500" />
											</td>
										</tr>
										<tr>
											<td>
												<asp:Label ID="lblEmbedVideoEditThumbnail" runat="server" Text="Thumbnail:" resourcekey="lblEmbedVideoEditThumbnailResource1">
												</asp:Label>
											</td>
											<td>
												<asp:Image ID="imgEVEThumbnail" runat="server" Height="150px" Width="150px" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr id="trEditEmbedReplace" runat="server">
											<td>&nbsp;
												<dnn:Label ID="lblEmbedVideoEditReplaceThumb" ResourceKey="lblEmbedVideoEditReplaceThumb" runat="server" HelpText="Replace thumbnail for video file:" Text="Replace thumbnail:" HelpKey="lblEmbedVideoEditReplaceThumb.HelpText" />
											</td>
											<td>
												<asp:CheckBox ID="cbEVEReplaceThumbnail" runat="server" resourcekey="cbEVEReplaceThumbnailResource1" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<div id="divEVEAddThumb" style="display: none" runat="server">
													<asp:RadioButtonList ID="rblEVEChangeThumb" runat="server" RepeatDirection="Horizontal" Width="371px">
														<asp:ListItem Selected="True" Value="standard" Text="Use standard image" resourcekey="ListItemResource103">
														</asp:ListItem>
														<asp:ListItem Text="Upload" resourcekey="ListItemResource104">
														</asp:ListItem>
														<asp:ListItem Value="autocreate" Text="Auto create thumbnail">
														</asp:ListItem>
													</asp:RadioButtonList>
													<br />
													<div id="divEVEStandardThumb" runat="server">
														<asp:DropDownList ID="ddlEVESTandardThumbList" runat="server" OnLoad="ddlEVESTandardThumbList_Load">
														</asp:DropDownList>
													</div>
													<br />
													<div id="divEVEThumbUpload" runat="server" style="display: none">
														<asp:FileUpload ID="fuEVEReplaceThumb" runat="server" Width="351px" />
													</div>
													<div id="divEVEThumbAutoCreate" runat="server" style="display: none">
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<asp:Button ID="bntEmbedVideoEditSave" runat="server" OnClick="bntEmbedVideoEditSave_Click" Text="Save" Width="90px" resourcekey="bntEmbedVideoEditSaveResource1" Style="height: 26px" />
												&nbsp;
												<asp:Button ID="btnEMbedVideoEditCancel" runat="server" OnClick="btnEMbedVideoEditCancel_Click" Text="Cancel" Width="90px" resourcekey="btnEMbedVideoEditCancelResource1" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
									</table>
								</div>
							</div>
						</asp:Panel>
						<asp:Panel ID="pnlFlashEdit" runat="server" Visible="False" border="0" Width="800px">
							<div class="videouploadbox">
								<div class="uploadvideoboxbgrd">
									<table style="width: 650px; text-align: left;">
										<tr>
											<td colspan="2">&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<asp:Label ID="lblVideoEditTitle" runat="server" CssClass="subtitleregion" Text="Video Edit" resourcekey="lblVideoEditTitleResource1"></asp:Label>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<asp:Label ID="lblVideoEditGalleryName" runat="server" Text="Gallery:" resourcekey="lblVideoEditGalleryNameResource1">
												</asp:Label>
												&nbsp;<asp:Label ID="lblVEGalleryName" runat="server" resourcekey="lblVEGalleryNameResource1"></asp:Label>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditFilename" ResourceKey="lblVideoEditFilename" runat="server" HelpText="Filename:" Text="Filename:" HelpKey="lblVideoEditFilename.HelpText" />
											</td>
											<td>
												<asp:Label ID="lblFEFilename2" runat="server" resourcekey="lblFEFilename2Resource1">
												</asp:Label>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditorTitle" ResourceKey="lblVideoEditorTitle" runat="server" Text="Title:" ControlName="tbFlashEditorTitle" HelpText="Edit video title:" HelpKey="lblVideoEditorTitle.HelpText"></dnn:Label>
											</td>
											<td>
												<asp:TextBox ID="tbFlashEditorTitle" runat="server" Width="300px" Style="margin-left: 0px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditorSubtitle" runat="server" Text="Subtitle:" ControlName="tbFlashEditorTitle" HelpText="Edit video subtitle:"></dnn:Label>
											</td>
											<td>
												<asp:TextBox ID="tbVideoEditorSubtitle" runat="server" Width="300px" Style="margin-left: 0px">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditorWidth" ResourceKey="lblVideoEditorWidth" runat="server" ControlName="tbVideoEditorWidth" HelpText="Edit video width:" Text="Width:" HelpKey="lblVideoEditorWidth.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbVideoEditorWidth" runat="server" Width="50px">
												</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvVideoEditorWidth" runat="server" ControlToValidate="tbVideoEditorWidth" Display="Dynamic" ErrorMessage="This filed is required." ValidationGroup="vgVideoEditor" resourcekey="rfvVideoEditorWidthResource1.ErrorMessage"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvVideoEditWidth" runat="server" ControlToValidate="tbVideoEditorWidth" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVideoEditor" resourcekey="cvVideoEditWidthResource1.ErrorMessage">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditHeight" ResourceKey="lblVideoEditHeight" runat="server" ControlName="tbVideoEditorHeight" HelpText="Edit video height:" Text="Height:" HelpKey="lblVideoEditHeight.HelpText" />
											</td>
											<td>
												<asp:TextBox ID="tbVideoEditorHeight" runat="server" Width="50px">
												</asp:TextBox>
												&nbsp;<asp:RequiredFieldValidator ID="rfvVideoEditorHeight" runat="server" ControlToValidate="tbVideoEditorHeight" Display="Dynamic" ErrorMessage="This filed is required." ValidationGroup="vgVideoEditor" resourcekey="rfvVideoEditorHeightResource1.ErrorMessage"></asp:RequiredFieldValidator>
												<asp:CompareValidator ID="cvVideoEditHeight" runat="server" ControlToValidate="tbVideoEditorHeight" Display="Dynamic" ErrorMessage="Please enter number only." Operator="DataTypeCheck" Type="Integer" ValidationGroup="vgVideoEditor" resourcekey="cvVideoEditHeightResource1.ErrorMessage">
												</asp:CompareValidator>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												<asp:Label ID="lblVideoEditThumbnail" runat="server" Text="Thumbnail:" resourcekey="lblVideoEditThumbnailResource1">
												</asp:Label>
											</td>
											<td>
												<asp:Image ID="imgFLEThumbnail" runat="server" Height="150px" Width="150px" />
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditDescription" ResourceKey="lblVideoEditDescription" runat="server" HelpText="Edit description." Text="Description:" HelpKey="lblVideoEditDescription.HelpText" />
											</td>
											<td>
												<dnn:TextEditor ID="txtVideoEditDescription" runat="server" Height="300" Width="500" />
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditReplaceThumbnail" ResourceKey="lblVideoEditReplaceThumbnail" runat="server" HelpText="Upload new or select standard thumbnail:" Text="Replace thumbnail:" HelpKey="lblVideoEditReplaceThumbnail.HelpText" />
												<br />
											</td>
											<td>
												<asp:CheckBox ID="cbVideoEditAddNewThumbnail" runat="server" Text="Add new thumbnail" CausesValidation="True" resourcekey="cbVideoEditAddNewThumbnailResource1" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<div id="VEThumb" runat="server" style="display: none">
													<asp:Panel ID="pnlVEAddNewThumbnail" runat="server">
														<asp:RadioButtonList ID="rblVideoEditSelectNewThumb" runat="server" RepeatDirection="Horizontal">
															<asp:ListItem Selected="True" Value="standard" Text="Use standard image" resourcekey="ListItemResource105">
															</asp:ListItem>
															<asp:ListItem Value="upload" Text="Upload" resourcekey="ListItemResource106">
															</asp:ListItem>
														</asp:RadioButtonList>
														<br />
														<div id="divVEStandardThumb" runat="server">
															<asp:DropDownList ID="ddlVEStandardImage" runat="server" OnLoad="ddlVEStandardImage_Load">
															</asp:DropDownList>
														</div>
														<br />
														<div id="divVEUploadThumb" runat="server" style="display: none">
															<asp:FileUpload ID="fuFLEReplaceThumbnail" runat="server" />
														</div>
													</asp:Panel>
												</div>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
												<asp:Label ID="lblVideoEditStartupImage" runat="server" Text="Startup image:"></asp:Label>
											</td>
											<td>&nbsp;
												<asp:Image ID="imgVideoEditStartupImage" runat="server" Height="150px" Width="150px" ImageUrl="<%#ModulePath%>images/spacer.gif" />
												&nbsp;<asp:Button ID="btnVideoEditRemoveStartupImage" runat="server" Enabled="False" OnClick="btnVideoEditRemoveStartupImage_Click" Text="Remove startup image" />
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblVideoEditReplaceStartupImage" runat="server" HelpText="Upload new or select standard thumbnail:" Text="Replace startup image:" />
											</td>
											<td>
												<asp:CheckBox ID="cbVideoEditAddNewStartupImage" runat="server" CausesValidation="True" Text="Add new startup image" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<div id="DivReplaceStartupImage" runat="server" style="display: none">
													<asp:Panel ID="Panel1" runat="server">
														<asp:RadioButtonList ID="rblVideoEditSelectNewStartupImage" runat="server" RepeatDirection="Horizontal">
															<asp:ListItem Selected="True" Value="standard" Text="Use standard image" resourcekey="ListItemResource105">
															</asp:ListItem>
															<asp:ListItem Value="upload" Text="Upload" resourcekey="ListItemResource106">
															</asp:ListItem>
														</asp:RadioButtonList>
														<br />
														<div id="DivVideoEditSelectStartupStandard" runat="server">
															<asp:DropDownList ID="ddlVideoEditStandardStartup" runat="server" OnLoad="ddlVEStandardImage_Load">
															</asp:DropDownList>
														</div>
														<br />
														<div id="DivVideoEditSelectStartupUpload" runat="server" style="display: none">
															<asp:FileUpload ID="fuVideoEditStartupImage" runat="server" />
														</div>
													</asp:Panel>
												</div>
											</td>
										</tr>
										<tr>
											<td>
												<asp:Label ID="lblFlashEditorHelper" runat="server" resourcekey="lblFlashEditorHelperResource1" Visible="False"></asp:Label>
											</td>
											<td>
												<asp:Button ID="btnVideoEditSave" runat="server" OnClick="Button2btnFlashEditorSave_Click" resourcekey="btnVideoEditSaveResource1" Style="width: 90px" Text="Save" ValidationGroup="vgVideoEditor" Width="117px" />
												&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnVideoEditCancel" runat="server" OnClick="btnFlashEditorCancel_Click" resourcekey="btnVideoEditCancelResource1" Text="Cancel" Width="90px" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
									</table>
								</div>
							</div>
						</asp:Panel>
						<asp:Panel ID="pnlAudioEdit" runat="server" Visible="False" Width="800px" border="0">
							<div class="audiouploadbox">
								<div class="uploadaudioboxbgrd">
									<table style="width: 650px; text-align: left;">
										<tr>
											<td colspan="2">&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="2">
												<asp:Label ID="lblAudioEditorTitle" runat="server" CssClass="subtitleregion" Text="Audio Edit" resourcekey="lblAudioEditorTitleResource1"></asp:Label>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<asp:Label ID="lblAudeioEditGalleryName" runat="server" Text="Gallery:" resourcekey="lblAudeioEditGalleryNameResource1">
												</asp:Label>
												&nbsp;<asp:Label ID="lblAEGalleryName" runat="server" resourcekey="lblAEGalleryNameResource1"></asp:Label>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblAudioEditFilename" ResourceKey="lblAudioEditFilename" runat="server" HelpText="Filename:" Text="Filename:" HelpKey="lblAudioEditFilename.HelpText" />
											</td>
											<td>
												<asp:Label ID="lblAEFilename2" runat="server" resourcekey="lblAEFilename2Resource1">
												</asp:Label>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblAudioEditTile" ResourceKey="lblAudioEditTile" runat="server" Text="Title:" HelpText="Edit title:" HelpKey="lblAudioEditTile.HelpText"></dnn:Label>
											</td>
											<td>
												<asp:TextBox ID="tbAEName" runat="server">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblAudioEditSubtitle" runat="server" Text="Subtitle:" HelpText="Edit subtitle:"></dnn:Label>
											</td>
											<td>
												<asp:TextBox ID="tbAudioEditSubtitle" runat="server">
												</asp:TextBox>
											</td>
										</tr>
										<tr>
											<td>
												<dnn:Label ID="lblAudioEditDescription" runat="server" Text="Description:" HelpText="Edit description:" HelpKey="lblAudioEditDescription.HelpText"></dnn:Label>
											</td>
											<td>
												<dnn:TextEditor ID="txtAEDescription" runat="server" Height="300" Width="500" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>
												<asp:Label ID="lblAudioEditThumbnail" runat="server" Text="Thumbnail:" resourcekey="lblAudioEditThumbnailResource1">
												</asp:Label>
											</td>
											<td>
												<asp:Image ID="imgAEThumbnail" runat="server" Height="150px" Width="150px" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr id="trEditAudeioReplace" runat="server">
											<td class="style236">
												<dnn:Label ID="lblAudioEditReplaceThumbnail" ResourceKey="lblAudioEditReplaceThumbnail" runat="server" HelpText="Upload new or select standard thumbnail:" Text="Replace thumbnail:" HelpKey="lblAudioEditReplaceThumbnail.HelpText" />
											</td>
											<td class="style237">
												<asp:CheckBox ID="cbAEAddNewThumbnail" runat="server" resourcekey="cbAEAddNewThumbnailResource1" />
											</td>
										</tr>
										<tr id="trEditAudeioReplace2" runat="server">
											<td>&nbsp;
											</td>
											<td>
												<div id="AENewThumbnail" style="display: none" runat="server">
													<asp:RadioButtonList ID="rblAESelectNewThumbnail" runat="server" RepeatDirection="Horizontal">
														<asp:ListItem Value="standard" Selected="True" Text="Use standard image" resourcekey="ListItemResource107">
														</asp:ListItem>
														<asp:ListItem Value="upload" Text="Upload" resourcekey="ListItemResource108">
														</asp:ListItem>
													</asp:RadioButtonList>
													<br />
													<div id="divAESelectStandardThumb" runat="server">
														<asp:DropDownList ID="ddlAESelectStandardThumb" runat="server" OnLoad="ddlAESelectStandardThumb_Load">
														</asp:DropDownList>
													</div>
													<br />
													<div id="divAEUploadThumb" runat="server" style="display: none">
														<asp:FileUpload ID="fuAEReplaceThumbnail" runat="server" />
													</div>
												</div>
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>
												<asp:Button ID="btnAudioEditSave" runat="server" OnClick="btnAESaveSettings_Click" Text="Save" Width="90px" resourcekey="btnAudioEditSaveResource1" />
												&nbsp;
												<asp:Button ID="btnAudioEditCancel" runat="server" OnClick="btnAECancel_Click" Text="Cancel" Width="90px" resourcekey="btnAudioEditCancelResource1" />
											</td>
										</tr>
										<tr>
											<td>&nbsp;
											</td>
											<td>&nbsp;
											</td>
										</tr>
									</table>
								</div>
							</div>
						</asp:Panel>
						<asp:Panel ID="pnlContentLocalization" runat="server" Visible="False" Width="800px">
							<div class="contentcategories">
								<table width="750px">
									<tr>
										<td align="center" colspan="2">&nbsp;
											<asp:Label ID="lblContentLocalization" runat="server" Font-Bold="True" resourcekey="lblContentLocalization" Text="Content localization" CssClass="contenttitle"></asp:Label>
										</td>
									</tr>
									<tr>
										<td align="left">&nbsp;
										</td>
										<td>&nbsp;
										</td>
									</tr>
									<tr>
										<td class="style12" align="left">
											<asp:Label ID="lblContentLocalizationMediaTitle" resourcekey="lblContentLocalizationMediaTitle" runat="server" Text="Media title:" Font-Bold="True"></asp:Label>
										</td>
										<td class="style13" align="left">
											<asp:Label ID="lblContentLocalizationMediaTitleOriginal" runat="server"></asp:Label>
										</td>
									</tr>
									<tr>
										<td align="left">
											<asp:Label ID="lblContentLocalizationMediaDescription" resourcekey="lblContentLocalizationMediaDescription" runat="server" Text="Media description:" Font-Bold="True"></asp:Label>
										</td>
										<td align="left">
											<asp:Label ID="lblContentLocalizationMediaDescriptionOriginal" runat="server"></asp:Label>
										</td>
									</tr>
									<tr>
										<td align="left">&nbsp;
										</td>
										<td align="left">&nbsp;
										</td>
									</tr>
									<tr>
										<td align="left">
											<asp:Label ID="lblPortalDefLanguage" runat="server" Text="Poratal default language:">
											</asp:Label>
										</td>
										<td align="left">
											<asp:Label ID="lblDefaultPortalLangugageImage" runat="server"></asp:Label>
										</td>
									</tr>
									<tr>
										<td align="left">
											<asp:Label ID="lblContentLocalizationLocalizedLanguages" runat="server" resourcekey="lblContentLocalizationLocalizedLanguages" Text="Localized languages:"></asp:Label>
										</td>
										<td align="left">
											<asp:Label ID="lblContentLocalizationLocalizedLanguagesList" runat="server"></asp:Label>
										</td>
									</tr>
									<tr>
										<td align="left">&nbsp;
										</td>
										<td align="left">&nbsp;
										</td>
									</tr>
									<tr>
										<td align="left">
											<dnn:Label ID="lblContentLocalizationSelectLanguage" runat="server" HelpKey="lblContentLocalizationSelectLanguage.HelpText" HelpText="Select the languange you want to edit. There is no need to edit dafault language." Text="Select language:" />
										</td>
										<td align="left">
											<asp:DropDownList ID="ddlContentLocalizationSelectLanguage" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlImageEditorContentLocalizationSelectLanguage_SelectedIndexChanged">
												<asp:ListItem Value="0">Select language</asp:ListItem>
											</asp:DropDownList>
										</td>
									</tr>
									<tr>
										<td align="left">
											<dnn:Label ID="lblContentLocalizationTitle" ResourceKey="lblContentLocalizationTitle" runat="server" Text="Title:" HelpKey="lblContentLocalizationTitle.HelpText" HelpText="Title:"></dnn:Label>
										</td>
										<td align="left">
											<asp:TextBox ID="tbContentLocalizationTitle" runat="server" Width="250px">
											</asp:TextBox>
											&nbsp;
											<asp:Button ID="btnContentLocalizationCopyDefault" runat="server" OnClick="btnContentLocalizationCopyDefault_Click" resourcekey="btnContentLocalizationCopyDefault" Text="Copy default values" />
										</td>
									</tr>
									<tr>
										<td align="left">
											<dnn:Label ID="lblContentLocalizationSubtitle" runat="server" Text="Subtitle:" HelpText="Subtitle:"></dnn:Label>
										</td>
										<td align="left">
											<asp:TextBox ID="tbContentLocalizationSubTitle" runat="server" Width="250px">
											</asp:TextBox>
										</td>
									</tr>
									<tr>
										<td align="left">
											<dnn:Label ID="lblContentLocalizationDescription" ResourceKey="lblContentLocalizationDescription" runat="server" Text="Description:" HelpKey="lblContentLocalizationDescription.HelpText" HelpText="Description:"></dnn:Label>
										</td>
										<td align="left">
											<dnn:TextEditor ID="txtContentLocalizationDescription" runat="server" Height="300" Width="550" />
										</td>
									</tr>
									<tr>
										<td align="left">&nbsp;
										</td>
										<td align="left">&nbsp;
										</td>
									</tr>
									<tr>
										<td align="left">
											<dnn:Label ID="lblContentLocalizationMediaUrl" runat="server" HelpKey="lblContentLocalizationMediaUrl.HelpText" HelpText="Media Url:" ResourceKey="lblContentLocalizationMediaUrl" Text="Media Url:" />
										</td>
										<td align="left">
											<asp:TextBox ID="tbContentLocalizationMediaUrl" runat="server" Width="250px">
											</asp:TextBox>
										</td>
									</tr>
									<tr>
										<td align="left">&nbsp;
										</td>
										<td>&nbsp;
										</td>
									</tr>
									<tr>
										<td align="left">&nbsp;
										</td>
										<td>
											<asp:Button ID="btnContentLocalizationUpdate" runat="server" OnClick="btnImageEditorContentLocalizationUpdate_Click" resourcekey="btnContentLocalizationUpdate" Text="Update" />
											&nbsp;
											<asp:Button ID="btnContentLocalizationClose" runat="server" OnClick="btnContentLocalizationClose_Click" resourcekey="btnContentLocalizationClose" Text="Close" />
										</td>
									</tr>
								</table>
							</div>
						</asp:Panel>
					</div>
				</td>
			</tr>
		</table>
	</div>
</div>
<asp:HiddenField ID="hfEditorMediaID" runat="server" />
<asp:HiddenField ID="hfCloseSource" runat="server" />
<asp:Panel ID="pnlMainInfo" runat="server" Visible="False" />
