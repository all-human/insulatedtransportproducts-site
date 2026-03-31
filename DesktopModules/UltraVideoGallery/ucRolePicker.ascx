<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ucRolePicker.ascx.vb" Inherits="BizModules.UltraVideoGallery.ucRolePicker" %>
<asp:datalist id="rptRoles" runat="server" RepeatColumns="2">
	<ItemTemplate>
			<asp:CheckBox ID="chkPermission" Runat="server" Text='<%# Container.DataItem %>'>
			</asp:CheckBox>
	</ItemTemplate>
</asp:datalist>
