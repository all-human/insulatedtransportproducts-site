<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CookiesTheme.ascx.cs" Inherits="ForemostMedia.Modules.fmCookiesTheme.ThemeView" %>

<script type="text/javascript">

    function crumbleCookie(a) {
        for (var d = document.cookie.split(";"), c = {}, b = 0; b < d.length; b++) {
            var e = d[b].substring(0, d[b].indexOf("=")).trim(),
                i = d[b].substring(d[b].indexOf("=") + 1, d[b].length).trim();
            c[e] = i;
        }
        if (a) return c[a] ? c[a] : null;
        return c;
    }

    function bakeCookie(a, d, c, b, e, i) {
        var j = new Date();
        j.setTime(j.getTime()); 
        c && (c *= 864E5);
        j = new Date(j.getTime() + c);
        document.cookie = a + "=" + escape(d) + (c ? ";expires=" + j.toGMTString() : "") + (b ? ";path=" + b : "") + (e ? ";domain=" + e : "") + (i ? ";secure" : "");
    }

    function writeLogic(n) {
        var a = getTrafficSource(n, '<%= urlHost %>');  //Insert your domain here

        a = a.replace(/\|{2,}/g, "|");
        a = a.replace(/^\|/, "");
        a = unescape(a);

        bakeCookie(n, a, 182, "/", "", "");		//Cookie expiration sets to 182 days
    }

    function getParam(s, q) {
        try {
            var match = s.match('[?&]' + q + '=([^&]+)');
            return match ? match[1] : '';
            //        return s.match(RegExp('(^|&)'+q+'=([^&]*)'))[2];
        } catch (e) {
            console.log("getParam:: Error getting the value for: " + q);
            return '';
        }
    }

    function calculateTrafficSource() {
        var source = '', medium = '', campaign = '', term = '', content = '', gclid = '', fbclid = '', mscklid = '';
        var search_engines = [['bing', 'q'], ['google', 'q'], ['yahoo', 'q'], ['baidu', 'q'], ['yandex', 'q'], ['ask', 'q']];	//List of search engines
        var ref = document.referrer;
        ref = ref.substr(ref.indexOf('//') + 2);
        ref_domain = ref;
        ref_path = '/';
        ref_search = '';

        // Checks for campaign parameters
        var url_search = document.location.search;

        if (url_search.indexOf('utm_source') > -1) {
            source = getParam(url_search, 'utm_source');
        }
        if (url_search.indexOf('utm_medium') > -1) {
            medium = getParam(url_search, 'utm_medium');
        }
        if (url_search.indexOf('utm_campaign') > -1) {
            campaign = getParam(url_search, 'utm_campaign');
        }
        if (url_search.indexOf('utm_term') > -1) {
            term = getParam(url_search, 'utm_term');
        }
        if (url_search.indexOf('utm_content') > -1) {
            content = getParam(url_search, 'utm_content');
        }
        if (getParam(url_search, 'gclid')) {
            gclid = getParam(url_search, 'gclid');
        }
        if (getParam(url_search, 'fbclid')) {
            fbclid = getParam(url_search, 'fbclid');
        }
        if (getParam(url_search, 'mscklid')) {
            mscklid = getParam(url_search, 'mscklid');
        }
        else if (ref) {

            // separate domain, path and query parameters
            if (ref.indexOf('/') > -1) {
                ref_domain = ref.substr(0, ref.indexOf('/'));
                ref_path = ref.substr(ref.indexOf('/'));
                if (ref_path.indexOf('?') > -1) {
                    ref_search = ref_path.substr(ref_path.indexOf('?') + 1);
                    ref_path = ref_path.substr(0, ref_path.indexOf('?'));
                }
            }
            medium = 'referral';
            source = ref_domain;
            // Extract term for organic source
            for (var i = 0; i < search_engines.length; i++) {
                if (ref_domain.indexOf(search_engines[i][0]) > -1) {
                    medium = 'organic';
                    source = search_engines[i][0];
                    term = getParam(ref_search, search_engines[i][1]) || '(not provided)';
                    break;
                }
            }
        }

        return {
            'source': source,
            'medium': medium,
            'campaign': campaign,
            'term': term,
            'content': content,
            'gclid': gclid,
            'fbclid': fbclid,
            'mscklid': mscklid
        };
    }

    function getTrafficSource(cookieName, hostname) {

        var trafficSources = calculateTrafficSource();
        var source = trafficSources.source.length === 0 ? 'direct' : trafficSources.source;
        var medium = trafficSources.medium.length === 0 ? 'none' : trafficSources.medium;
        var campaign = trafficSources.campaign.length === 0 ? 'direct' : trafficSources.campaign;

        var gclid = trafficSources.gclid.length === 0 ? 'none' : trafficSources.gclid;
        var fbclid = trafficSources.fbclid.length === 0 ? 'none' : trafficSources.fbclid;
        var mscklid = trafficSources.mscklid.length === 0 ? 'none' : trafficSources.mscklid;

        // exception
        if (medium === 'referral') {
            campaign = '';
        }
        var rightNow = new Date();
        var value = 'source=' + mergeKeyValues(cookieName, "source", source) +
            '&medium=' + mergeKeyValues(cookieName, "medium", medium) +
            '&campaign=' + mergeKeyValues(cookieName, "campaign", campaign) +
            '&term=' + mergeKeyValues(cookieName, "term", trafficSources.term ) +
            '&content=' + mergeKeyValues(cookieName, "content", trafficSources.content) +
            '&gclid=' + mergeKeyValues(cookieName, "gclid", gclid) +
            '&fbclid=' + mergeKeyValues(cookieName, "fbclid", fbclid) +
            '&mscklid=' + mergeKeyValues(cookieName, "mscklid", mscklid) +
            '&date=' + rightNow.toISOString().slice(0, 10).replace(/-/g, "");

        return value;
    }

    function mergeKeyValues(cookieName, keyName, newKeyValue) {
        var currentCookieValues = getCookie(cookieName);
        var existingValue = getCookieKeyValue(currentCookieValues, keyName);

        if (!existingValue.includes(newKeyValue)) {
            //Append the new Value
            newKeyValue = existingValue + ',' + newKeyValue;

            console.log("keyName = " + keyName + " currentValue = " + existingValue + " newValue " + newKeyValue);

            return newKeyValue;
        }

        return existingValue;
    }

    function getCookieKeyValue(stringValues, keyName) {
        var ca = stringValues.split('&');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            var cv = c.split('=');
            if (cv.length == 2) {
                cName = cv[0];
                cValue = cv[1];
                if (cName === keyName) {
                    return cValue;
                }
            }
        } 
        return "";
    }

    function getCookie(cname) {
        var name = cname + "=";
        var decodedCookie = decodeURIComponent(document.cookie);
        var ca = decodedCookie.split(';');
        for(var i = 0; i <ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') {
                c = c.substring(1);
            }
            if (c.indexOf(name) == 0) {
                return c.substring(name.length, c.length);
            }
        }
        return "";
    }

    function hasItem(sKey) {
        if (!sKey) { return false; }
        return (new RegExp("(?:^|;\\s*)" + encodeURIComponent(sKey).replace(/[\-\.\+\*]/g, "\\$&") + "\\s*\\=")).test(document.cookie);
    }

  function keys() {
    var aKeys = document.cookie.replace(/((?:^|\s*;)[^\=]+)(?=;|$)|^\s*|\s*(?:\=[^;]*)?(?:\1|$)/g, "").split(/\s*(?:\=[^;]*)?;\s*/);
    for (var nLen = aKeys.length, nIdx = 0; nIdx < nLen; nIdx++) { aKeys[nIdx] = decodeURIComponent(aKeys[nIdx]); }
    return aKeys;
  }

// Self-invoking function
(function () {
    var date = new Date();
    var fr_date = date.getUTCFullYear().toString() + ((date.getUTCMonth() < 9) ? '0' + (date.getUTCMonth() + 1).toString() : (date.getUTCMonth() + 1).toString()) + ((date.getUTCDate() < 10) ? '0' + date.getUTCDate().toString() : date.getUTCDate().toString());
    var session = crumbleCookie().SiteMarketingSessionData;

    writeLogic('SiteMarketingSessionData');

})();

</script>
