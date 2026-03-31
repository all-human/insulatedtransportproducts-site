/*
 * Media Center Script for Ultra Video Gallery 5
 * By Pengcheng Rong (rongers@hotmail.com, service@bizmodules.net)
 * Copyright (c) 2010~2012 Pengcheng Rong
 * All rights reserved, donot use this script library out of Ultra Video Gallery.
*/
(function(jQuery){
 jQuery.fn.mediacenter = function(options) {
    
  var defaults = {
		stopwhenclick:true,
		autoscroll:5,
		//xintotal:'[X] videos in total',
		xofy:'Playing [X] of [Y]'
  };
  
	var options = jQuery.extend(defaults, options);
    
	return this.each(function() {

		var _this = this;
		var currentIndex = 0;
		var scrollHandler;
		//var socialStyle;

		var mc = jQuery(this);
		var instanceName = 'jQuery("#'+mc.attr("ID")+'")[0]';
		var scroll = mc.find(".scroll");
		var scrollable = mc.find(".scrollable");
		var colleft = mc.find(".colleft");
		var colright = mc.find(".colright");
		var toleft = mc.find(".toleft");
		var toright = mc.find(".toright");
		var mcitems = scrollable.find(".mcitem");
		var mcframe = mc.find("#_mcframe");

		var xofy = mc.find(".colright .xofy");
		var title = mc.find(".colright .title");
		var desc = mc.find(".colright .desc");
		var social = mc.find(".social");

		/*if (social.hasClass("addthis"))
		{
			socialStyle = "addthis"
		}
		else if (social.parent().hasClass("colright") || social.parent().parent().hasClass("colright"))
		{
			socialStyle = "narrow";
		}
		else
		{
			socialStyle = "wide";
		}*/

		if(window.location.hash)
		{
			var videoid = window.location.hash.substring(1);
			if (videoid) 
			{
				var index = mcitems.index(jQuery(".mcitem[rel="+videoid+"]"));
				if (index >= 0)
				{
					options.defaultVideo = index;
				}
			}
		}
		else if (options.launchDefault != undefined)
		{
			//videoid to index
			var index = mcitems.index(jQuery(".mcitem[rel="+options.launchDefault+"]"));
			if (index >= 0)
			{
				options.defaultVideo = index;
			}
		}


		var selectedCategory = jQuery(".categories a[disabled='disabled']");
		if (!selectedCategory.hasClass("aspNetDisabled"))
		{
			selectedCategory.addClass("aspNetDisabled");
		};

		toleft.click(function(){
			doScroll(-1);
			return false;
		});

		toright.click(function(){
			doScroll(1);
			return false;
		});

		scrollable.css("width", getScrollableWidth());
		ensureArrows();

		mcframe.load(function(){
			if (mcframe.attr("src") == options.defaultVideo)
			{
				//return;
			}
			//here we resize it
			resizeiframe();
			mcframe.contents().find('.shareto, .flag, .close').click(function(){
				resizeiframe();
			});
		});

		//var xintotal = options.xintotal;
		//xintotal=xintotal.replace("[X]", mcitems.length);
		//xofy.html(xintotal);

		this.stopScroll = function()
		{
			window.clearInterval(scrollHandler);
		}

		mcitems.click(function(){
			if (options.stopwhenclick && options.autoscroll > 0)
			{
				_this.stopScroll();
			}

			mcitems.removeClass("current");
			jQuery(this).addClass("current");
			loadVideoInfo(jQuery(this));
		});

		if (options.defaultVideo != undefined)
		{
			if (options.defaultVideo >= 0)
			{
				var defaultItem = jQuery(mcitems[options.defaultVideo]);
				defaultItem.trigger("click");
				mcframe.attr("src",defaultItem.attr("href"));

				scrollToItem(options.defaultVideo);
			}
			else
			{
				mcframe.attr("src",options.defaultVideo);
			}
		}

		if (options.bgcolor)
		{
			mc.css("background-color", "#" + options.bgcolor);
		}

		if (options.autoscroll > 0)
		{
			if (scrollable.width() <= scroll.width())
			{
				//alert("no need to scroll");
			}
			else
			{
				scrollHandler = window.setInterval(instanceName + ".onInterval()", options.autoscroll * 1000);
			}
		}

		//reinit addthis after ajax callback
		var baseurl = mc.find(".baseurl").html();
		addthis.toolbox(".addthis_toolbox");
		addthis.ost = 0;
		addthis.update('share', 'url', baseurl); // new url
		addthis.ready();


		function resizeiframe()
		{
			var iframew;
			var iframe = mcframe.contents().find("#VideoPlayer_lblEmbedCode iframe");
			var uvgplayer = mcframe.contents().find("#UVGContainer").children();
			if (iframe.length > 0)
			{
				iframew = iframe.width();;
			}
			else if (uvgplayer.length > 0)
			{
				iframew = uvgplayer.width();
			}
			else
			{
				iframew = mcframe.contents().width();
			}

			var iframeh = mcframe.contents().height();
			colleft.css("height", iframeh);
			colleft.css("width", iframew);
			colright.css("height", iframeh);

			if (options.bgcolor)
			{
				mcframe.contents().find("body").css("background-color", "#" + options.bgcolor);
			}
		}

		function doScroll(direction)
		{
			//find the first item that is not fully visible
			var newIndex = -1;
			if (direction > 0)
			{
				var base = scrollable.position().left;
				for (var i=currentIndex;i<mcitems.length-1 ;i++ )
				{
					var item = jQuery(mcitems[i]);
					if(base+item.position().left+item.width()  > scroll.width())
					{
						//that's it
						newIndex = i;
						break;
					}
				}
			}
			else
			{
				//toleft
				var base = jQuery(mcitems[currentIndex]).position().left;
				for (var i=currentIndex-1;i>=0 ;i-- )
				{
					var item = jQuery(mcitems[i]);
					if(base - item.position().left >= scroll.width())
					{
						//that's it
						newIndex = i;
						break;
					}
				}
				if (newIndex < 0)
				{
					newIndex = 0;
				}
			}

			if (newIndex < 0)
			{
				return;
			}

			if (currentIndex != newIndex)
			{
				scrollToItem(newIndex);
			}
		}

		function scrollToItem(newIndex)
		{
			var minumal = scroll.width() - scrollable.width();
			var scrollto = jQuery(mcitems[newIndex]).position().left * -1;
			currentIndex = newIndex;
			if (scrollto < minumal)
			{
				scrollto = minumal;
				if (currentIndex < mcitems.length - 2)
				{
					currentIndex = mcitems.length - 2;
				}
			}

			if (scrollto == scrollable.position().left)
			{
				return;
			}
			if (scrollto > 0)
			{
				scrollto = 0;
			}
			scrollable.animate({"left":scrollto}, {complete:function(){ensureArrows();}},"slow");
		}

		function getScrollableWidth()
		{
			var lastitem = jQuery(mcitems[mcitems.length - 1]);
			if (lastitem.length < 1)
			{
				//no last item
				return 0;
			}

			var padding = parseInt(lastitem.css("padding-left")) + parseInt(lastitem.css("padding-right"));
			var lastitemx = lastitem.position().left + lastitem.width() + padding;
			return lastitemx;
		}

		function ensureArrows()
		{
			if (currentIndex > 0)
			{
				toleft.show();
			}
			else
			{
				toleft.hide();
			}

			if (scrollable.width() + scrollable.position().left < scroll.width())
			{
				toright.hide();
			}
			else
			{
				toright.show();
			}
		}

  		this.onInterval = function()
		{
			var newIndex = currentIndex + 1;
			if (newIndex > mcitems.length - 1)
			{
				newIndex = 0;
			}
			scrollToItem(newIndex);
		}

		function loadVideoInfo(sender)
		{
			var strtitle = sender.find(".title").html();
			var strdesc = sender.find(".desc").html();
			var index = mcitems.index(sender);

			var strxofy = options.xofy;
			strxofy=strxofy.replace("[X]", (index+1));
			strxofy=strxofy.replace("[Y]", mcitems.length);
			xofy.html(strxofy);

			title.html(strtitle);

			if (strdesc != "")
			{
				desc.html(strdesc);
				desc.show();
			}
			else
			{
				desc.hide();
			}

			var videoid = sender.attr("rel");
			if(jQuery(".comments").length > 0)
			{
				loadComments(videoid, 0);
			}

			var href;
			var baseurl = mc.find(".baseurl").html();
			if (baseurl)
			{
				href = baseurl;
			}
			else
			{
				href = window.location.href;
				if (window.location.hash) href = href.replace(location.hash,"");
			}
			var hash;
			if (href.substring(href.length-1)=="#")
			{
				hash = videoid;
			}
			else
			{
				hash = "#" + videoid;
			}

			showSocialLinks(strtitle, href + hash);
		}

		function showSocialLinks(title, url)
		{
			if (addthis)
			{
				addthis.ost = 0;
				addthis.update('share', 'title', title); // new title
				addthis.update('share', 'url', url); // new url
				addthis.ready();
			}

			return;
		}
	});
};
})(jQuery);

