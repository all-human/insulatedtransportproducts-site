var lblSorting;
var updateHandler;
var searchinput;
var previoussearch;
var initialsearch;
var clearsearch;

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

    /*if (typeof (Sys) != "undefined")
    {
        var req = Sys.WebForms.PageRequestManager.getInstance();
        if (req)
            req.add_endRequest(initList);
    }

    singleselection = jQuery(".selectiontip").length < 1;*/

    initSimpleList();

});


function initSimpleList()
{
	lblSorting = jQuery(".sorting>span");
	clearsearch = jQuery(".clearsearch");

	searchinput = jQuery(".actionpanel input");
	initialsearch = searchinput.val();
	searchinput.focus(function(){
		if (this.value == initialsearch)
		{
			this.value = "";
			jQuery(this).removeClass("script")
		}
	});
	searchinput.blur(function(){
		if (this.value == "")
		{
			this.value = initialsearch;
			jQuery(this).addClass("script")
		}
	});

	searchinput.bind("change keyup",function(){
		if (this.value == initialsearch)
			return;

		updateSimpleList();

		if (this.value.length > 0)
		{
			clearsearch.show();
		}
		else
		{
			clearsearch.hide();
		}

	});

	jQuery(".clearsearch").click(function(){
		if (searchinput.val() == "" || searchinput.val() == initialsearch)
		{
			return;
		}

		searchinput.val(initialsearch);
		searchinput.addClass("script")
		clearsearch.hide();
		doUpdate(false);
	});

	jQuery(".options a").click(function(event){
		event.preventDefault();

		var sender = jQuery(this);
		lblSorting.html(sender.html());
		var senderid = sender.attr("id");
		var sortingclass = "";
		if (senderid.indexOf("MostRecent") > 0)
		{
			sortingclass = "RecentVideos";
		}
		else if (senderid.indexOf("MostViewed") > 0)
		{
			sortingclass = "MostViewed";
		}
		else if (senderid.indexOf("MostPopular") > 0)
		{
			sortingclass = "MostPopular";
		}
		else if (senderid.indexOf("MostDiscussed") > 0)
		{
			sortingclass = "MostDiscussed";
		}
		else if (senderid.indexOf("TopRated") > 0)
		{
			sortingclass = "TopRated";
		}
		else if (senderid.indexOf("Alphabetical") > 0)
		{
			sortingclass = "AlphabeticalOrder";
		}
		lblSorting.attr("className", sortingclass);

		doUpdate(false);
		return false;
	});
}

function updateSimpleList()
{
	if (updateHandler)
	{
		window.clearTimeout(updateHandler);
	}

	updateHandler = window.setTimeout("doUpdate(true)", 500);
}

function doUpdate(checksearchkey)
{
	var callbackId = dnn.getVar("meClientId");
	if (!callbackId)
	{
		return;
	}
	if (checksearchkey && searchinput.val() == previoussearch)
	{
		return;
	}
	var searchkey = searchinput.val();
	if (searchkey == initialsearch)
	{
		searchkey = "";
	}

	dnn.xmlhttp.doCallBack(callbackId,lblSorting.attr("className")+"|"+searchkey,searchVideos_Callback,this,null,null,false,null,0);
	previoussearch = searchkey;
}

function searchVideos_Callback(result, ctx)
{
	var simplelist = jQuery(".simplelist");
	simplelist.html(result);
}