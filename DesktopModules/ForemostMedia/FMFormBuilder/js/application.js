/*! FM-Forms-DNN 2020-06-02 03:13 pm */

/*
 * knockout-file-bindings
 * Copyright 2014 Muhammad Safraz Razik
 * All Rights Reserved.
 * Use, reproduction, distribution, and modification of this code is subject to the terms and
 * conditions of the MIT license, available at http://www.opensource.org/licenses/mit-license.php
 *
 * Author: Muhammad Safraz Razik
 * Project: https://github.com/adrotec/knockout-file-bindings
 */
function setupValidation() {
    //Validation configurables
    //More info: https://github.com/Knockout-Contrib/Knockout-Validation
    ko.validation.init({
        registerExtenders: !0,
        messagesOnModified: !0,
        errorsAsTitle: !0,
        // enables/disables showing of errors as title attribute of the target element.
        errorsAsTitleOnModified: !1,
        // shows the error when hovering the input field (decorateElement must be true)
        messageTemplate: null,
        insertMessages: !0,
        // automatically inserts validation messages as <span></span>
        parseInputAttributes: !1,
        // parses the HTML5 validation attribute from a form element and adds that to the object
        writeInputAttributes: !1,
        // adds HTML5 input validation attributes to form elements that ko observable's are bound to
        decorateInputElement: !0,
        // false to keep backward compatibility
        decorateElementOnModified: !0,
        // true to keep backward compatibility
        errorClass: null,
        // single class for error message and element
        errorElementClass: "ko-validation-element",
        // class to decorate error element
        errorMessageClass: "ko-validation-message",
        // class to decorate error message
        allowHtmlMessages: !1,
        // allows HTML in validation messages
        grouping: {
            deep: !1,
            //by default grouping is shallow
            observable: !0,
            //and using observables
            live: !1
        }
    }), //Make DateTimePicker Binding Validatable
    ko.validation.makeBindingHandlerValidatable("dateTimePicker"), ko.validation.rules.allowedExtensions = {
        validator: function(a, b) {
            //REVIEW
            if (void 0 === a || "" === a || a === [] || void 0 === a.file() || 0 === b.length) return !0;
            if (null === a.file()) return !0;
            var c = a.file().name, d = c.substr(c.lastIndexOf(".") + 1), e = b.indexOf(d.toLowerCase()) >= 0;
            return e || (alert("." + d + " files cannot be uploaded."), a.clear && a.clear()), 
            e;
        },
        message: "Only file types with {0} extensions are allowed."
    }, ko.validation.rules.fileRequired = {
        validator: function(a, b) {
            return void 0 !== a && null !== a && "" !== a && a !== [] && void 0 !== a.file() && null !== a.file() || 0 == b;
        },
        message: "File upload is required"
    }, ko.validation.rules.dynamicPhone = {
        //data should be {requiredDigits: 9, inputName: "ddlCountry"}, validate us phone if United States, otherwise make sure has 9 digits.
        validator: function(a, b) {
            var c = $("select[name=" + b[1] + "]");
            if (void 0 !== c && "United States" == c.val()) {
                return /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/.test(a.trim());
            }
            return a.replace(/[^0-9]/, "").length >= b[0];
        },
        message: "Field requires at least {0} digits"
    }, ko.validation.registerExtenders();
}

function fmCleanupRecaptchaIframe() {
    var a = jQuery(".pls-container");
    a.length && a.parent().remove();
}

function recaptchaLoadCallBack() {
    g_RecaptchaReady = !0;
}

function recaptchaLoadElement(a) {
    var b = a.parent().data("sitekey"), c = a.parent().data("size"), d = a.parent().data("badge");
    if (void 0 !== b) {
        if (!g_RecaptchaReady) return void setTimeout(recaptchaLoadElement, 500, a);
        fmRenderCaptchaField(a.get(0), b, c, d);
    }
}

function fmRenderCaptchaField(a, b, c, d) {
    var e = "invisible" == c;
    grecaptcha.render(a, {
        sitekey: b,
        size: e ? "invisible" : "",
        badge: e ? d || "inline" : ""
    });
}

function fmResetForm(a) {
    var b = jQuery(a);
    ko.validation.showAllMessages(!1), b.each(function(a) {
        var b = jQuery(this);
        "submit" !== b.attr("type") && "radio" !== b.attr("type") && "checkbox" !== b.attr("type") && b.val(""), 
        "checkbox" !== b.attr("type") && "radio" !== b.attr("type") || b.removeAttr("checked");
    });
}

function QueryKeyValue(a) {
    var b = this;
    b.name = a.Name.toLowerCase() || "", b.value = a.Value || "";
}

function GetCountryList(a, b, c) {
    if (void 0 !== fmDnnFormBuilder.CountryList) //we cache these values in case their are multiple elements that use it, it we be cleared after form is finsihed being created
    return void c(fmDnnFormBuilder.CountryList);
    jQuery.ajax({
        url: b.getServiceRoot("ForemostMedia/fmformbuilder") + "form/GetCountries",
        type: "GET",
        contentType: !1,
        processData: !1,
        beforeSend: b.setModuleHeaders,
        headers: b.ajaxHeaders
    }).done(function(a, b, d) {
        c(a.locations);
    }).fail(function(a, b) {
        a.status, JSON.parse(a.responseText);
    }).always(function() {});
}

function GetRegionList(a, b, c) {
    jQuery.ajax({
        url: b.getServiceRoot("ForemostMedia/fmformbuilder") + "form/GetLocations?country=" + a,
        type: "GET",
        contentType: !1,
        processData: !1,
        beforeSend: b.setModuleHeaders,
        headers: b.ajaxHeaders
    }).done(function(a, b, d) {
        void 0 !== c.StateInput() ? c.StateInput().populateDropdown(a.locations, !0, c.InputValue()) : console.log("No state input to dynamically assign based on state information for country element named " + c.Name);
    }).fail(function(a, b) {
        a.status, JSON.parse(a.responseText);
    }).always(function() {});
}

function FormField(a, b, c) {
    function d(a, b, c) {
        jQuery.isEmptyObject(a) || void 0 === a || null == a ? e.Options([]) : (e.Options(a), 
        e.InputValue(e.ValueToSet)), b && $("label[for='" + e.Name + "']").html("United States" === c ? e.ChangeStateLabel[0] : "Canada" === c ? e.ChangeStateLabel[1] : e.ChangeStateLabel[2]);
    }
    var e = this, f = (a.Label || a.Name) + (a.LabelSeparator || ""), g = [ 2, 3, 4, 6 ];
    e.servicesFramework = b.servicesFramework, e.Name = a.Name, e.Label = f, e.LabelSeparator = a.LabelSeparator, 
    e.Element = a.Element.toLowerCase(), e.Type = a.Type, e.Mask = a.Mask || "", e.WrapperCSS = a.WrapperCssClass, 
    e.FieldCSS = a.FieldCssClass + (e.Mask.length > 0 ? " masked-input" : ""), e.Html = a.Html || "", 
    e.SalesforceField = a.SalesforceField || "", e.ActOnField = a.ActOnField || "", 
    e.VisibleCondition = a.VisibleCondition || !0, e.SubmitValue = a.SubmitValue || !0, 
    e.Enabled = !0, e.QueryStringKey = a.QueryStringKey || "", e.QueryStringEditable = a.QueryStringEditable || "", 
    e.OverrideModuleSetting = void 0 !== a.OverrideModuleSetting, e.OverrideModuleValue = void 0 !== a.OverrideModuleSetting ? a.OverrideModuleSetting : "", 
    e.IgnoreCache = void 0 !== a.IgnoreCache && a.IgnoreCache, e.HideLabel = a.HideLabel || !1, 
    //Element Types
    e.IsFormElement = "button" !== e.Element && "submit" !== e.Type && "recaptcha" !== e.Element && "htmlblock" !== e.Element, 
    e.IsDatePickerElement = "datetimepicker" === e.Element, e.IsSelectElement = "select" === e.Element, 
    e.IsFileElement = "input" === e.Element && "file" === e.Type, e.IsRadioElement = "input" === e.Element && "radio" === e.Type, 
    e.IsPhoneElement = "input" === e.Element && "tel" === e.Type, e.IsCheckboxElement = "input" === e.Element && "checkbox" === e.Type, 
    e.IsTextElement = "input" === e.Element && "radio" !== e.Type && "checkbox" !== e.Type && "submit" !== e.Type && "file" !== e.Type && "tel" !== e.Type, 
    e.IsTextAreaElement = "textarea" === e.Element, e.IsRecaptchaElement = function(a) {
        return "recaptcha" === e.Element && a.UseRecaptcha && a.RecaptchaSiteKey.length > 0;
    }, e.IsSubmitBtn = "input" === e.Element && "submit" === e.Type, e.IsBtn = "button" === e.Element, 
    e.IsRecaptchaInvisible = b.useRecaptchaInvisible || !1, e.IsSelectElement && (//if country element default to loading country list unless overriden, otherwise see if has setting
    e.LoadCountryList = "Country" === e.Name ? void 0 === a.LoadCountryList || a.LoadCountryList : void 0 !== a.LoadCountryList && a.LoadCountryList, 
    e.AssignStateInput = void 0 !== a.AssignStateInput ? a.AssignStateInput : "State", 
    //default to update dropdown on input element named state.
    e.ChangeStateLabel = void 0 !== a.ChangeStateLabel ? a.ChangeStateLabel : [ "State", "Province", "Region" ]), 
    //Element Options
    e.ElementHasOptions = e.IsRadioElement || e.IsCheckboxElement, e.DateTimePickerOptions = a.DatePickerConfig || {}, 
    e.ShowDatePickerIcon = a.ShowDatePickerIcon || !1, e.Layout = a.Layout, e.Options = ko.observableArray(a.Options || []), 
    e.HaveOptionCaption = void 0 === a.SelectCaption || "none" !== a.SelectCaption.toLowerCase(), 
    e.OptionsCaption = a.SelectCaption || "Choose...", e.Placeholder = a.Placeholder, 
    e.UserInfoField = a.UserInfoField || "", e.Validation = a.Validation || void 0, 
    e.ValueToSet = a.Value || void 0, //caching value to assign after population for select elements
    e.StateInput = ko.observable(), e.populateDropdown = d;
    var h = "";
    //so first set from query string if available, and possibly disable input
    if ("" !== e.QueryStringKey) for (var i = 0; i < c.length; i++) if (c[i].name === e.QueryStringKey) {
        h = c[i].value, e.Enabled = void 0 === a.QueryStringEditable || "false" !== a.QueryStringEditable.toLowerCase();
        break;
    }
    //then check session storage, which will be a merge of server user information and form cache values
    "" != h || e.IgnoreCache || jQuery.isEmptyObject(b.sessionInfo) || void 0 !== b.sessionInfo[e.Name] && b.sessionInfo[e.Name].length > 0 && (h = b.sessionInfo[e.Name]), 
    //then check userInfo storage, really only used if option is checked in settings and localStorage is not available
    "" == h && void 0 !== b.userInfo && e.UserInfoField.length > 0 && void 0 !== b.userInfo[e.UserInfoField] && b.userInfo[e.UserInfoField].length > 0 && (h = b.userInfo[e.UserInfoField]), 
    "" === h && (h = a.Value), e.OptionsColumnsClass = void 0 !== a.OptionsColumns ? " col-sm-" + (12 / g.indexOf(a.OptionsColumns) > -1 ? a.OptionsColumns : 3) : "", 
    "file" === e.Type ? (e.InputValue = ko.observable({
        dataUrl: ko.observable(),
        file: ko.observable()
    }), e.onClear = function(a) {
        confirm("Are you sure?") && a.clear && a.clear();
    }, e.InputValue().file.subscribe(function(a) {
    })) : "radio" === e.Type || "checkbox" === e.Type ? (e.SelectedItem = ko.observable(a.SelectedItem || ""), 
    e.SelectedItems = ko.observableArray(a.SelectedItems || [ a.SelectedItem ]).extend(a.Validation), 
    "radio" === e.Type && e.SelectedItem.subscribe(function(a) {
        e.SelectedItems([ a ]);
    })) : e.InputValue = ko.observable(h), //if type select and country we will add a subscribe to update dropdown and label accordingly
    e.IsSelectElement && e.LoadCountryList && (GetCountryList(e.InputValue(), e.servicesFramework, e.populateDropdown), 
    e.InputValue.subscribe(function() {
        GetRegionList(e.InputValue(), e.servicesFramework, e);
    })), //so if override settings have been applied to element, then after binding, we are adding a attribute with the override value to quickly grab with jquery on form submission
    e.addOverrideValues = function(a, b) {
        void 0 !== b && ko.applyBindingsToNode(a, {
            attr: {
                "data-fmOverrideValue": void 0 !== b.overrideValue ? b.overrideValue : null
            }
        }, b);
    };
}

function getFieldName(a, b) {
    for (var c = 0; c < a.Fields().length; c++) if (a.Fields()[c].Name === b) return a.Fields()[c];
}

function FieldGroup(a, b, c, d, e) {
    var f = this;
    f.Title = a.Title, f.Name = a.Name, f.ShowTitle = a.ShowTitle || !1, f.PanelId = "panel" + a.Name + "-" + b.moduleId, 
    f.IsActive = ko.computed(function() {
        return this === e();
    }, this), f.PanelClasses = d ? "tab-pane fm-dnn-form-panel fm-dnn-form-panel" : "fm-dnn-form-field-group", 
    f.Fields = ko.observableArray(ko.utils.arrayMap(a.formElements, function(a) {
        return new FormField(a, b, c);
    })), f.AddShowClass = ko.computed(function() {
        return d && f.IsActive();
    }), f.AddFadeClass = ko.computed(function() {
        return d && !f.IsActive();
    }), //so now add validation after all elements are done to allow for onlyIf conditionals    
    $.each(f.Fields(), function(a, b) {
        if (void 0 !== b.Validation) if (void 0 !== b.Validation.required && void 0 !== b.Validation.required.onlyIf && "function" != typeof b.Validation.required.onlyIf) {
            var c = "try {" + b.Validation.required.onlyIf + "} catch(ex){ console.log('Ko Validation OnlyIf logic had exception ' + ex.toString()); }", d = Function(c);
            b.Validation.required.onlyIf = d.bind(f), b.InputValue.extend(b.Validation);
        } else void 0 !== b.Validation && void 0 !== b.InputValue && b.InputValue.extend(b.Validation);
        if ("string" == typeof b.VisibleCondition) {
            var c = "try {" + b.VisibleCondition + "} catch(ex){ console.log('Ko VisibleCondition logic had exception ' + ex.toString()); }", e = Function(c);
            b.VisibleCondition = ko.computed(e.bind(f));
        }
        if (b.LoadCountryList && b.IsSelectElement) for (var g = 0; g < f.Fields().length; g++) f.Fields()[g].Name === b.AssignStateInput && f.Fields()[g].IsSelectElement && f.Fields()[a].StateInput(f.Fields()[g]);
    }), f.FieldGroupErrors = ko.validation.group(f, {
        deep: !0,
        observable: !1
    });
}

function FormModel(a) {
    function b(a) {
        ko.applyBindings(f, a);
    }
    function c(a, b, c) {
        var d = {};
        return a ? (jQuery(c).each(function(a, c) {
            //TODO: Why is this using jquery to get an object?  Shouldn't this data be part of our ko object?
            var e = jQuery(this), f = e.attr("type"), h = e.data(b), i = e.attr("name"), j = g[i];
            d[h] || void 0 === h || "" === h || (d[h] = "radio" === f || "checkbox" === f ? //Assign value of 0 or empty string if field is not checked
            void 0 !== j ? j : 1 === e.val() ? 0 : "" : j);
        }), d) : d;
    }
    var d = a.json.FMForm, e = jQuery("#fm-dnn-forms-" + a.moduleId), f = this, g = "";
    if (f.moduleServicesFramework = a.servicesFramework, f.FormMessagesLocation = (d.formMessageLocation || "top").toLowerCase(), 
    f.FormID = d.formID, f.FormCSS = d.formCssClass, f.PostData = ko.observable(g), 
    f.UseRecaptcha = a.useRecaptcha, f.IsRecaptchaInvisible = a.useRecaptchaInvisible || !1, 
    f.RecaptchaReposition = a.recaptchaReposition || "inline", f.TrackGoogleUrlCodes = a.trackGoogleUrlCodes || !1, 
    f.IncludeWebPageSubmittedFrom = a.includeWebPageSubmittedFrom || !1, f.UrlCalledFrom = a.urlCalledFrom || "", 
    f.RecaptchaSiteKey = a.recaptchaSiteKey, f.SubmitToSalesForce = a.useSalesForce, 
    f.SubmitToActOn = a.useActOn, f.RenderGroupsAsTabs = d.renderGroupsAsTabs || !1, 
    f.ShowTabsNavigation = d.showTabsNavigation || !1, f.ShowPrevNextButtons = d.showPrevNextButtons || !1, 
    f.PreviousButtonClasses = d.previousButtonClasses || "btn btn-primary", f.NextButtonClasses = d.nextButtonClasses || "btn btn-primary", 
    f.ActiveTab = ko.observable(), f.init = b, void 0 === d.fieldGroups) {
        f.RenderGroupsAsTabs = !1, d.fieldGroups = [];
        //Set Up Default Field Group
        var h = {
            Title: "Default Group",
            Name: "default",
            formElements: d.formElements,
            ShowTitle: !1
        };
        d.fieldGroups.push(h), d.formElements = [];
    }
    f.QueryStrings = ko.utils.arrayMap(a.queryString, function(a) {
        return new QueryKeyValue(a);
    }), f.FieldGroups = ko.observableArray(ko.utils.arrayMap(d.fieldGroups, function(b) {
        return new FieldGroup(b, a, f.QueryStrings, f.RenderGroupsAsTabs, f.ActiveTab);
    })), f.ResetForm = function() {
        f.FieldGroups(ko.utils.arrayMap(d.fieldGroups, function(b) {
            return new FieldGroup(b, a, f.QueryStrings, f.RenderGroupsAsTabs, f.ActiveTab);
        }));
    }, f.errors = ko.validation.group(f, {
        deep: !0,
        observable: !1
    }), f.processCallback = function(a) {
        //function call for processing function callback on form submit 
        //Ex: callback = namespace.otherobject.ourfunction -> window["namespace","otherObject", "ourFunction"]
        if (void 0 !== a && "" !== a && null !== a) {
            var b = a.split("."), c = window;
            try {
                for (var d = 0; d < b.length; d++) c = c[b[d]];
                c();
            } catch (a) {
                console.log(a.name + ", Form submission callback doesn't exist or is in improper format");
            }
        }
    }, f.fmSerializeFormObject = function(a, b) {
        f.submitFmFormBuilderForm(a, b, "submitform");
    }, f.fmTestSubmission = function(a, b) {
        f.submitFmFormBuilderForm(a, b, "testform");
    }, f.fmSetupOptions = function(a) {
        return void 0 !== a.value ? a.value : a.text;
    }, f.fmBuildIds = function(a) {
        return "rb" + (void 0 !== a.text ? a.text.replace(/\s+/g, "").replace("/", "") : "ListItem") + (void 0 !== a.value ? "-" + a.value.toLowerCase().replace(/\s+/g, "") : "");
    }, f.fmSetValue = function(a) {
        return void 0 !== a.value ? a.value : a.text;
    }, f.ShowNext = ko.observable(!0), f.ShowPrev = ko.observable(!1), f.ShowHideButtons = function() {
        f.ShowNext(f.ActiveTabIndex() + 1 < f.FieldGroups().length), f.ShowPrev(f.ActiveTabIndex() > 0);
    }, f.MoveNext = function() {
        if (f.ActiveTab().FieldGroupErrors().length > 0) return f.ActiveTab().FieldGroupErrors.showAllMessages(), 
        !1;
        var a = f.FieldGroups().length;
        return f.ActiveTabIndex() + 1 < a && (f.ActiveTabIndex(f.ActiveTabIndex() + 1), 
        f.ActiveTab(f.FieldGroups()[f.ActiveTabIndex()])), f.ShowHideButtons(), !0;
    }, f.MovePrev = function() {
        f.ActiveTabIndex() - 1 >= 0 && (f.ActiveTabIndex(f.ActiveTabIndex() - 1), f.ActiveTab(f.FieldGroups()[f.ActiveTabIndex()])), 
        f.ShowHideButtons();
    }, f.ActiveTab(f.FieldGroups()[0]), f.ActiveTabIndex = ko.observable(0), f.ChangeTab = function(a, b) {
        //Set Active Tab
        f.ActiveTab(a);
        //Set Active Tab Index
        var c = jQuery(b.currentTarget).data("tabindex");
        f.ActiveTabIndex(c), //Show/Hide Prev/Next Buttons
        f.ShowHideButtons();
    }, f.submitFmFormBuilderForm = function(b, d, h) {
        var i = "both" === f.FormMessagesLocation ? ".fm-alert-wrap" : ".fm-alert-wrap.alert-wrap-" + f.FormMessagesLocation, j = e.find(i), k = e.find(".fm-success-alert").first(), l = e.find(".fm-error-alert").first();
        if (f.errors().length > 0) return f.errors.showAllMessages(), f.FieldGroups().length > 1 && j.html("").append(l.clone().html("Form Validation Errors: Please be sure to fill in all required fields on the form.")), 
        !1;
        var m = "#" + f.FormID, n = m + ' input[data-submitvalue="true"], ' + m + " select, " + m + " textarea";
        //configure tab module settings overrides if any, these can override server settings for dynamic redirects, etc
        if (jQuery(m).find("select[data-fmoverride]").length > 0) {
            var o = jQuery(m).find("select[data-fmoverride]"), p = [];
            $.each(o, function(a, b) {
                var c = $(b).attr("name"), d = $(b).attr("data-fmoverride"), e = $(b).find(":selected").attr("data-fmoverridevalue");
                void 0 !== e && "" != e && p.push({
                    ElementId: c,
                    OverrideSetting: d,
                    OverrideValue: e
                });
            });
        }
        g = jQuery(n).serializeObject(), f.TrackGoogleUrlCodes && (g.hidutm_campaign = getCookieKeyValue("campaign"), 
        g.hidutm_source = getCookieKeyValue("source"), g.hidutm_medium = getCookieKeyValue("medium"), 
        g.hidgclid = getCookieKeyValue("gclid"), g.hidutm_term = getCookieKeyValue("term"), 
        g.hidutm_content = getCookieKeyValue("content"), g.hidutm_fbclid = getCookieKeyValue("fbclid"), 
        g.hidutm_mscklid = getCookieKeyValue("mscklid")), f.IncludeWebPageSubmittedFrom && (g.hidWebPageSubmittedFrom = f.UrlCalledFrom || "");
        var q = "", r = [], s = [], t = "", u = {};
        "undefined" != typeof Storage && (t = JSON.parse(sessionStorage.getItem("userInfo")));
        for (var v = 0; v < f.FieldGroups().length; v++) {
            var w = f.FieldGroups()[v].Fields();
            if (w.length > 0) for (var x = 0; x < w.length; x++) {
                var y = w[x].Type;
                if (//dynamically add form values to our session storage merge object
                "submit" != y && "radio" != y && "checkbox" != y && "" !== w[x].InputValue() && void 0 !== w[x].InputValue() && (u[w[x].Name] = w[x].InputValue()), 
                "file" === y) {
                    var z = w[x].InputValue().file();
                    if (void 0 !== z) {
                        r.push(z);
                        var A = {};
                        void 0 !== w[x].SalesforceField && (A.salesforceField = w[x].SalesforceField), void 0 !== w[x].ActonField && (A.actOnField = w[x].ActonField), 
                        void 0 === A.salesforceField && void 0 === A.actonField || (A.fileName = z.name, 
                        s.push(A));
                    }
                }
            }
        }
        if ("undefined" != typeof Storage) //if we have an existing cache object then merge the two, overwriting with the new form values
        if (null !== t && "" !== t) {
            var B = sessionStorage.getItem("userInfo");
            t = JSON.parse(sessionStorage.getItem("userInfo"));
            var C = jQuery.extend(JSON.parse(B), u);
            sessionStorage.setItem("userInfo", JSON.stringify(C));
        } else //otherwise create cache from this form data directly
        sessionStorage.setItem("userInfo", JSON.stringify(u));
        var D = c(f.SubmitToSalesForce, "sfname", n), E = c(f.SubmitToActOn, "actonname", n);
        q = JSON.stringify({
            moduleId: a.moduleId,
            tabId: a.tabId,
            form: g,
            salesForceForm: D,
            actOnForm: E,
            thirdPartyFileMappings: s,
            overrideSettings: p
        });
        var F = e.find(".fm-loading-div"), G = d.currentTarget.id;
        $submitButton = jQuery("#" + G), $submitButton.attr("disabled", "disabled"), F.show();
        var H = new FormData();
        H.append("formData", q);
        for (var v = 0; v < r.length; v++) H.append("UploadedFiles" + v, r[v]);
        return jQuery.ajax({
            url: f.moduleServicesFramework.getServiceRoot("ForemostMedia/fmformbuilder") + "form/" + h,
            type: "POST",
            contentType: !1,
            processData: !1,
            data: H,
            //beforeSend: self.moduleServicesFramework.setModuleHeaders,
            headers: a.ajaxHeaders
        }).done(function(b, c, d) {
            if (b.redirect) f.processCallback(b.submitCallback), -1 !== b.redirectUrl.toString().indexOf("http") ? window.location.assign(b.redirectUrl) : window.location = b.redirectUrl; else if (j.html("").append(k.clone()), 
            f.processCallback(b.submitCallback), j[0].focus(), a.sessionInfo = f.getSessionStorage(), 
            f.ResetForm(), //Set First Field Group As Active
            f.ActiveTab(f.FieldGroups()[0]), f.ActiveTabIndex = ko.observable(0), f.ShowHideButtons(), 
            f.UseRecaptcha && "undefined" != typeof grecaptcha) {
                //Cleanup Recaptcha iFrame
                var g = e.find(".FMrecaptcha");
                fmCleanupRecaptchaIframe(), $.each(g, function(a, b) {
                    recaptchaLoadElement($(b));
                });
            }
        }).fail(function(a, b) {
            var c = a.status, d = JSON.parse(a.responseText);
            417 === c ? //Recaptcha Issue
            //Show Recaptcha Error, Reset Recaptcha Field
            j.html("").append(l.clone().html(d.message)) : void 0 !== d.fileTypeError ? j.html("").append(l.clone().html(d.message)) : j.html("").append(l.clone().html());
        }).always(function() {
            $submitButton.removeAttr("disabled", "disabled"), F.hide();
        }), !1;
    }, f.getSessionStorage = function() {
        if ("undefined" != typeof Storage) {
            var a = sessionStorage.getItem("userInfo");
            try {
                null !== a ? "object" == typeof a ? sessionCache = a : void 0 !== a && (sessionCache = JSON.parse(a)) : sessionInfo = {};
            } catch (a) {
                //will sometimes fail parsing of user info in Chrome        
                sessionCache = {};
            }
            return sessionCache;
        }
    };
}

function fmSetupFieldMasks(a) {
    jQuery.each(a, function(a, b) {
        var c = jQuery(this).data("mask");
        jQuery(this).mask(c);
    });
}

function getCookieKeyValue(a) {
    var b = jQuery.cookie("SiteMarketingSessionData") || "";
    if (b.length > 0) for (var c = b.split("&"), d = 0; d < c.length; d++) {
        var e = c[d], f = e.split("=");
        if (2 == f.length && (cName = f[0], cValue = f[1], cName === a)) return cValue;
    }
    return "";
}

function fmValidCookie(a) {
    return void 0 !== jQuery.cookie(a) && jQuery.cookie(a).length > 0;
}

!function(a) {
    // Module systems magic dance.
    "function" == typeof require && "object" == typeof exports && "object" == typeof module ? // CommonJS or Node: hard-coded dependency on "knockout"
    a(require("knockout")) : "function" == typeof define && define.amd ? // AMD anonymous module with hard-coded dependency on "knockout"
    define([ "knockout" ], a) : // <script> tag: use the global `ko` object, attaching a `mapping` property
    a(ko);
}(function(a) {
    function b(a, b) {
        var c = {};
        for (var d in a) c[d] = void 0 !== b[d] ? b[d] : a[d];
        return c;
    }
    function c(a, b, c) {
        var b = Array.isArray(b) ? b : b.split(" ");
        return b.forEach(function(b) {
            a.classList[c](b);
        }), a;
    }
    function d(a, b) {
        return c(a, b, "add");
    }
    function e(a, b) {
        return c(a, b, "remove");
    }
    function f(a, b) {
        return a.classList.contains(b);
    }
    var g = {
        customFileInputSystemOptions: {
            wrapperClass: "custom-file-input-wrapper",
            fileNameClass: "custom-file-input-file-name",
            buttonGroupClass: "custom-file-input-button-group",
            buttonClass: "custom-file-input-button",
            clearButtonClass: "custom-file-input-clear-button",
            buttonTextClass: "custom-file-input-button-text"
        },
        defaultOptions: {
            wrapperClass: "input-group",
            fileNameClass: "disabled form-control",
            noFileText: "No file chosen",
            buttonGroupClass: "input-group-btn",
            buttonClass: "btn btn-primary",
            clearButtonClass: "btn btn-default",
            buttonText: "Choose File",
            changeButtonText: "Change",
            clearButtonText: "Clear",
            fileName: !0,
            clearButton: !0,
            onClear: function(a, b) {
                "function" == typeof a.clear && a.clear();
            }
        }
    }, h = window.URL || window.webkitURL;
    return a.bindingHandlers.fileInput = {
        init: function(b, c) {
            function d(b, c, d) {
                if (e.objectURL && a.isObservable(e.objectURL)) {
                    var f = b && h.createObjectURL(b);
                    if (f) {
                        var g = e.objectURL();
                        g && h.revokeObjectURL(g), e.objectURL(f);
                    }
                }
                e.base64String && a.isObservable(e.base64String) && (e.dataURL && a.isObservable(e.dataURL) || (e.dataURL = a.observable())), 
                e.base64StringArray && a.isObservable(e.base64StringArray) && (e.dataURLArray && a.isObservable(e.dataURLArray) || (e.dataURLArray = a.observableArray()));
                var i = [ "binaryString", "text", "dataURL", "arrayBuffer" ], j = {}, k = function(a) {
                    var b = !0;
                    j[a] = !0, i.forEach(function(a) {
                        b = b && j[a];
                    }), b && d();
                };
                i.forEach(function(d) {
                    var f = "readAs" + (d.substr(0, 1).toUpperCase() + d.substr(1));
                    if (!("dataURL" == d || e[d] && a.isObservable(e[d]))) return k(d), !0;
                    if (!b) return k(d), !0;
                    0 == c && e[d + "Array"] && a.isObservable(e[d + "Array"]) && e[d + "Array"]([]);
                    var g = new FileReader();
                    g.onload = function(b) {
                        function g(b, d) {
                            0 == c && e[d] && a.isObservable(e[d]) && e[d](b), e[d + "Array"] && a.isObservable(e[d + "Array"]) && e[d + "Array"].push(b);
                        }
                        if (g(b.target.result, d), k(d), "readAsDataURL" == f && (e.base64String || e.base64StringArray)) {
                            var h = b.target.result.split(",");
                            2 === h.length && g(h[1], "base64String");
                        }
                    }, g[f](b);
                });
            }
            var e = a.utils.unwrapObservable(c()) || {};
            e.dataUrl && (e.dataURL = e.dataUrl), e.objectUrl && (e.objectURL = e.objectUrl), 
            e.file = e.file || a.observable(), e.fileArray = e.fileArray || a.observableArray([]), 
            e.clear = e.clear || function() {
                [ "objectURL", "base64String", "binaryString", "text", "dataURL", "arrayBuffer" ].forEach(function(b, c) {
                    if (e[b + "Array"] && a.isObservable(e[b + "Array"])) for (var d = e[b + "Array"]; d().length; ) {
                        var f = d.splice(0, 1);
                        "objectURL" == b && h.revokeObjectURL(f);
                    }
                    e[b] && a.isObservable(e[b]) && e[b](null);
                }), b.value = "", e.file(null), e.fileArray([]);
            }, e.fileArray.subscribe(function(a) {
                if (!a.length) return void c().valueHasMutated();
                var b = [], e = function(d) {
                    var e = !0;
                    b[d] = !0;
                    for (var f in a) e = e && b[f];
                    e && c().valueHasMutated();
                };
                a.forEach(function(a, b) {
                    d(a, b, function() {
                        e(b);
                    });
                });
            }), b.onchange = function() {
                var a = this.files[0], b = [];
                if (a) {
                    for (var c = 0; c < this.files.length; c++) // FileList is not an array
                    b.push(this.files[c]);
                    e.file(a);
                }
                e.fileArray(b);
            }, a.utils.domNodeDisposal.addDisposeCallback(b, function() {
                (a.utils.unwrapObservable(c()) || {}).clear = void 0;
            });
        },
        update: function(a, b, c) {}
    }, a.bindingHandlers.fileDrag = {
        update: function(b, c, f) {
            var g = a.utils.unwrapObservable(c()) || {};
            b.getAttribute("file-drag-injected") || (d(b, "filedrag"), b.ondragover = b.ondragleave = b.ondrop = function(a) {
                if (a.stopPropagation(), a.preventDefault(), "dragover" == a.type ? d(b, "hover") : e(b, "hover"), 
                "drop" == a.type && a.dataTransfer) {
                    var c = a.dataTransfer.files, f = c[0], h = [];
                    if (f) {
                        for (var i = 0; i < c.length; i++) h.push(c[i]);
                        g.file(f);
                    }
                    g.fileArray(h);
                }
            }, b.setAttribute("file-drag-injected", 1));
        }
    }, a.bindingHandlers.customFileInput = {
        init: function(c, h, i) {
            var j = a.utils.unwrapObservable(h());
            if (!1 !== j) {
                "object" != typeof j && (j = {});
                var k = g.customFileInputSystemOptions;
                j = b(g.defaultOptions, j);
                var l = d(document.createElement("span"), [ k.wrapperClass, j.wrapperClass ]), m = d(document.createElement("span"), [ k.buttonGroupClass, j.buttonGroupClass ]), n = d(document.createElement("span"), k.buttonClass);
                if (m.appendChild(n), l.appendChild(m), c.parentNode.insertBefore(l, c), n.appendChild(c), 
                j.fileName) {
                    var o = document.createElement("input");
                    o.setAttribute("type", "text"), o.setAttribute("disabled", "disabled"), m.parentNode.insertBefore(d(o, k.fileNameClass), m), 
                    f(m, "btn-group") && d(e(m, "btn-group"), "input-group-btn");
                } else f(m, "input-group-btn") && d(e(m, "input-group-btn"), "btn-group");
                c.parentNode.insertBefore(d(document.createElement("span"), k.buttonTextClass), c);
            }
        },
        update: function(c, e, f) {
            var h = a.utils.unwrapObservable(e());
            if (!1 !== h) {
                "object" != typeof h && (h = {});
                var i = g.customFileInputSystemOptions;
                h = b(g.defaultOptions, h);
                var j = f();
                if (j.fileInput) {
                    var k = a.utils.unwrapObservable(j.fileInput) || {}, l = a.utils.unwrapObservable(k.file), m = c.parentNode, n = m.parentNode, o = n.parentNode;
                    d(m, a.utils.unwrapObservable(h.buttonClass));
                    if (m.querySelector("." + i.buttonTextClass).innerText = a.utils.unwrapObservable(l ? h.changeButtonText : h.buttonText), 
                    h.fileName) {
                        var p = o.querySelector("." + i.fileNameClass);
                        d(p, a.utils.unwrapObservable(h.fileNameClass)), l && l.name ? k.fileArray().length > 2 ? p.value = k.fileArray().length + " files" : p.value = k.fileArray().map(function(a) {
                            return a.name;
                        }).join(", ") : p.value = a.utils.unwrapObservable(h.noFileText);
                    }
                    var q = n.querySelector("." + i.clearButtonClass);
                    q || (q = d(document.createElement("span"), i.clearButtonClass), q.onclick = function(a) {
                        h.onClear(k, h);
                    }, n.appendChild(q)), q.innerText = a.utils.unwrapObservable(h.clearButtonText), 
                    d(q, a.utils.unwrapObservable(h.clearButtonClass)), l && h.clearButton && l.name || q.parentNode.removeChild(q);
                }
            }
        }
    }, a.fileBindings = g, g;
}), function(a, b) {
    "object" == typeof exports && "undefined" != typeof module ? module.exports = b() : "function" == typeof define && define.amd ? define(b) : a.moment = b();
}(this, function() {
    "use strict";
    function a() {
        return fb.apply(null, arguments);
    }
    function b(a) {
        return a instanceof Array || "[object Array]" === Object.prototype.toString.call(a);
    }
    function c(a) {
        return null != a && "[object Object]" === Object.prototype.toString.call(a);
    }
    function d(a, b) {
        return Object.prototype.hasOwnProperty.call(a, b);
    }
    function e(a) {
        if (Object.getOwnPropertyNames) return 0 === Object.getOwnPropertyNames(a).length;
        var b;
        for (b in a) if (d(a, b)) return;
        return 1;
    }
    function f(a) {
        return void 0 === a;
    }
    function g(a) {
        return "number" == typeof a || "[object Number]" === Object.prototype.toString.call(a);
    }
    function h(a) {
        return a instanceof Date || "[object Date]" === Object.prototype.toString.call(a);
    }
    function i(a, b) {
        for (var c = [], d = 0; d < a.length; ++d) c.push(b(a[d], d));
        return c;
    }
    function j(a, b) {
        for (var c in b) d(b, c) && (a[c] = b[c]);
        return d(b, "toString") && (a.toString = b.toString), d(b, "valueOf") && (a.valueOf = b.valueOf), 
        a;
    }
    function k(a, b, c, d) {
        return ra(a, b, c, d, !0).utc();
    }
    function l(a) {
        return null == a._pf && (a._pf = {
            empty: !1,
            unusedTokens: [],
            unusedInput: [],
            overflow: -2,
            charsLeftOver: 0,
            nullInput: !1,
            invalidEra: null,
            invalidMonth: null,
            invalidFormat: !1,
            userInvalidated: !1,
            iso: !1,
            parsedDateParts: [],
            era: null,
            meridiem: null,
            rfc2822: !1,
            weekdayMismatch: !1
        }), a._pf;
    }
    function m(a) {
        if (null == a._isValid) {
            var b = l(a), c = gb.call(b.parsedDateParts, function(a) {
                return null != a;
            }), d = !isNaN(a._d.getTime()) && b.overflow < 0 && !b.empty && !b.invalidEra && !b.invalidMonth && !b.invalidWeekday && !b.weekdayMismatch && !b.nullInput && !b.invalidFormat && !b.userInvalidated && (!b.meridiem || b.meridiem && c);
            if (a._strict && (d = d && 0 === b.charsLeftOver && 0 === b.unusedTokens.length && void 0 === b.bigHour), 
            null != Object.isFrozen && Object.isFrozen(a)) return d;
            a._isValid = d;
        }
        return a._isValid;
    }
    function n(a) {
        var b = k(NaN);
        return null != a ? j(l(b), a) : l(b).userInvalidated = !0, b;
    }
    function o(a, b) {
        var c, d, e;
        if (f(b._isAMomentObject) || (a._isAMomentObject = b._isAMomentObject), f(b._i) || (a._i = b._i), 
        f(b._f) || (a._f = b._f), f(b._l) || (a._l = b._l), f(b._strict) || (a._strict = b._strict), 
        f(b._tzm) || (a._tzm = b._tzm), f(b._isUTC) || (a._isUTC = b._isUTC), f(b._offset) || (a._offset = b._offset), 
        f(b._pf) || (a._pf = l(b)), f(b._locale) || (a._locale = b._locale), 0 < ib.length) for (c = 0; c < ib.length; c++) f(e = b[d = ib[c]]) || (a[d] = e);
        return a;
    }
    function p(b) {
        o(this, b), this._d = new Date(null != b._d ? b._d.getTime() : NaN), this.isValid() || (this._d = new Date(NaN)), 
        !1 === jb && (jb = !0, a.updateOffset(this), jb = !1);
    }
    function q(a) {
        return a instanceof p || null != a && null != a._isAMomentObject;
    }
    function r(b) {
        !1 === a.suppressDeprecationWarnings && "undefined" != typeof console && console.warn && console.warn("Deprecation warning: " + b);
    }
    function s(b, c) {
        var e = !0;
        return j(function() {
            if (null != a.deprecationHandler && a.deprecationHandler(null, b), e) {
                for (var f, g, h = [], i = 0; i < arguments.length; i++) {
                    if (f = "", "object" == typeof arguments[i]) {
                        for (g in f += "\n[" + i + "] ", arguments[0]) d(arguments[0], g) && (f += g + ": " + arguments[0][g] + ", ");
                        f = f.slice(0, -2);
                    } else f = arguments[i];
                    h.push(f);
                }
                r(b + "\nArguments: " + Array.prototype.slice.call(h).join("") + "\n" + new Error().stack), 
                e = !1;
            }
            return c.apply(this, arguments);
        }, c);
    }
    function t(b, c) {
        null != a.deprecationHandler && a.deprecationHandler(b, c), kb[b] || (r(c), kb[b] = !0);
    }
    function u(a) {
        return "undefined" != typeof Function && a instanceof Function || "[object Function]" === Object.prototype.toString.call(a);
    }
    function v(a, b) {
        var e, f = j({}, a);
        for (e in b) d(b, e) && (c(a[e]) && c(b[e]) ? (f[e] = {}, j(f[e], a[e]), j(f[e], b[e])) : null != b[e] ? f[e] = b[e] : delete f[e]);
        for (e in a) d(a, e) && !d(b, e) && c(a[e]) && (f[e] = j({}, f[e]));
        return f;
    }
    function w(a) {
        null != a && this.set(a);
    }
    function x(a, b, c) {
        var d = "" + Math.abs(a), e = b - d.length;
        return (0 <= a ? c ? "+" : "" : "-") + Math.pow(10, Math.max(0, e)).toString().substr(1) + d;
    }
    function y(a, b, c, d) {
        var e = "string" == typeof d ? function() {
            return this[d]();
        } : d;
        a && (pb[a] = e), b && (pb[b[0]] = function() {
            return x(e.apply(this, arguments), b[1], b[2]);
        }), c && (pb[c] = function() {
            return this.localeData().ordinal(e.apply(this, arguments), a);
        });
    }
    function z(a, b) {
        return a.isValid() ? (b = A(b, a.localeData()), ob[b] = ob[b] || function(a) {
            for (var b, c = a.match(mb), d = 0, e = c.length; d < e; d++) pb[c[d]] ? c[d] = pb[c[d]] : c[d] = (b = c[d]).match(/\[[\s\S]/) ? b.replace(/^\[|\]$/g, "") : b.replace(/\\/g, "");
            return function(b) {
                for (var d = "", f = 0; f < e; f++) d += u(c[f]) ? c[f].call(b, a) : c[f];
                return d;
            };
        }(b), ob[b](a)) : a.localeData().invalidDate();
    }
    function A(a, b) {
        function c(a) {
            return b.longDateFormat(a) || a;
        }
        var d = 5;
        for (nb.lastIndex = 0; 0 <= d && nb.test(a); ) a = a.replace(nb, c), nb.lastIndex = 0, 
        --d;
        return a;
    }
    function B(a, b) {
        var c = a.toLowerCase();
        qb[c] = qb[c + "s"] = qb[b] = a;
    }
    function C(a) {
        return "string" == typeof a ? qb[a] || qb[a.toLowerCase()] : void 0;
    }
    function D(a) {
        var b, c, e = {};
        for (c in a) d(a, c) && (b = C(c)) && (e[b] = a[c]);
        return e;
    }
    function E(a, b) {
        rb[a] = b;
    }
    function F(a) {
        return a % 4 == 0 && a % 100 != 0 || a % 400 == 0;
    }
    function G(a) {
        return a < 0 ? Math.ceil(a) || 0 : Math.floor(a);
    }
    function H(a) {
        var b = +a, c = 0;
        return 0 != b && isFinite(b) && (c = G(b)), c;
    }
    function I(b, c) {
        return function(d) {
            return null != d ? (K(this, b, d), a.updateOffset(this, c), this) : J(this, b);
        };
    }
    function J(a, b) {
        return a.isValid() ? a._d["get" + (a._isUTC ? "UTC" : "") + b]() : NaN;
    }
    function K(a, b, c) {
        a.isValid() && !isNaN(c) && ("FullYear" === b && F(a.year()) && 1 === a.month() && 29 === a.date() ? (c = H(c), 
        a._d["set" + (a._isUTC ? "UTC" : "") + b](c, a.month(), Q(c, a.month()))) : a._d["set" + (a._isUTC ? "UTC" : "") + b](c));
    }
    function L(a, b, c) {
        lb[a] = u(b) ? b : function(a, d) {
            return a && c ? c : b;
        };
    }
    function M(a, b) {
        return d(lb, a) ? lb[a](b._strict, b._locale) : new RegExp(N(a.replace("\\", "").replace(/\\(\[)|\\(\])|\[([^\]\[]*)\]|\\(.)/g, function(a, b, c, d, e) {
            return b || c || d || e;
        })));
    }
    function N(a) {
        return a.replace(/[-\/\\^$*+?.()|[\]{}]/g, "\\$&");
    }
    function O(a, b) {
        var c, d = b;
        for ("string" == typeof a && (a = [ a ]), g(b) && (d = function(a, c) {
            c[b] = H(a);
        }), c = 0; c < a.length; c++) Jb[a[c]] = d;
    }
    function P(a, b) {
        O(a, function(a, c, d, e) {
            d._w = d._w || {}, b(a, d._w, d, e);
        });
    }
    function Q(a, b) {
        if (isNaN(a) || isNaN(b)) return NaN;
        var c, d = (b % (c = 12) + c) % c;
        return a += (b - d) / 12, 1 == d ? F(a) ? 29 : 28 : 31 - d % 7 % 2;
    }
    function R(a, b) {
        var c;
        if (!a.isValid()) return a;
        if ("string" == typeof b) if (/^\d+$/.test(b)) b = H(b); else if (!g(b = a.localeData().monthsParse(b))) return a;
        return c = Math.min(a.date(), Q(a.year(), b)), a._d["set" + (a._isUTC ? "UTC" : "") + "Month"](b, c), 
        a;
    }
    function S(b) {
        return null != b ? (R(this, b), a.updateOffset(this, !0), this) : J(this, "Month");
    }
    function T() {
        function a(a, b) {
            return b.length - a.length;
        }
        for (var b, c = [], d = [], e = [], f = 0; f < 12; f++) b = k([ 2e3, f ]), c.push(this.monthsShort(b, "")), 
        d.push(this.months(b, "")), e.push(this.months(b, "")), e.push(this.monthsShort(b, ""));
        for (c.sort(a), d.sort(a), e.sort(a), f = 0; f < 12; f++) c[f] = N(c[f]), d[f] = N(d[f]);
        for (f = 0; f < 24; f++) e[f] = N(e[f]);
        this._monthsRegex = new RegExp("^(" + e.join("|") + ")", "i"), this._monthsShortRegex = this._monthsRegex, 
        this._monthsStrictRegex = new RegExp("^(" + d.join("|") + ")", "i"), this._monthsShortStrictRegex = new RegExp("^(" + c.join("|") + ")", "i");
    }
    function U(a) {
        return F(a) ? 366 : 365;
    }
    function V(a) {
        var b, c;
        return a < 100 && 0 <= a ? ((c = Array.prototype.slice.call(arguments))[0] = a + 400, 
        b = new Date(Date.UTC.apply(null, c)), isFinite(b.getUTCFullYear()) && b.setUTCFullYear(a)) : b = new Date(Date.UTC.apply(null, arguments)), 
        b;
    }
    function W(a, b, c) {
        var d = 7 + b - c;
        return d - (7 + V(a, 0, d).getUTCDay() - b) % 7 - 1;
    }
    function X(a, b, c, d, e) {
        var f, g = 1 + 7 * (b - 1) + (7 + c - d) % 7 + W(a, d, e), h = g <= 0 ? U(f = a - 1) + g : g > U(a) ? (f = a + 1, 
        g - U(a)) : (f = a, g);
        return {
            year: f,
            dayOfYear: h
        };
    }
    function Y(a, b, c) {
        var d, e, f = W(a.year(), b, c), g = Math.floor((a.dayOfYear() - f - 1) / 7) + 1;
        return g < 1 ? d = g + Z(e = a.year() - 1, b, c) : g > Z(a.year(), b, c) ? (d = g - Z(a.year(), b, c), 
        e = a.year() + 1) : (e = a.year(), d = g), {
            week: d,
            year: e
        };
    }
    function Z(a, b, c) {
        var d = W(a, b, c), e = W(a + 1, b, c);
        return (U(a) - d + e) / 7;
    }
    function $(a, b) {
        return a.slice(b, 7).concat(a.slice(0, b));
    }
    function _() {
        function a(a, b) {
            return b.length - a.length;
        }
        for (var b, c, d, e, f = [], g = [], h = [], i = [], j = 0; j < 7; j++) b = k([ 2e3, 1 ]).day(j), 
        c = N(this.weekdaysMin(b, "")), d = N(this.weekdaysShort(b, "")), e = N(this.weekdays(b, "")), 
        f.push(c), g.push(d), h.push(e), i.push(c), i.push(d), i.push(e);
        f.sort(a), g.sort(a), h.sort(a), i.sort(a), this._weekdaysRegex = new RegExp("^(" + i.join("|") + ")", "i"), 
        this._weekdaysShortRegex = this._weekdaysRegex, this._weekdaysMinRegex = this._weekdaysRegex, 
        this._weekdaysStrictRegex = new RegExp("^(" + h.join("|") + ")", "i"), this._weekdaysShortStrictRegex = new RegExp("^(" + g.join("|") + ")", "i"), 
        this._weekdaysMinStrictRegex = new RegExp("^(" + f.join("|") + ")", "i");
    }
    function aa() {
        return this.hours() % 12 || 12;
    }
    function ba(a, b) {
        y(a, 0, 0, function() {
            return this.localeData().meridiem(this.hours(), this.minutes(), b);
        });
    }
    function ca(a, b) {
        return b._meridiemParse;
    }
    function da(a) {
        return a ? a.toLowerCase().replace("_", "-") : a;
    }
    function ea(a) {
        for (var b, c, d, e, f = 0; f < a.length; ) {
            for (b = (e = da(a[f]).split("-")).length, c = (c = da(a[f + 1])) ? c.split("-") : null; 0 < b; ) {
                if (d = fa(e.slice(0, b).join("-"))) return d;
                if (c && c.length >= b && function(a, b) {
                    for (var c = Math.min(a.length, b.length), d = 0; d < c; d += 1) if (a[d] !== b[d]) return d;
                    return c;
                }(e, c) >= b - 1) break;
                b--;
            }
            f++;
        }
        return dc;
    }
    function fa(a) {
        var b = null;
        if (void 0 === gc[a] && "undefined" != typeof module && module && module.exports) try {
            b = dc._abbr, require("./locale/" + a), ga(b);
        } catch (b) {
            gc[a] = null;
        }
        return gc[a];
    }
    function ga(a, b) {
        var c;
        return a && ((c = f(b) ? ia(a) : ha(a, b)) ? dc = c : "undefined" != typeof console && console.warn && console.warn("Locale " + a + " not found. Did you forget to load it?")), 
        dc._abbr;
    }
    function ha(a, b) {
        if (null === b) return delete gc[a], null;
        var c, d = fc;
        if (b.abbr = a, null != gc[a]) t("defineLocaleOverride", "use moment.updateLocale(localeName, config) to change an existing locale. moment.defineLocale(localeName, config) should only be used for creating a new locale See http://momentjs.com/guides/#/warnings/define-locale/ for more info."), 
        d = gc[a]._config; else if (null != b.parentLocale) if (null != gc[b.parentLocale]) d = gc[b.parentLocale]._config; else {
            if (null == (c = fa(b.parentLocale))) return hc[b.parentLocale] || (hc[b.parentLocale] = []), 
            hc[b.parentLocale].push({
                name: a,
                config: b
            }), null;
            d = c._config;
        }
        return gc[a] = new w(v(d, b)), hc[a] && hc[a].forEach(function(a) {
            ha(a.name, a.config);
        }), ga(a), gc[a];
    }
    function ia(a) {
        var c;
        if (a && a._locale && a._locale._abbr && (a = a._locale._abbr), !a) return dc;
        if (!b(a)) {
            if (c = fa(a)) return c;
            a = [ a ];
        }
        return ea(a);
    }
    function ja(a) {
        var b, c = a._a;
        return c && -2 === l(a).overflow && (b = c[Lb] < 0 || 11 < c[Lb] ? Lb : c[Mb] < 1 || c[Mb] > Q(c[Kb], c[Lb]) ? Mb : c[Nb] < 0 || 24 < c[Nb] || 24 === c[Nb] && (0 !== c[Ob] || 0 !== c[Pb] || 0 !== c[Qb]) ? Nb : c[Ob] < 0 || 59 < c[Ob] ? Ob : c[Pb] < 0 || 59 < c[Pb] ? Pb : c[Qb] < 0 || 999 < c[Qb] ? Qb : -1, 
        l(a)._overflowDayOfYear && (b < Kb || Mb < b) && (b = Mb), l(a)._overflowWeeks && -1 === b && (b = Rb), 
        l(a)._overflowWeekday && -1 === b && (b = Sb), l(a).overflow = b), a;
    }
    function ka(a) {
        var b, c, d, e, f, g, h = a._i, i = ic.exec(h) || jc.exec(h);
        if (i) {
            for (l(a).iso = !0, b = 0, c = lc.length; b < c; b++) if (lc[b][1].exec(i[1])) {
                e = lc[b][0], d = !1 !== lc[b][2];
                break;
            }
            if (null == e) return void (a._isValid = !1);
            if (i[3]) {
                for (b = 0, c = mc.length; b < c; b++) if (mc[b][1].exec(i[3])) {
                    f = (i[2] || " ") + mc[b][0];
                    break;
                }
                if (null == f) return void (a._isValid = !1);
            }
            if (!d && null != f) return void (a._isValid = !1);
            if (i[4]) {
                if (!kc.exec(i[4])) return void (a._isValid = !1);
                g = "Z";
            }
            a._f = e + (f || "") + (g || ""), pa(a);
        } else a._isValid = !1;
    }
    function la(a, b, c, d, e, f) {
        var g = [ function(a) {
            var b = parseInt(a, 10);
            return b <= 49 ? 2e3 + b : b <= 999 ? 1900 + b : b;
        }(a), Ub.indexOf(b), parseInt(c, 10), parseInt(d, 10), parseInt(e, 10) ];
        return f && g.push(parseInt(f, 10)), g;
    }
    function ma(a) {
        var b, c, d, e, f = oc.exec(a._i.replace(/\([^)]*\)|[\n\t]/g, " ").replace(/(\s\s+)/g, " ").replace(/^\s\s*/, "").replace(/\s\s*$/, ""));
        if (f) {
            if (b = la(f[4], f[3], f[2], f[5], f[6], f[7]), c = f[1], d = b, e = a, c && $b.indexOf(c) !== new Date(d[0], d[1], d[2]).getDay() && (l(e).weekdayMismatch = !0, 
            !void (e._isValid = !1))) return;
            a._a = b, a._tzm = function(a, b, c) {
                if (a) return pc[a];
                if (b) return 0;
                var d = parseInt(c, 10), e = d % 100;
                return (d - e) / 100 * 60 + e;
            }(f[8], f[9], f[10]), a._d = V.apply(null, a._a), a._d.setUTCMinutes(a._d.getUTCMinutes() - a._tzm), 
            l(a).rfc2822 = !0;
        } else a._isValid = !1;
    }
    function na(a, b, c) {
        return null != a ? a : null != b ? b : c;
    }
    function oa(b) {
        var c, d, e, f, g, h, i, j = [];
        if (!b._d) {
            for (h = b, i = new Date(a.now()), e = h._useUTC ? [ i.getUTCFullYear(), i.getUTCMonth(), i.getUTCDate() ] : [ i.getFullYear(), i.getMonth(), i.getDate() ], 
            b._w && null == b._a[Mb] && null == b._a[Lb] && function(a) {
                var b, c, d, e, f, g, h, i, j;
                null != (b = a._w).GG || null != b.W || null != b.E ? (f = 1, g = 4, c = na(b.GG, a._a[Kb], Y(sa(), 1, 4).year), 
                d = na(b.W, 1), ((e = na(b.E, 1)) < 1 || 7 < e) && (i = !0)) : (f = a._locale._week.dow, 
                g = a._locale._week.doy, j = Y(sa(), f, g), c = na(b.gg, a._a[Kb], j.year), d = na(b.w, j.week), 
                null != b.d ? ((e = b.d) < 0 || 6 < e) && (i = !0) : null != b.e ? (e = b.e + f, 
                (b.e < 0 || 6 < b.e) && (i = !0)) : e = f), d < 1 || d > Z(c, f, g) ? l(a)._overflowWeeks = !0 : null != i ? l(a)._overflowWeekday = !0 : (h = X(c, d, e, f, g), 
                a._a[Kb] = h.year, a._dayOfYear = h.dayOfYear);
            }(b), null != b._dayOfYear && (g = na(b._a[Kb], e[Kb]), (b._dayOfYear > U(g) || 0 === b._dayOfYear) && (l(b)._overflowDayOfYear = !0), 
            d = V(g, 0, b._dayOfYear), b._a[Lb] = d.getUTCMonth(), b._a[Mb] = d.getUTCDate()), 
            c = 0; c < 3 && null == b._a[c]; ++c) b._a[c] = j[c] = e[c];
            for (;c < 7; c++) b._a[c] = j[c] = null == b._a[c] ? 2 === c ? 1 : 0 : b._a[c];
            24 === b._a[Nb] && 0 === b._a[Ob] && 0 === b._a[Pb] && 0 === b._a[Qb] && (b._nextDay = !0, 
            b._a[Nb] = 0), b._d = (b._useUTC ? V : function(a, b, c, d, e, f, g) {
                var h;
                return a < 100 && 0 <= a ? (h = new Date(a + 400, b, c, d, e, f, g), isFinite(h.getFullYear()) && h.setFullYear(a)) : h = new Date(a, b, c, d, e, f, g), 
                h;
            }).apply(null, j), f = b._useUTC ? b._d.getUTCDay() : b._d.getDay(), null != b._tzm && b._d.setUTCMinutes(b._d.getUTCMinutes() - b._tzm), 
            b._nextDay && (b._a[Nb] = 24), b._w && void 0 !== b._w.d && b._w.d !== f && (l(b).weekdayMismatch = !0);
        }
    }
    function pa(b) {
        if (b._f !== a.ISO_8601) if (b._f !== a.RFC_2822) {
            b._a = [], l(b).empty = !0;
            for (var c, e, f, g, h, i, j, k = "" + b._i, m = k.length, n = 0, o = A(b._f, b._locale).match(mb) || [], p = 0; p < o.length; p++) e = o[p], 
            (c = (k.match(M(e, b)) || [])[0]) && (0 < (f = k.substr(0, k.indexOf(c))).length && l(b).unusedInput.push(f), 
            k = k.slice(k.indexOf(c) + c.length), n += c.length), pb[e] ? (c ? l(b).empty = !1 : l(b).unusedTokens.push(e), 
            h = e, j = b, null != (i = c) && d(Jb, h) && Jb[h](i, j._a, j, h)) : b._strict && !c && l(b).unusedTokens.push(e);
            l(b).charsLeftOver = m - n, 0 < k.length && l(b).unusedInput.push(k), b._a[Nb] <= 12 && !0 === l(b).bigHour && 0 < b._a[Nb] && (l(b).bigHour = void 0), 
            l(b).parsedDateParts = b._a.slice(0), l(b).meridiem = b._meridiem, b._a[Nb] = function(a, b, c) {
                var d;
                return null == c ? b : null != a.meridiemHour ? a.meridiemHour(b, c) : (null != a.isPM && ((d = a.isPM(c)) && b < 12 && (b += 12), 
                d || 12 !== b || (b = 0)), b);
            }(b._locale, b._a[Nb], b._meridiem), null !== (g = l(b).era) && (b._a[Kb] = b._locale.erasConvertYear(g, b._a[Kb])), 
            oa(b), ja(b);
        } else ma(b); else ka(b);
    }
    function qa(d) {
        var e, k, r = d._i, s = d._f;
        return d._locale = d._locale || ia(d._l), null === r || void 0 === s && "" === r ? n({
            nullInput: !0
        }) : ("string" == typeof r && (d._i = r = d._locale.preparse(r)), q(r) ? new p(ja(r)) : (h(r) ? d._d = r : b(s) ? function(a) {
            var b, c, d, e, f, g, h = !1;
            if (0 === a._f.length) return l(a).invalidFormat = !0, a._d = new Date(NaN);
            for (e = 0; e < a._f.length; e++) f = 0, g = !1, b = o({}, a), null != a._useUTC && (b._useUTC = a._useUTC), 
            b._f = a._f[e], pa(b), m(b) && (g = !0), f += l(b).charsLeftOver, f += 10 * l(b).unusedTokens.length, 
            l(b).score = f, h ? f < d && (d = f, c = b) : (null == d || f < d || g) && (d = f, 
            c = b, g && (h = !0));
            j(a, c || b);
        }(d) : s ? pa(d) : f(k = (e = d)._i) ? e._d = new Date(a.now()) : h(k) ? e._d = new Date(k.valueOf()) : "string" == typeof k ? function(b) {
            var c = nc.exec(b._i);
            null === c ? (ka(b), !1 === b._isValid && (delete b._isValid, ma(b), !1 === b._isValid && (delete b._isValid, 
            b._strict ? b._isValid = !1 : a.createFromInputFallback(b)))) : b._d = new Date(+c[1]);
        }(e) : b(k) ? (e._a = i(k.slice(0), function(a) {
            return parseInt(a, 10);
        }), oa(e)) : c(k) ? function(a) {
            var b, c;
            a._d || (c = void 0 === (b = D(a._i)).day ? b.date : b.day, a._a = i([ b.year, b.month, c, b.hour, b.minute, b.second, b.millisecond ], function(a) {
                return a && parseInt(a, 10);
            }), oa(a));
        }(e) : g(k) ? e._d = new Date(k) : a.createFromInputFallback(e), m(d) || (d._d = null), 
        d));
    }
    function ra(a, d, f, g, h) {
        var i, j = {};
        return !0 !== d && !1 !== d || (g = d, d = void 0), !0 !== f && !1 !== f || (g = f, 
        f = void 0), (c(a) && e(a) || b(a) && 0 === a.length) && (a = void 0), j._isAMomentObject = !0, 
        j._useUTC = j._isUTC = h, j._l = f, j._i = a, j._f = d, j._strict = g, (i = new p(ja(qa(j))))._nextDay && (i.add(1, "d"), 
        i._nextDay = void 0), i;
    }
    function sa(a, b, c, d) {
        return ra(a, b, c, d, !1);
    }
    function ta(a, c) {
        var d, e;
        if (1 === c.length && b(c[0]) && (c = c[0]), !c.length) return sa();
        for (d = c[0], e = 1; e < c.length; ++e) c[e].isValid() && !c[e][a](d) || (d = c[e]);
        return d;
    }
    function ua(a) {
        var b = D(a), c = b.year || 0, e = b.quarter || 0, f = b.month || 0, g = b.week || b.isoWeek || 0, h = b.day || 0, i = b.hour || 0, j = b.minute || 0, k = b.second || 0, l = b.millisecond || 0;
        this._isValid = function(a) {
            var b, c, e = !1;
            for (b in a) if (d(a, b) && (-1 === Ib.call(sc, b) || null != a[b] && isNaN(a[b]))) return !1;
            for (c = 0; c < sc.length; ++c) if (a[sc[c]]) {
                if (e) return !1;
                parseFloat(a[sc[c]]) !== H(a[sc[c]]) && (e = !0);
            }
            return !0;
        }(b), this._milliseconds = +l + 1e3 * k + 6e4 * j + 1e3 * i * 60 * 60, this._days = +h + 7 * g, 
        this._months = +f + 3 * e + 12 * c, this._data = {}, this._locale = ia(), this._bubble();
    }
    function va(a) {
        return a instanceof ua;
    }
    function wa(a) {
        return a < 0 ? -1 * Math.round(-1 * a) : Math.round(a);
    }
    function xa(a, b) {
        y(a, 0, 0, function() {
            var a = this.utcOffset(), c = "+";
            return a < 0 && (a = -a, c = "-"), c + x(~~(a / 60), 2) + b + x(~~a % 60, 2);
        });
    }
    function ya(a, b) {
        var c, d, e = (b || "").match(a);
        return null === e ? null : 0 === (d = 60 * (c = ((e[e.length - 1] || []) + "").match(tc) || [ "-", 0, 0 ])[1] + H(c[2])) ? 0 : "+" === c[0] ? d : -d;
    }
    function za(b, c) {
        var d, e;
        return c._isUTC ? (d = c.clone(), e = (q(b) || h(b) ? b.valueOf() : sa(b).valueOf()) - d.valueOf(), 
        d._d.setTime(d._d.valueOf() + e), a.updateOffset(d, !1), d) : sa(b).local();
    }
    function Aa(a) {
        return -Math.round(a._d.getTimezoneOffset());
    }
    function Ba() {
        return !!this.isValid() && this._isUTC && 0 === this._offset;
    }
    function Ca(a, b) {
        var c, e, f, h = a, i = null;
        return va(a) ? h = {
            ms: a._milliseconds,
            d: a._days,
            M: a._months
        } : g(a) || !isNaN(+a) ? (h = {}, b ? h[b] = +a : h.milliseconds = +a) : (i = uc.exec(a)) ? (c = "-" === i[1] ? -1 : 1, 
        h = {
            y: 0,
            d: H(i[Mb]) * c,
            h: H(i[Nb]) * c,
            m: H(i[Ob]) * c,
            s: H(i[Pb]) * c,
            ms: H(wa(1e3 * i[Qb])) * c
        }) : (i = vc.exec(a)) ? (c = "-" === i[1] ? -1 : 1, h = {
            y: Da(i[2], c),
            M: Da(i[3], c),
            w: Da(i[4], c),
            d: Da(i[5], c),
            h: Da(i[6], c),
            m: Da(i[7], c),
            s: Da(i[8], c)
        }) : null == h ? h = {} : "object" == typeof h && ("from" in h || "to" in h) && (f = function(a, b) {
            var c;
            return a.isValid() && b.isValid() ? (b = za(b, a), a.isBefore(b) ? c = Ea(a, b) : ((c = Ea(b, a)).milliseconds = -c.milliseconds, 
            c.months = -c.months), c) : {
                milliseconds: 0,
                months: 0
            };
        }(sa(h.from), sa(h.to)), (h = {}).ms = f.milliseconds, h.M = f.months), e = new ua(h), 
        va(a) && d(a, "_locale") && (e._locale = a._locale), va(a) && d(a, "_isValid") && (e._isValid = a._isValid), 
        e;
    }
    function Da(a, b) {
        var c = a && parseFloat(a.replace(",", "."));
        return (isNaN(c) ? 0 : c) * b;
    }
    function Ea(a, b) {
        var c = {};
        return c.months = b.month() - a.month() + 12 * (b.year() - a.year()), a.clone().add(c.months, "M").isAfter(b) && --c.months, 
        c.milliseconds = b - a.clone().add(c.months, "M"), c;
    }
    function Fa(a, b) {
        return function(c, d) {
            var e;
            return null === d || isNaN(+d) || (t(b, "moment()." + b + "(period, number) is deprecated. Please use moment()." + b + "(number, period). See http://momentjs.com/guides/#/warnings/add-inverted-param/ for more info."), 
            e = c, c = d, d = e), Ga(this, Ca(c, d), a), this;
        };
    }
    function Ga(b, c, d, e) {
        var f = c._milliseconds, g = wa(c._days), h = wa(c._months);
        b.isValid() && (e = null == e || e, h && R(b, J(b, "Month") + h * d), g && K(b, "Date", J(b, "Date") + g * d), 
        f && b._d.setTime(b._d.valueOf() + f * d), e && a.updateOffset(b, g || h));
    }
    function Ha(a) {
        return "string" == typeof a || a instanceof String;
    }
    function Ia(a) {
        return q(a) || h(a) || Ha(a) || g(a) || function(a) {
            var c = b(a), d = !1;
            return c && (d = 0 === a.filter(function(b) {
                return !g(b) && Ha(a);
            }).length), c && d;
        }(a) || function(a) {
            var b, f, g = c(a) && !e(a), h = !1, i = [ "years", "year", "y", "months", "month", "M", "days", "day", "d", "dates", "date", "D", "hours", "hour", "h", "minutes", "minute", "m", "seconds", "second", "s", "milliseconds", "millisecond", "ms" ];
            for (b = 0; b < i.length; b += 1) f = i[b], h = h || d(a, f);
            return g && h;
        }(a) || null == a;
    }
    function Ja(a, b) {
        if (a.date() < b.date()) return -Ja(b, a);
        var c = 12 * (b.year() - a.year()) + (b.month() - a.month()), d = a.clone().add(c, "months");
        return -(c + (b - d < 0 ? (b - d) / (d - a.clone().add(c - 1, "months")) : (b - d) / (a.clone().add(1 + c, "months") - d))) || 0;
    }
    function Ka(a) {
        var b;
        return void 0 === a ? this._locale._abbr : (null != (b = ia(a)) && (this._locale = b), 
        this);
    }
    function La() {
        return this._locale;
    }
    function Ma(a, b) {
        return (a % b + b) % b;
    }
    function Na(a, b, c) {
        return a < 100 && 0 <= a ? new Date(a + 400, b, c) - zc : new Date(a, b, c).valueOf();
    }
    function Oa(a, b, c) {
        return a < 100 && 0 <= a ? Date.UTC(a + 400, b, c) - zc : Date.UTC(a, b, c);
    }
    function Pa(a, b) {
        return b.erasAbbrRegex(a);
    }
    function Qa() {
        for (var a = [], b = [], c = [], d = [], e = this.eras(), f = 0, g = e.length; f < g; ++f) b.push(N(e[f].name)), 
        a.push(N(e[f].abbr)), c.push(N(e[f].narrow)), d.push(N(e[f].name)), d.push(N(e[f].abbr)), 
        d.push(N(e[f].narrow));
        this._erasRegex = new RegExp("^(" + d.join("|") + ")", "i"), this._erasNameRegex = new RegExp("^(" + b.join("|") + ")", "i"), 
        this._erasAbbrRegex = new RegExp("^(" + a.join("|") + ")", "i"), this._erasNarrowRegex = new RegExp("^(" + c.join("|") + ")", "i");
    }
    function Ra(a, b) {
        y(0, [ a, a.length ], 0, b);
    }
    function Sa(a, b, c, d, e) {
        var f;
        return null == a ? Y(this, d, e).year : ((f = Z(a, d, e)) < b && (b = f), function(a, b, c, d, e) {
            var f = X(a, b, c, d, e), g = V(f.year, 0, f.dayOfYear);
            return this.year(g.getUTCFullYear()), this.month(g.getUTCMonth()), this.date(g.getUTCDate()), 
            this;
        }.call(this, a, b, c, d, e));
    }
    function Ta(a, b) {
        b[Qb] = H(1e3 * ("0." + a));
    }
    function Ua(a) {
        return a;
    }
    function Va(a, b, c, d) {
        var e = ia(), f = k().set(d, b);
        return e[c](f, a);
    }
    function Wa(a, b, c) {
        if (g(a) && (b = a, a = void 0), a = a || "", null != b) return Va(a, b, c, "month");
        for (var d = [], e = 0; e < 12; e++) d[e] = Va(a, e, c, "month");
        return d;
    }
    function Xa(a, b, c, d) {
        "boolean" == typeof a ? g(b) && (c = b, b = void 0) : (b = a, a = !1, g(c = b) && (c = b, 
        b = void 0)), b = b || "";
        var e, f = ia(), h = a ? f._week.dow : 0, i = [];
        if (null != c) return Va(b, (c + h) % 7, d, "day");
        for (e = 0; e < 7; e++) i[e] = Va(b, (e + h) % 7, d, "day");
        return i;
    }
    function Ya(a, b, c, d) {
        var e = Ca(b, c);
        return a._milliseconds += d * e._milliseconds, a._days += d * e._days, a._months += d * e._months, 
        a._bubble();
    }
    function Za(a) {
        return a < 0 ? Math.floor(a) : Math.ceil(a);
    }
    function $a(a) {
        return 4800 * a / 146097;
    }
    function _a(a) {
        return 146097 * a / 4800;
    }
    function ab(a) {
        return function() {
            return this.as(a);
        };
    }
    function bb(a) {
        return function() {
            return this.isValid() ? this._data[a] : NaN;
        };
    }
    function cb(a, b, c, d) {
        var e = Ca(a).abs(), f = Yc(e.as("s")), g = Yc(e.as("m")), h = Yc(e.as("h")), i = Yc(e.as("d")), j = Yc(e.as("M")), k = Yc(e.as("w")), l = Yc(e.as("y")), m = (f <= c.ss ? [ "s", f ] : f < c.s && [ "ss", f ]) || g <= 1 && [ "m" ] || g < c.m && [ "mm", g ] || h <= 1 && [ "h" ] || h < c.h && [ "hh", h ] || i <= 1 && [ "d" ] || i < c.d && [ "dd", i ];
        return null != c.w && (m = m || k <= 1 && [ "w" ] || k < c.w && [ "ww", k ]), (m = m || j <= 1 && [ "M" ] || j < c.M && [ "MM", j ] || l <= 1 && [ "y" ] || [ "yy", l ])[2] = b, 
        m[3] = 0 < +a, m[4] = d, function(a, b, c, d, e) {
            return e.relativeTime(b || 1, !!c, a, d);
        }.apply(null, m);
    }
    function db(a) {
        return (0 < a) - (a < 0) || +a;
    }
    function eb() {
        if (!this.isValid()) return this.localeData().invalidDate();
        var a, b, c, d, e, f, g, h, i = $c(this._milliseconds) / 1e3, j = $c(this._days), k = $c(this._months), l = this.asSeconds();
        return l ? (a = G(i / 60), b = G(a / 60), i %= 60, a %= 60, c = G(k / 12), k %= 12, 
        d = i ? i.toFixed(3).replace(/\.?0+$/, "") : "", e = l < 0 ? "-" : "", f = db(this._months) !== db(l) ? "-" : "", 
        g = db(this._days) !== db(l) ? "-" : "", h = db(this._milliseconds) !== db(l) ? "-" : "", 
        e + "P" + (c ? f + c + "Y" : "") + (k ? f + k + "M" : "") + (j ? g + j + "D" : "") + (b || a || i ? "T" : "") + (b ? h + b + "H" : "") + (a ? h + a + "M" : "") + (i ? h + d + "S" : "")) : "P0D";
    }
    var fb, gb;
    gb = Array.prototype.some ? Array.prototype.some : function(a) {
        for (var b = Object(this), c = b.length >>> 0, d = 0; d < c; d++) if (d in b && a.call(this, b[d], d, b)) return !0;
        return !1;
    };
    var hb, ib = a.momentProperties = [], jb = !1, kb = {};
    a.suppressDeprecationWarnings = !1, a.deprecationHandler = null, hb = Object.keys ? Object.keys : function(a) {
        var b, c = [];
        for (b in a) d(a, b) && c.push(b);
        return c;
    };
    var lb, mb = /(\[[^\[]*\])|(\\)?([Hh]mm(ss)?|Mo|MM?M?M?|Do|DDDo|DD?D?D?|ddd?d?|do?|w[o|w]?|W[o|W]?|Qo?|N{1,5}|YYYYYY|YYYYY|YYYY|YY|y{2,4}|yo?|gg(ggg?)?|GG(GGG?)?|e|E|a|A|hh?|HH?|kk?|mm?|ss?|S{1,9}|x|X|zz?|ZZ?|.)/g, nb = /(\[[^\[]*\])|(\\)?(LTS|LT|LL?L?L?|l{1,4})/g, ob = {}, pb = {}, qb = {}, rb = {}, sb = /\d/, tb = /\d\d/, ub = /\d{3}/, vb = /\d{4}/, wb = /[+-]?\d{6}/, xb = /\d\d?/, yb = /\d\d\d\d?/, zb = /\d\d\d\d\d\d?/, Ab = /\d{1,3}/, Bb = /\d{1,4}/, Cb = /[+-]?\d{1,6}/, Db = /\d+/, Eb = /[+-]?\d+/, Fb = /Z|[+-]\d\d:?\d\d/gi, Gb = /Z|[+-]\d\d(?::?\d\d)?/gi, Hb = /[0-9]{0,256}['a-z\u00A0-\u05FF\u0700-\uD7FF\uF900-\uFDCF\uFDF0-\uFF07\uFF10-\uFFEF]{1,256}|[\u0600-\u06FF\/]{1,256}(\s*?[\u0600-\u06FF]{1,256}){1,2}/i;
    lb = {};
    var Ib, Jb = {}, Kb = 0, Lb = 1, Mb = 2, Nb = 3, Ob = 4, Pb = 5, Qb = 6, Rb = 7, Sb = 8;
    Ib = Array.prototype.indexOf ? Array.prototype.indexOf : function(a) {
        for (var b = 0; b < this.length; ++b) if (this[b] === a) return b;
        return -1;
    }, y("M", [ "MM", 2 ], "Mo", function() {
        return this.month() + 1;
    }), y("MMM", 0, 0, function(a) {
        return this.localeData().monthsShort(this, a);
    }), y("MMMM", 0, 0, function(a) {
        return this.localeData().months(this, a);
    }), B("month", "M"), E("month", 8), L("M", xb), L("MM", xb, tb), L("MMM", function(a, b) {
        return b.monthsShortRegex(a);
    }), L("MMMM", function(a, b) {
        return b.monthsRegex(a);
    }), O([ "M", "MM" ], function(a, b) {
        b[Lb] = H(a) - 1;
    }), O([ "MMM", "MMMM" ], function(a, b, c, d) {
        var e = c._locale.monthsParse(a, d, c._strict);
        null != e ? b[Lb] = e : l(c).invalidMonth = a;
    });
    var Tb = "January_February_March_April_May_June_July_August_September_October_November_December".split("_"), Ub = "Jan_Feb_Mar_Apr_May_Jun_Jul_Aug_Sep_Oct_Nov_Dec".split("_"), Vb = /D[oD]?(\[[^\[\]]*\]|\s)+MMMM?/, Wb = Hb, Xb = Hb;
    y("Y", 0, 0, function() {
        var a = this.year();
        return a <= 9999 ? x(a, 4) : "+" + a;
    }), y(0, [ "YY", 2 ], 0, function() {
        return this.year() % 100;
    }), y(0, [ "YYYY", 4 ], 0, "year"), y(0, [ "YYYYY", 5 ], 0, "year"), y(0, [ "YYYYYY", 6, !0 ], 0, "year"), 
    B("year", "y"), E("year", 1), L("Y", Eb), L("YY", xb, tb), L("YYYY", Bb, vb), L("YYYYY", Cb, wb), 
    L("YYYYYY", Cb, wb), O([ "YYYYY", "YYYYYY" ], Kb), O("YYYY", function(b, c) {
        c[Kb] = 2 === b.length ? a.parseTwoDigitYear(b) : H(b);
    }), O("YY", function(b, c) {
        c[Kb] = a.parseTwoDigitYear(b);
    }), O("Y", function(a, b) {
        b[Kb] = parseInt(a, 10);
    }), a.parseTwoDigitYear = function(a) {
        return H(a) + (68 < H(a) ? 1900 : 2e3);
    };
    var Yb = I("FullYear", !0);
    y("w", [ "ww", 2 ], "wo", "week"), y("W", [ "WW", 2 ], "Wo", "isoWeek"), B("week", "w"), 
    B("isoWeek", "W"), E("week", 5), E("isoWeek", 5), L("w", xb), L("ww", xb, tb), L("W", xb), 
    L("WW", xb, tb), P([ "w", "ww", "W", "WW" ], function(a, b, c, d) {
        b[d.substr(0, 1)] = H(a);
    }), y("d", 0, "do", "day"), y("dd", 0, 0, function(a) {
        return this.localeData().weekdaysMin(this, a);
    }), y("ddd", 0, 0, function(a) {
        return this.localeData().weekdaysShort(this, a);
    }), y("dddd", 0, 0, function(a) {
        return this.localeData().weekdays(this, a);
    }), y("e", 0, 0, "weekday"), y("E", 0, 0, "isoWeekday"), B("day", "d"), B("weekday", "e"), 
    B("isoWeekday", "E"), E("day", 11), E("weekday", 11), E("isoWeekday", 11), L("d", xb), 
    L("e", xb), L("E", xb), L("dd", function(a, b) {
        return b.weekdaysMinRegex(a);
    }), L("ddd", function(a, b) {
        return b.weekdaysShortRegex(a);
    }), L("dddd", function(a, b) {
        return b.weekdaysRegex(a);
    }), P([ "dd", "ddd", "dddd" ], function(a, b, c, d) {
        var e = c._locale.weekdaysParse(a, d, c._strict);
        null != e ? b.d = e : l(c).invalidWeekday = a;
    }), P([ "d", "e", "E" ], function(a, b, c, d) {
        b[d] = H(a);
    });
    var Zb = "Sunday_Monday_Tuesday_Wednesday_Thursday_Friday_Saturday".split("_"), $b = "Sun_Mon_Tue_Wed_Thu_Fri_Sat".split("_"), _b = "Su_Mo_Tu_We_Th_Fr_Sa".split("_"), ac = Hb, bc = Hb, cc = Hb;
    y("H", [ "HH", 2 ], 0, "hour"), y("h", [ "hh", 2 ], 0, aa), y("k", [ "kk", 2 ], 0, function() {
        return this.hours() || 24;
    }), y("hmm", 0, 0, function() {
        return "" + aa.apply(this) + x(this.minutes(), 2);
    }), y("hmmss", 0, 0, function() {
        return "" + aa.apply(this) + x(this.minutes(), 2) + x(this.seconds(), 2);
    }), y("Hmm", 0, 0, function() {
        return "" + this.hours() + x(this.minutes(), 2);
    }), y("Hmmss", 0, 0, function() {
        return "" + this.hours() + x(this.minutes(), 2) + x(this.seconds(), 2);
    }), ba("a", !0), ba("A", !1), B("hour", "h"), E("hour", 13), L("a", ca), L("A", ca), 
    L("H", xb), L("h", xb), L("k", xb), L("HH", xb, tb), L("hh", xb, tb), L("kk", xb, tb), 
    L("hmm", yb), L("hmmss", zb), L("Hmm", yb), L("Hmmss", zb), O([ "H", "HH" ], Nb), 
    O([ "k", "kk" ], function(a, b, c) {
        var d = H(a);
        b[Nb] = 24 === d ? 0 : d;
    }), O([ "a", "A" ], function(a, b, c) {
        c._isPm = c._locale.isPM(a), c._meridiem = a;
    }), O([ "h", "hh" ], function(a, b, c) {
        b[Nb] = H(a), l(c).bigHour = !0;
    }), O("hmm", function(a, b, c) {
        var d = a.length - 2;
        b[Nb] = H(a.substr(0, d)), b[Ob] = H(a.substr(d)), l(c).bigHour = !0;
    }), O("hmmss", function(a, b, c) {
        var d = a.length - 4, e = a.length - 2;
        b[Nb] = H(a.substr(0, d)), b[Ob] = H(a.substr(d, 2)), b[Pb] = H(a.substr(e)), l(c).bigHour = !0;
    }), O("Hmm", function(a, b, c) {
        var d = a.length - 2;
        b[Nb] = H(a.substr(0, d)), b[Ob] = H(a.substr(d));
    }), O("Hmmss", function(a, b, c) {
        var d = a.length - 4, e = a.length - 2;
        b[Nb] = H(a.substr(0, d)), b[Ob] = H(a.substr(d, 2)), b[Pb] = H(a.substr(e));
    });
    var dc, ec = I("Hours", !0), fc = {
        calendar: {
            sameDay: "[Today at] LT",
            nextDay: "[Tomorrow at] LT",
            nextWeek: "dddd [at] LT",
            lastDay: "[Yesterday at] LT",
            lastWeek: "[Last] dddd [at] LT",
            sameElse: "L"
        },
        longDateFormat: {
            LTS: "h:mm:ss A",
            LT: "h:mm A",
            L: "MM/DD/YYYY",
            LL: "MMMM D, YYYY",
            LLL: "MMMM D, YYYY h:mm A",
            LLLL: "dddd, MMMM D, YYYY h:mm A"
        },
        invalidDate: "Invalid date",
        ordinal: "%d",
        dayOfMonthOrdinalParse: /\d{1,2}/,
        relativeTime: {
            future: "in %s",
            past: "%s ago",
            s: "a few seconds",
            ss: "%d seconds",
            m: "a minute",
            mm: "%d minutes",
            h: "an hour",
            hh: "%d hours",
            d: "a day",
            dd: "%d days",
            w: "a week",
            ww: "%d weeks",
            M: "a month",
            MM: "%d months",
            y: "a year",
            yy: "%d years"
        },
        months: Tb,
        monthsShort: Ub,
        week: {
            dow: 0,
            doy: 6
        },
        weekdays: Zb,
        weekdaysMin: _b,
        weekdaysShort: $b,
        meridiemParse: /[ap]\.?m?\.?/i
    }, gc = {}, hc = {}, ic = /^\s*((?:[+-]\d{6}|\d{4})-(?:\d\d-\d\d|W\d\d-\d|W\d\d|\d\d\d|\d\d))(?:(T| )(\d\d(?::\d\d(?::\d\d(?:[.,]\d+)?)?)?)([+-]\d\d(?::?\d\d)?|\s*Z)?)?$/, jc = /^\s*((?:[+-]\d{6}|\d{4})(?:\d\d\d\d|W\d\d\d|W\d\d|\d\d\d|\d\d|))(?:(T| )(\d\d(?:\d\d(?:\d\d(?:[.,]\d+)?)?)?)([+-]\d\d(?::?\d\d)?|\s*Z)?)?$/, kc = /Z|[+-]\d\d(?::?\d\d)?/, lc = [ [ "YYYYYY-MM-DD", /[+-]\d{6}-\d\d-\d\d/ ], [ "YYYY-MM-DD", /\d{4}-\d\d-\d\d/ ], [ "GGGG-[W]WW-E", /\d{4}-W\d\d-\d/ ], [ "GGGG-[W]WW", /\d{4}-W\d\d/, !1 ], [ "YYYY-DDD", /\d{4}-\d{3}/ ], [ "YYYY-MM", /\d{4}-\d\d/, !1 ], [ "YYYYYYMMDD", /[+-]\d{10}/ ], [ "YYYYMMDD", /\d{8}/ ], [ "GGGG[W]WWE", /\d{4}W\d{3}/ ], [ "GGGG[W]WW", /\d{4}W\d{2}/, !1 ], [ "YYYYDDD", /\d{7}/ ], [ "YYYYMM", /\d{6}/, !1 ], [ "YYYY", /\d{4}/, !1 ] ], mc = [ [ "HH:mm:ss.SSSS", /\d\d:\d\d:\d\d\.\d+/ ], [ "HH:mm:ss,SSSS", /\d\d:\d\d:\d\d,\d+/ ], [ "HH:mm:ss", /\d\d:\d\d:\d\d/ ], [ "HH:mm", /\d\d:\d\d/ ], [ "HHmmss.SSSS", /\d\d\d\d\d\d\.\d+/ ], [ "HHmmss,SSSS", /\d\d\d\d\d\d,\d+/ ], [ "HHmmss", /\d\d\d\d\d\d/ ], [ "HHmm", /\d\d\d\d/ ], [ "HH", /\d\d/ ] ], nc = /^\/?Date\((-?\d+)/i, oc = /^(?:(Mon|Tue|Wed|Thu|Fri|Sat|Sun),?\s)?(\d{1,2})\s(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s(\d{2,4})\s(\d\d):(\d\d)(?::(\d\d))?\s(?:(UT|GMT|[ECMP][SD]T)|([Zz])|([+-]\d{4}))$/, pc = {
        UT: 0,
        GMT: 0,
        EDT: -240,
        EST: -300,
        CDT: -300,
        CST: -360,
        MDT: -360,
        MST: -420,
        PDT: -420,
        PST: -480
    };
    a.createFromInputFallback = s("value provided is not in a recognized RFC2822 or ISO format. moment construction falls back to js Date(), which is not reliable across all browsers and versions. Non RFC2822/ISO date formats are discouraged and will be removed in an upcoming major release. Please refer to http://momentjs.com/guides/#/warnings/js-date/ for more info.", function(a) {
        a._d = new Date(a._i + (a._useUTC ? " UTC" : ""));
    }), a.ISO_8601 = function() {}, a.RFC_2822 = function() {};
    var qc = s("moment().min is deprecated, use moment.max instead. http://momentjs.com/guides/#/warnings/min-max/", function() {
        var a = sa.apply(null, arguments);
        return this.isValid() && a.isValid() ? a < this ? this : a : n();
    }), rc = s("moment().max is deprecated, use moment.min instead. http://momentjs.com/guides/#/warnings/min-max/", function() {
        var a = sa.apply(null, arguments);
        return this.isValid() && a.isValid() ? this < a ? this : a : n();
    }), sc = [ "year", "quarter", "month", "week", "day", "hour", "minute", "second", "millisecond" ];
    xa("Z", ":"), xa("ZZ", ""), L("Z", Gb), L("ZZ", Gb), O([ "Z", "ZZ" ], function(a, b, c) {
        c._useUTC = !0, c._tzm = ya(Gb, a);
    });
    var tc = /([\+\-]|\d\d)/gi;
    a.updateOffset = function() {};
    var uc = /^(-|\+)?(?:(\d*)[. ])?(\d+):(\d+)(?::(\d+)(\.\d*)?)?$/, vc = /^(-|\+)?P(?:([-+]?[0-9,.]*)Y)?(?:([-+]?[0-9,.]*)M)?(?:([-+]?[0-9,.]*)W)?(?:([-+]?[0-9,.]*)D)?(?:T(?:([-+]?[0-9,.]*)H)?(?:([-+]?[0-9,.]*)M)?(?:([-+]?[0-9,.]*)S)?)?$/;
    Ca.fn = ua.prototype, Ca.invalid = function() {
        return Ca(NaN);
    };
    var wc = Fa(1, "add"), xc = Fa(-1, "subtract");
    a.defaultFormat = "YYYY-MM-DDTHH:mm:ssZ", a.defaultFormatUtc = "YYYY-MM-DDTHH:mm:ss[Z]";
    var yc = s("moment().lang() is deprecated. Instead, use moment().localeData() to get the language configuration. Use moment().locale() to change languages.", function(a) {
        return void 0 === a ? this.localeData() : this.locale(a);
    }), zc = 126227808e5;
    y("N", 0, 0, "eraAbbr"), y("NN", 0, 0, "eraAbbr"), y("NNN", 0, 0, "eraAbbr"), y("NNNN", 0, 0, "eraName"), 
    y("NNNNN", 0, 0, "eraNarrow"), y("y", [ "y", 1 ], "yo", "eraYear"), y("y", [ "yy", 2 ], 0, "eraYear"), 
    y("y", [ "yyy", 3 ], 0, "eraYear"), y("y", [ "yyyy", 4 ], 0, "eraYear"), L("N", Pa), 
    L("NN", Pa), L("NNN", Pa), L("NNNN", function(a, b) {
        return b.erasNameRegex(a);
    }), L("NNNNN", function(a, b) {
        return b.erasNarrowRegex(a);
    }), O([ "N", "NN", "NNN", "NNNN", "NNNNN" ], function(a, b, c, d) {
        var e = c._locale.erasParse(a, d, c._strict);
        e ? l(c).era = e : l(c).invalidEra = a;
    }), L("y", Db), L("yy", Db), L("yyy", Db), L("yyyy", Db), L("yo", function(a, b) {
        return b._eraYearOrdinalRegex || Db;
    }), O([ "y", "yy", "yyy", "yyyy" ], Kb), O([ "yo" ], function(a, b, c, d) {
        var e;
        c._locale._eraYearOrdinalRegex && (e = a.match(c._locale._eraYearOrdinalRegex)), 
        c._locale.eraYearOrdinalParse ? b[Kb] = c._locale.eraYearOrdinalParse(a, e) : b[Kb] = parseInt(a, 10);
    }), y(0, [ "gg", 2 ], 0, function() {
        return this.weekYear() % 100;
    }), y(0, [ "GG", 2 ], 0, function() {
        return this.isoWeekYear() % 100;
    }), Ra("gggg", "weekYear"), Ra("ggggg", "weekYear"), Ra("GGGG", "isoWeekYear"), 
    Ra("GGGGG", "isoWeekYear"), B("weekYear", "gg"), B("isoWeekYear", "GG"), E("weekYear", 1), 
    E("isoWeekYear", 1), L("G", Eb), L("g", Eb), L("GG", xb, tb), L("gg", xb, tb), L("GGGG", Bb, vb), 
    L("gggg", Bb, vb), L("GGGGG", Cb, wb), L("ggggg", Cb, wb), P([ "gggg", "ggggg", "GGGG", "GGGGG" ], function(a, b, c, d) {
        b[d.substr(0, 2)] = H(a);
    }), P([ "gg", "GG" ], function(b, c, d, e) {
        c[e] = a.parseTwoDigitYear(b);
    }), y("Q", 0, "Qo", "quarter"), B("quarter", "Q"), E("quarter", 7), L("Q", sb), 
    O("Q", function(a, b) {
        b[Lb] = 3 * (H(a) - 1);
    }), y("D", [ "DD", 2 ], "Do", "date"), B("date", "D"), E("date", 9), L("D", xb), 
    L("DD", xb, tb), L("Do", function(a, b) {
        return a ? b._dayOfMonthOrdinalParse || b._ordinalParse : b._dayOfMonthOrdinalParseLenient;
    }), O([ "D", "DD" ], Mb), O("Do", function(a, b) {
        b[Mb] = H(a.match(xb)[0]);
    });
    var Ac = I("Date", !0);
    y("DDD", [ "DDDD", 3 ], "DDDo", "dayOfYear"), B("dayOfYear", "DDD"), E("dayOfYear", 4), 
    L("DDD", Ab), L("DDDD", ub), O([ "DDD", "DDDD" ], function(a, b, c) {
        c._dayOfYear = H(a);
    }), y("m", [ "mm", 2 ], 0, "minute"), B("minute", "m"), E("minute", 14), L("m", xb), 
    L("mm", xb, tb), O([ "m", "mm" ], Ob);
    var Bc = I("Minutes", !1);
    y("s", [ "ss", 2 ], 0, "second"), B("second", "s"), E("second", 15), L("s", xb), 
    L("ss", xb, tb), O([ "s", "ss" ], Pb);
    var Cc, Dc, Ec = I("Seconds", !1);
    for (y("S", 0, 0, function() {
        return ~~(this.millisecond() / 100);
    }), y(0, [ "SS", 2 ], 0, function() {
        return ~~(this.millisecond() / 10);
    }), y(0, [ "SSS", 3 ], 0, "millisecond"), y(0, [ "SSSS", 4 ], 0, function() {
        return 10 * this.millisecond();
    }), y(0, [ "SSSSS", 5 ], 0, function() {
        return 100 * this.millisecond();
    }), y(0, [ "SSSSSS", 6 ], 0, function() {
        return 1e3 * this.millisecond();
    }), y(0, [ "SSSSSSS", 7 ], 0, function() {
        return 1e4 * this.millisecond();
    }), y(0, [ "SSSSSSSS", 8 ], 0, function() {
        return 1e5 * this.millisecond();
    }), y(0, [ "SSSSSSSSS", 9 ], 0, function() {
        return 1e6 * this.millisecond();
    }), B("millisecond", "ms"), E("millisecond", 16), L("S", Ab, sb), L("SS", Ab, tb), 
    L("SSS", Ab, ub), Cc = "SSSS"; Cc.length <= 9; Cc += "S") L(Cc, Db);
    for (Cc = "S"; Cc.length <= 9; Cc += "S") O(Cc, Ta);
    Dc = I("Milliseconds", !1), y("z", 0, 0, "zoneAbbr"), y("zz", 0, 0, "zoneName");
    var Fc = p.prototype;
    Fc.add = wc, Fc.calendar = function(b, f) {
        1 === arguments.length && (Ia(arguments[0]) ? (b = arguments[0], f = void 0) : function(a) {
            for (var b = c(a) && !e(a), f = !1, g = [ "sameDay", "nextDay", "lastDay", "nextWeek", "lastWeek", "sameElse" ], h = 0; h < g.length; h += 1) f = f || d(a, g[h]);
            return b && f;
        }(arguments[0]) && (f = arguments[0], b = void 0));
        var g = b || sa(), h = za(g, this).startOf("day"), i = a.calendarFormat(this, h) || "sameElse", j = f && (u(f[i]) ? f[i].call(this, g) : f[i]);
        return this.format(j || this.localeData().calendar(i, this, sa(g)));
    }, Fc.clone = function() {
        return new p(this);
    }, Fc.diff = function(a, b, c) {
        var d, e, f;
        if (!this.isValid()) return NaN;
        if (!(d = za(a, this)).isValid()) return NaN;
        switch (e = 6e4 * (d.utcOffset() - this.utcOffset()), b = C(b)) {
          case "year":
            f = Ja(this, d) / 12;
            break;

          case "month":
            f = Ja(this, d);
            break;

          case "quarter":
            f = Ja(this, d) / 3;
            break;

          case "second":
            f = (this - d) / 1e3;
            break;

          case "minute":
            f = (this - d) / 6e4;
            break;

          case "hour":
            f = (this - d) / 36e5;
            break;

          case "day":
            f = (this - d - e) / 864e5;
            break;

          case "week":
            f = (this - d - e) / 6048e5;
            break;

          default:
            f = this - d;
        }
        return c ? f : G(f);
    }, Fc.endOf = function(b) {
        var c, d;
        if (void 0 === (b = C(b)) || "millisecond" === b || !this.isValid()) return this;
        switch (d = this._isUTC ? Oa : Na, b) {
          case "year":
            c = d(this.year() + 1, 0, 1) - 1;
            break;

          case "quarter":
            c = d(this.year(), this.month() - this.month() % 3 + 3, 1) - 1;
            break;

          case "month":
            c = d(this.year(), this.month() + 1, 1) - 1;
            break;

          case "week":
            c = d(this.year(), this.month(), this.date() - this.weekday() + 7) - 1;
            break;

          case "isoWeek":
            c = d(this.year(), this.month(), this.date() - (this.isoWeekday() - 1) + 7) - 1;
            break;

          case "day":
          case "date":
            c = d(this.year(), this.month(), this.date() + 1) - 1;
            break;

          case "hour":
            c = this._d.valueOf(), c += 36e5 - Ma(c + (this._isUTC ? 0 : 6e4 * this.utcOffset()), 36e5) - 1;
            break;

          case "minute":
            c = this._d.valueOf(), c += 6e4 - Ma(c, 6e4) - 1;
            break;

          case "second":
            c = this._d.valueOf(), c += 1e3 - Ma(c, 1e3) - 1;
        }
        return this._d.setTime(c), a.updateOffset(this, !0), this;
    }, Fc.format = function(b) {
        b = b || (this.isUtc() ? a.defaultFormatUtc : a.defaultFormat);
        var c = z(this, b);
        return this.localeData().postformat(c);
    }, Fc.from = function(a, b) {
        return this.isValid() && (q(a) && a.isValid() || sa(a).isValid()) ? Ca({
            to: this,
            from: a
        }).locale(this.locale()).humanize(!b) : this.localeData().invalidDate();
    }, Fc.fromNow = function(a) {
        return this.from(sa(), a);
    }, Fc.to = function(a, b) {
        return this.isValid() && (q(a) && a.isValid() || sa(a).isValid()) ? Ca({
            from: this,
            to: a
        }).locale(this.locale()).humanize(!b) : this.localeData().invalidDate();
    }, Fc.toNow = function(a) {
        return this.to(sa(), a);
    }, Fc.get = function(a) {
        return u(this[a = C(a)]) ? this[a]() : this;
    }, Fc.invalidAt = function() {
        return l(this).overflow;
    }, Fc.isAfter = function(a, b) {
        var c = q(a) ? a : sa(a);
        return !(!this.isValid() || !c.isValid()) && ("millisecond" === (b = C(b) || "millisecond") ? this.valueOf() > c.valueOf() : c.valueOf() < this.clone().startOf(b).valueOf());
    }, Fc.isBefore = function(a, b) {
        var c = q(a) ? a : sa(a);
        return !(!this.isValid() || !c.isValid()) && ("millisecond" === (b = C(b) || "millisecond") ? this.valueOf() < c.valueOf() : this.clone().endOf(b).valueOf() < c.valueOf());
    }, Fc.isBetween = function(a, b, c, d) {
        var e = q(a) ? a : sa(a), f = q(b) ? b : sa(b);
        return !!(this.isValid() && e.isValid() && f.isValid()) && ("(" === (d = d || "()")[0] ? this.isAfter(e, c) : !this.isBefore(e, c)) && (")" === d[1] ? this.isBefore(f, c) : !this.isAfter(f, c));
    }, Fc.isSame = function(a, b) {
        var c, d = q(a) ? a : sa(a);
        return !(!this.isValid() || !d.isValid()) && ("millisecond" === (b = C(b) || "millisecond") ? this.valueOf() === d.valueOf() : (c = d.valueOf(), 
        this.clone().startOf(b).valueOf() <= c && c <= this.clone().endOf(b).valueOf()));
    }, Fc.isSameOrAfter = function(a, b) {
        return this.isSame(a, b) || this.isAfter(a, b);
    }, Fc.isSameOrBefore = function(a, b) {
        return this.isSame(a, b) || this.isBefore(a, b);
    }, Fc.isValid = function() {
        return m(this);
    }, Fc.lang = yc, Fc.locale = Ka, Fc.localeData = La, Fc.max = rc, Fc.min = qc, Fc.parsingFlags = function() {
        return j({}, l(this));
    }, Fc.set = function(a, b) {
        if ("object" == typeof a) for (var c = function(a) {
            var b, c = [];
            for (b in a) d(a, b) && c.push({
                unit: b,
                priority: rb[b]
            });
            return c.sort(function(a, b) {
                return a.priority - b.priority;
            }), c;
        }(a = D(a)), e = 0; e < c.length; e++) this[c[e].unit](a[c[e].unit]); else if (u(this[a = C(a)])) return this[a](b);
        return this;
    }, Fc.startOf = function(b) {
        var c, d;
        if (void 0 === (b = C(b)) || "millisecond" === b || !this.isValid()) return this;
        switch (d = this._isUTC ? Oa : Na, b) {
          case "year":
            c = d(this.year(), 0, 1);
            break;

          case "quarter":
            c = d(this.year(), this.month() - this.month() % 3, 1);
            break;

          case "month":
            c = d(this.year(), this.month(), 1);
            break;

          case "week":
            c = d(this.year(), this.month(), this.date() - this.weekday());
            break;

          case "isoWeek":
            c = d(this.year(), this.month(), this.date() - (this.isoWeekday() - 1));
            break;

          case "day":
          case "date":
            c = d(this.year(), this.month(), this.date());
            break;

          case "hour":
            c = this._d.valueOf(), c -= Ma(c + (this._isUTC ? 0 : 6e4 * this.utcOffset()), 36e5);
            break;

          case "minute":
            c = this._d.valueOf(), c -= Ma(c, 6e4);
            break;

          case "second":
            c = this._d.valueOf(), c -= Ma(c, 1e3);
        }
        return this._d.setTime(c), a.updateOffset(this, !0), this;
    }, Fc.subtract = xc, Fc.toArray = function() {
        var a = this;
        return [ a.year(), a.month(), a.date(), a.hour(), a.minute(), a.second(), a.millisecond() ];
    }, Fc.toObject = function() {
        var a = this;
        return {
            years: a.year(),
            months: a.month(),
            date: a.date(),
            hours: a.hours(),
            minutes: a.minutes(),
            seconds: a.seconds(),
            milliseconds: a.milliseconds()
        };
    }, Fc.toDate = function() {
        return new Date(this.valueOf());
    }, Fc.toISOString = function(a) {
        if (!this.isValid()) return null;
        var b = !0 !== a, c = b ? this.clone().utc() : this;
        return c.year() < 0 || 9999 < c.year() ? z(c, b ? "YYYYYY-MM-DD[T]HH:mm:ss.SSS[Z]" : "YYYYYY-MM-DD[T]HH:mm:ss.SSSZ") : u(Date.prototype.toISOString) ? b ? this.toDate().toISOString() : new Date(this.valueOf() + 60 * this.utcOffset() * 1e3).toISOString().replace("Z", z(c, "Z")) : z(c, b ? "YYYY-MM-DD[T]HH:mm:ss.SSS[Z]" : "YYYY-MM-DD[T]HH:mm:ss.SSSZ");
    }, Fc.inspect = function() {
        if (!this.isValid()) return "moment.invalid(/* " + this._i + " */)";
        var a, b, c, d = "moment", e = "";
        return this.isLocal() || (d = 0 === this.utcOffset() ? "moment.utc" : "moment.parseZone", 
        e = "Z"), a = "[" + d + '("]', b = 0 <= this.year() && this.year() <= 9999 ? "YYYY" : "YYYYYY", 
        c = e + '[")]', this.format(a + b + "-MM-DD[T]HH:mm:ss.SSS" + c);
    }, "undefined" != typeof Symbol && null != Symbol.for && (Fc[Symbol.for("nodejs.util.inspect.custom")] = function() {
        return "Moment<" + this.format() + ">";
    }), Fc.toJSON = function() {
        return this.isValid() ? this.toISOString() : null;
    }, Fc.toString = function() {
        return this.clone().locale("en").format("ddd MMM DD YYYY HH:mm:ss [GMT]ZZ");
    }, Fc.unix = function() {
        return Math.floor(this.valueOf() / 1e3);
    }, Fc.valueOf = function() {
        return this._d.valueOf() - 6e4 * (this._offset || 0);
    }, Fc.creationData = function() {
        return {
            input: this._i,
            format: this._f,
            locale: this._locale,
            isUTC: this._isUTC,
            strict: this._strict
        };
    }, Fc.eraName = function() {
        for (var a, b = this.localeData().eras(), c = 0, d = b.length; c < d; ++c) {
            if (a = this.startOf("day").valueOf(), b[c].since <= a && a <= b[c].until) return b[c].name;
            if (b[c].until <= a && a <= b[c].since) return b[c].name;
        }
        return "";
    }, Fc.eraNarrow = function() {
        for (var a, b = this.localeData().eras(), c = 0, d = b.length; c < d; ++c) {
            if (a = this.startOf("day").valueOf(), b[c].since <= a && a <= b[c].until) return b[c].narrow;
            if (b[c].until <= a && a <= b[c].since) return b[c].narrow;
        }
        return "";
    }, Fc.eraAbbr = function() {
        for (var a, b = this.localeData().eras(), c = 0, d = b.length; c < d; ++c) {
            if (a = this.startOf("day").valueOf(), b[c].since <= a && a <= b[c].until) return b[c].abbr;
            if (b[c].until <= a && a <= b[c].since) return b[c].abbr;
        }
        return "";
    }, Fc.eraYear = function() {
        for (var b, c, d = this.localeData().eras(), e = 0, f = d.length; e < f; ++e) if (b = d[e].since <= d[e].until ? 1 : -1, 
        c = this.startOf("day").valueOf(), d[e].since <= c && c <= d[e].until || d[e].until <= c && c <= d[e].since) return (this.year() - a(d[e].since).year()) * b + d[e].offset;
        return this.year();
    }, Fc.year = Yb, Fc.isLeapYear = function() {
        return F(this.year());
    }, Fc.weekYear = function(a) {
        return Sa.call(this, a, this.week(), this.weekday(), this.localeData()._week.dow, this.localeData()._week.doy);
    }, Fc.isoWeekYear = function(a) {
        return Sa.call(this, a, this.isoWeek(), this.isoWeekday(), 1, 4);
    }, Fc.quarter = Fc.quarters = function(a) {
        return null == a ? Math.ceil((this.month() + 1) / 3) : this.month(3 * (a - 1) + this.month() % 3);
    }, Fc.month = S, Fc.daysInMonth = function() {
        return Q(this.year(), this.month());
    }, Fc.week = Fc.weeks = function(a) {
        var b = this.localeData().week(this);
        return null == a ? b : this.add(7 * (a - b), "d");
    }, Fc.isoWeek = Fc.isoWeeks = function(a) {
        var b = Y(this, 1, 4).week;
        return null == a ? b : this.add(7 * (a - b), "d");
    }, Fc.weeksInYear = function() {
        var a = this.localeData()._week;
        return Z(this.year(), a.dow, a.doy);
    }, Fc.weeksInWeekYear = function() {
        var a = this.localeData()._week;
        return Z(this.weekYear(), a.dow, a.doy);
    }, Fc.isoWeeksInYear = function() {
        return Z(this.year(), 1, 4);
    }, Fc.isoWeeksInISOWeekYear = function() {
        return Z(this.isoWeekYear(), 1, 4);
    }, Fc.date = Ac, Fc.day = Fc.days = function(a) {
        if (!this.isValid()) return null != a ? this : NaN;
        var b, c, d = this._isUTC ? this._d.getUTCDay() : this._d.getDay();
        return null != a ? (b = a, c = this.localeData(), a = "string" != typeof b ? b : isNaN(b) ? "number" == typeof (b = c.weekdaysParse(b)) ? b : null : parseInt(b, 10), 
        this.add(a - d, "d")) : d;
    }, Fc.weekday = function(a) {
        if (!this.isValid()) return null != a ? this : NaN;
        var b = (this.day() + 7 - this.localeData()._week.dow) % 7;
        return null == a ? b : this.add(a - b, "d");
    }, Fc.isoWeekday = function(a) {
        if (!this.isValid()) return null != a ? this : NaN;
        if (null == a) return this.day() || 7;
        var b, c, d = (b = a, c = this.localeData(), "string" == typeof b ? c.weekdaysParse(b) % 7 || 7 : isNaN(b) ? null : b);
        return this.day(this.day() % 7 ? d : d - 7);
    }, Fc.dayOfYear = function(a) {
        var b = Math.round((this.clone().startOf("day") - this.clone().startOf("year")) / 864e5) + 1;
        return null == a ? b : this.add(a - b, "d");
    }, Fc.hour = Fc.hours = ec, Fc.minute = Fc.minutes = Bc, Fc.second = Fc.seconds = Ec, 
    Fc.millisecond = Fc.milliseconds = Dc, Fc.utcOffset = function(b, c, d) {
        var e, f = this._offset || 0;
        if (!this.isValid()) return null != b ? this : NaN;
        if (null == b) return this._isUTC ? f : Aa(this);
        if ("string" == typeof b) {
            if (null === (b = ya(Gb, b))) return this;
        } else Math.abs(b) < 16 && !d && (b *= 60);
        return !this._isUTC && c && (e = Aa(this)), this._offset = b, this._isUTC = !0, 
        null != e && this.add(e, "m"), f !== b && (!c || this._changeInProgress ? Ga(this, Ca(b - f, "m"), 1, !1) : this._changeInProgress || (this._changeInProgress = !0, 
        a.updateOffset(this, !0), this._changeInProgress = null)), this;
    }, Fc.utc = function(a) {
        return this.utcOffset(0, a);
    }, Fc.local = function(a) {
        return this._isUTC && (this.utcOffset(0, a), this._isUTC = !1, a && this.subtract(Aa(this), "m")), 
        this;
    }, Fc.parseZone = function() {
        var a;
        return null != this._tzm ? this.utcOffset(this._tzm, !1, !0) : "string" == typeof this._i && (null != (a = ya(Fb, this._i)) ? this.utcOffset(a) : this.utcOffset(0, !0)), 
        this;
    }, Fc.hasAlignedHourOffset = function(a) {
        return !!this.isValid() && (a = a ? sa(a).utcOffset() : 0, (this.utcOffset() - a) % 60 == 0);
    }, Fc.isDST = function() {
        return this.utcOffset() > this.clone().month(0).utcOffset() || this.utcOffset() > this.clone().month(5).utcOffset();
    }, Fc.isLocal = function() {
        return !!this.isValid() && !this._isUTC;
    }, Fc.isUtcOffset = function() {
        return !!this.isValid() && this._isUTC;
    }, Fc.isUtc = Ba, Fc.isUTC = Ba, Fc.zoneAbbr = function() {
        return this._isUTC ? "UTC" : "";
    }, Fc.zoneName = function() {
        return this._isUTC ? "Coordinated Universal Time" : "";
    }, Fc.dates = s("dates accessor is deprecated. Use date instead.", Ac), Fc.months = s("months accessor is deprecated. Use month instead", S), 
    Fc.years = s("years accessor is deprecated. Use year instead", Yb), Fc.zone = s("moment().zone is deprecated, use moment().utcOffset instead. http://momentjs.com/guides/#/warnings/zone/", function(a, b) {
        return null != a ? ("string" != typeof a && (a = -a), this.utcOffset(a, b), this) : -this.utcOffset();
    }), Fc.isDSTShifted = s("isDSTShifted is deprecated. See http://momentjs.com/guides/#/warnings/dst-shifted/ for more information", function() {
        if (!f(this._isDSTShifted)) return this._isDSTShifted;
        var a, b = {};
        return o(b, this), (b = qa(b))._a ? (a = (b._isUTC ? k : sa)(b._a), this._isDSTShifted = this.isValid() && 0 < function(a, b, c) {
            for (var d = Math.min(a.length, b.length), e = Math.abs(a.length - b.length), f = 0, g = 0; g < d; g++) H(a[g]) !== H(b[g]) && f++;
            return f + e;
        }(b._a, a.toArray())) : this._isDSTShifted = !1, this._isDSTShifted;
    });
    var Gc = w.prototype;
    Gc.calendar = function(a, b, c) {
        var d = this._calendar[a] || this._calendar.sameElse;
        return u(d) ? d.call(b, c) : d;
    }, Gc.longDateFormat = function(a) {
        var b = this._longDateFormat[a], c = this._longDateFormat[a.toUpperCase()];
        return b || !c ? b : (this._longDateFormat[a] = c.match(mb).map(function(a) {
            return "MMMM" === a || "MM" === a || "DD" === a || "dddd" === a ? a.slice(1) : a;
        }).join(""), this._longDateFormat[a]);
    }, Gc.invalidDate = function() {
        return this._invalidDate;
    }, Gc.ordinal = function(a) {
        return this._ordinal.replace("%d", a);
    }, Gc.preparse = Ua, Gc.postformat = Ua, Gc.relativeTime = function(a, b, c, d) {
        var e = this._relativeTime[c];
        return u(e) ? e(a, b, c, d) : e.replace(/%d/i, a);
    }, Gc.pastFuture = function(a, b) {
        var c = this._relativeTime[0 < a ? "future" : "past"];
        return u(c) ? c(b) : c.replace(/%s/i, b);
    }, Gc.set = function(a) {
        var b, c;
        for (c in a) d(a, c) && (u(b = a[c]) ? this[c] = b : this["_" + c] = b);
        this._config = a, this._dayOfMonthOrdinalParseLenient = new RegExp((this._dayOfMonthOrdinalParse.source || this._ordinalParse.source) + "|" + /\d{1,2}/.source);
    }, Gc.eras = function(b, c) {
        for (var d, e = this._eras || ia("en")._eras, f = 0, g = e.length; f < g; ++f) {
            switch (typeof e[f].since) {
              case "string":
                d = a(e[f].since).startOf("day"), e[f].since = d.valueOf();
            }
            switch (typeof e[f].until) {
              case "undefined":
                e[f].until = 1 / 0;
                break;

              case "string":
                d = a(e[f].until).startOf("day").valueOf(), e[f].until = d.valueOf();
            }
        }
        return e;
    }, Gc.erasParse = function(a, b, c) {
        var d, e, f, g, h, i = this.eras();
        for (a = a.toUpperCase(), d = 0, e = i.length; d < e; ++d) if (f = i[d].name.toUpperCase(), 
        g = i[d].abbr.toUpperCase(), h = i[d].narrow.toUpperCase(), c) switch (b) {
          case "N":
          case "NN":
          case "NNN":
            if (g === a) return i[d];
            break;

          case "NNNN":
            if (f === a) return i[d];
            break;

          case "NNNNN":
            if (h === a) return i[d];
        } else if (0 <= [ f, g, h ].indexOf(a)) return i[d];
    }, Gc.erasConvertYear = function(b, c) {
        var d = b.since <= b.until ? 1 : -1;
        return void 0 === c ? a(b.since).year() : a(b.since).year() + (c - b.offset) * d;
    }, Gc.erasAbbrRegex = function(a) {
        return d(this, "_erasAbbrRegex") || Qa.call(this), a ? this._erasAbbrRegex : this._erasRegex;
    }, Gc.erasNameRegex = function(a) {
        return d(this, "_erasNameRegex") || Qa.call(this), a ? this._erasNameRegex : this._erasRegex;
    }, Gc.erasNarrowRegex = function(a) {
        return d(this, "_erasNarrowRegex") || Qa.call(this), a ? this._erasNarrowRegex : this._erasRegex;
    }, Gc.months = function(a, c) {
        return a ? b(this._months) ? this._months[a.month()] : this._months[(this._months.isFormat || Vb).test(c) ? "format" : "standalone"][a.month()] : b(this._months) ? this._months : this._months.standalone;
    }, Gc.monthsShort = function(a, c) {
        return a ? b(this._monthsShort) ? this._monthsShort[a.month()] : this._monthsShort[Vb.test(c) ? "format" : "standalone"][a.month()] : b(this._monthsShort) ? this._monthsShort : this._monthsShort.standalone;
    }, Gc.monthsParse = function(a, b, c) {
        var d, e, f;
        if (this._monthsParseExact) return function(a, b, c) {
            var d, e, f, g = a.toLocaleLowerCase();
            if (!this._monthsParse) for (this._monthsParse = [], this._longMonthsParse = [], 
            this._shortMonthsParse = [], d = 0; d < 12; ++d) f = k([ 2e3, d ]), this._shortMonthsParse[d] = this.monthsShort(f, "").toLocaleLowerCase(), 
            this._longMonthsParse[d] = this.months(f, "").toLocaleLowerCase();
            return c ? "MMM" === b ? -1 !== (e = Ib.call(this._shortMonthsParse, g)) ? e : null : -1 !== (e = Ib.call(this._longMonthsParse, g)) ? e : null : "MMM" === b ? -1 !== (e = Ib.call(this._shortMonthsParse, g)) || -1 !== (e = Ib.call(this._longMonthsParse, g)) ? e : null : -1 !== (e = Ib.call(this._longMonthsParse, g)) || -1 !== (e = Ib.call(this._shortMonthsParse, g)) ? e : null;
        }.call(this, a, b, c);
        for (this._monthsParse || (this._monthsParse = [], this._longMonthsParse = [], this._shortMonthsParse = []), 
        d = 0; d < 12; d++) {
            if (e = k([ 2e3, d ]), c && !this._longMonthsParse[d] && (this._longMonthsParse[d] = new RegExp("^" + this.months(e, "").replace(".", "") + "$", "i"), 
            this._shortMonthsParse[d] = new RegExp("^" + this.monthsShort(e, "").replace(".", "") + "$", "i")), 
            c || this._monthsParse[d] || (f = "^" + this.months(e, "") + "|^" + this.monthsShort(e, ""), 
            this._monthsParse[d] = new RegExp(f.replace(".", ""), "i")), c && "MMMM" === b && this._longMonthsParse[d].test(a)) return d;
            if (c && "MMM" === b && this._shortMonthsParse[d].test(a)) return d;
            if (!c && this._monthsParse[d].test(a)) return d;
        }
    }, Gc.monthsRegex = function(a) {
        return this._monthsParseExact ? (d(this, "_monthsRegex") || T.call(this), a ? this._monthsStrictRegex : this._monthsRegex) : (d(this, "_monthsRegex") || (this._monthsRegex = Xb), 
        this._monthsStrictRegex && a ? this._monthsStrictRegex : this._monthsRegex);
    }, Gc.monthsShortRegex = function(a) {
        return this._monthsParseExact ? (d(this, "_monthsRegex") || T.call(this), a ? this._monthsShortStrictRegex : this._monthsShortRegex) : (d(this, "_monthsShortRegex") || (this._monthsShortRegex = Wb), 
        this._monthsShortStrictRegex && a ? this._monthsShortStrictRegex : this._monthsShortRegex);
    }, Gc.week = function(a) {
        return Y(a, this._week.dow, this._week.doy).week;
    }, Gc.firstDayOfYear = function() {
        return this._week.doy;
    }, Gc.firstDayOfWeek = function() {
        return this._week.dow;
    }, Gc.weekdays = function(a, c) {
        var d = b(this._weekdays) ? this._weekdays : this._weekdays[a && !0 !== a && this._weekdays.isFormat.test(c) ? "format" : "standalone"];
        return !0 === a ? $(d, this._week.dow) : a ? d[a.day()] : d;
    }, Gc.weekdaysMin = function(a) {
        return !0 === a ? $(this._weekdaysMin, this._week.dow) : a ? this._weekdaysMin[a.day()] : this._weekdaysMin;
    }, Gc.weekdaysShort = function(a) {
        return !0 === a ? $(this._weekdaysShort, this._week.dow) : a ? this._weekdaysShort[a.day()] : this._weekdaysShort;
    }, Gc.weekdaysParse = function(a, b, c) {
        var d, e, f;
        if (this._weekdaysParseExact) return function(a, b, c) {
            var d, e, f, g = a.toLocaleLowerCase();
            if (!this._weekdaysParse) for (this._weekdaysParse = [], this._shortWeekdaysParse = [], 
            this._minWeekdaysParse = [], d = 0; d < 7; ++d) f = k([ 2e3, 1 ]).day(d), this._minWeekdaysParse[d] = this.weekdaysMin(f, "").toLocaleLowerCase(), 
            this._shortWeekdaysParse[d] = this.weekdaysShort(f, "").toLocaleLowerCase(), this._weekdaysParse[d] = this.weekdays(f, "").toLocaleLowerCase();
            return c ? "dddd" === b ? -1 !== (e = Ib.call(this._weekdaysParse, g)) ? e : null : "ddd" === b ? -1 !== (e = Ib.call(this._shortWeekdaysParse, g)) ? e : null : -1 !== (e = Ib.call(this._minWeekdaysParse, g)) ? e : null : "dddd" === b ? -1 !== (e = Ib.call(this._weekdaysParse, g)) || -1 !== (e = Ib.call(this._shortWeekdaysParse, g)) || -1 !== (e = Ib.call(this._minWeekdaysParse, g)) ? e : null : "ddd" === b ? -1 !== (e = Ib.call(this._shortWeekdaysParse, g)) || -1 !== (e = Ib.call(this._weekdaysParse, g)) || -1 !== (e = Ib.call(this._minWeekdaysParse, g)) ? e : null : -1 !== (e = Ib.call(this._minWeekdaysParse, g)) || -1 !== (e = Ib.call(this._weekdaysParse, g)) || -1 !== (e = Ib.call(this._shortWeekdaysParse, g)) ? e : null;
        }.call(this, a, b, c);
        for (this._weekdaysParse || (this._weekdaysParse = [], this._minWeekdaysParse = [], 
        this._shortWeekdaysParse = [], this._fullWeekdaysParse = []), d = 0; d < 7; d++) {
            if (e = k([ 2e3, 1 ]).day(d), c && !this._fullWeekdaysParse[d] && (this._fullWeekdaysParse[d] = new RegExp("^" + this.weekdays(e, "").replace(".", "\\.?") + "$", "i"), 
            this._shortWeekdaysParse[d] = new RegExp("^" + this.weekdaysShort(e, "").replace(".", "\\.?") + "$", "i"), 
            this._minWeekdaysParse[d] = new RegExp("^" + this.weekdaysMin(e, "").replace(".", "\\.?") + "$", "i")), 
            this._weekdaysParse[d] || (f = "^" + this.weekdays(e, "") + "|^" + this.weekdaysShort(e, "") + "|^" + this.weekdaysMin(e, ""), 
            this._weekdaysParse[d] = new RegExp(f.replace(".", ""), "i")), c && "dddd" === b && this._fullWeekdaysParse[d].test(a)) return d;
            if (c && "ddd" === b && this._shortWeekdaysParse[d].test(a)) return d;
            if (c && "dd" === b && this._minWeekdaysParse[d].test(a)) return d;
            if (!c && this._weekdaysParse[d].test(a)) return d;
        }
    }, Gc.weekdaysRegex = function(a) {
        return this._weekdaysParseExact ? (d(this, "_weekdaysRegex") || _.call(this), a ? this._weekdaysStrictRegex : this._weekdaysRegex) : (d(this, "_weekdaysRegex") || (this._weekdaysRegex = ac), 
        this._weekdaysStrictRegex && a ? this._weekdaysStrictRegex : this._weekdaysRegex);
    }, Gc.weekdaysShortRegex = function(a) {
        return this._weekdaysParseExact ? (d(this, "_weekdaysRegex") || _.call(this), a ? this._weekdaysShortStrictRegex : this._weekdaysShortRegex) : (d(this, "_weekdaysShortRegex") || (this._weekdaysShortRegex = bc), 
        this._weekdaysShortStrictRegex && a ? this._weekdaysShortStrictRegex : this._weekdaysShortRegex);
    }, Gc.weekdaysMinRegex = function(a) {
        return this._weekdaysParseExact ? (d(this, "_weekdaysRegex") || _.call(this), a ? this._weekdaysMinStrictRegex : this._weekdaysMinRegex) : (d(this, "_weekdaysMinRegex") || (this._weekdaysMinRegex = cc), 
        this._weekdaysMinStrictRegex && a ? this._weekdaysMinStrictRegex : this._weekdaysMinRegex);
    }, Gc.isPM = function(a) {
        return "p" === (a + "").toLowerCase().charAt(0);
    }, Gc.meridiem = function(a, b, c) {
        return 11 < a ? c ? "pm" : "PM" : c ? "am" : "AM";
    }, ga("en", {
        eras: [ {
            since: "0001-01-01",
            until: 1 / 0,
            offset: 1,
            name: "Anno Domini",
            narrow: "AD",
            abbr: "AD"
        }, {
            since: "0000-12-31",
            until: -1 / 0,
            offset: 1,
            name: "Before Christ",
            narrow: "BC",
            abbr: "BC"
        } ],
        dayOfMonthOrdinalParse: /\d{1,2}(th|st|nd|rd)/,
        ordinal: function(a) {
            var b = a % 10;
            return a + (1 === H(a % 100 / 10) ? "th" : 1 == b ? "st" : 2 == b ? "nd" : 3 == b ? "rd" : "th");
        }
    }), a.lang = s("moment.lang is deprecated. Use moment.locale instead.", ga), a.langData = s("moment.langData is deprecated. Use moment.localeData instead.", ia);
    var Hc = Math.abs, Ic = ab("ms"), Jc = ab("s"), Kc = ab("m"), Lc = ab("h"), Mc = ab("d"), Nc = ab("w"), Oc = ab("M"), Pc = ab("Q"), Qc = ab("y"), Rc = bb("milliseconds"), Sc = bb("seconds"), Tc = bb("minutes"), Uc = bb("hours"), Vc = bb("days"), Wc = bb("months"), Xc = bb("years"), Yc = Math.round, Zc = {
        ss: 44,
        s: 45,
        m: 45,
        h: 22,
        d: 26,
        w: null,
        M: 11
    }, $c = Math.abs, _c = ua.prototype;
    return _c.isValid = function() {
        return this._isValid;
    }, _c.abs = function() {
        var a = this._data;
        return this._milliseconds = Hc(this._milliseconds), this._days = Hc(this._days), 
        this._months = Hc(this._months), a.milliseconds = Hc(a.milliseconds), a.seconds = Hc(a.seconds), 
        a.minutes = Hc(a.minutes), a.hours = Hc(a.hours), a.months = Hc(a.months), a.years = Hc(a.years), 
        this;
    }, _c.add = function(a, b) {
        return Ya(this, a, b, 1);
    }, _c.subtract = function(a, b) {
        return Ya(this, a, b, -1);
    }, _c.as = function(a) {
        if (!this.isValid()) return NaN;
        var b, c, d = this._milliseconds;
        if ("month" === (a = C(a)) || "quarter" === a || "year" === a) switch (b = this._days + d / 864e5, 
        c = this._months + $a(b), a) {
          case "month":
            return c;

          case "quarter":
            return c / 3;

          case "year":
            return c / 12;
        } else switch (b = this._days + Math.round(_a(this._months)), a) {
          case "week":
            return b / 7 + d / 6048e5;

          case "day":
            return b + d / 864e5;

          case "hour":
            return 24 * b + d / 36e5;

          case "minute":
            return 1440 * b + d / 6e4;

          case "second":
            return 86400 * b + d / 1e3;

          case "millisecond":
            return Math.floor(864e5 * b) + d;

          default:
            throw new Error("Unknown unit " + a);
        }
    }, _c.asMilliseconds = Ic, _c.asSeconds = Jc, _c.asMinutes = Kc, _c.asHours = Lc, 
    _c.asDays = Mc, _c.asWeeks = Nc, _c.asMonths = Oc, _c.asQuarters = Pc, _c.asYears = Qc, 
    _c.valueOf = function() {
        return this.isValid() ? this._milliseconds + 864e5 * this._days + this._months % 12 * 2592e6 + 31536e6 * H(this._months / 12) : NaN;
    }, _c._bubble = function() {
        var a, b, c, d, e, f = this._milliseconds, g = this._days, h = this._months, i = this._data;
        return 0 <= f && 0 <= g && 0 <= h || f <= 0 && g <= 0 && h <= 0 || (f += 864e5 * Za(_a(h) + g), 
        h = g = 0), i.milliseconds = f % 1e3, a = G(f / 1e3), i.seconds = a % 60, b = G(a / 60), 
        i.minutes = b % 60, c = G(b / 60), i.hours = c % 24, g += G(c / 24), h += e = G($a(g)), 
        g -= Za(_a(e)), d = G(h / 12), h %= 12, i.days = g, i.months = h, i.years = d, this;
    }, _c.clone = function() {
        return Ca(this);
    }, _c.get = function(a) {
        return a = C(a), this.isValid() ? this[a + "s"]() : NaN;
    }, _c.milliseconds = Rc, _c.seconds = Sc, _c.minutes = Tc, _c.hours = Uc, _c.days = Vc, 
    _c.weeks = function() {
        return G(this.days() / 7);
    }, _c.months = Wc, _c.years = Xc, _c.humanize = function(a, b) {
        if (!this.isValid()) return this.localeData().invalidDate();
        var c, d, e = !1, f = Zc;
        return "object" == typeof a && (b = a, a = !1), "boolean" == typeof a && (e = a), 
        "object" == typeof b && (f = Object.assign({}, Zc, b), null != b.s && null == b.ss && (f.ss = b.s - 1)), 
        c = this.localeData(), d = cb(this, !e, f, c), e && (d = c.pastFuture(+this, d)), 
        c.postformat(d);
    }, _c.toISOString = eb, _c.toString = eb, _c.toJSON = eb, _c.locale = Ka, _c.localeData = La, 
    _c.toIsoString = s("toIsoString() is deprecated. Please use toISOString() instead (notice the capitals)", eb), 
    _c.lang = yc, y("X", 0, 0, "unix"), y("x", 0, 0, "valueOf"), L("x", Eb), L("X", /[+-]?\d+(\.\d{1,3})?/), 
    O("X", function(a, b, c) {
        c._d = new Date(1e3 * parseFloat(a));
    }), O("x", function(a, b, c) {
        c._d = new Date(H(a));
    }), a.version = "2.26.0", fb = sa, a.fn = Fc, a.min = function() {
        return ta("isBefore", [].slice.call(arguments, 0));
    }, a.max = function() {
        return ta("isAfter", [].slice.call(arguments, 0));
    }, a.now = function() {
        return Date.now ? Date.now() : +new Date();
    }, a.utc = k, a.unix = function(a) {
        return sa(1e3 * a);
    }, a.months = function(a, b) {
        return Wa(a, b, "months");
    }, a.isDate = h, a.locale = ga, a.invalid = n, a.duration = Ca, a.isMoment = q, 
    a.weekdays = function(a, b, c) {
        return Xa(a, b, c, "weekdays");
    }, a.parseZone = function() {
        return sa.apply(null, arguments).parseZone();
    }, a.localeData = ia, a.isDuration = va, a.monthsShort = function(a, b) {
        return Wa(a, b, "monthsShort");
    }, a.weekdaysMin = function(a, b, c) {
        return Xa(a, b, c, "weekdaysMin");
    }, a.defineLocale = ha, a.updateLocale = function(a, b) {
        var c, d, e;
        return null != b ? (e = fc, null != gc[a] && null != gc[a].parentLocale ? gc[a].set(v(gc[a]._config, b)) : (null != (d = fa(a)) && (e = d._config), 
        b = v(e, b), null == d && (b.abbr = a), (c = new w(b)).parentLocale = gc[a], gc[a] = c), 
        ga(a)) : null != gc[a] && (null != gc[a].parentLocale ? (gc[a] = gc[a].parentLocale, 
        a === ga() && ga(a)) : null != gc[a] && delete gc[a]), gc[a];
    }, a.locales = function() {
        return hb(gc);
    }, a.weekdaysShort = function(a, b, c) {
        return Xa(a, b, c, "weekdaysShort");
    }, a.normalizeUnits = C, a.relativeTimeRounding = function(a) {
        return void 0 === a ? Yc : "function" == typeof a && (Yc = a, !0);
    }, a.relativeTimeThreshold = function(a, b) {
        return void 0 !== Zc[a] && (void 0 === b ? Zc[a] : (Zc[a] = b, "s" === a && (Zc.ss = b - 1), 
        !0));
    }, a.calendarFormat = function(a, b) {
        var c = a.diff(b, "days", !0);
        return c < -6 ? "sameElse" : c < -1 ? "lastWeek" : c < 0 ? "lastDay" : c < 1 ? "sameDay" : c < 2 ? "nextDay" : c < 7 ? "nextWeek" : "sameElse";
    }, a.prototype = Fc, a.HTML5_FMT = {
        DATETIME_LOCAL: "YYYY-MM-DDTHH:mm",
        DATETIME_LOCAL_SECONDS: "YYYY-MM-DDTHH:mm:ss",
        DATETIME_LOCAL_MS: "YYYY-MM-DDTHH:mm:ss.SSS",
        DATE: "YYYY-MM-DD",
        TIME: "HH:mm",
        TIME_SECONDS: "HH:mm:ss",
        TIME_MS: "HH:mm:ss.SSS",
        WEEK: "GGGG-[W]WW",
        MONTH: "YYYY-MM"
    }, a;
}), function(a) {
    "use strict";
    if ("function" == typeof define && define.amd) define([ "jquery", "moment" ], a); else if ("object" == typeof exports) module.exports = a(require("jquery"), require("moment")); else {
        if ("undefined" == typeof jQuery) throw "bootstrap-datetimepicker requires jQuery to be loaded first";
        if ("undefined" == typeof moment) throw "bootstrap-datetimepicker requires Moment.js to be loaded first";
        a(jQuery, moment);
    }
}(function(a, b) {
    "use strict";
    if (!b) throw new Error("bootstrap-datetimepicker requires Moment.js to be loaded first");
    var c = function(c, d) {
        var e, f, g, h, i, j, k, l = {}, m = !0, n = !1, o = !1, p = 0, q = [ {
            clsName: "days",
            navFnc: "M",
            navStep: 1
        }, {
            clsName: "months",
            navFnc: "y",
            navStep: 1
        }, {
            clsName: "years",
            navFnc: "y",
            navStep: 10
        }, {
            clsName: "decades",
            navFnc: "y",
            navStep: 100
        } ], r = [ "days", "months", "years", "decades" ], s = [ "top", "bottom", "auto" ], t = [ "left", "right", "auto" ], u = [ "default", "top", "bottom" ], v = {
            up: 38,
            38: "up",
            down: 40,
            40: "down",
            left: 37,
            37: "left",
            right: 39,
            39: "right",
            tab: 9,
            9: "tab",
            escape: 27,
            27: "escape",
            enter: 13,
            13: "enter",
            pageUp: 33,
            33: "pageUp",
            pageDown: 34,
            34: "pageDown",
            shift: 16,
            16: "shift",
            control: 17,
            17: "control",
            space: 32,
            32: "space",
            t: 84,
            84: "t",
            delete: 46,
            46: "delete"
        }, w = {}, x = function() {
            return void 0 !== b.tz && void 0 !== d.timeZone && null !== d.timeZone && "" !== d.timeZone;
        }, y = function(a) {
            var c;
            return c = void 0 === a || null === a ? b() : b.isDate(a) || b.isMoment(a) ? b(a) : x() ? b.tz(a, j, d.useStrict, d.timeZone) : b(a, j, d.useStrict), 
            x() && c.tz(d.timeZone), c;
        }, z = function(a) {
            if ("string" != typeof a || a.length > 1) throw new TypeError("isEnabled expects a single character string parameter");
            switch (a) {
              case "y":
                return -1 !== i.indexOf("Y");

              case "M":
                return -1 !== i.indexOf("M");

              case "d":
                return -1 !== i.toLowerCase().indexOf("d");

              case "h":
              case "H":
                return -1 !== i.toLowerCase().indexOf("h");

              case "m":
                return -1 !== i.indexOf("m");

              case "s":
                return -1 !== i.indexOf("s");

              default:
                return !1;
            }
        }, A = function() {
            return z("h") || z("m") || z("s");
        }, B = function() {
            return z("y") || z("M") || z("d");
        }, C = function() {
            var b = a("<thead>").append(a("<tr>").append(a("<th>").addClass("prev").attr("data-action", "previous").append(a("<span>").addClass(d.icons.previous))).append(a("<th>").addClass("picker-switch").attr("data-action", "pickerSwitch").attr("colspan", d.calendarWeeks ? "6" : "5")).append(a("<th>").addClass("next").attr("data-action", "next").append(a("<span>").addClass(d.icons.next)))), c = a("<tbody>").append(a("<tr>").append(a("<td>").attr("colspan", d.calendarWeeks ? "8" : "7")));
            return [ a("<div>").addClass("datepicker-days").append(a("<table>").addClass("table-condensed").append(b).append(a("<tbody>"))), a("<div>").addClass("datepicker-months").append(a("<table>").addClass("table-condensed").append(b.clone()).append(c.clone())), a("<div>").addClass("datepicker-years").append(a("<table>").addClass("table-condensed").append(b.clone()).append(c.clone())), a("<div>").addClass("datepicker-decades").append(a("<table>").addClass("table-condensed").append(b.clone()).append(c.clone())) ];
        }, D = function() {
            var b = a("<tr>"), c = a("<tr>"), e = a("<tr>");
            return z("h") && (b.append(a("<td>").append(a("<a>").attr({
                href: "#",
                tabindex: "-1",
                title: d.tooltips.incrementHour
            }).addClass("btn").attr("data-action", "incrementHours").append(a("<span>").addClass(d.icons.up)))), 
            c.append(a("<td>").append(a("<span>").addClass("timepicker-hour").attr({
                "data-time-component": "hours",
                title: d.tooltips.pickHour
            }).attr("data-action", "showHours"))), e.append(a("<td>").append(a("<a>").attr({
                href: "#",
                tabindex: "-1",
                title: d.tooltips.decrementHour
            }).addClass("btn").attr("data-action", "decrementHours").append(a("<span>").addClass(d.icons.down))))), 
            z("m") && (z("h") && (b.append(a("<td>").addClass("separator")), c.append(a("<td>").addClass("separator").html(":")), 
            e.append(a("<td>").addClass("separator"))), b.append(a("<td>").append(a("<a>").attr({
                href: "#",
                tabindex: "-1",
                title: d.tooltips.incrementMinute
            }).addClass("btn").attr("data-action", "incrementMinutes").append(a("<span>").addClass(d.icons.up)))), 
            c.append(a("<td>").append(a("<span>").addClass("timepicker-minute").attr({
                "data-time-component": "minutes",
                title: d.tooltips.pickMinute
            }).attr("data-action", "showMinutes"))), e.append(a("<td>").append(a("<a>").attr({
                href: "#",
                tabindex: "-1",
                title: d.tooltips.decrementMinute
            }).addClass("btn").attr("data-action", "decrementMinutes").append(a("<span>").addClass(d.icons.down))))), 
            z("s") && (z("m") && (b.append(a("<td>").addClass("separator")), c.append(a("<td>").addClass("separator").html(":")), 
            e.append(a("<td>").addClass("separator"))), b.append(a("<td>").append(a("<a>").attr({
                href: "#",
                tabindex: "-1",
                title: d.tooltips.incrementSecond
            }).addClass("btn").attr("data-action", "incrementSeconds").append(a("<span>").addClass(d.icons.up)))), 
            c.append(a("<td>").append(a("<span>").addClass("timepicker-second").attr({
                "data-time-component": "seconds",
                title: d.tooltips.pickSecond
            }).attr("data-action", "showSeconds"))), e.append(a("<td>").append(a("<a>").attr({
                href: "#",
                tabindex: "-1",
                title: d.tooltips.decrementSecond
            }).addClass("btn").attr("data-action", "decrementSeconds").append(a("<span>").addClass(d.icons.down))))), 
            h || (b.append(a("<td>").addClass("separator")), c.append(a("<td>").append(a("<button>").addClass("btn btn-primary").attr({
                "data-action": "togglePeriod",
                tabindex: "-1",
                title: d.tooltips.togglePeriod
            }))), e.append(a("<td>").addClass("separator"))), a("<div>").addClass("timepicker-picker").append(a("<table>").addClass("table-condensed").append([ b, c, e ]));
        }, E = function() {
            var b = a("<div>").addClass("timepicker-hours").append(a("<table>").addClass("table-condensed")), c = a("<div>").addClass("timepicker-minutes").append(a("<table>").addClass("table-condensed")), d = a("<div>").addClass("timepicker-seconds").append(a("<table>").addClass("table-condensed")), e = [ D() ];
            return z("h") && e.push(b), z("m") && e.push(c), z("s") && e.push(d), e;
        }, F = function() {
            var b = [];
            return d.showTodayButton && b.push(a("<td>").append(a("<a>").attr({
                "data-action": "today",
                title: d.tooltips.today
            }).append(a("<span>").addClass(d.icons.today)))), !d.sideBySide && B() && A() && b.push(a("<td>").append(a("<a>").attr({
                "data-action": "togglePicker",
                title: d.tooltips.selectTime
            }).append(a("<span>").addClass(d.icons.time)))), d.showClear && b.push(a("<td>").append(a("<a>").attr({
                "data-action": "clear",
                title: d.tooltips.clear
            }).append(a("<span>").addClass(d.icons.clear)))), d.showClose && b.push(a("<td>").append(a("<a>").attr({
                "data-action": "close",
                title: d.tooltips.close
            }).append(a("<span>").addClass(d.icons.close)))), a("<table>").addClass("table-condensed").append(a("<tbody>").append(a("<tr>").append(b)));
        }, G = function() {
            var b = a("<div>").addClass("bootstrap-datetimepicker-widget dropdown-menu"), c = a("<div>").addClass("datepicker").append(C()), e = a("<div>").addClass("timepicker").append(E()), f = a("<ul>").addClass("list-unstyled"), g = a("<li>").addClass("picker-switch" + (d.collapse ? " accordion-toggle" : "")).append(F());
            return d.inline && b.removeClass("dropdown-menu"), h && b.addClass("usetwentyfour"), 
            z("s") && !h && b.addClass("wider"), d.sideBySide && B() && A() ? (b.addClass("timepicker-sbs"), 
            "top" === d.toolbarPlacement && b.append(g), b.append(a("<div>").addClass("row").append(c.addClass("col-md-6")).append(e.addClass("col-md-6"))), 
            "bottom" === d.toolbarPlacement && b.append(g), b) : ("top" === d.toolbarPlacement && f.append(g), 
            B() && f.append(a("<li>").addClass(d.collapse && A() ? "collapse in" : "").append(c)), 
            "default" === d.toolbarPlacement && f.append(g), A() && f.append(a("<li>").addClass(d.collapse && B() ? "collapse" : "").append(e)), 
            "bottom" === d.toolbarPlacement && f.append(g), b.append(f));
        }, H = function() {
            var b, e = (n || c).position(), f = (n || c).offset(), g = d.widgetPositioning.vertical, h = d.widgetPositioning.horizontal;
            if (d.widgetParent) b = d.widgetParent.append(o); else if (c.is("input")) b = c.after(o).parent(); else {
                if (d.inline) return void (b = c.append(o));
                b = c, c.children().first().after(o);
            }
            if ("auto" === g && (g = f.top + 1.5 * o.height() >= a(window).height() + a(window).scrollTop() && o.height() + c.outerHeight() < f.top ? "top" : "bottom"), 
            "auto" === h && (h = b.width() < f.left + o.outerWidth() / 2 && f.left + o.outerWidth() > a(window).width() ? "right" : "left"), 
            "top" === g ? o.addClass("top").removeClass("bottom") : o.addClass("bottom").removeClass("top"), 
            "right" === h ? o.addClass("pull-right") : o.removeClass("pull-right"), "static" === b.css("position") && (b = b.parents().filter(function() {
                return "static" !== a(this).css("position");
            }).first()), 0 === b.length) throw new Error("datetimepicker component should be placed within a non-static positioned container");
            o.css({
                top: "top" === g ? "auto" : e.top + c.outerHeight(),
                bottom: "top" === g ? b.outerHeight() - (b === c ? 0 : e.top) : "auto",
                left: "left" === h ? b === c ? 0 : e.left : "auto",
                right: "left" === h ? "auto" : b.outerWidth() - c.outerWidth() - (b === c ? 0 : e.left)
            });
        }, I = function(a) {
            "dp.change" === a.type && (a.date && a.date.isSame(a.oldDate) || !a.date && !a.oldDate) || c.trigger(a);
        }, J = function(a) {
            "y" === a && (a = "YYYY"), I({
                type: "dp.update",
                change: a,
                viewDate: f.clone()
            });
        }, K = function(a) {
            o && (a && (k = Math.max(p, Math.min(3, k + a))), o.find(".datepicker > div").hide().filter(".datepicker-" + q[k].clsName).show());
        }, L = function() {
            var b = a("<tr>"), c = f.clone().startOf("w").startOf("d");
            for (!0 === d.calendarWeeks && b.append(a("<th>").addClass("cw").text("#")); c.isBefore(f.clone().endOf("w")); ) b.append(a("<th>").addClass("dow").text(c.format("dd"))), 
            c.add(1, "d");
            o.find(".datepicker-days thead").append(b);
        }, M = function(a) {
            return !0 === d.disabledDates[a.format("YYYY-MM-DD")];
        }, N = function(a) {
            return !0 === d.enabledDates[a.format("YYYY-MM-DD")];
        }, O = function(a) {
            return !0 === d.disabledHours[a.format("H")];
        }, P = function(a) {
            return !0 === d.enabledHours[a.format("H")];
        }, Q = function(b, c) {
            if (!b.isValid()) return !1;
            if (d.disabledDates && "d" === c && M(b)) return !1;
            if (d.enabledDates && "d" === c && !N(b)) return !1;
            if (d.minDate && b.isBefore(d.minDate, c)) return !1;
            if (d.maxDate && b.isAfter(d.maxDate, c)) return !1;
            if (d.daysOfWeekDisabled && "d" === c && -1 !== d.daysOfWeekDisabled.indexOf(b.day())) return !1;
            if (d.disabledHours && ("h" === c || "m" === c || "s" === c) && O(b)) return !1;
            if (d.enabledHours && ("h" === c || "m" === c || "s" === c) && !P(b)) return !1;
            if (d.disabledTimeIntervals && ("h" === c || "m" === c || "s" === c)) {
                var e = !1;
                if (a.each(d.disabledTimeIntervals, function() {
                    if (b.isBetween(this[0], this[1])) return e = !0, !1;
                }), e) return !1;
            }
            return !0;
        }, R = function() {
            for (var b = [], c = f.clone().startOf("y").startOf("d"); c.isSame(f, "y"); ) b.push(a("<span>").attr("data-action", "selectMonth").addClass("month").text(c.format("MMM"))), 
            c.add(1, "M");
            o.find(".datepicker-months td").empty().append(b);
        }, S = function() {
            var b = o.find(".datepicker-months"), c = b.find("th"), g = b.find("tbody").find("span");
            c.eq(0).find("span").attr("title", d.tooltips.prevYear), c.eq(1).attr("title", d.tooltips.selectYear), 
            c.eq(2).find("span").attr("title", d.tooltips.nextYear), b.find(".disabled").removeClass("disabled"), 
            Q(f.clone().subtract(1, "y"), "y") || c.eq(0).addClass("disabled"), c.eq(1).text(f.year()), 
            Q(f.clone().add(1, "y"), "y") || c.eq(2).addClass("disabled"), g.removeClass("active"), 
            e.isSame(f, "y") && !m && g.eq(e.month()).addClass("active"), g.each(function(b) {
                Q(f.clone().month(b), "M") || a(this).addClass("disabled");
            });
        }, T = function() {
            var a = o.find(".datepicker-years"), b = a.find("th"), c = f.clone().subtract(5, "y"), g = f.clone().add(6, "y"), h = "";
            for (b.eq(0).find("span").attr("title", d.tooltips.prevDecade), b.eq(1).attr("title", d.tooltips.selectDecade), 
            b.eq(2).find("span").attr("title", d.tooltips.nextDecade), a.find(".disabled").removeClass("disabled"), 
            d.minDate && d.minDate.isAfter(c, "y") && b.eq(0).addClass("disabled"), b.eq(1).text(c.year() + "-" + g.year()), 
            d.maxDate && d.maxDate.isBefore(g, "y") && b.eq(2).addClass("disabled"); !c.isAfter(g, "y"); ) h += '<span data-action="selectYear" class="year' + (c.isSame(e, "y") && !m ? " active" : "") + (Q(c, "y") ? "" : " disabled") + '">' + c.year() + "</span>", 
            c.add(1, "y");
            a.find("td").html(h);
        }, U = function() {
            var a, c = o.find(".datepicker-decades"), g = c.find("th"), h = b({
                y: f.year() - f.year() % 100 - 1
            }), i = h.clone().add(100, "y"), j = h.clone(), k = !1, l = !1, m = "";
            for (g.eq(0).find("span").attr("title", d.tooltips.prevCentury), g.eq(2).find("span").attr("title", d.tooltips.nextCentury), 
            c.find(".disabled").removeClass("disabled"), (h.isSame(b({
                y: 1900
            })) || d.minDate && d.minDate.isAfter(h, "y")) && g.eq(0).addClass("disabled"), 
            g.eq(1).text(h.year() + "-" + i.year()), (h.isSame(b({
                y: 2e3
            })) || d.maxDate && d.maxDate.isBefore(i, "y")) && g.eq(2).addClass("disabled"); !h.isAfter(i, "y"); ) a = h.year() + 12, 
            k = d.minDate && d.minDate.isAfter(h, "y") && d.minDate.year() <= a, l = d.maxDate && d.maxDate.isAfter(h, "y") && d.maxDate.year() <= a, 
            m += '<span data-action="selectDecade" class="decade' + (e.isAfter(h) && e.year() <= a ? " active" : "") + (Q(h, "y") || k || l ? "" : " disabled") + '" data-selection="' + (h.year() + 6) + '">' + (h.year() + 1) + " - " + (h.year() + 12) + "</span>", 
            h.add(12, "y");
            m += "<span></span><span></span><span></span>", c.find("td").html(m), g.eq(1).text(j.year() + 1 + "-" + h.year());
        }, V = function() {
            var b, c, g, h = o.find(".datepicker-days"), i = h.find("th"), j = [], k = [];
            if (B()) {
                for (i.eq(0).find("span").attr("title", d.tooltips.prevMonth), i.eq(1).attr("title", d.tooltips.selectMonth), 
                i.eq(2).find("span").attr("title", d.tooltips.nextMonth), h.find(".disabled").removeClass("disabled"), 
                i.eq(1).text(f.format(d.dayViewHeaderFormat)), Q(f.clone().subtract(1, "M"), "M") || i.eq(0).addClass("disabled"), 
                Q(f.clone().add(1, "M"), "M") || i.eq(2).addClass("disabled"), b = f.clone().startOf("M").startOf("w").startOf("d"), 
                g = 0; g < 42; g++) 0 === b.weekday() && (c = a("<tr>"), d.calendarWeeks && c.append('<td class="cw">' + b.week() + "</td>"), 
                j.push(c)), k = [ "day" ], b.isBefore(f, "M") && k.push("old"), b.isAfter(f, "M") && k.push("new"), 
                b.isSame(e, "d") && !m && k.push("active"), Q(b, "d") || k.push("disabled"), b.isSame(y(), "d") && k.push("today"), 
                0 !== b.day() && 6 !== b.day() || k.push("weekend"), I({
                    type: "dp.classify",
                    date: b,
                    classNames: k
                }), c.append('<td data-action="selectDay" data-day="' + b.format("L") + '" class="' + k.join(" ") + '">' + b.date() + "</td>"), 
                b.add(1, "d");
                h.find("tbody").empty().append(j), S(), T(), U();
            }
        }, W = function() {
            var b = o.find(".timepicker-hours table"), c = f.clone().startOf("d"), d = [], e = a("<tr>");
            for (f.hour() > 11 && !h && c.hour(12); c.isSame(f, "d") && (h || f.hour() < 12 && c.hour() < 12 || f.hour() > 11); ) c.hour() % 4 == 0 && (e = a("<tr>"), 
            d.push(e)), e.append('<td data-action="selectHour" class="hour' + (Q(c, "h") ? "" : " disabled") + '">' + c.format(h ? "HH" : "hh") + "</td>"), 
            c.add(1, "h");
            b.empty().append(d);
        }, X = function() {
            for (var b = o.find(".timepicker-minutes table"), c = f.clone().startOf("h"), e = [], g = a("<tr>"), h = 1 === d.stepping ? 5 : d.stepping; f.isSame(c, "h"); ) c.minute() % (4 * h) == 0 && (g = a("<tr>"), 
            e.push(g)), g.append('<td data-action="selectMinute" class="minute' + (Q(c, "m") ? "" : " disabled") + '">' + c.format("mm") + "</td>"), 
            c.add(h, "m");
            b.empty().append(e);
        }, Y = function() {
            for (var b = o.find(".timepicker-seconds table"), c = f.clone().startOf("m"), d = [], e = a("<tr>"); f.isSame(c, "m"); ) c.second() % 20 == 0 && (e = a("<tr>"), 
            d.push(e)), e.append('<td data-action="selectSecond" class="second' + (Q(c, "s") ? "" : " disabled") + '">' + c.format("ss") + "</td>"), 
            c.add(5, "s");
            b.empty().append(d);
        }, Z = function() {
            var a, b, c = o.find(".timepicker span[data-time-component]");
            h || (a = o.find(".timepicker [data-action=togglePeriod]"), b = e.clone().add(e.hours() >= 12 ? -12 : 12, "h"), 
            a.text(e.format("A")), Q(b, "h") ? a.removeClass("disabled") : a.addClass("disabled")), 
            c.filter("[data-time-component=hours]").text(e.format(h ? "HH" : "hh")), c.filter("[data-time-component=minutes]").text(e.format("mm")), 
            c.filter("[data-time-component=seconds]").text(e.format("ss")), W(), X(), Y();
        }, $ = function() {
            o && (V(), Z());
        }, _ = function(a) {
            var b = m ? null : e;
            if (!a) return m = !0, g.val(""), c.data("date", ""), I({
                type: "dp.change",
                date: !1,
                oldDate: b
            }), void $();
            if (a = a.clone().locale(d.locale), x() && a.tz(d.timeZone), 1 !== d.stepping) for (a.minutes(Math.round(a.minutes() / d.stepping) * d.stepping).seconds(0); d.minDate && a.isBefore(d.minDate); ) a.add(d.stepping, "minutes");
            Q(a) ? (e = a, f = e.clone(), g.val(e.format(i)), c.data("date", e.format(i)), m = !1, 
            $(), I({
                type: "dp.change",
                date: e.clone(),
                oldDate: b
            })) : (d.keepInvalid ? I({
                type: "dp.change",
                date: a,
                oldDate: b
            }) : g.val(m ? "" : e.format(i)), I({
                type: "dp.error",
                date: a,
                oldDate: b
            }));
        }, aa = function() {
            var b = !1;
            return o ? (o.find(".collapse").each(function() {
                var c = a(this).data("collapse");
                return !c || !c.transitioning || (b = !0, !1);
            }), b ? l : (n && n.hasClass("btn") && n.toggleClass("active"), o.hide(), a(window).off("resize", H), 
            o.off("click", "[data-action]"), o.off("mousedown", !1), o.remove(), o = !1, I({
                type: "dp.hide",
                date: e.clone()
            }), g.blur(), f = e.clone(), l)) : l;
        }, ba = function() {
            _(null);
        }, ca = function(a) {
            return void 0 === d.parseInputDate ? (!b.isMoment(a) || a instanceof Date) && (a = y(a)) : a = d.parseInputDate(a), 
            a;
        }, da = {
            next: function() {
                var a = q[k].navFnc;
                f.add(q[k].navStep, a), V(), J(a);
            },
            previous: function() {
                var a = q[k].navFnc;
                f.subtract(q[k].navStep, a), V(), J(a);
            },
            pickerSwitch: function() {
                K(1);
            },
            selectMonth: function(b) {
                var c = a(b.target).closest("tbody").find("span").index(a(b.target));
                f.month(c), k === p ? (_(e.clone().year(f.year()).month(f.month())), d.inline || aa()) : (K(-1), 
                V()), J("M");
            },
            selectYear: function(b) {
                var c = parseInt(a(b.target).text(), 10) || 0;
                f.year(c), k === p ? (_(e.clone().year(f.year())), d.inline || aa()) : (K(-1), V()), 
                J("YYYY");
            },
            selectDecade: function(b) {
                var c = parseInt(a(b.target).data("selection"), 10) || 0;
                f.year(c), k === p ? (_(e.clone().year(f.year())), d.inline || aa()) : (K(-1), V()), 
                J("YYYY");
            },
            selectDay: function(b) {
                var c = f.clone();
                a(b.target).is(".old") && c.subtract(1, "M"), a(b.target).is(".new") && c.add(1, "M"), 
                _(c.date(parseInt(a(b.target).text(), 10))), A() || d.keepOpen || d.inline || aa();
            },
            incrementHours: function() {
                var a = e.clone().add(1, "h");
                Q(a, "h") && _(a);
            },
            incrementMinutes: function() {
                var a = e.clone().add(d.stepping, "m");
                Q(a, "m") && _(a);
            },
            incrementSeconds: function() {
                var a = e.clone().add(1, "s");
                Q(a, "s") && _(a);
            },
            decrementHours: function() {
                var a = e.clone().subtract(1, "h");
                Q(a, "h") && _(a);
            },
            decrementMinutes: function() {
                var a = e.clone().subtract(d.stepping, "m");
                Q(a, "m") && _(a);
            },
            decrementSeconds: function() {
                var a = e.clone().subtract(1, "s");
                Q(a, "s") && _(a);
            },
            togglePeriod: function() {
                _(e.clone().add(e.hours() >= 12 ? -12 : 12, "h"));
            },
            togglePicker: function(b) {
                var c, e = a(b.target), f = e.closest("ul"), g = f.find(".in"), h = f.find(".collapse:not(.in)");
                if (g && g.length) {
                    if ((c = g.data("collapse")) && c.transitioning) return;
                    g.collapse ? (g.collapse("hide"), h.collapse("show")) : (g.removeClass("in"), h.addClass("in")), 
                    e.is("span") ? e.toggleClass(d.icons.time + " " + d.icons.date) : e.find("span").toggleClass(d.icons.time + " " + d.icons.date);
                }
            },
            showPicker: function() {
                o.find(".timepicker > div:not(.timepicker-picker)").hide(), o.find(".timepicker .timepicker-picker").show();
            },
            showHours: function() {
                o.find(".timepicker .timepicker-picker").hide(), o.find(".timepicker .timepicker-hours").show();
            },
            showMinutes: function() {
                o.find(".timepicker .timepicker-picker").hide(), o.find(".timepicker .timepicker-minutes").show();
            },
            showSeconds: function() {
                o.find(".timepicker .timepicker-picker").hide(), o.find(".timepicker .timepicker-seconds").show();
            },
            selectHour: function(b) {
                var c = parseInt(a(b.target).text(), 10);
                h || (e.hours() >= 12 ? 12 !== c && (c += 12) : 12 === c && (c = 0)), _(e.clone().hours(c)), 
                da.showPicker.call(l);
            },
            selectMinute: function(b) {
                _(e.clone().minutes(parseInt(a(b.target).text(), 10))), da.showPicker.call(l);
            },
            selectSecond: function(b) {
                _(e.clone().seconds(parseInt(a(b.target).text(), 10))), da.showPicker.call(l);
            },
            clear: ba,
            today: function() {
                var a = y();
                Q(a, "d") && _(a);
            },
            close: aa
        }, ea = function(b) {
            return !a(b.currentTarget).is(".disabled") && (da[a(b.currentTarget).data("action")].apply(l, arguments), 
            !1);
        }, fa = function() {
            var b, c = {
                year: function(a) {
                    return a.month(0).date(1).hours(0).seconds(0).minutes(0);
                },
                month: function(a) {
                    return a.date(1).hours(0).seconds(0).minutes(0);
                },
                day: function(a) {
                    return a.hours(0).seconds(0).minutes(0);
                },
                hour: function(a) {
                    return a.seconds(0).minutes(0);
                },
                minute: function(a) {
                    return a.seconds(0);
                }
            };
            return g.prop("disabled") || !d.ignoreReadonly && g.prop("readonly") || o ? l : (void 0 !== g.val() && 0 !== g.val().trim().length ? _(ca(g.val().trim())) : m && d.useCurrent && (d.inline || g.is("input") && 0 === g.val().trim().length) && (b = y(), 
            "string" == typeof d.useCurrent && (b = c[d.useCurrent](b)), _(b)), o = G(), L(), 
            R(), o.find(".timepicker-hours").hide(), o.find(".timepicker-minutes").hide(), o.find(".timepicker-seconds").hide(), 
            $(), K(), a(window).on("resize", H), o.on("click", "[data-action]", ea), o.on("mousedown", !1), 
            n && n.hasClass("btn") && n.toggleClass("active"), H(), o.show(), d.focusOnShow && !g.is(":focus") && g.focus(), 
            I({
                type: "dp.show"
            }), l);
        }, ga = function() {
            return o ? aa() : fa();
        }, ha = function(a) {
            var b, c, e, f, g = null, h = [], i = {}, j = a.which;
            w[j] = "p";
            for (b in w) w.hasOwnProperty(b) && "p" === w[b] && (h.push(b), parseInt(b, 10) !== j && (i[b] = !0));
            for (b in d.keyBinds) if (d.keyBinds.hasOwnProperty(b) && "function" == typeof d.keyBinds[b] && (e = b.split(" "), 
            e.length === h.length && v[j] === e[e.length - 1])) {
                for (f = !0, c = e.length - 2; c >= 0; c--) if (!(v[e[c]] in i)) {
                    f = !1;
                    break;
                }
                if (f) {
                    g = d.keyBinds[b];
                    break;
                }
            }
            g && (g.call(l, o), a.stopPropagation(), a.preventDefault());
        }, ia = function(a) {
            w[a.which] = "r", a.stopPropagation(), a.preventDefault();
        }, ja = function(b) {
            var c = a(b.target).val().trim(), d = c ? ca(c) : null;
            return _(d), b.stopImmediatePropagation(), !1;
        }, ka = function() {
            g.off({
                change: ja,
                blur: blur,
                keydown: ha,
                keyup: ia,
                focus: d.allowInputToggle ? aa : ""
            }), c.is("input") ? g.off({
                focus: fa
            }) : n && (n.off("click", ga), n.off("mousedown", !1));
        }, la = function(b) {
            var c = {};
            return a.each(b, function() {
                var a = ca(this);
                a.isValid() && (c[a.format("YYYY-MM-DD")] = !0);
            }), !!Object.keys(c).length && c;
        }, ma = function(b) {
            var c = {};
            return a.each(b, function() {
                c[this] = !0;
            }), !!Object.keys(c).length && c;
        }, na = function() {
            var a = d.format || "L LT";
            i = a.replace(/(\[[^\[]*\])|(\\)?(LTS|LT|LL?L?L?|l{1,4})/g, function(a) {
                return (e.localeData().longDateFormat(a) || a).replace(/(\[[^\[]*\])|(\\)?(LTS|LT|LL?L?L?|l{1,4})/g, function(a) {
                    return e.localeData().longDateFormat(a) || a;
                });
            }), j = d.extraFormats ? d.extraFormats.slice() : [], j.indexOf(a) < 0 && j.indexOf(i) < 0 && j.push(i), 
            h = i.toLowerCase().indexOf("a") < 1 && i.replace(/\[.*?\]/g, "").indexOf("h") < 1, 
            z("y") && (p = 2), z("M") && (p = 1), z("d") && (p = 0), k = Math.max(p, k), m || _(e);
        };
        if (l.destroy = function() {
            aa(), ka(), c.removeData("DateTimePicker"), c.removeData("date");
        }, l.toggle = ga, l.show = fa, l.hide = aa, l.disable = function() {
            return aa(), n && n.hasClass("btn") && n.addClass("disabled"), g.prop("disabled", !0), 
            l;
        }, l.enable = function() {
            return n && n.hasClass("btn") && n.removeClass("disabled"), g.prop("disabled", !1), 
            l;
        }, l.ignoreReadonly = function(a) {
            if (0 === arguments.length) return d.ignoreReadonly;
            if ("boolean" != typeof a) throw new TypeError("ignoreReadonly () expects a boolean parameter");
            return d.ignoreReadonly = a, l;
        }, l.options = function(b) {
            if (0 === arguments.length) return a.extend(!0, {}, d);
            if (!(b instanceof Object)) throw new TypeError("options() options parameter should be an object");
            return a.extend(!0, d, b), a.each(d, function(a, b) {
                if (void 0 === l[a]) throw new TypeError("option " + a + " is not recognized!");
                l[a](b);
            }), l;
        }, l.date = function(a) {
            if (0 === arguments.length) return m ? null : e.clone();
            if (!(null === a || "string" == typeof a || b.isMoment(a) || a instanceof Date)) throw new TypeError("date() parameter must be one of [null, string, moment or Date]");
            return _(null === a ? null : ca(a)), l;
        }, l.format = function(a) {
            if (0 === arguments.length) return d.format;
            if ("string" != typeof a && ("boolean" != typeof a || !1 !== a)) throw new TypeError("format() expects a string or boolean:false parameter " + a);
            return d.format = a, i && na(), l;
        }, l.timeZone = function(a) {
            if (0 === arguments.length) return d.timeZone;
            if ("string" != typeof a) throw new TypeError("newZone() expects a string parameter");
            return d.timeZone = a, l;
        }, l.dayViewHeaderFormat = function(a) {
            if (0 === arguments.length) return d.dayViewHeaderFormat;
            if ("string" != typeof a) throw new TypeError("dayViewHeaderFormat() expects a string parameter");
            return d.dayViewHeaderFormat = a, l;
        }, l.extraFormats = function(a) {
            if (0 === arguments.length) return d.extraFormats;
            if (!1 !== a && !(a instanceof Array)) throw new TypeError("extraFormats() expects an array or false parameter");
            return d.extraFormats = a, j && na(), l;
        }, l.disabledDates = function(b) {
            if (0 === arguments.length) return d.disabledDates ? a.extend({}, d.disabledDates) : d.disabledDates;
            if (!b) return d.disabledDates = !1, $(), l;
            if (!(b instanceof Array)) throw new TypeError("disabledDates() expects an array parameter");
            return d.disabledDates = la(b), d.enabledDates = !1, $(), l;
        }, l.enabledDates = function(b) {
            if (0 === arguments.length) return d.enabledDates ? a.extend({}, d.enabledDates) : d.enabledDates;
            if (!b) return d.enabledDates = !1, $(), l;
            if (!(b instanceof Array)) throw new TypeError("enabledDates() expects an array parameter");
            return d.enabledDates = la(b), d.disabledDates = !1, $(), l;
        }, l.daysOfWeekDisabled = function(a) {
            if (0 === arguments.length) return d.daysOfWeekDisabled.splice(0);
            if ("boolean" == typeof a && !a) return d.daysOfWeekDisabled = !1, $(), l;
            if (!(a instanceof Array)) throw new TypeError("daysOfWeekDisabled() expects an array parameter");
            if (d.daysOfWeekDisabled = a.reduce(function(a, b) {
                return b = parseInt(b, 10), b > 6 || b < 0 || isNaN(b) ? a : (-1 === a.indexOf(b) && a.push(b), 
                a);
            }, []).sort(), d.useCurrent && !d.keepInvalid) {
                for (var b = 0; !Q(e, "d"); ) {
                    if (e.add(1, "d"), 31 === b) throw "Tried 31 times to find a valid date";
                    b++;
                }
                _(e);
            }
            return $(), l;
        }, l.maxDate = function(a) {
            if (0 === arguments.length) return d.maxDate ? d.maxDate.clone() : d.maxDate;
            if ("boolean" == typeof a && !1 === a) return d.maxDate = !1, $(), l;
            "string" == typeof a && ("now" !== a && "moment" !== a || (a = y()));
            var b = ca(a);
            if (!b.isValid()) throw new TypeError("maxDate() Could not parse date parameter: " + a);
            if (d.minDate && b.isBefore(d.minDate)) throw new TypeError("maxDate() date parameter is before options.minDate: " + b.format(i));
            return d.maxDate = b, d.useCurrent && !d.keepInvalid && e.isAfter(a) && _(d.maxDate), 
            f.isAfter(b) && (f = b.clone().subtract(d.stepping, "m")), $(), l;
        }, l.minDate = function(a) {
            if (0 === arguments.length) return d.minDate ? d.minDate.clone() : d.minDate;
            if ("boolean" == typeof a && !1 === a) return d.minDate = !1, $(), l;
            "string" == typeof a && ("now" !== a && "moment" !== a || (a = y()));
            var b = ca(a);
            if (!b.isValid()) throw new TypeError("minDate() Could not parse date parameter: " + a);
            if (d.maxDate && b.isAfter(d.maxDate)) throw new TypeError("minDate() date parameter is after options.maxDate: " + b.format(i));
            return d.minDate = b, d.useCurrent && !d.keepInvalid && e.isBefore(a) && _(d.minDate), 
            f.isBefore(b) && (f = b.clone().add(d.stepping, "m")), $(), l;
        }, l.defaultDate = function(a) {
            if (0 === arguments.length) return d.defaultDate ? d.defaultDate.clone() : d.defaultDate;
            if (!a) return d.defaultDate = !1, l;
            "string" == typeof a && (a = "now" === a || "moment" === a ? y() : y(a));
            var b = ca(a);
            if (!b.isValid()) throw new TypeError("defaultDate() Could not parse date parameter: " + a);
            if (!Q(b)) throw new TypeError("defaultDate() date passed is invalid according to component setup validations");
            return d.defaultDate = b, (d.defaultDate && d.inline || "" === g.val().trim()) && _(d.defaultDate), 
            l;
        }, l.locale = function(a) {
            if (0 === arguments.length) return d.locale;
            if (!b.localeData(a)) throw new TypeError("locale() locale " + a + " is not loaded from moment locales!");
            return d.locale = a, e.locale(d.locale), f.locale(d.locale), i && na(), o && (aa(), 
            fa()), l;
        }, l.stepping = function(a) {
            return 0 === arguments.length ? d.stepping : (a = parseInt(a, 10), (isNaN(a) || a < 1) && (a = 1), 
            d.stepping = a, l);
        }, l.useCurrent = function(a) {
            var b = [ "year", "month", "day", "hour", "minute" ];
            if (0 === arguments.length) return d.useCurrent;
            if ("boolean" != typeof a && "string" != typeof a) throw new TypeError("useCurrent() expects a boolean or string parameter");
            if ("string" == typeof a && -1 === b.indexOf(a.toLowerCase())) throw new TypeError("useCurrent() expects a string parameter of " + b.join(", "));
            return d.useCurrent = a, l;
        }, l.collapse = function(a) {
            if (0 === arguments.length) return d.collapse;
            if ("boolean" != typeof a) throw new TypeError("collapse() expects a boolean parameter");
            return d.collapse === a ? l : (d.collapse = a, o && (aa(), fa()), l);
        }, l.icons = function(b) {
            if (0 === arguments.length) return a.extend({}, d.icons);
            if (!(b instanceof Object)) throw new TypeError("icons() expects parameter to be an Object");
            return a.extend(d.icons, b), o && (aa(), fa()), l;
        }, l.tooltips = function(b) {
            if (0 === arguments.length) return a.extend({}, d.tooltips);
            if (!(b instanceof Object)) throw new TypeError("tooltips() expects parameter to be an Object");
            return a.extend(d.tooltips, b), o && (aa(), fa()), l;
        }, l.useStrict = function(a) {
            if (0 === arguments.length) return d.useStrict;
            if ("boolean" != typeof a) throw new TypeError("useStrict() expects a boolean parameter");
            return d.useStrict = a, l;
        }, l.sideBySide = function(a) {
            if (0 === arguments.length) return d.sideBySide;
            if ("boolean" != typeof a) throw new TypeError("sideBySide() expects a boolean parameter");
            return d.sideBySide = a, o && (aa(), fa()), l;
        }, l.viewMode = function(a) {
            if (0 === arguments.length) return d.viewMode;
            if ("string" != typeof a) throw new TypeError("viewMode() expects a string parameter");
            if (-1 === r.indexOf(a)) throw new TypeError("viewMode() parameter must be one of (" + r.join(", ") + ") value");
            return d.viewMode = a, k = Math.max(r.indexOf(a), p), K(), l;
        }, l.toolbarPlacement = function(a) {
            if (0 === arguments.length) return d.toolbarPlacement;
            if ("string" != typeof a) throw new TypeError("toolbarPlacement() expects a string parameter");
            if (-1 === u.indexOf(a)) throw new TypeError("toolbarPlacement() parameter must be one of (" + u.join(", ") + ") value");
            return d.toolbarPlacement = a, o && (aa(), fa()), l;
        }, l.widgetPositioning = function(b) {
            if (0 === arguments.length) return a.extend({}, d.widgetPositioning);
            if ("[object Object]" !== {}.toString.call(b)) throw new TypeError("widgetPositioning() expects an object variable");
            if (b.horizontal) {
                if ("string" != typeof b.horizontal) throw new TypeError("widgetPositioning() horizontal variable must be a string");
                if (b.horizontal = b.horizontal.toLowerCase(), -1 === t.indexOf(b.horizontal)) throw new TypeError("widgetPositioning() expects horizontal parameter to be one of (" + t.join(", ") + ")");
                d.widgetPositioning.horizontal = b.horizontal;
            }
            if (b.vertical) {
                if ("string" != typeof b.vertical) throw new TypeError("widgetPositioning() vertical variable must be a string");
                if (b.vertical = b.vertical.toLowerCase(), -1 === s.indexOf(b.vertical)) throw new TypeError("widgetPositioning() expects vertical parameter to be one of (" + s.join(", ") + ")");
                d.widgetPositioning.vertical = b.vertical;
            }
            return $(), l;
        }, l.calendarWeeks = function(a) {
            if (0 === arguments.length) return d.calendarWeeks;
            if ("boolean" != typeof a) throw new TypeError("calendarWeeks() expects parameter to be a boolean value");
            return d.calendarWeeks = a, $(), l;
        }, l.showTodayButton = function(a) {
            if (0 === arguments.length) return d.showTodayButton;
            if ("boolean" != typeof a) throw new TypeError("showTodayButton() expects a boolean parameter");
            return d.showTodayButton = a, o && (aa(), fa()), l;
        }, l.showClear = function(a) {
            if (0 === arguments.length) return d.showClear;
            if ("boolean" != typeof a) throw new TypeError("showClear() expects a boolean parameter");
            return d.showClear = a, o && (aa(), fa()), l;
        }, l.widgetParent = function(b) {
            if (0 === arguments.length) return d.widgetParent;
            if ("string" == typeof b && (b = a(b)), null !== b && "string" != typeof b && !(b instanceof a)) throw new TypeError("widgetParent() expects a string or a jQuery object parameter");
            return d.widgetParent = b, o && (aa(), fa()), l;
        }, l.keepOpen = function(a) {
            if (0 === arguments.length) return d.keepOpen;
            if ("boolean" != typeof a) throw new TypeError("keepOpen() expects a boolean parameter");
            return d.keepOpen = a, l;
        }, l.focusOnShow = function(a) {
            if (0 === arguments.length) return d.focusOnShow;
            if ("boolean" != typeof a) throw new TypeError("focusOnShow() expects a boolean parameter");
            return d.focusOnShow = a, l;
        }, l.inline = function(a) {
            if (0 === arguments.length) return d.inline;
            if ("boolean" != typeof a) throw new TypeError("inline() expects a boolean parameter");
            return d.inline = a, l;
        }, l.clear = function() {
            return ba(), l;
        }, l.keyBinds = function(a) {
            return 0 === arguments.length ? d.keyBinds : (d.keyBinds = a, l);
        }, l.getMoment = function(a) {
            return y(a);
        }, l.debug = function(a) {
            if ("boolean" != typeof a) throw new TypeError("debug() expects a boolean parameter");
            return d.debug = a, l;
        }, l.allowInputToggle = function(a) {
            if (0 === arguments.length) return d.allowInputToggle;
            if ("boolean" != typeof a) throw new TypeError("allowInputToggle() expects a boolean parameter");
            return d.allowInputToggle = a, l;
        }, l.showClose = function(a) {
            if (0 === arguments.length) return d.showClose;
            if ("boolean" != typeof a) throw new TypeError("showClose() expects a boolean parameter");
            return d.showClose = a, l;
        }, l.keepInvalid = function(a) {
            if (0 === arguments.length) return d.keepInvalid;
            if ("boolean" != typeof a) throw new TypeError("keepInvalid() expects a boolean parameter");
            return d.keepInvalid = a, l;
        }, l.datepickerInput = function(a) {
            if (0 === arguments.length) return d.datepickerInput;
            if ("string" != typeof a) throw new TypeError("datepickerInput() expects a string parameter");
            return d.datepickerInput = a, l;
        }, l.parseInputDate = function(a) {
            if (0 === arguments.length) return d.parseInputDate;
            if ("function" != typeof a) throw new TypeError("parseInputDate() sholud be as function");
            return d.parseInputDate = a, l;
        }, l.disabledTimeIntervals = function(b) {
            if (0 === arguments.length) return d.disabledTimeIntervals ? a.extend({}, d.disabledTimeIntervals) : d.disabledTimeIntervals;
            if (!b) return d.disabledTimeIntervals = !1, $(), l;
            if (!(b instanceof Array)) throw new TypeError("disabledTimeIntervals() expects an array parameter");
            return d.disabledTimeIntervals = b, $(), l;
        }, l.disabledHours = function(b) {
            if (0 === arguments.length) return d.disabledHours ? a.extend({}, d.disabledHours) : d.disabledHours;
            if (!b) return d.disabledHours = !1, $(), l;
            if (!(b instanceof Array)) throw new TypeError("disabledHours() expects an array parameter");
            if (d.disabledHours = ma(b), d.enabledHours = !1, d.useCurrent && !d.keepInvalid) {
                for (var c = 0; !Q(e, "h"); ) {
                    if (e.add(1, "h"), 24 === c) throw "Tried 24 times to find a valid date";
                    c++;
                }
                _(e);
            }
            return $(), l;
        }, l.enabledHours = function(b) {
            if (0 === arguments.length) return d.enabledHours ? a.extend({}, d.enabledHours) : d.enabledHours;
            if (!b) return d.enabledHours = !1, $(), l;
            if (!(b instanceof Array)) throw new TypeError("enabledHours() expects an array parameter");
            if (d.enabledHours = ma(b), d.disabledHours = !1, d.useCurrent && !d.keepInvalid) {
                for (var c = 0; !Q(e, "h"); ) {
                    if (e.add(1, "h"), 24 === c) throw "Tried 24 times to find a valid date";
                    c++;
                }
                _(e);
            }
            return $(), l;
        }, l.viewDate = function(a) {
            if (0 === arguments.length) return f.clone();
            if (!a) return f = e.clone(), l;
            if (!("string" == typeof a || b.isMoment(a) || a instanceof Date)) throw new TypeError("viewDate() parameter must be one of [string, moment or Date]");
            return f = ca(a), J(), l;
        }, c.is("input")) g = c; else if (g = c.find(d.datepickerInput), 0 === g.length) g = c.find("input"); else if (!g.is("input")) throw new Error('CSS class "' + d.datepickerInput + '" cannot be applied to non input element');
        if (c.hasClass("input-group") && (n = 0 === c.find(".datepickerbutton").length ? c.find(".input-group-addon") : c.find(".datepickerbutton")), 
        !d.inline && !g.is("input")) throw new Error("Could not initialize DateTimePicker without an input element");
        return e = y(), f = e.clone(), a.extend(!0, d, function() {
            var b, e = {};
            return b = c.is("input") || d.inline ? c.data() : c.find("input").data(), b.dateOptions && b.dateOptions instanceof Object && (e = a.extend(!0, e, b.dateOptions)), 
            a.each(d, function(a) {
                var c = "date" + a.charAt(0).toUpperCase() + a.slice(1);
                void 0 !== b[c] && (e[a] = b[c]);
            }), e;
        }()), l.options(d), na(), function() {
            g.on({
                change: ja,
                blur: d.debug ? "" : aa,
                keydown: ha,
                keyup: ia,
                focus: d.allowInputToggle ? fa : ""
            }), c.is("input") ? g.on({
                focus: fa
            }) : n && (n.on("click", ga), n.on("mousedown", !1));
        }(), g.prop("disabled") && l.disable(), g.is("input") && 0 !== g.val().trim().length ? _(ca(g.val().trim())) : d.defaultDate && void 0 === g.attr("placeholder") && _(d.defaultDate), 
        d.inline && fa(), l;
    };
    return a.fn.datetimepicker = function(b) {
        b = b || {};
        var d, e = Array.prototype.slice.call(arguments, 1), f = !0, g = [ "destroy", "hide", "show", "toggle" ];
        if ("object" == typeof b) return this.each(function() {
            var d, e = a(this);
            e.data("DateTimePicker") || (d = a.extend(!0, {}, a.fn.datetimepicker.defaults, b), 
            e.data("DateTimePicker", c(e, d)));
        });
        if ("string" == typeof b) return this.each(function() {
            var c = a(this), g = c.data("DateTimePicker");
            if (!g) throw new Error('bootstrap-datetimepicker("' + b + '") method was called on an element that is not using DateTimePicker');
            d = g[b].apply(g, e), f = d === g;
        }), f || a.inArray(b, g) > -1 ? this : d;
        throw new TypeError("Invalid arguments for DateTimePicker: " + b);
    }, a.fn.datetimepicker.defaults = {
        timeZone: "",
        format: !1,
        dayViewHeaderFormat: "MMMM YYYY",
        extraFormats: !1,
        stepping: 1,
        minDate: !1,
        maxDate: !1,
        useCurrent: !0,
        collapse: !0,
        locale: b.locale(),
        defaultDate: !1,
        disabledDates: !1,
        enabledDates: !1,
        icons: {
            time: "glyphicon glyphicon-time",
            date: "glyphicon glyphicon-calendar",
            up: "glyphicon glyphicon-chevron-up",
            down: "glyphicon glyphicon-chevron-down",
            previous: "glyphicon glyphicon-chevron-left",
            next: "glyphicon glyphicon-chevron-right",
            today: "glyphicon glyphicon-screenshot",
            clear: "glyphicon glyphicon-trash",
            close: "glyphicon glyphicon-remove"
        },
        tooltips: {
            today: "Go to today",
            clear: "Clear selection",
            close: "Close the picker",
            selectMonth: "Select Month",
            prevMonth: "Previous Month",
            nextMonth: "Next Month",
            selectYear: "Select Year",
            prevYear: "Previous Year",
            nextYear: "Next Year",
            selectDecade: "Select Decade",
            prevDecade: "Previous Decade",
            nextDecade: "Next Decade",
            prevCentury: "Previous Century",
            nextCentury: "Next Century",
            pickHour: "Pick Hour",
            incrementHour: "Increment Hour",
            decrementHour: "Decrement Hour",
            pickMinute: "Pick Minute",
            incrementMinute: "Increment Minute",
            decrementMinute: "Decrement Minute",
            pickSecond: "Pick Second",
            incrementSecond: "Increment Second",
            decrementSecond: "Decrement Second",
            togglePeriod: "Toggle Period",
            selectTime: "Select Time"
        },
        useStrict: !1,
        sideBySide: !1,
        daysOfWeekDisabled: !1,
        calendarWeeks: !1,
        viewMode: "days",
        toolbarPlacement: "default",
        showTodayButton: !1,
        showClear: !1,
        showClose: !1,
        widgetPositioning: {
            horizontal: "auto",
            vertical: "auto"
        },
        widgetParent: null,
        ignoreReadonly: !1,
        keepOpen: !1,
        focusOnShow: !0,
        inline: !1,
        keepInvalid: !1,
        datepickerInput: ".datepickerinput",
        keyBinds: {
            up: function(a) {
                if (a) {
                    var b = this.date() || this.getMoment();
                    a.find(".datepicker").is(":visible") ? this.date(b.clone().subtract(7, "d")) : this.date(b.clone().add(this.stepping(), "m"));
                }
            },
            down: function(a) {
                if (!a) return void this.show();
                var b = this.date() || this.getMoment();
                a.find(".datepicker").is(":visible") ? this.date(b.clone().add(7, "d")) : this.date(b.clone().subtract(this.stepping(), "m"));
            },
            "control up": function(a) {
                if (a) {
                    var b = this.date() || this.getMoment();
                    a.find(".datepicker").is(":visible") ? this.date(b.clone().subtract(1, "y")) : this.date(b.clone().add(1, "h"));
                }
            },
            "control down": function(a) {
                if (a) {
                    var b = this.date() || this.getMoment();
                    a.find(".datepicker").is(":visible") ? this.date(b.clone().add(1, "y")) : this.date(b.clone().subtract(1, "h"));
                }
            },
            left: function(a) {
                if (a) {
                    var b = this.date() || this.getMoment();
                    a.find(".datepicker").is(":visible") && this.date(b.clone().subtract(1, "d"));
                }
            },
            right: function(a) {
                if (a) {
                    var b = this.date() || this.getMoment();
                    a.find(".datepicker").is(":visible") && this.date(b.clone().add(1, "d"));
                }
            },
            pageUp: function(a) {
                if (a) {
                    var b = this.date() || this.getMoment();
                    a.find(".datepicker").is(":visible") && this.date(b.clone().subtract(1, "M"));
                }
            },
            pageDown: function(a) {
                if (a) {
                    var b = this.date() || this.getMoment();
                    a.find(".datepicker").is(":visible") && this.date(b.clone().add(1, "M"));
                }
            },
            enter: function() {
                this.hide();
            },
            escape: function() {
                this.hide();
            },
            "control space": function(a) {
                a && a.find(".timepicker").is(":visible") && a.find('.btn[data-action="togglePeriod"]').click();
            },
            t: function() {
                this.date(this.getMoment());
            },
            delete: function() {
                this.clear();
            }
        },
        debug: !1,
        allowInputToggle: !1,
        disabledTimeIntervals: !1,
        disabledHours: !1,
        enabledHours: !1,
        viewDate: !1
    }, a.fn.datetimepicker;
}), /*!
 * jQuery Cookie Plugin v1.4.1
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2013 Klaus Hartl
 * Released under the MIT license
 */
function(a) {
    "function" == typeof define && define.amd ? // AMD
    define([ "jquery" ], a) : // CommonJS
    a("object" == typeof exports ? require("jquery") : jQuery);
}(function(a) {
    function b(a) {
        return h.raw ? a : encodeURIComponent(a);
    }
    function c(a) {
        return h.raw ? a : decodeURIComponent(a);
    }
    function d(a) {
        return b(h.json ? JSON.stringify(a) : String(a));
    }
    function e(a) {
        0 === a.indexOf('"') && (// This is a quoted cookie as according to RFC2068, unescape...
        a = a.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, "\\"));
        try {
            // Replace server-side written pluses with spaces.
            // If we can't decode the cookie, ignore it, it's unusable.
            // If we can't parse the cookie, ignore it, it's unusable.
            return a = decodeURIComponent(a.replace(g, " ")), h.json ? JSON.parse(a) : a;
        } catch (a) {}
    }
    function f(b, c) {
        var d = h.raw ? b : e(b);
        return a.isFunction(c) ? c(d) : d;
    }
    var g = /\+/g, h = a.cookie = function(e, g, i) {
        // Write
        if (void 0 !== g && !a.isFunction(g)) {
            if (i = a.extend({}, h.defaults, i), "number" == typeof i.expires) {
                var j = i.expires, k = i.expires = new Date();
                k.setTime(+k + 864e5 * j);
            }
            return document.cookie = [ b(e), "=", d(g), i.expires ? "; expires=" + i.expires.toUTCString() : "", // use expires attribute, max-age is not supported by IE
            i.path ? "; path=" + i.path : "", i.domain ? "; domain=" + i.domain : "", i.secure ? "; secure" : "" ].join("");
        }
        for (var l = e ? void 0 : {}, m = document.cookie ? document.cookie.split("; ") : [], n = 0, o = m.length; n < o; n++) {
            var p = m[n].split("="), q = c(p.shift()), r = p.join("=");
            if (e && e === q) {
                // If second argument (value) is a function it's a converter...
                l = f(r, g);
                break;
            }
            // Prevent storing a cookie that we couldn't decode.
            e || void 0 === (r = f(r)) || (l[q] = r);
        }
        return l;
    };
    h.defaults = {}, a.removeCookie = function(b, c) {
        // Must not alter options, thus extending a fresh object...
        return void 0 !== a.cookie(b) && (a.cookie(b, "", a.extend({}, c, {
            expires: -1
        })), !a.cookie(b));
    };
}), function(a) {
    a.fn.serializeObject = function() {
        var b = {}, c = this.serializeArray();
        return a.each(c, function() {
            b[this.name] ? (b[this.name].push || (b[this.name] = [ b[this.name] ]), b[this.name].push(this.value || "")) : b[this.name] = this.value || "";
        }), b;
    };
}(jQuery), function(a) {
    "function" == typeof define && define.amd ? define([ "jquery" ], a) : a("object" == typeof exports ? require("jquery") : jQuery);
}(function(a) {
    var b, c = navigator.userAgent, d = /iphone/i.test(c), e = /chrome/i.test(c), f = /android/i.test(c);
    a.mask = {
        definitions: {
            9: "[0-9]",
            a: "[A-Za-z]",
            "*": "[A-Za-z0-9]"
        },
        autoclear: !0,
        dataName: "rawMaskFn",
        placeholder: "_"
    }, a.fn.extend({
        caret: function(a, b) {
            var c;
            if (0 !== this.length && !this.is(":hidden")) return "number" == typeof a ? (b = "number" == typeof b ? b : a, 
            this.each(function() {
                this.setSelectionRange ? this.setSelectionRange(a, b) : this.createTextRange && (c = this.createTextRange(), 
                c.collapse(!0), c.moveEnd("character", b), c.moveStart("character", a), c.select());
            })) : (this[0].setSelectionRange ? (a = this[0].selectionStart, b = this[0].selectionEnd) : document.selection && document.selection.createRange && (c = document.selection.createRange(), 
            a = 0 - c.duplicate().moveStart("character", -1e5), b = a + c.text.length), {
                begin: a,
                end: b
            });
        },
        unmask: function() {
            return this.trigger("unmask");
        },
        mask: function(c, g) {
            var h, i, j, k, l, m, n, o;
            if (!c && this.length > 0) {
                h = a(this[0]);
                var p = h.data(a.mask.dataName);
                return p ? p() : void 0;
            }
            return g = a.extend({
                autoclear: a.mask.autoclear,
                placeholder: a.mask.placeholder,
                completed: null
            }, g), i = a.mask.definitions, j = [], k = n = c.length, l = null, a.each(c.split(""), function(a, b) {
                "?" == b ? (n--, k = a) : i[b] ? (j.push(new RegExp(i[b])), null === l && (l = j.length - 1), 
                k > a && (m = j.length - 1)) : j.push(null);
            }), this.trigger("unmask").each(function() {
                function h() {
                    if (g.completed) {
                        for (var a = l; m >= a; a++) if (j[a] && C[a] === p(a)) return;
                        g.completed.call(B);
                    }
                }
                function p(a) {
                    return g.placeholder.charAt(a < g.placeholder.length ? a : 0);
                }
                function q(a) {
                    for (;++a < n && !j[a]; ) ;
                    return a;
                }
                function r(a) {
                    for (;--a >= 0 && !j[a]; ) ;
                    return a;
                }
                function s(a, b) {
                    var c, d;
                    if (!(0 > a)) {
                        for (c = a, d = q(b); n > c; c++) if (j[c]) {
                            if (!(n > d && j[c].test(C[d]))) break;
                            C[c] = C[d], C[d] = p(d), d = q(d);
                        }
                        z(), B.caret(Math.max(l, a));
                    }
                }
                function t(a) {
                    var b, c, d, e;
                    for (b = a, c = p(a); n > b; b++) if (j[b]) {
                        if (d = q(b), e = C[b], C[b] = c, !(n > d && j[d].test(e))) break;
                        c = e;
                    }
                }
                function u() {
                    var a = B.val(), b = B.caret();
                    if (a.length < o.length) {
                        for (A(!0); b.begin > 0 && !j[b.begin - 1]; ) b.begin--;
                        if (0 === b.begin) for (;b.begin < l && !j[b.begin]; ) b.begin++;
                        B.caret(b.begin, b.begin);
                    } else {
                        for (A(!0); b.begin < n && !j[b.begin]; ) b.begin++;
                        B.caret(b.begin, b.begin);
                    }
                    h();
                }
                function v() {
                    A(), B.val() != E && B.change();
                }
                function w(a) {
                    if (!B.prop("readonly")) {
                        var b, c, e, f = a.which || a.keyCode;
                        o = B.val(), 8 === f || 46 === f || d && 127 === f ? (b = B.caret(), c = b.begin, 
                        e = b.end, e - c == 0 && (c = 46 !== f ? r(c) : e = q(c - 1), e = 46 === f ? q(e) : e), 
                        y(c, e), s(c, e - 1), a.preventDefault()) : 13 === f ? v.call(this, a) : 27 === f && (B.val(E), 
                        B.caret(0, A()), a.preventDefault());
                    }
                }
                function x(b) {
                    if (!B.prop("readonly")) {
                        var c, d, e, g = b.which || b.keyCode, i = B.caret();
                        if (!(b.ctrlKey || b.altKey || b.metaKey || 32 > g) && g && 13 !== g) {
                            if (i.end - i.begin != 0 && (y(i.begin, i.end), s(i.begin, i.end - 1)), c = q(i.begin - 1), 
                            n > c && (d = String.fromCharCode(g), j[c].test(d))) {
                                if (t(c), C[c] = d, z(), e = q(c), f) {
                                    var k = function() {
                                        a.proxy(a.fn.caret, B, e)();
                                    };
                                    setTimeout(k, 0);
                                } else B.caret(e);
                                i.begin <= m && h();
                            }
                            b.preventDefault();
                        }
                    }
                }
                function y(a, b) {
                    var c;
                    for (c = a; b > c && n > c; c++) j[c] && (C[c] = p(c));
                }
                function z() {
                    B.val(C.join(""));
                }
                function A(a) {
                    var b, c, d, e = B.val(), f = -1;
                    for (b = 0, d = 0; n > b; b++) if (j[b]) {
                        for (C[b] = p(b); d++ < e.length; ) if (c = e.charAt(d - 1), j[b].test(c)) {
                            C[b] = c, f = b;
                            break;
                        }
                        if (d > e.length) {
                            y(b + 1, n);
                            break;
                        }
                    } else C[b] === e.charAt(d) && d++, k > b && (f = b);
                    return a ? z() : k > f + 1 ? g.autoclear || C.join("") === D ? (B.val() && B.val(""), 
                    y(0, n)) : z() : (z(), B.val(B.val().substring(0, f + 1))), k ? b : l;
                }
                var B = a(this), C = a.map(c.split(""), function(a, b) {
                    return "?" != a ? i[a] ? p(b) : a : void 0;
                }), D = C.join(""), E = B.val();
                B.data(a.mask.dataName, function() {
                    return a.map(C, function(a, b) {
                        return j[b] && a != p(b) ? a : null;
                    }).join("");
                }), B.one("unmask", function() {
                    B.off(".mask").removeData(a.mask.dataName);
                }).on("focus.mask", function() {
                    if (!B.prop("readonly")) {
                        clearTimeout(b);
                        var a;
                        E = B.val(), a = A(), b = setTimeout(function() {
                            z(), a == c.replace("?", "").length ? B.caret(0, a) : B.caret(a);
                        }, 10);
                    }
                }).on("blur.mask", v).on("keydown.mask", w).on("keypress.mask", x).on("input.mask paste.mask", function() {
                    B.prop("readonly") || setTimeout(function() {
                        var a = A(!0);
                        B.caret(a), h();
                    }, 0);
                }), e && f && B.off("input.mask").on("input.mask", u), A();
            });
        }
    });
}), "undefined" == typeof fmDnnFormBuilder && (fmDnnFormBuilder = {}), fmDnnFormBuilder.elementName = function(a) {
    return a.IsTextAreaElement || a.IsTextElement ? "txt" + a.Name : a.IsSelectElement ? "ddl" + a.Name : a.IsDatePickerElement ? "dt" + a.Name : a.Name;
}, ko.bindingHandlers.fmFormBuilderAttr = {
    init: function(a, b, c, d, e) {
        var f = e.$data.constructor.name, g = e.$parent.constructor.name;
        if (void 0 === f) {
            //IE cannot use contructor.name - work around            
            var h = /function\s([^(]{1,})\(/, i = h.exec(e.$data.constructor.toString());
            f = i && i.length > 1 ? i[1].trim() : "", i = h.exec(e.$parent.constructor.toString()), 
            g = i && i.length > 1 ? i[1].trim() : "";
        }
        var j = $(a);
        !0 !== e.$data.IsSelectElement && j.attr("type", e.$data.Type || e.$parent.Type), 
        j.attr("data-sfname", e.$data.SalesforceField || e.$parent.SalesforceField).attr("data-actonname", e.$data.ActOnField || e.$parent.ActOnField).attr("data-submitValue", (e.$data.SubmitValue || e.$parent.SubmitValue).toString()).attr("name", fmDnnFormBuilder.elementName(e.$data)), 
        "FormField" !== f || e.$data.IsSelectElement || (j.attr("id", e.$data.Name), void 0 !== e.$data.Placeholder && e.$data.Placeholder.length > 0 && j.attr("placeholder", e.$data.Placeholder), 
        e.$data.Mask.length > 0 && j.attr("data-mask", e.$data.Mask), e.$data.IsSubmitBtn && j.attr("value", e.$data.InputValue)), 
        "Object" === f && "FormField" === g && j.attr("id", e.$root.fmBuildIds(e.$data, e.$parent.type)).attr("name", (e.$parent.IsRadioElement ? "rbl" : "cbl") + (e.$data.Name || e.$parent.Name) + (e.$parent.IsRadioElement ? "" : "[]"));
    }
}, //Form Builder Based on https://github.com/jansmolders86/knockout-dynamic-forms 
ko.bindingHandlers.dateTimePicker = {
    init: function(a, b, c) {
        //initialize datepicker with some optional options
        var d = c().datetimepickeroptions || {};
        $(a).datetimepicker(d), //when a user changes the date, update the view model
        ko.utils.registerEventHandler(a, "dp.change", function(a) {
            var c = b();
            ko.isObservable(c) && c(null == a.date || a.date instanceof Date ? a.date : a.date.toDate());
        }), ko.utils.domNodeDisposal.addDisposeCallback(a, function() {
            var b = $(a).data("DateTimePicker");
            b && b.destroy();
        });
    },
    update: function(a, b, c, d, e) {
        var f = $(a).data("DateTimePicker");
        //when the view model is updated, update the widget
        if (f) {
            var g = ko.utils.unwrapObservable(b());
            //in case return from server datetime i am get in this form for example /Date(93989393)/ then fomat this
            g = "object" != typeof g ? moment(new Date(g)) : g, f.date(g);
        }
    }
}, ko.dirtyFlag = function(a, b) {
    var c = function() {}, d = ko.observable(ko.toJSON(a)), e = ko.observable(b);
    return c.isDirty = ko.computed(function() {
        return e() || d() !== ko.toJSON(a);
    }), c.reset = function() {
        d(ko.toJSON(a)), e(!1);
    }, c;
};

var g_RecaptchaReady = !1;