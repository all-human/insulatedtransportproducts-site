
jQuery(document).ready(function () {
	if (typeof(Sys) != "undefined")
	{
		var req=Sys.WebForms.PageRequestManager.getInstance();
			if (req)
				req.add_endRequest(initlibrary);
	}

	initlibrary();

});


function initlibrary()
{
	jQuery(".library").hover(function(){
		jQuery(this).addClass("hover");
	},function(){
		jQuery(this).removeClass("hover");
	});

	var btnadd = jQuery(".btnadd");
	var addnew = jQuery(".addnew");

	btnadd.click(function(){
		if (addnew.is(":visible"))
		{
			addnew.hide();
		}
		else
		{
			addnew.show();
		}
	});


	jQuery(".addnew .close").click(function(){
		addnew.hide();
	});
}