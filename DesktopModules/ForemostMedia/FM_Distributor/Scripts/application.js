/*! FM_Distributor 2017-03-16 05:08 pm */
function DistributorViewModel(a) {
    function b(a) {
        ko.applyBindings(d, document.getElementById(a.elementId), {});
    }
    function c() {
        d.isLoading(!0);
        var b = {
            type: d.type(),
            country: d.selectedCountry(),
            state: d.selectedState(),
            portal: a.PortalId,
            pagesize: a.PageSize,
            pagenum: d.pagenum(),
            usfirst: a.UsFirst,
            company: d.company()
        };
        fmDistributor.api.searchLocations(b, function(a) {}, function() {
            d.isLoading(!1);
        });
    }
    var d = this;
    d.isLoading = ko.observable(!1), d.type = ko.observable(), d.selectedCountry = ko.observable(), 
    d.selectedState = ko.observable(), d.pagenum = ko.observable(1), d.company = ko.observable(), 
    d.init = b, d.searchLocations = c;
}

!function() {
    "undefined" == typeof fmDistributor && (fmDistributor = {}), $(document).ajaxError(function(a, b, c) {
        var d, e = JSON.parse(b.responseText);
        "undefined" != typeof e.Url && (d = function() {
            window.location = e.Url;
        }), fmDistributor.alertError(e.ExceptionMessage || e.Message, void 0, d);
    }), fmDistributor.alertError = function(a, b, c) {
        fmDistributor.alert(a, b, "danger", c);
    }, fmDistributor.alertSuccess = function(a, b, c) {
        fmDistributor.alert(a, b, "success", c);
    }, fmDistributor.alert = function(a, b, c, d) {
        var e = "";
        switch (c) {
          case "success":
            e = "Success!";
            break;

          case "danger":
            e = "There was an error!";
        }
        ("undefined" == typeof b || b.length < 1) && (b = a, a = void 0), $.dnnAlert({
            title: a || e,
            text: b,
            callback: d,
            dialogClass: "dnnFormPopup dnnClear alert alert-" + (c || "default")
        });
    }, fmDistributor.sort = {
        generic: function(a) {
            return function(b, c) {
                if ("undefined" == typeof b) return 0;
                var d = "function" == typeof b[a] ? b[a]() : b[a], e = "function" == typeof c[a] ? c[a]() : c[a];
                return "undefined" == typeof d ? 0 : "undefined" == typeof e ? 1 : (d = isNaN(d) ? d.toLowerCase() : parseFloat(d, 10), 
                e = isNaN(e) ? e.toLowerCase() : parseFloat(e, 10), d > e ? 1 : -1);
            };
        }
    };
}(jQuery), function(a) {
    function b(b, c, d, e, f) {
        "function" == typeof d && (f = e, e = d, d = {}), a.ajax({
            type: b,
            url: fmDistributor.baseServicepath + c,
            data: d,
            beforeSend: fmDistributor.serviceFramework.setModuleHeaders
        }).done(function(a) {
            "function" == typeof e && e(a);
        }).always(function(a) {
            "function" == typeof f && f(a);
        });
    }
    function c(a, c, d) {
        b("GET", "Locations", a, c, d);
    }
    "undefined" == typeof fmDistributor && (fmDistributor = {}), fmDistributor.api = {
        searchLocations: c
    }, fmDistributor.serviceFramework = a.ServicesFramework(fmDistributor.moduleId), 
    fmDistributor.baseServicepath = fmDistributor.serviceFramework.getServiceRoot("ForemostMedia/FM_Distributor");
}(jQuery);