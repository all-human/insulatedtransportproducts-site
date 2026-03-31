<%@ control language="C#" inherits="ForemostMedia.Modules.FM_Forms_DNN.View"
    autoeventwireup="true" codebehind="View.ascx.cs" %>
<%@ import namespace="System.Web.Management" %>
<%@ import namespace="ForemostMedia.Modules.FM_Forms_DNN.Utils" %>
<%@ import namespace="DotNetNuke.Services.Localization" %>
<%@ import namespace="ForemostMedia.Helpers.Extensions" %>


<div class="fm-bootstrap fmFormBuilderDiv" id="fm-dnn-forms-<%= MyModuleId %>" data-moduleid="<%= MyModuleId %>" data-tabid="<%= MyTabId %>">
    <div class="fm-alerts hidden">
        <div class="fm-success-alert col-12 alert alert-success alert-dismissable fade in show">
            <button type="button" class="close" aria-label="Close" data-dismiss="alert"><span aria-hidden="true">x</span></button>
            <asp:literal runat="server" id="ltSuccessMessage" />
        </div>
        <div class="fm-error-alert col-12 alert alert-danger">
            There was an Error Submitting this Form
        </div>
    </div>
    <div class="fm-alert-wrap alert-wrap-top" tabindex="-1"></div>
    <button class="btn btn-info float-right" id="btnTest" runat="server" data-bind="click: $root.fmTestSubmission">Test Form</button>
    <div style="clear: both;"></div>
    <div>
        <div style="display: none;" data-bind="visible: true">
            <div data-bind="attr: { id: FormID }, css: FormCSS">
                <!-- ko if: RenderGroupsAsTabs -->
                <ul class="nav nav-tabs" role="tablist" data-bind="foreach: FieldGroups, visible: ShowTabsNavigation">
                    <li role="presentation" data-bind="css: { active: IsActive }">
                        <a href="#" role="presentation" data-toggle="tab" data-bind="click: $parent.ChangeTab, text: Title, attr: { 'data-tabIndex': $index }"></a>
                    </li>
                </ul>
                <!--/ko-->
                <div data-bind="foreach: FieldGroups, css: RenderGroupsAsTabs ? 'tab-content' : ''">
                    <div data-bind="foreach: Fields, attr: { id: PanelId, 'class': PanelClasses + ' row' },
                        css: { active: IsActive, show: AddShowClass, fade: AddFadeClass }">
                        <!--ko if: $index() == 0 && $parent.ShowTitle -->
                        <div class="col-12">
                            <h4 class="fm-field-group-title" data-bind="text: $parent.Title"></h4>
                        </div>
                        <!--/ko-->
                        <div class="form-group" data-bind="css: WrapperCSS, visible: VisibleCondition">
                            <!--ko if: IsFormElement -->
                            <!--ko if: !HideLabel -->
                            <label data-bind="html: Label, attr: { for: Name, id: 'lbl' + Name }"></label>
                            <!--/ko-->
                            <!--/ko-->

                            <!--ko if: IsDatePickerElement -->
                            <!-- ko if: ShowDatePickerIcon -->
                            <div class="input-group date" data-bind="dateTimePicker: InputValue, datetimepickeroptions: DateTimePickerOptions, enable: Enabled">
                                <input type="text" data-bind="css: FieldCSS, fmFormBuilderAttr" />
                                <span class="input-group-addon">
                                    <span class="glyphicon glyphicon-calendar"></span>
                                </span>
                            </div>
                            <!--/ko-->
                            <!--ko if: !ShowDatePickerIcon -->
                            <input type="text" data-bind="css: FieldCSS, fmFormBuilderAttr, dateTimePicker: InputValue, datetimepickeroptions: DateTimePickerOptions, enable: Enabled" />
                            <!--/ko-->
                            <!--/ko-->

                            <!--ko if: IsSelectElement -->
                            <select data-bind="fmFormBuilderAttr, css: FieldCSS, options: Options, optionsText: 'text', optionsValue: $root.fmSetupOptions, value: InputValue, optionsCaption: HaveOptionCaption ? OptionsCaption : null, enable: Enabled, attr: { 'data-fmOverride': OverrideModuleSetting ? OverrideModuleValue : null, 'aria-labelledby' : 'lbl' + Name, id : Name }, optionsAfterRender: OverrideModuleSetting ? addOverrideValues : function(){}"></select>
                            <!--/ko-->

                            <!--ko if: IsFileElement -->
                            <% if (Request.Browser.Browser == "IE" && Request.Browser.Version == "9.0" || Request.Browser.Browser == "IE" && Request.Browser.Version == "8.0" )
                                   { %>
                            <div class="alert alert-info">Please use a modern browser to enable file upload capabilities.</div>
                            <% } 
                                   else
                                   {%>
                            <div data-bind="fileDrag: InputValue">
                                <span data-bind="validationMessage: InputValue" class="ko-validation-message"></span>
                                <input type="file" data-bind="fmFormBuilderAttr, fileInput: InputValue, customFileInput: { buttonClass: 'btn btn-success', fileNameClass: 'disabled form-control', onClear: onClear }">
                            </div>

                            <%} %>
                            <!--/ko-->

                            <!--ko if: ElementHasOptions -->
                            <div data-bind="foreach: Options, css: FieldCSS">
                                <!--ko if:$parent.Layout !== "inline" -->
                                <div data-bind="css: $parent.Type + $parent.OptionsColumnsClass">
                                    <label data-bind="validationOptions: { insertMessages: false }">
                                        <input data-bind="fmFormBuilderAttr, checkedValue: $parents[2].fmSetValue($data), checked: $parent.IsRadioElement ? $parent.SelectedItem : $parent.SelectedItems" />
                                        <span data-bind="html: $data.text"></span>
                                    </label>
                                    <%--<label>
                                        <input data-bind="fmFormBuilderAttr, value: $root.fmSetValue($data), checked: $parent.IsRadioElement ? $parent.SelectedItem : $parent.SelectedItems" />
                                        <span data-bind="html: $data.text"></span>
                                    </label>--%>
                                </div>
                                <!--/ko-->
                                <!--ko if:$parent.Layout === "inline" -->
                                <label data-bind="css: $parent.Type + '-inline', validationOptions: { insertMessages: false }">
                                    <input data-bind="fmFormBuilderAttr, checkedValue: $parents[2].fmSetValue($data), checked: $parent.IsRadioElement ? $parent.SelectedItem : $parent.SelectedItems" />
                                    <span data-bind="text: $data.text"></span>
                                </label>
                                <%--<label data-bind="css: $parent.Type + '-inline'">
                                    <input data-bind="fmFormBuilderAttr, value: $root.fmSetValue($data), checked: $parent.IsRadioElement ? $parent.SelectedItem : $parent.SelectedItems" />
                                    <span data-bind="text: $data.text"></span>
                                </label>--%>
                                <!--/ko-->
                            </div>
                            <p data-bind="visible: SelectedItems.length > 0, validationMessage: SelectedItems"></p>
                            <!--/ko-->

                            <!--ko if: IsTextElement -->
                            <input data-bind="css: FieldCSS, fmFormBuilderAttr, value: InputValue, enable: Enabled" />
                            <!--/ko-->

                            <!--ko if: IsPhoneElement -->
                            <input data-bind="css: FieldCSS, fmFormBuilderAttr, value: InputValue, enable: Enabled"/>
                            <!--/ko-->

                            <!--ko if: IsTextAreaElement -->
                            <textarea data-bind="css: FieldCSS, fmFormBuilderAttr, value: InputValue, enable: Enabled"></textarea>
                            <!--/ko-->

                            <!-- ko if: IsRecaptchaElement($root) && !IsRecaptchaInvisible -->
                            <div data-bind="attr: { 'data-sitekey': $root.RecaptchaSiteKey }">
                                <div class="g-recaptcha FMrecaptcha"></div>
                            </div>
                            <!--/ko-->

                            <!--ko if: IsRecaptchaElement($root) && IsRecaptchaInvisible -->
                            <div data-bind="attr: { 'data-sitekey': $root.RecaptchaSiteKey }" data-size="invisible" data-badge="<%=  ReCaptchaReposition %>">
                                <div class="g-recaptcha FMrecaptcha"></div>
                            </div>
                            <!--/ko-->

                            <!--ko if: IsSubmitBtn -->
                            <input data-bind="click: $root.fmSerializeFormObject, css: FieldCSS, attr: { id: Name, type: Type, value: InputValue }" />
                            <!--/ko-->

                            <!--ko if: IsBtn -->
                            <button data-bind="css: FieldCSS, attr: { id: Name }, enable: Enabled"><span data-bind="text: InputValue"></span></button>
                            <!--/ko-->

                            <!--ko if: Element === "htmlblock" -->
                            <div data-bind="css: FieldCSS, html: Html"></div>
                            <!--/ko-->
                        </div>
                    </div>
                </div>

                <div class="form-nav-buttons" data-bind="visible: ShowPrevNextButtons">
                    <a id="btnPrevious" data-bind="click: MovePrev, visible: ShowPrev, css: PreviousButtonClasses"><%= LocalizeString("PreviousBtn.Text") %></a>
                    <a id="btnNext" data-bind="click: MoveNext, visible: ShowNext, css: NextButtonClasses"><%= LocalizeString("NextBtn.Text") %></a>
                </div>
            </div>
            <div class="fm-loading-div" style="display: none;"></div>
        </div>
    </div>
    <div class="fm-alert-wrap alert-wrap-bottom"></div>
</div>

<script type="text/javascript">
    var sessionCache = {};

    if (typeof (Storage) !== "undefined") {
        var info = sessionStorage.getItem("userInfo");
        if (info == null) {
            userData = <%= UserInfoObject %>;      //see if we can load information from server, may be disabled in module MyTabSettings            
            var removeEmptyProperties = [];                 //remove properties that have no values, which if often most of them

            if (!jQuery.isEmptyObject(userData)) {
                for (var property in userData) {
                    if (userData.hasOwnProperty(property)) {
                        if (userData[property] === "" || typeof userData[property] === "undefined") {
                            removeEmptyProperties.push(property);
                        }
                    }
                }
                for (var i = 0; i < removeEmptyProperties.length; i++) {
                    delete userData[removeEmptyProperties[i]];
                }
                sessionStorage.setItem("userInfo", JSON.stringify(userData));
                info = userData;
            }
        }
        try {

            if (info !== null) {
                if (typeof info === 'object') {
                    sessionCache = info;
                }
                else if (typeof info !== "undefined") {
                    sessionCache = JSON.parse(info);
                }
            }
            else {
                sessionInfo = {};
            }
        }
        catch (ex) {  //will sometimes fail parsing of user info in Chrome        
            sessionCache = {};
        }
    }

    //at this point we will have local storage either way right, so we can test it
    //haveUserInfo ? userData :  
    <%-- DO NOT REMOVE...Need this in the main namespace on several customized forms. --%>
    var fmFormSetup<%= MyModuleId %> = {
        userInfo:  <%= UserInfoObject %>
    };

    (function ($) {
        function setupMyDnnModule() {
            setupValidation();

            var servicesFramework = $.ServicesFramework(<%= MyModuleId %>);

            var myFormData = {
                queryString: <%= QueryStrings %>,
                json: <%= MyTabSettings[FMSettings.FormJSON] %>,
                moduleId: <%= MyModuleId %>,
                tabId: <%= MyTabId %>,
                useRecaptcha: <%= Convert.ToBoolean(MyTabSettings[FMSettings.UseRecaptcha]).ToString().ToLower() %>,
                useRecaptchaInvisible: <%= Convert.ToBoolean(MyTabSettings[FMSettings.UseRecaptchaInvisible]).ToString().ToLower() %>,
                recaptchaReposition: '<%=  ReCaptchaReposition %>',
                recaptchaSiteKey: '<%= MyTabSettings[FMSettings.RecaptchaSiteKey] %>',
                useSalesForce: <%= Convert.ToBoolean(MyTabSettings[FMSettings.UseSalesForce]).ToString().ToLower() %>,
                useSalesForceWebToCase: <%= Convert.ToBoolean(MyTabSettings[FMSettings.UseSalesForceWebToCase]).ToString().ToLower() %>,
                useActOn: <%= MyTabSettings.GetSetting(FMSettings.UseActOn, "false").ToLower() %>,
                trackGoogleUrlCodes:  <%= MyTabSettings.GetSetting(FMSettings.TrackGoogleUrlCodes, "false").ToLower() %>,
                includeWebPageSubmittedFrom:  <%= IncludeWebPageSubmittedFrom.ToLower() %>,
                urlCalledFrom:  '<%= UrlCalledFrom %>',
                userInfo: <%= UserInfoObject %>,
                sessionInfo: sessionCache,
                servicesFramework: servicesFramework,
                ajaxHeaders: { "TabId": <%= MyTabId %>, "ModuleId": <%= MyModuleId %>, "RequestVerificationToken": servicesFramework.getAntiForgeryValue() }
            };

            if (typeof (myFormData.json) != 'undefined') {
                var formModel = new FormModel(myFormData).init(document.getElementById('fm-dnn-forms-<%= MyModuleId %>'));

                var elementId = '#fm-dnn-forms-<%= MyModuleId %>';
                var $maskedFields = jQuery('#fm-dnn-forms-<%= MyModuleId %>').find('input[type="text"].masked-input, input[type="tel"].masked-input');

                fmSetupFieldMasks($maskedFields );

                var recaptchaElement = jQuery(elementId).find(".FMrecaptcha");

                if (recaptchaElement.length > 0) {
                    recaptchaLoadElement(recaptchaElement);
                }

            }
        }

        $(document).ready(function () {
            setupMyDnnModule();
        });
    }(jQuery));

</script>
