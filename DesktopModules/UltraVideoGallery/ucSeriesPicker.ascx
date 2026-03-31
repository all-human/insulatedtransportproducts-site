<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ucSeriesPicker.ascx.vb" Inherits="BizModules.UltraVideoGallery.ucSeriesPicker" %>

<div class="verticalMiddle">
    <asp:TextBox ID="txtSeriesTitle" runat="server" Width="150px" CssClass="NormalTextBox seriestitle" autocomplete="off"></asp:TextBox>
    <asp:Image ID="imgDetach" runat="server" ImageUrl="~/DesktopModules/UltraVideoGallery/Images/Unlink.gif" ToolTip="Detach" CssClass="unlink" style="cursor:pointer;" />
</div>

<script type="text/javascript">
    jQuery(document).ready(function () {
	    if (typeof(Sys) != "undefined")
        {
            var req=Sys.WebForms.PageRequestManager.getInstance();
            if (req)
	            req.add_endRequest(ac<%=Me.ClientId %>);
        }

        ac<%=Me.ClientId %>();

        function ac<%=Me.ClientId %>()
        {
            var allowadd = <%=AllowAdd.ToString().ToLower() %>;
            jQuery("#<%=txtSeriesTitle.ClientID %>").autocomplete({
                source: completeSeries
                , focus: function (event, ui) { return false; }
                , select: function (event, ui) { if (ui.item.value * 1 <= 0) { dnn.setVar("<%=txtSeriesTitle.ClientID %>_value", -1); if (allowadd) jQuery(this).addClass("createnew"); return false; } jQuery(this).removeClass("createnew"); dnn.setVar("<%=txtSeriesTitle.ClientID %>_value", ui.item.value); ui.item.value = ui.item.label; }
            });
        }

        jQuery("#<%=imgDetach.ClientID %>").click(function () { dnn.setVar("<%=txtSeriesTitle.ClientID %>_value", ""); jQuery("#<%=txtSeriesTitle.ClientID %>").val(""); });
    });
</script>