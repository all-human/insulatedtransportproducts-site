var singleselection = true;

jQuery(document).ready(function () {
    if (typeof (hs) != "undefined") {
        // 830126e595ae5776b3745d836be3b5ba
        hs.showCredits = false;
        hs.align = 'center';
        hs.transitions = ['expand', 'crossfade'];
        hs.outlineType = 'rounded-white';
        hs.wrapperClassName = 'draggable-header';
        hs.fadeInOut = true;
        //hs.dimmingOpacity = 0.75;
    }

    if (typeof (Sys) != "undefined")
    {
        var req = Sys.WebForms.PageRequestManager.getInstance();
        if (req)
            req.add_endRequest(initList);
    }

    singleselection = jQuery(".selectiontip").length < 1;

    initList();



	//fix iphone hover issue

	/*$("a.listitem").bind('touchend', function(){
        var el = $(this);
		var link = el.attr('href');
		window.location = link;
    });*/
});


function initList()
{
	jQuery(".dates input:checkbox, .categories input:checkbox, .libraries input:checkbox").click(function(e){
		//check control key status
		if(e.metaKey || e.ctrlKey || singleselection)
		{
			jQuery(this).parent().parent().parent().parent().find("input:checkbox").not(this).attr("checked", false);
			this.checked = true;
		}
	});
}