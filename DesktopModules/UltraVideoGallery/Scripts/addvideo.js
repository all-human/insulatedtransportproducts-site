    jQuery(document).ready(function () {

        var dftoption = dnn.getVar("uploadoption");
		if(jQuery(".otherway[rel='" + dftoption + "']").length == 0)
		{
			//default option is not found
			dftoption = jQuery(".otherway:first").attr("rel");
			dnn.setVar("uploadoption", dftoption);
		}
        showUploadSection(dftoption);

        jQuery(".otherway").click(function () {
            showUploadSection(this.rel);

			dnn.setVar("uploadoption", this.rel);

            return false;
        });

        function showUploadSection(section) {
            var optiontoshow = jQuery(".otherway:hidden");
            jQuery(".otherway[rel='" + section + "']").fadeOut("slow", function () { optiontoshow.fadeIn(); });

            var sectiontoshow = jQuery(".uploadsection." + section);
            var visiblesections = jQuery(".uploadsection:visible");
            if (visiblesections.length == 0) {
                sectiontoshow.fadeIn();
            }
            else {
                visiblesections.fadeOut("slow", function () { sectiontoshow.fadeIn(); });
            }

            var btnUpload = jQuery(".btnupload");
            var btnSave = jQuery(".btnsave");
            if (section == "way_upload") {
                btnUpload.show();
                btnSave.hide();
            }
            else if (section == "way_record") {
                btnUpload.hide();
                btnSave.hide();
            }
            else
            {
                btnUpload.hide();
                btnSave.show();

				var jrad = jQuery(".dnnupload .RadUpload");
				if (jrad.length == 0) return;
				var radupload = getRadUpload(jrad.attr("id"));
				if (!radupload)
				{
					return;
				}
				var fileInputs = radupload.getFileInputs();
				for (var i=0; i<fileInputs.length; i++)
				{
					radupload.clearFileInputAt(i);
				}
            }
        }

		jQuery(".way_link .videourl").bind("keyup change", function(){
			if (this.value.indexOf("youtube.") > 0 || this.value.indexOf("youtu.be") > 0)
			{
				jQuery(".way_link .screenshot").hide();
			}
			else
			{
				jQuery(".way_link .screenshot").show();
			}
		});
	});
