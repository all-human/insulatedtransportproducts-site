<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ucTagPicker.ascx.vb" Inherits="BizModules.UltraVideoGallery.ucTagPicker" %>

<%=TagInput %>
<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(".<%=Me.ClientID %>tag").tagedit({
            <%=LimitAdd %>
            autocompleteOptions: { source: completeTags }
        });
    });
</script>