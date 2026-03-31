<%@ control language="C#" inherits="EasyDNN.Modules.EasyDNNGallery.GeneralSettings, App_Web_generalsettings.ascx.af09375b" autoeventwireup="true" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<link href="<%=ModulePath%>EDGadmin.css" rel="stylesheet" type="text/css" />

<style type="text/css">
	.style1 {
		width: 100%;
	}

	.style2 {
		width: 129px;
	}

	.style4 {
		width: 77px;
	}

	.style6 {
		width: 129px;
		height: 23px;
	}

	.style7 {
		height: 23px;
	}
</style>

<div id="EDGadmin">
	<div class="module_action_title_box">
		<ul class="module_navigation_menu">
			<li class="power_off">
				<asp:LinkButton ID="lbPowerOff" runat="server" ToolTip="Close" OnClick="lbPowerOff_Click" resourcekey="lbPowerOffResource1"><img src="<%=ModulePath %>images/dashboard/icons/power_off.png" alt="" /></asp:LinkButton></li>
		</ul>
		<h1>
			<asp:Label ID="lblGenSettingsTitle" runat="server" Text="General Settings"
				resourcekey="lblGenSettingsTitleResource1"></asp:Label></h1>
	</div>
	<div class="main_content">

		<table class="style1">
			<tr>
				<td class="style2">
					<asp:Label ID="lblIncludeJquery" runat="server" Text="Include jQuery:"
						resourcekey="lblIncludeJqueryResource1"></asp:Label>
				</td>
				<td>
					<asp:CheckBox ID="cbIncludeJquery" runat="server"
						resourcekey="cbIncludeJqueryResource1" />
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>
					<asp:Label ID="lblJqueryWarning" runat="server"
						Text="Please do NOT include jQuery if you are using DotNetNuke version 6 and above."
						resourcekey="lblJqueryWarningResource1"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="style2">
					<asp:Label ID="lbljQueryNoConflict" runat="server"
						Text="Run jQuery in no conflict mode:"
						resourcekey="lbljQueryNoConflictResource1"></asp:Label>
				</td>
				<td>
					<asp:CheckBox ID="cbjQueryNoConflictMode" runat="server"
						resourcekey="cbjQueryNoConflictModeResource1" />
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>
					<asp:Label ID="lblJqueryWarning0" runat="server"
						Text="Please do NOT run jQuery in conflict mode if you are using DotNetNuke version 6 and above."
						resourcekey="lblJqueryWarning0Resource1"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>
					<asp:Label ID="lblControlsAccess" runat="server"
						Text="Manage content and Gallery settings control access"
						resourcekey="lblControlsAccessResource1"></asp:Label>
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>
					<asp:GridView ID="gvControlPremissions" runat="server"
						AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333"
						GridLines="None">
						<RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
						<Columns>
							<asp:TemplateField HeaderText="Role" SortExpression="Role">
								<EditItemTemplate>
									<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
								</EditItemTemplate>
								<ItemTemplate>
									<asp:Label ID="lblRoleName" runat="server" Text='<%# Bind("Role") %>'
										resourcekey="lblRoleNameResource1"></asp:Label>
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Managecontent">
								<EditItemTemplate>
									<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ManageContent") %>'></asp:TextBox>
								</EditItemTemplate>
								<ItemTemplate>
									<asp:CheckBox ID="cbManageContent" runat="server"
										Checked='<%# Bind("ManageContent") %>'
										resourcekey="cbManageContentResource1" />
								</ItemTemplate>
							</asp:TemplateField>
							<asp:TemplateField HeaderText="Gallerysettings">
								<EditItemTemplate>
									<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("GallerySettings") %>'></asp:TextBox>
								</EditItemTemplate>
								<ItemTemplate>
									<asp:CheckBox ID="cbGallerySettings" runat="server"
										Checked='<%# Bind("GallerySettings") %>' />
								</ItemTemplate>
							</asp:TemplateField>
						</Columns>
						<FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
						<PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
						<SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
						<HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
						<EditRowStyle BackColor="#999999" />
						<AlternatingRowStyle BackColor="White" ForeColor="#284775" />
					</asp:GridView>
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="style2">
					<asp:Label ID="lblUserCategoriesGalleries" runat="server"
						Text="User categories and galleries editing permissions:"
						resourcekey="lblUserCategoriesGalleriesResource1"></asp:Label>
				</td>
				<td>
					<asp:RadioButtonList ID="rblUserCatGalSelection" runat="server">
						<asp:ListItem Selected="True" Value="all" resourcekey="ListItemResource1">User can edit all categories and galleries</asp:ListItem>
						<asp:ListItem Value="gals" resourcekey="ListItemResource2">User can edit their own galleries</asp:ListItem>
						<asp:ListItem Value="cats" resourcekey="ListItemResource3">User can edit their own categories and galleries</asp:ListItem>
					</asp:RadioButtonList>
				</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="style2">&nbsp;</td>
				<td>
					<asp:Button ID="btnSaveSettings" runat="server" OnClick="btnSaveSettings_Click"
						Text="Save settings" resourcekey="btnSaveSettingsResource1" />
					&nbsp;<asp:Button ID="btnSaveClose" runat="server" OnClick="btnSaveClose_Click"
						Text="Save &amp; Close" resourcekey="btnSaveCloseResource1" />&nbsp;
					<asp:Button ID="btnClose" runat="server"
						Text="Close" OnClick="btnClose_Click" />
				</td>
			</tr>
		</table>
	</div>
</div>
<asp:ObjectDataSource ID="odPortalSharing" runat="server"
	DeleteMethod="DeletePortalSharing" SelectMethod="GetPortalSharing"
	TypeName="EasyDNN.Modules.EasyDNNGallery.DataAcess">
	<DeleteParameters>
		<asp:Parameter Name="PortalIDFrom" Type="Int32" />
	</DeleteParameters>
</asp:ObjectDataSource>

