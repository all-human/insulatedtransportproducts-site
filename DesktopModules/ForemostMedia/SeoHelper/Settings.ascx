<%@ Control Language="C#" AutoEventWireup="false" Inherits="ForemostMedia.Modules.SeoHelper.Settings" Codebehind="Settings.ascx.cs" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="dnnForm dnnClear" id="fmPnlId">
    <h2 id="fmPnlRow1" class="dnnFormSectionHead">
        <a href="#"><%= LocalizeString("ExternalLibraries.Text") %></a>
    </h2>
    <fieldset class="dnnClear">
        <div class="dnnForm" id="fmExternalLibraries">
            <ul class="dnnAdminTabNav">
                <li><a href="#TwitterBootstrap"><%= LocalizeString("TwitterBootstrap.Text")%></a></li>
                <li><a href="#FontAwesome"><%= LocalizeString("FontAwesome.Text")%></a></li>
            </ul>
            <div id="TwitterBootstrap">
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="UseTwitterBootstrapCdn" suffix=":">
                    </dnn:label>
                    <asp:CheckBox ID="cbUseTwitterBootstrap" CssClass="NormalTextBox" runat="server" />
                </div>
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="TwitterBootstrapCdnUrl" suffix=":">
                    </dnn:label>
                    <asp:TextBox ID="tbTwitterBootstrapCdnUrl" CssClass="NormalTextBox" runat="server" />
                </div>
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="LoadTwitterBootstrapJavascript" suffix=":">
                    </dnn:label>
                    <asp:CheckBox ID="cbUseTwitterBootstrapJs" CssClass="NormalTextBox" runat="server" />
                </div>
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="TwitterBootstrapJsCdn" suffix=":">
                    </dnn:label>
                    <asp:TextBox ID="tbTwitterBootstrapJsCdn" CssClass="NormalTextBox" runat="server" />
                </div>
            </div>
            <div id="FontAwesome">
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="LoadFontAwesome" suffix=":">
                    </dnn:label>
                    <asp:CheckBox ID="cbLoadFontAwesome" CssClass="NormalTextBox" runat="server" />
                </div>
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="FontAwesomeCdnUrl" suffix=":">
                    </dnn:label>
                    <asp:TextBox ID="tbFontAwesomeCdn" CssClass="NormalTextBox" runat="server" />
                </div>
            </div>
        </div>
    </fieldset>
</div>
<script type="text/javascript">
    (function($, Sys) {

        function setUpMyDnnModule() {
            // your initialization code here...
            $('#fmPanelId').dnnPanels();
            $('#fmExternalLibraries').dnnTabs();
        }

        $(document).ready(function() {
            setUpMyDnnModule();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function() {
                setUpMyDnnModule();
            });
        });

    }(jQuery, window.Sys));
</script>
