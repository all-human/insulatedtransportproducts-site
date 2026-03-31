/*
*jQuery browser plugin detection 1.0.2
* http://plugins.jquery.com/project/jqplugin
* Checks for plugins / mimetypes supported in the browser extending the jQuery.browser object
* Copyright (c) 2008 Leonardo Rossetti motw.leo@gmail.com
* MIT License: http://www.opensource.org/licenses/mit-license.php
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
*/

(function($){if(typeof $.browser==="undefined"||!$.browser){var browser={};$.extend(browser);}var pluginList={flash:{activex:"ShockwaveFlash.ShockwaveFlash",plugin:/flash/gim},sl:{activex:["AgControl.AgControl"],plugin:/silverlight/gim},pdf:{activex:"PDF.PdfCtrl",plugin:/adobe\s?acrobat/gim},qtime:{activex:"QuickTime.QuickTime",plugin:/quicktime/gim},wmp:{activex:"WMPlayer.OCX",plugin:/(windows\smedia)|(Microsoft)/gim},shk:{activex:"SWCtl.SWCtl",plugin:/shockwave/gim},rp:{activex:"RealPlayer",plugin:/realplayer/gim},java:{activex:navigator.javaEnabled(),plugin:/java/gim}};var isSupported=function(p){if(window.ActiveXObject){try{new ActiveXObject(pluginList[p].activex);$.browser[p]=true;}catch(e){$.browser[p]=false;}}else{$.each(navigator.plugins,function(){if(this.name.match(pluginList[p].plugin)){$.browser[p]=true;return false;}else{$.browser[p]=false;}});}};$.each(pluginList,function(i,n){isSupported(i);});})(jQuery);













/*! waitForImages jQuery Plugin - v1.4.2 - 2013-01-19
* https://github.com/alexanderdickson/waitForImages
* Copyright (c) 2013 Alex Dickson; Licensed MIT */
(function(e){var t="waitForImages";e.waitForImages={hasImageProperties:["backgroundImage","listStyleImage","borderImage","borderCornerImage"]},e.expr[":"].uncached=function(t){if(!e(t).is('img[src!=""]'))return!1;var n=new Image;return n.src=t.src,!n.complete},e.fn.waitForImages=function(n,r,i){var s=0,o=0;e.isPlainObject(arguments[0])&&(i=arguments[0].waitForAll,r=arguments[0].each,n=arguments[0].finished),n=n||e.noop,r=r||e.noop,i=!!i;if(!e.isFunction(n)||!e.isFunction(r))throw new TypeError("An invalid callback was supplied.");return this.each(function(){var u=e(this),a=[],f=e.waitForImages.hasImageProperties||[],l=/url\(\s*(['"]?)(.*?)\1\s*\)/g;i?u.find("*").andSelf().each(function(){var t=e(this);t.is("img:uncached")&&a.push({src:t.attr("src"),element:t[0]}),e.each(f,function(e,n){var r=t.css(n),i;if(!r)return!0;while(i=l.exec(r))a.push({src:i[2],element:t[0]})})}):u.find("img:uncached").each(function(){a.push({src:this.src,element:this})}),s=a.length,o=0,s===0&&n.call(u[0]),e.each(a,function(i,a){var f=new Image;e(f).bind("load."+t+" error."+t,function(e){o++,r.call(a.element,o,s,e.type=="load");if(o==s)return n.call(u[0]),!1}),f.src=a.src})})}})(jQuery);












/*
 * jQuery.appear
 * http://code.google.com/p/jquery-appear/
 *
 * Copyright (c) 2009 Michael Hixson
 * Licensed under the MIT license (http://www.opensource.org/licenses/mit-license.php)
*/
(function($){$.fn.appear=function(f,o){var s=$.extend({one:true},o);return this.each(function(){var t=$(this);t.appeared=false;if(!f){t.trigger('appear',s.data);return;}var w=$(window);var c=function(){if(!t.is(':visible')){t.appeared=false;return;}var a=w.scrollLeft();var b=w.scrollTop();var o=t.offset();var x=o.left;var y=o.top;if(y+t.height()>=b&&y<=b+w.height()&&x+t.width()>=a&&x<=a+w.width()){if(!t.appeared)t.trigger('appear',s.data);}else{t.appeared=false;}};var m=function(){t.appeared=true;if(s.one){w.unbind('scroll',c);var i=$.inArray(c,$.fn.appear.checks);if(i>=0)$.fn.appear.checks.splice(i,1);}f.apply(this,arguments);};if(s.one)t.one('appear',s.data,m);else t.bind('appear',s.data,m);w.scroll(c);$.fn.appear.checks.push(c);(c)();});};$.extend($.fn.appear,{checks:[],timeout:null,checkAll:function(){var l=$.fn.appear.checks.length;if(l>0)while(l--)($.fn.appear.checks[l])();},run:function(){if($.fn.appear.timeout)clearTimeout($.fn.appear.timeout);$.fn.appear.timeout=setTimeout($.fn.appear.checkAll,20);}});$.each(['append','prepend','after','before','attr','removeAttr','addClass','removeClass','toggleClass','remove','css','show','hide'],function(i,n){var u=$.fn[n];if(u){$.fn[n]=function(){var r=u.apply(this,arguments);$.fn.appear.run();return r;}}});})(jQuery);
	













/*global jQuery */
/*jshint browser:true */
/*!
* FitVids 1.1
*
* Copyright 2013, Chris Coyier - http://css-tricks.com + Dave Rupert - http://daverupert.com
* Credit to Thierry Koblentz - http://www.alistapart.com/articles/creating-intrinsic-ratios-for-video/
* Released under the WTFPL license - http://sam.zoy.org/wtfpl/
*
*/

(function( $ ){

  "use strict";

  $.fn.fitVids = function( options ) {
    var settings = {
      customSelector: null,
      ignore: null
    };

    if(!document.getElementById('fit-vids-style')) {
      // appendStyles: https://github.com/toddmotto/fluidvids/blob/master/dist/fluidvids.js
      var head = document.head || document.getElementsByTagName('head')[0];
      var css = '.fluid-width-video-wrapper{width:100%;position:relative;padding:0;}.fluid-width-video-wrapper iframe,.fluid-width-video-wrapper object,.fluid-width-video-wrapper embed {position:absolute;top:0;left:0;width:100%;height:100%;}';
      var div = document.createElement('div');
      div.innerHTML = '<p>x</p><style id="fit-vids-style">' + css + '</style>';
      head.appendChild(div.childNodes[1]);
    }

    if ( options ) {
      $.extend( settings, options );
    }

    return this.each(function(){
      var selectors = [
        "iframe[src*='player.vimeo.com']",
        "iframe[src*='youtube.com']",
        "iframe[src*='youtube-nocookie.com']",
        "iframe[src*='kickstarter.com'][src*='video.html']",
        "object",
        "embed"
      ];

      if (settings.customSelector) {
        selectors.push(settings.customSelector);
      }

      var ignoreList = '.fitvidsignore';

      if(settings.ignore) {
        ignoreList = ignoreList + ', ' + settings.ignore;
      }

      var $allVideos = $(this).find(selectors.join(','));
      $allVideos = $allVideos.not("object object"); // SwfObj conflict patch
      $allVideos = $allVideos.not(ignoreList); // Disable FitVids on this video.

      $allVideos.each(function(){
        var $this = $(this);
        if($this.parents(ignoreList).length > 0) {
          return; // Disable FitVids on this video.
        }
        if (this.tagName.toLowerCase() === 'embed' && $this.parent('object').length || $this.parent('.fluid-width-video-wrapper').length) { return; }
        if ((!$this.css('height') && !$this.css('width')) && (isNaN($this.attr('height')) || isNaN($this.attr('width'))))
        {
          $this.attr('height', 9);
          $this.attr('width', 16);
        }
        var height = ( this.tagName.toLowerCase() === 'object' || ($this.attr('height') && !isNaN(parseInt($this.attr('height'), 10))) ) ? parseInt($this.attr('height'), 10) : $this.height(),
            width = !isNaN(parseInt($this.attr('width'), 10)) ? parseInt($this.attr('width'), 10) : $this.width(),
            aspectRatio = height / width;
        if(!$this.attr('id')){
          var videoID = 'fitvid' + Math.floor(Math.random()*999999);
          $this.attr('id', videoID);
        }
        $this.wrap('<div class="fluid-width-video-wrapper"></div>').parent('.fluid-width-video-wrapper').css('padding-top', (aspectRatio * 100)+"%");
        $this.removeAttr('height').removeAttr('width');
      });
    });
  };
// Works with either jQuery or Zepto
})( window.jQuery || window.Zepto );














//UVG video player scripts
var commentlists;
var callbackId;
var commentscallbackid;
var shareto;
var shareoptions;
var flag;
var flagoptions;
var commercial;

jQuery(document).ready(function () {

	callbackId = dnn.getVar("playercallbackid");
	commentscallbackid = dnn.getVar("commentscallbackid");

	jQuery(".shareoptions input, .shareoptions textarea").click(function(){
		this.select();
	});

	jQuery(".roundbtn").hover(function(){
		jQuery(this).addClass("hover");
	},function(){
		jQuery(this).removeClass("hover");
	});

	flag = jQuery(".flag");
	flagoptions = jQuery(".flagoptions");
	var texts = jQuery(".postcomment .texts");
	shareto = jQuery(".shareto");
	shareoptions = jQuery(".shareoptions");
	commentlists = jQuery(".comments .list");

	shareto.click(function(){
		if (shareoptions.is(":visible"))
		{
			shareto.removeClass("active");
			shareoptions.hide();
		}
		else
		{
			shareto.addClass("active");
			shareoptions.show();

			//hide flagoptions
			flag.removeClass("active");
			flagoptions.hide();
		}
	});

	jQuery(".shareoptions .close").click(function(){
		shareto.removeClass("active");
		shareoptions.hide();
	});

	flag.click(function(){
		if (flagoptions.is(":visible"))
		{
			flag.removeClass("active");
			flagoptions.hide();
		}
		else
		{
			flag.addClass("active");
			flagoptions.show();

			//hide shareoptions
			shareto.removeClass("active");
			shareoptions.hide();
		}
	});

	jQuery(".flagoptions .close").click(function(){
		flag.removeClass("active");
		flagoptions.hide();
	});

	jQuery(".like").click(function(){
		jQuery(".like, .dislike").unbind("click");
		dnn.xmlhttp.doCallBack(callbackId,"LIKE",like_Callback,this,null,null,true,null,0);
	});

	jQuery(".dislike").click(function(){
		jQuery(".like, .dislike").unbind("click");
		dnn.xmlhttp.doCallBack(callbackId,"DISLIKE",dislike_Callback,this,null,null,true,null,0);
	});

	jQuery(".flagoptions a").click(function(){
		var reason = jQuery(this).html();
		dnn.xmlhttp.doCallBack(callbackId,"FLAG:" + reason,flag_Callback,this,null,null,true,null,0);
		return false;
	});

	if (texts.length > 0)
	{
		var maxtexts = texts.html() * 1;
		texts.html(texts.val().length + "/"+maxtexts);
	}

	jQuery(".postcomment textarea").live("keyup focusout", function(){
		var len;
		if (this.value.indexOf("[QUOTE]")>= 0)
		{
			len = this.value.indexOf("[QUOTE]");
			len += this.value.length - this.value.lastIndexOf("[/QUOTE]") - 9;

			if (len < 0) len = 0;
		}
		else
			len = this.value.length;

		if (len > maxtexts)
		{
			this.value = this.value.substring(0, maxtexts);
			return false;
		}
		texts.html(len+"/"+maxtexts);
	});

	var postcommentbtn = jQuery(".postcomment .post");
	postcommentbtn.click(function(){
		var text = jQuery(".postcomment textarea").val().trim();
		if(text.length <= 2) return;

		if (postcommentbtn.hasClass("disabled"))
		{
			alert("please wait.");
			return;
		}

		postcommentbtn.addClass("disabled");

		dnn.xmlhttp.doCallBack(commentscallbackid,"COMMENT:" + text,post_CallBack,this,null,null,null,null,0);

	});

	jQuery(".comments").appear(function(){
		loadComments();
	});









	//fitvids
	$(".responsive .embededplayer, .responsive #UVGContainer").fitVids();
});

function showShareOptions()
{
	if (shareoptions.is(":visible"))
	{
		return;
	}

	shareto.addClass("active");
	shareoptions.show();

	//hide shareoptions
	flag.removeClass("active");
	flagoptions.hide();


	var shareheight = shareoptions.offset().top + shareoptions.height() - shareto.offset().top;
	var scrollto = shareto.offset().top - (jQuery(window).height() - shareheight) / 2;

	jQuery('html, body').animate({
		scrollTop: scrollto
    }, "slow");

}

function like_Callback(result, ctx)
{
	if (result * 1 > 0)
	{
		jQuery(".like span").html(result);
	}
	else
	{
		alert(result);
	}
}

function dislike_Callback(result, ctx)
{
	if (result * 1 > 0)
	{
		jQuery(".dislike span").html(result);
	}
	else
	{
		alert(result);
	}
}

function flag_Callback(result, ctx)
{
	alert(result);
}

function post_CallBack(result, ctx)
{
	jQuery(".postcomment .post").removeClass("disabled");

	jQuery(".postcomment textarea").val("");
	jQuery(".postcomment textarea").trigger("keyup");
	load_CallBack(result, ctx);
}

function load_CallBack(result, ctx)
{
	commentlists.removeClass("loading");
    commentlists.html(result);
}

function loadComments(videoid, page)
{
	if (!page)
	{
		page = 0;
	}
	var prefix = "";
	if (videoid)
	{
		prefix = videoid+"|";
	}
	commentlists.addClass("loading");
	commentlists.html("");
	dnn.xmlhttp.doCallBack(commentscallbackid,prefix + "LOADCOMMENTS:"+page,load_CallBack,this,null,null,null,null,0);
}

function deleteComment(id)
{
	var cfm = dnn.getVar("deletecfm");
	if (cfm)
	{
		if (!window.confirm(cfm))
		{
			return;
		}
	}
	dnn.xmlhttp.doCallBack(commentscallbackid,"DELETECOMMENT:"+id,load_CallBack,this,null,null,null,null,0);
}

function quote(id)
{
	var says = dnn.getVar("says");
	if (!says)
	{
		says = "says..."
	}

	var author = jQuery(".comments #author" + id).text();
	var body = jQuery(".comments #body" + id).html();

    var html = "[QUOTE]" + author + " "+says+"<br />" + body + "[/QUOTE]\n";
	var txtinput = jQuery(".postcomment textarea");
	txtinput.val(html).focus();
	jQuery(".postcomment textarea").trigger("keyup");
	moveCaretToEnd(jQuery(".postcomment textarea")[0]);

	jQuery('html, body').animate({
		scrollTop: txtinput.offset().top - 100
    }, "fast");
}

function moveCaretToEnd(el) {
    if (typeof el.selectionStart == "number") {
        el.selectionStart = el.selectionEnd = el.value.length;
    } else if (typeof el.createTextRange != "undefined") {
        el.focus();
        var range = el.createTextRange();
        range.collapse(false);
        range.select();
    }
}

function UVG_onVideoLoad(videoid)
{
}

function UVG_onVideoFinish()
{
	var nextinseries=jQuery(".nextinseries");
	if (nextinseries.find("input:checkbox").is(":checked"))
	{
		nextinseries.find("a")[0].click();
	}	
}