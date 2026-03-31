
jQuery(document).ready(function () {

	jQuery(".expandable").hover(function(){
		var jthis = jQuery(this);
		if (!jthis.attr("data-orgheight"))
		{
			jthis.attr("data-orgheight", jthis.height())
		}
		jthis.stop().animate({"height": 300}, "slow");
	}, function(){
		var jthis = jQuery(this);
		var orgheight = jthis.attr("data-orgheight") * 1;
		jthis.stop().animate({"height": orgheight}, "slow");
	});

});
