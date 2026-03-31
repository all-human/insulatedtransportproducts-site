<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ucCategoryPicker.ascx.vb" Inherits="BizModules.UltraVideoGallery.ucCategoryPicker" %>
<asp:DropDownList ID="cboCategories" runat="server" DataTextField="Category" DataValueField="ItemId" CssClass="Normal" style="min-width:150px;">
</asp:DropDownList>

<asp:Panel ID="pnlSelection" runat="server">
<ul id="selectedCategories" style="margin:10px;min-height:30px;">
</ul>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery("#<%=cboCategories.ClientID %>").categorypicker({<%=Params %>});
    });
</script>
</asp:Panel>