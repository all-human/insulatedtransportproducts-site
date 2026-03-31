    jQuery(document).ready(function () {

		jQuery(".subtitle input:button").click(function(){
			jQuery(".subtitle input:button, .subtitle span:first").hide();
			jQuery(".subtitle input:file").show();
		});
	});
