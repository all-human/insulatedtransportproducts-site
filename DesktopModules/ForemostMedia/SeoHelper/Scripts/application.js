/*! fm-seo-helper 2017-10-19 10:48 am */

!function(e) {
    "use strict";
    if ("undefined" != typeof ko && "undefined" != typeof jQuery) e(ko, jQuery); else if ("function" == typeof require && "object" == typeof exports && "object" == typeof module) e(require("knockout"), require("jquery")); else {
        if ("function" != typeof define || !define.amd) throw new Error("Could not locate current context reference to knockout and jQuery in order to load Knockstrap");
        define([ "knockout", "jquery" ], e);
    }
}(function(e, t) {
    "use strict";
    function n(t) {
        var n = this;
        n.isAligned = t.isAligned, n.currentPage = t.currentPage, n.totalCount = t.totalCount, 
        n.pageSize = t.pageSize, n.text = t.text, n.pagesCount = e.computed(function() {
            var t = e.unwrap(n.totalCount), a = e.unwrap(n.pageSize);
            return Math.max(Math.ceil(t / a), 1);
        }), n.isBackDisabled = e.computed(function() {
            return 1 === n.currentPage();
        }), n.isForwardDisabled = e.computed(function() {
            return n.currentPage() === n.pagesCount();
        }), n.goBack = function() {
            if (!n.isBackDisabled()) {
                var e = n.currentPage();
                n.currentPage(e - 1);
            }
        }, n.goForward = function() {
            if (!n.isForwardDisabled()) {
                var e = n.currentPage();
                n.currentPage(e + 1);
            }
        };
    }
    function a(t) {
        var a = this;
        n.call(a, t);
        var o = function() {
            var t = +e.unwrap(a.maxPages);
            return (Math.ceil(a.currentPage() / t) - 1) * t + 1;
        }, r = function(t) {
            var n = +e.unwrap(a.maxPages);
            return Math.min(t + n - 1, a.pagesCount());
        };
        a.maxPages = t.maxPages, a.boundary = t.boundary, a.directions = t.directions, a.text = t.text, 
        a.pages = e.computed(function() {
            for (var e = [], t = o(), n = r(t), s = t; s <= n; s++) e.push(new i(s, s, s === a.currentPage()));
            return t > 1 && e.unshift(new i(t - 1, "...")), n < a.pagesCount() && e.push(new i(n + 1, "...")), 
            e;
        }), a.selectPage = function(e) {
            a.currentPage(e.number);
        }, a.goFirst = function() {
            a.isBackDisabled() || a.currentPage(1);
        }, a.goLast = function() {
            a.isForwardDisabled() || a.currentPage(a.pagesCount());
        };
    }
    function i(e, t, n) {
        this.number = e, this.text = t || e, this.isActive = !!n;
    }
    function o(t) {
        var n = e.unwrap(t);
        if ("number" == typeof n) return new r({
            value: t
        });
        if ("number" == typeof e.unwrap(n.value)) return new r(n);
        throw new Error('progress binding can accept only numbers or objects with "value" number property');
    }
    function r(n) {
        var a = this;
        t.extend(a, e.bindingHandlers.progress.defaults, n), a.barWidth = e.computed(function() {
            return e.unwrap(a.value) + "%";
        }), a.barType = e.computed(function() {
            var t = e.unwrap(a.type);
            return t ? "progress-bar-" + t : "";
        });
    }
    e.utils.uniqueId = function() {
        var e = {
            "ks-unique-": 0
        };
        return function(t) {
            return t = t || "ks-unique-", e[t] || (e[t] = 0), t + e[t]++;
        };
    }(), e.utils.unwrapProperties = e.toJS, function() {
        var t = {};
        t.alert = '<div class="alert fade in" data-bind="css: type, template: innerTemplate">\n</div>', 
        t.alertInner = '<button class="close" data-dismiss="alert" aria-hidden="true">&times;</button>\n<p data-bind="text: message"></p>', 
        t.carousel = '\x3c!-- ko template: indicatorsTemplate --\x3e\n\x3c!-- /ko --\x3e\n<div class="carousel-inner">\n    \x3c!-- ko foreach: items --\x3e\n    <div class="item" data-bind="with: $parent.converter($data), css: { active: $index() == 0 }">\n        <img data-bind="attr: { src: src, alt: alt }">\n        <div class="container">\n            <div class="carousel-caption">\n                \x3c!-- ko template: { name: $parents[1].itemTemplateName, data: $data, templateEngine: $parents[1].templateEngine,\n                    afterRender: $parents[1].afterRender, afterAdd: $parents[1].afterAdd, beforeRemove: $parents[1].beforeRemove } --\x3e\n                \x3c!-- /ko --\x3e\n            </div>\n        </div>\n    </div>\n    \x3c!-- /ko --\x3e\n</div>\n\x3c!-- ko template: controlsTemplate --\x3e\n\x3c!-- /ko --\x3e\n', 
        t.carouselContent = '<div data-bind="text: content"></div>', t.carouselControls = '<a class="left carousel-control" data-bind="attr: { href: id }" data-slide="prev">\n    <span class="icon-prev"></span>\n</a>\n<a class="right carousel-control" data-bind="attr: { href: id }" data-slide="next">\n    <span class="icon-next"></span>\n</a>', 
        t.carouselIndicators = '<ol class="carousel-indicators" data-bind="foreach: items">\n    <li data-bind="attr: { \'data-target\': $parent.id, \'data-slide-to\': $index }, css: { active: $index() == 0 }"></li>\n</ol>\n', 
        t.modal = '<div class="modal-dialog" data-bind="css: dialogCss">\n    <div class="modal-content">\n        <div class="modal-header" data-bind="template: headerTemplate">\n        </div>\n\n        <div class="modal-body" data-bind="template: bodyTemplate">\n        </div>\n        \x3c!-- ko if: footerTemplate --\x3e\n        <div class="modal-footer" data-bind="template: footerTemplate">\n        </div>\n        \x3c!-- /ko --\x3e\n    </div>\n</div>', 
        t.modalBody = '<div data-bind="html: content">\n</div>', t.modalFooter = '\x3c!-- ko if: $data.action --\x3e\n<a href="#" class="btn btn-primary" data-bind="click: action, html: primaryLabel"></a>\n\x3c!-- /ko --\x3e\n<a href="#" class="btn btn-default" data-bind="html: closeLabel" data-dismiss="modal"></a>', 
        t.modalHeader = '<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>\n<h3 data-bind="text: label"></h3>\n', 
        t.pager = '<ul class="pager">\n    <li data-bind="css: { previous: isAligned, disabled: isBackDisabled }">\n        <a href="#" data-bind="with: text, click: goBack">\n            <span data-bind="html: back"></span>\n        </a>\n    </li>\n    <li data-bind="css: { next: isAligned, disabled: isForwardDisabled }">\n        <a href="#" data-bind="with: text, click: goForward">\n            <span data-bind="html: forward"></span>\n        </a>\n    </li>\n</ul>\n', 
        t.pagination = '<ul class="pagination">\n    \x3c!-- ko if: boundary --\x3e\n    <li class="ks-boundary-first" data-bind="css: { disabled: isBackDisabled }">\n        <a href="#" data-bind="with: text, click: goFirst">\n            <span data-bind="html: first"></span>\n        </a>\n    </li>\n    \x3c!-- /ko --\x3e\n    \n    \x3c!-- ko if: directions --\x3e\n    <li class="ks-direction-back" data-bind="css: { disabled: isBackDisabled }">\n        <a href="#" data-bind="with: text, click: goBack">\n            <span data-bind="html: back"></span>\n        </a>\n    </li>\n    \x3c!-- /ko --\x3e\n\n    \x3c!-- ko foreach: pages --\x3e\n    <li data-bind="css: { active: isActive }">\n        <a href="#" data-bind="text: text, click: $parent.selectPage"></a>\n    </li>\n    \x3c!-- /ko --\x3e\n    \n    \x3c!-- ko if: directions --\x3e\n    <li class="ks-direction-forward" data-bind="css: { disabled: isForwardDisabled }">\n        <a href="#" data-bind="with: text, click: goForward">\n            <span data-bind="html: forward"></span>\n        </a>\n    </li>\n    \x3c!-- /ko --\x3e\n\n    \x3c!-- ko if: boundary --\x3e\n    <li class="ks-boundary-last" data-bind="css: { disabled: isForwardDisabled }">\n        <a href="#" data-bind="with: text, click: goLast">\n            <span data-bind="html: last"></span>\n        </a>\n    </li>\n    \x3c!-- /ko --\x3e\n</ul>', 
        t.progress = '\x3c!-- ko foreach: $data --\x3e\n<div class="progress-bar" role="progressbar" aria-valuemin="0" aria-valuemax="100"\n    data-bind="style: { width: barWidth }, attr: { \'aria-valuenow\': value }, css: { active: animated, \'progress-bar-striped\': striped }, \'class\': barType">\n    <span data-bind="css: { \'sr-only\': textHidden }">\n        <span data-bind="text: value"></span>% <span data-bind="text: text"></span>\n    </span>\n</div>\n\x3c!-- /ko --\x3e', 
        e.templateSources.stringTemplate = function(e) {
            this.templateName = e, this.data = function(e, n) {
                if (t.data = t.data || {}, t.data[this.templateName] = t.data[this.templateName] || {}, 
                1 === arguments.length) return t.data[this.templateName][e];
                t.data[this.templateName][e] = n;
            }, this.text = function(e) {
                if (0 === arguments.length) return t[this.templateName];
                t[this.templateName] = e;
            };
        }, e.stringTemplateEngine = function() {
            this.allowTemplateRewriting = !1;
        }, e.stringTemplateEngine.prototype = new e.nativeTemplateEngine(), e.stringTemplateEngine.prototype.constructor = e.stringTemplateEngine, 
        e.stringTemplateEngine.prototype.makeTemplateSource = function(t) {
            return new e.templateSources.stringTemplate(t);
        }, e.stringTemplateEngine.prototype.getTemplate = function(e) {
            return t[e];
        }, e.stringTemplateEngine.prototype.addTemplate = function(e, n) {
            if (arguments.length < 2) throw new Error("template is not provided");
            t[e] = n;
        }, e.stringTemplateEngine.prototype.removeTemplate = function(e) {
            if (!e) throw new Error("template name is not provided");
            delete t[e];
        }, e.stringTemplateEngine.prototype.isTemplateExist = function(e) {
            return !!t[e];
        }, e.stringTemplateEngine.instance = new e.stringTemplateEngine();
    }(), e.bindingHandlers.alert = {
        init: function() {
            return {
                controlsDescendantBindings: !0
            };
        },
        update: function(n, a, i, o, r) {
            var s, l, d = t(n), c = a(), p = c.template ? null : e.stringTemplateEngine.instance, u = e.unwrap(c.template) || "alertInner";
            if (n.nodeType === ("undefined" != typeof Node && Node.ELEMENT_NODE || 1)) s = u, 
            l = c.data || {
                message: c.message
            }, d.removeClass("alert-info alert-danger alert-success "), d.addClass("alert fade in").addClass("alert-" + (e.unwrap(c.type) || "info")); else {
                if (n.nodeType !== ("undefined" != typeof Node && Node.COMMENT_NODE || 8)) throw new Error("alert binding should be used with dom elements or ko virtual elements");
                s = "alert", l = {
                    innerTemplate: {
                        name: u,
                        data: c.data || {
                            message: c.message
                        },
                        templateEngine: p
                    },
                    type: "alert-" + (e.unwrap(c.type) || "info")
                };
            }
            e.renderTemplate(s, r.createChildContext(l), e.utils.extend({
                templateEngine: p
            }, c.templateOptions), n);
        }
    }, e.virtualElements.allowedBindings.alert = !0, e.bindingHandlers.carousel = {
        defaults: {
            css: "carousel slide",
            controlsTemplate: {
                name: "carouselControls",
                templateEngine: e.stringTemplateEngine.instance,
                dataConverter: function(t) {
                    return {
                        id: e.computed(function() {
                            return "#" + e.unwrap(t.id);
                        })
                    };
                }
            },
            indicatorsTemplate: {
                name: "carouselIndicators",
                templateEngine: e.stringTemplateEngine.instance,
                dataConverter: function(t) {
                    return {
                        id: e.computed(function() {
                            return "#" + e.unwrap(t.id);
                        }),
                        items: t.content.data
                    };
                }
            },
            itemTemplate: {
                name: "carouselContent",
                templateEngine: e.stringTemplateEngine.instance,
                converter: function(e) {
                    return e;
                }
            }
        },
        init: function(n, a, i, o, r) {
            var s = t(n), l = a(), d = e.bindingHandlers.carousel.defaults, c = function(e, n) {
                var a = {
                    name: e.name,
                    data: l[n] && (l[n].data || l[n].dataConverter && l[n].dataConverter(l)) || e.dataConverter(l)
                };
                return a = t.extend(!0, {}, a, l[n]), l[n] && l[n].name || (a.templateEngine = e.templateEngine), 
                a;
            };
            if (!l.content) throw new Error("content option is required for carousel binding");
            n.id ? l.id = n.id : l.id ? n.id = e.unwrap(l.id) : n.id = l.id = e.utils.uniqueId("ks-carousel-");
            var p = {
                id: l.id,
                controlsTemplate: c(d.controlsTemplate, "controls"),
                indicatorsTemplate: c(d.indicatorsTemplate, "indicators"),
                items: l.content.data,
                converter: l.content.converter || d.itemTemplate.converter,
                itemTemplateName: l.content.name || d.itemTemplate.name,
                templateEngine: l.content.name ? null : d.itemTemplate.templateEngine,
                afterRender: l.content.afterRender,
                afterAdd: l.content.afterAdd,
                beforeRemove: l.content.beforeRemove
            };
            return e.renderTemplate("carousel", r.createChildContext(p), {
                templateEngine: e.stringTemplateEngine.instance
            }, n), s.addClass(d.css), {
                controlsDescendantBindings: !0
            };
        },
        update: function(n, a) {
            var i = a(), o = e.unwrap(i.options);
            t(n).carousel(o);
        }
    }, e.bindingHandlers.checkbox = {
        init: function(n, a) {
            var i = t(n), o = function(n) {
                setTimeout(function() {
                    var i = t(n.target), o = a(), r = i.val(), s = i.parent().hasClass("active");
                    if (!i.prop("disabled")) if (e.unwrap(o) instanceof Array) {
                        var l = e.utils.arrayIndexOf(e.unwrap(o), r);
                        s && -1 === l ? o.push(r) : s || -1 === l || o.splice(l, 1);
                    } else o(s);
                }, 0);
            };
            if ("buttons" === i.attr("data-toggle") && i.find("input:checkbox").length) {
                if (!(e.unwrap(a()) instanceof Array)) throw new Error("checkbox binding should be used only with array or observableArray values in this case");
                i.on("change", "input:checkbox", o);
            } else {
                if ("checkbox" !== i.attr("type")) throw new Error("checkbox binding should be used only with bootstrap checkboxes");
                if (!e.isObservable(a())) throw new Error("checkbox binding should be used only with observable values in this case");
                i.on("change", o);
            }
        },
        update: function(n, a) {
            var i, o = t(n), r = e.unwrap(a());
            r instanceof Array ? "buttons" === o.attr("data-toggle") ? o.find("input:checkbox").each(function(n, a) {
                i = -1 !== e.utils.arrayIndexOf(r, a.value), t(a).parent().toggleClass("active", i), 
                a.checked = i;
            }) : (i = -1 !== e.utils.arrayIndexOf(r, o.val()), o.toggleClass("active", i), o.find("input").prop("checked", i)) : (i = !!r, 
            o.prop("checked", i), o.parent().toggleClass("active", i));
        }
    };
    e.bindingHandlers.class = {
        update: function(t, n) {
            t.__ko__previousClassValue__ && e.utils.toggleDomNodeCssClass(t, t.__ko__previousClassValue__, !1);
            var a = e.unwrap(n());
            e.utils.toggleDomNodeCssClass(t, a, !0), t.__ko__previousClassValue__ = a;
        }
    }, e.bindingHandlers.modal = {
        defaults: {
            css: "modal fade",
            dialogCss: "",
            attributes: {
                role: "dialog"
            },
            events: {
                shown: "shown.bs.modal",
                hidden: "hidden.bs.modal"
            },
            headerTemplate: {
                name: "modalHeader",
                templateEngine: e.stringTemplateEngine.instance
            },
            bodyTemplate: {
                name: "modalBody",
                templateEngine: e.stringTemplateEngine.instance
            },
            footerTemplate: {
                name: "modalFooter",
                templateEngine: e.stringTemplateEngine.instance,
                data: {
                    closeLabel: "Close",
                    primaryLabel: "Ok"
                }
            }
        },
        init: function(n, a, i, o, r) {
            var s = t(n), l = a(), d = e.bindingHandlers.modal.defaults, c = t.extend({}, d.events, e.toJS(l.events)), p = e.utils.extend({
                show: s.data().show || !1
            }, e.toJS(l.options)), u = function(e, n) {
                var a = {
                    name: e.name,
                    data: e.data
                };
                return a = t.extend(!0, {}, a, n), n && n.name || (a.templateEngine = e.templateEngine), 
                a;
            };
            if (!l.header || !l.body) throw new Error("header and body options are required for modal binding.");
            (p.keyboard || void 0 === p.keyboard) && s.attr("tabindex", -1);
            var m = {
                dialogCss: l.dialogCss || d.dialogCss,
                headerTemplate: u(d.headerTemplate, e.unwrap(l.header)),
                bodyTemplate: u(d.bodyTemplate, e.unwrap(l.body)),
                footerTemplate: l.footer ? u(d.footerTemplate, e.unwrap(l.footer)) : null
            };
            return e.renderTemplate("modal", r.createChildContext(m), {
                templateEngine: e.stringTemplateEngine.instance
            }, n), s.addClass(d.css).attr(d.attributes), s.modal(p), s.on(c.shown, function() {
                void 0 === l.visible || "function" != typeof l.visible || e.isComputed(l.visible) || l.visible(!0), 
                t(this).find("[autofocus]:first").focus();
            }), void 0 === l.visible || "function" != typeof l.visible || e.isComputed(l.visible) || (s.on(c.hidden, function() {
                l.visible(!1);
            }), p.show && l.visible(!0)), {
                controlsDescendantBindings: !0
            };
        },
        update: function(n, a) {
            var i = a();
            void 0 !== i.visible && t(n).modal(e.unwrap(i.visible) ? "show" : "hide");
        }
    }, e.bindingHandlers.pagination = {
        defaults: {
            maxPages: 5,
            pageSize: 10,
            directions: !0,
            boundary: !0,
            text: {
                first: "First",
                last: "Last",
                back: "&laquo;",
                forward: "&raquo;"
            }
        },
        init: function(n, i, o, r, s) {
            var l = t.extend(!0, {}, e.bindingHandlers.pagination.defaults, i());
            if (!e.isObservable(l.currentPage)) throw new TypeError("currentPage should be observable");
            t.isNumeric(l.currentPage()) || l.currentPage(1);
            var d = new a(l);
            return e.renderTemplate("pagination", s.createChildContext(d), {
                templateEngine: e.stringTemplateEngine.instance
            }, n), {
                controlsDescendantBindings: !0
            };
        }
    }, e.bindingHandlers.pager = {
        defaults: {
            pageSize: 10,
            text: {
                back: "&larr;",
                forward: "&rarr;"
            }
        },
        init: function(a, i, o, r, s) {
            var l = t.extend(!0, {}, e.bindingHandlers.pager.defaults, i());
            if (!e.isObservable(l.currentPage)) throw new TypeError("currentPage should be observable");
            t.isNumeric(l.currentPage()) || l.currentPage(1);
            var d = new n(l);
            return e.renderTemplate("pager", s.createChildContext(d), {
                templateEngine: e.stringTemplateEngine.instance
            }, a), {
                controlsDescendantBindings: !0
            };
        }
    };
    e.bindingHandlers.popover = {
        init: function(n) {
            var a = t(n);
            e.utils.domNodeDisposal.addDisposeCallback(n, function() {
                a.data("bs.popover") && a.popover("destroy");
            });
        },
        update: function(n, a, i, o, r) {
            var s = t(n), l = e.unwrap(a()), d = (l.options || l.template ? e.utils.unwrapProperties(l.options) : e.utils.unwrapProperties(l)) || {};
            if (l.template) {
                e.unwrap(l.template);
                var c = e.utils.domData.get(n, "__popoverTemplateKey__");
                c || (c = e.utils.uniqueId("ks-popover-"), e.utils.domData.set(n, "__popoverTemplateKey__", c), 
                s.on("shown.bs.popover inserted.bs.popover", function(n) {
                    n && "inserted" === n.type && s.off("shown.bs.popover");
                    var a, i = e.unwrap(l.template);
                    a = "string" == typeof i ? {
                        $$popoverTemplate: t.extend({
                            name: l.template,
                            data: l.data
                        }, l.templateOptions)
                    } : {
                        $$popoverTemplate: l.template
                    };
                    var o = r.createChildContext(r.$rawData, null, function(t) {
                        e.utils.extend(t, a);
                    });
                    e.applyBindingsToDescendants(o, document.getElementById(c));
                    var p = t("#" + c).parents(".popover"), u = s.data("bs.popover"), m = u.getCalculatedOffset(d.placement || "right", u.getPosition(), p.outerWidth(), p.outerHeight());
                    u.applyPlacement(m, d.placement || "right");
                })), d.content = '<div id="' + c + '" ><div data-bind="template: $$popoverTemplate"></div></div>', 
                d.html = !0;
            }
            var p = s.data("bs.popover");
            p ? (e.utils.extend(p.options, d), p.options.content ? s.popover("show") : s.popover("hide")) : (s.popover(d), 
            s.on("shown.bs.popover inserted.bs.popover", function() {
                (d.container ? t(d.container) : s.parent()).one("click", '[data-dismiss="popover"]', function() {
                    s.popover("hide");
                });
            }));
        }
    }, e.bindingHandlers.progress = {
        defaults: {
            css: "progress",
            text: "",
            textHidden: !0,
            striped: !1,
            type: "",
            animated: !1
        },
        init: function(n, a) {
            var i, r = t(n), s = a(), l = e.unwrap(s), d = e.bindingHandlers.progress.defaults;
            return i = l instanceof Array ? l.map(function(e) {
                return o(e);
            }) : [ o(s) ], e.renderTemplate("progress", i, {
                templateEngine: e.stringTemplateEngine.instance
            }, n), r.addClass(d.css), {
                controlsDescendantBindings: !0
            };
        }
    }, e.bindingHandlers.radio = {
        init: function(n, a) {
            if (!e.isObservable(a())) throw new Error("radio binding should be used only with observable values");
            t(n).on("change", "input:radio", function(e) {
                setTimeout(function() {
                    var n = t(e.target), i = a(), o = n.val();
                    n.prop("disabled") || i(o);
                }, 0);
            });
        },
        update: function(n, a) {
            var i, o = e.unwrap(a()) || "", r = t(n).find('input[value="' + o.toString().replace(/"/g, '\\"') + '"]');
            r.length ? ((i = r.parent()).siblings().removeClass("active"), i.addClass("active"), 
            r.prop("checked", !0)) : ((i = t(n).find(".active")).removeClass("active"), i.find("input").prop("checked", !1));
        }
    }, e.bindingHandlers.toggle = {
        init: function(n, a) {
            var i = a();
            if (!e.isObservable(i)) throw new Error("toggle binding should be used only with observable values");
            t(n).on("click", function(t) {
                t.preventDefault();
                var n = e.unwrap(i);
                i(!n);
            });
        },
        update: function(t, n) {
            e.utils.toggleDomNodeCssClass(t, "active", e.unwrap(n()));
        }
    }, e.bindingHandlers.tooltip = {
        init: function(n) {
            var a = t(n);
            e.utils.domNodeDisposal.addDisposeCallback(n, function() {
                a.data("bs.tooltip") && a.tooltip("destroy");
            });
        },
        update: function(n, a) {
            var i = t(n), o = e.unwrap(a()), r = e.utils.unwrapProperties(o), s = i.data("bs.tooltip");
            s ? e.utils.extend(s.options, r) : i.tooltip(r);
        }
    };
}), function(e) {
    "undefined" == typeof fmSeoHelper && (fmSeoHelper = {}), fmSeoHelper.defaults = {
        $btnImportDialog: e("#btnImportDialog"),
        $importDialog: {},
        CSVToArray: function(t, n) {
            n = n || ",";
            var a = [ [] ], i = t.split("\n");
            return e.each(i, function(e, t) {
                var n = t.split("\t");
                if (n.length < 2 && (n = t.split(",")), 2 === n.length) {
                    var i = n[0].trim(), o = n[1].trim();
                    i.length > 0 && o.length > 0 && a.push([ i, o ]);
                }
            }), a;
        },
        SortRedirects: function(e, t) {
            if (void 0 === e || void 0 === t) return -1;
            var n = e.From.toLowerCase(), a = t.From.toLowerCase(), i = e.To.toLowerCase(), o = t.To.toLowerCase();
            return n < a ? -1 : n > a ? 1 : i < o ? -1 : i > o ? 1 : 0;
        }
    };
}(jQuery), function(e) {
    function t(t, n, a, i, o) {
        "function" == typeof a && (o = i, i = a, a = {}), e.ajax({
            type: t,
            url: fmSeoHelper.baseServicepath + n,
            data: a,
            beforeSend: fmSeoHelper.serviceFramework.setModuleHeaders
        }).done(function(e) {
            "function" == typeof i && i(e);
        }).always(function(e) {
            "function" == typeof o && o(e);
        });
    }
    "undefined" == typeof fmSeoHelper && (fmSeoHelper = {}), fmSeoHelper.api = {
        listPageData: function(e, n, a) {
            t("GET", "Page/ListPageData?page=" + e.Page + "&size=" + e.PageSize, n, a);
        },
        savePageData: function(e, n, a) {
            t("POST", "Page/SavePageData", e, n, a);
        }
    }, fmSeoHelper.serviceFramework = e.ServicesFramework(fmSeoHelper.moduleId), fmSeoHelper.baseServicepath = fmSeoHelper.serviceFramework.getServiceRoot("ForemostMedia/SeoHelper");
}(jQuery), function(e) {
    function t(e) {
        var t = this;
        t.tabId = ko.observable(e.TabId), t.name = ko.observable(e.Name), t.title = ko.observable(e.Title), 
        t.description = ko.observable(e.Description), t.isDanger = ko.computed(function() {
            return n(t.name()) || n(t.title()) || n(t.description());
        }, t), t.isEditing = ko.observable(!1);
    }
    function n(e) {
        return null === e || null !== e.match(/^ *$/);
    }
    "undefined" == typeof fmSeoHelper && (fmSeoHelper = {}), void 0 === fmSeoHelper.models && (fmSeoHelper.models = {}), 
    fmSeoHelper.models.fmPages = function(n) {
        function a() {
            i.loadingPages(!0);
            var n = {
                Page: i.currentPage(),
                PageSize: i.pageSize()
            };
            fmSeoHelper.api.listPageData(n, function(n) {
                i.pages.removeAll(), i.tabCount(n.TotalTabs), i.tabCount() > i.pageSize() ? i.showPager(!0) : i.showPager(!1), 
                e.each(n.Tabs, function(e, n) {
                    i.pages.push(new t(n));
                });
            }, function() {
                i.loadingPages(!1);
            });
        }
        var i = this;
        i.loadingPages = ko.observable(!1), i.isLoading = ko.computed(function() {
            return i.loadingPages();
        }, i), i.pages = ko.observableArray(), i.currentPage = ko.observable(1), i.pageSize = ko.observable(10), 
        i.tabCount = ko.observable(), i.maxPages = 5, i.directions = !0, i.boundary = !0, 
        i.text = {
            first: "First",
            last: "Last",
            back: "«",
            forward: "»"
        }, i.showPager = ko.observable(!1), i.currentPage.subscribe(function(e) {
            i.isLoading() || a();
        }), i.settings = n, i.initialize = function() {
            ko.applyBindings(i, document.getElementById(i.settings.nodeId)), i.fetchPageData();
        }, i.fetchPageData = a, i.savePageData = function(e) {
            i.loadingPages(!0);
            var t = {
                TabId: e.tabId(),
                Name: e.name(),
                Title: e.title(),
                Description: e.description()
            };
            fmSeoHelper.api.savePageData(t, function() {
                e.isEditing(!1);
            }, function() {
                i.loadingPages(!1);
            });
        };
    }, fmSeoHelper.models.fmRedirect = function(e) {
        var t = this;
        void 0 === e && (e = {
            From: "",
            To: ""
        }), t.from = ko.observable(e.From || ""), t.to = ko.observable(e.To || ""), t.hasBoth = function() {
            return t.from().trim().length > 0 && t.to().trim().length > 0;
        };
    }, fmSeoHelper.models.fm301s = function(t) {
        var n = this;
        n.settings = t, n.manipulating = ko.observable(!1), n.maxCount = 1e3, n.allItems = ko.observableArray([]), 
        n.itemsToImport = ko.observable(), n.totalCount = ko.computed(function() {
            return n.allItems().length || 0;
        }), n.canAdd = ko.computed(function() {
            return n.totalCount() < n.maxCount;
        }), n.add = function() {
            n.allItems.push(new fmSeoHelper.models.fmRedirect());
        }, n.importItems = function() {
            n.manipulating(!0);
            var t = fmSeoHelper.defaults.CSVToArray(n.itemsToImport(), "\t"), a = e.grep(n.allItems() || [], function(e, t) {
                return e.hasBoth();
            });
            e.each(t, function(e, t) {
                var n = new fmSeoHelper.models.fmRedirect({
                    From: t[0],
                    To: t[1]
                });
                n.hasBoth() && a.push(n);
            }), n.allItems(a), n.itemsToImport("");
        }, n.initialize = function() {
            console.log(n.settings.$tbJson);
            var t = e.parseJSON(n.settings.$tbJson.val());
            if (console.log(t), void 0 !== t && null !== t) {
                var a = [];
                e.each(t, function(e, t) {
                    a.push(new fmSeoHelper.models.fmRedirect(t));
                }), a.length < 1 && a.push(new fmSeoHelper.models.fmRedirect()), n.allItems(a);
            }
            ko.applyBindings(n, document.getElementById(n.settings.nodeId));
        }, n.removeItem = function(e) {
            n.allItems.remove(e);
        }, n.save = function() {
            var t = e.map(n.allItems(), function(e) {
                return e.from().length > 0 && e.to().length > 0 ? {
                    From: e.from(),
                    To: e.to()
                } : void 0;
            });
            return n.settings.$tbJson.val(JSON.stringify(t)), !0;
        };
    };
}(jQuery);