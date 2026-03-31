/*! fmCookiesTheme 2019-04-19 09:51 am */

jQuery, "undefined" == typeof fmfmCookiesTheme && (fmfmCookiesTheme = {}), $(document).ajaxError(function(e, o, f) {
    var i, r = JSON.parse(o.responseText);
    void 0 !== r.Url && (i = function() {
        window.location = r.Url;
    }), fmfmCookiesTheme.alertError(r.ExceptionMessage || r.Message, void 0, i);
}), fmfmCookiesTheme.alertError = function(e, o, f) {
    fmfmCookiesTheme.alert(e, o, "danger", f);
}, fmfmCookiesTheme.alertSuccess = function(e, o, f) {
    fmfmCookiesTheme.alert(e, o, "success", f);
}, fmfmCookiesTheme.alert = function(e, o, f, i) {
    var r = "";
    switch (f) {
      case "success":
        r = "Success!";
        break;

      case "danger":
        r = "There was an error!";
    }
    (void 0 === o || o.length < 1) && (o = e, e = void 0), $.dnnAlert({
        title: e || r,
        text: o,
        callback: i,
        dialogClass: "dnnFormPopup dnnClear alert alert-" + (f || "default")
    });
}, fmfmCookiesTheme.sort = {
    generic: function(r) {
        return function(e, o) {
            if (void 0 === e) return 0;
            var f = "function" == typeof e[r] ? e[r]() : e[r], i = "function" == typeof o[r] ? o[r]() : o[r];
            return void 0 === f ? 0 : void 0 === i ? 1 : (f = isNaN(f) ? f.toLowerCase() : parseFloat(f, 10), 
            (i = isNaN(i) ? i.toLowerCase() : parseFloat(i, 10)) < f ? 1 : -1);
        };
    }
}, function(t) {
    function n(e, o, f, i, r) {
        "function" == typeof f && (r = i, i = f, f = {}), t.ajax({
            type: e,
            url: fmfmCookiesTheme.baseServicepath + o,
            data: f,
            beforeSend: fmfmCookiesTheme.serviceFramework.setModuleHeaders
        }).done(function(e) {
            "function" == typeof i && i(e);
        }).always(function(e) {
            "function" == typeof r && r(e);
        });
    }
    "undefined" == typeof fmfmCookiesTheme && (fmfmCookiesTheme = {}), fmfmCookiesTheme.api = {
        load: function(e, o) {
            n("GET", "hello", e, o);
        },
        get: function(e, o, f) {
            n("GET", "hello/" + e, o, f);
        },
        deletet: function(e, o, f) {
            n("DELETE", "hello/" + e.id, o, f);
        },
        save: function(e, o, f) {
            var i = "POST", r = "hello";
            0 < e.Id && (i = "PUT", r += "/" + e.Id);
            n(i, r, e, o, f);
        }
    }, fmfmCookiesTheme.serviceFramework = t.ServicesFramework(fmfmCookiesTheme.moduleId), 
    fmfmCookiesTheme.baseServicepath = fmfmCookiesTheme.serviceFramework.getServiceRoot("ForemostMedia/fmCookiesTheme");
}(jQuery);