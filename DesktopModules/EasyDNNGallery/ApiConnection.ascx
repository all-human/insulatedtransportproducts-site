<%@ control language="C#" autoeventwireup="true" inherits="EasyDNN.Modules.EasyDNNGallery.ApiConnection, App_Web_apiconnection.ascx.af09375b" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<link href="<%=ModulePath%>EDGadmin.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	.style1 {
		width: 100%;
	}

	.style2 {
	}

	.style3 {
		width: 146px;
	}

	.style4 {
		width: 191px;
	}
</style>


<asp:Panel ID="pnlMain" runat="server">
	<div id="EDGadmin">
		<div class="module_action_title_box">
			<ul class="module_navigation_menu">
				<li class="power_off">
					<asp:LinkButton ID="lbPowerOff" runat="server" ToolTip="Close" OnClick="lbPowerOff_Click" resourcekey="lbPowerOffResource1"><img src="<%=ModulePath %>images/dashboard/icons/power_off.png" alt="" /></asp:LinkButton></li>
			</ul>
			<h1>
				<asp:Label ID="lblApiConectionTitle" runat="server" Text="API Connection" Font-Bold="True"></asp:Label></h1>
		</div>
		<div class="main_content">
			<table class="style1">
				<tr>
					<td class="style4">&nbsp;
					</td>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="style4">
						<dnn:Label ID="lblGoogleMapsApiKey" runat="server" HelpKey="lblContentLocalizationSelectLanguage.HelpText" HelpText="Enter Google Maps API Key:" Text="Enter Google Maps API Key:" ResourceKey="lblContentLocalizationSelectLanguage" />
					</td>
					<td>
						<asp:TextBox ID="tbGoogleMapsAPIkey" runat="server" Width="300px"></asp:TextBox>
						&nbsp;
					</td>
				</tr>
				<tr>
					<td class="style4">&nbsp;
					</td>
					<td>&nbsp;
					</td>
				</tr>
				<tr>
					<td class="style4">&nbsp;
					</td>
					<td>
						<asp:Button ID="btnSaveGoogleMapsApi" runat="server" Text="Save Google Maps API key" OnClick="btnSaveGoogleMapsApi_Click" />
						&nbsp;
					</td>
				</tr>
			</table>
		</div>
	</div>
</asp:Panel>
