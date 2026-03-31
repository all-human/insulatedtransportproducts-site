<%@ Control Language="C#" AutoEventWireup="false" Inherits="ForemostMedia.Modules.FM_Distributor.Settings" Codebehind="Settings.ascx.cs" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="URL" Src="~/controls/URLControl.ascx" %>

<div id="dnnForm dnnClear" id="fmDistSettings">
    <h2 class="dnnFormSectionHead" id="dnnPanel-Basic">
        <a href='' class="dnnSectionExpanded">Basic Settings</a>
    </h2>
    <fieldset>
        <div>
            <div class="dnnFormItem">
                <dnn:label id="lblSearchTitle" runat="server" controlname="lblSearchTitle" suffix=":"></dnn:label>
                <asp:TextBox ID="tbSearchTitle" runat="server" />
            </div>
            <div class="dnnFormItem">
                <dnn:label id="lblDisplayAll" runat="server" controlname="txtTemplate" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbAll" runat="server" Text="" />
            </div>
            <div class="dnnFormItem">
                <dnn:Label runat="server" resourcekey="InitalLoadImage" suffix=":"></dnn:Label>
                 <dnn:url id="fuDefaultImg" runat="server" width="275" Required="False" showtrack="False"
                shownewwindow="False" showlog="False" urltype="F" FileFilter="jpg,jpef,gif,png" showUrls="False"
                showfiles="True" showtabs="False">
            </dnn:url>
            </div>
            <div class="dnnFormItem">
                <dnn:label id="lblClearCache" runat="server" resourceKey="ClearCache" suffix=":"></dnn:label>
                <asp:LinkButton runat="server" ID="lbClearCache" Text="Clear Cache" 
                    onclick="lbClearCache_Click"></asp:LinkButton>
            </div>
            <div class="dnnFormItem">
                <dnn:label runat="server" resourceKey="AutoPostBack" suffix=":"></dnn:label>
                <asp:CheckBox runat="server" ID="cbAutoPostBack"/>
            </div>
            <div class="dnnFormItem">
                <dnn:label runat="server" resourceKey="EnableBootstrap" suffix=":"></dnn:label>
                <asp:CheckBox runat="server" ID="cbEnableBootstrap"/>
            </div>
            <div class="dnnFormItem">
                <dnn:label runat="server" resourceKey="BootstrapCssCdnUrl" suffix=":"></dnn:label>
                <asp:TextBox ID="tbBootstrapCssCdnUrl" CssClass="form-control" runat="server" />
            </div>
            <div class="dnnFormItem">
                <dnn:label runat="server" resourceKey="BootstrapJsCdnUrl" suffix=":"></dnn:label>
                <asp:TextBox ID="tbBootstrapJsCdnUrl" CssClass="form-control" runat="server" />
            </div>
        </div>
    </fieldset>

    <h2 class="dnnFormSectionHead" id="dnnPanel-DistTypes">
        <a href='' class="dnnSectionExpanded">Distributor Types Search</a>
    </h2>
    <fieldset>
        <div>
             <div class="dnnFormItem">
                <dnn:label id="lblType" runat="server" controlname="txtTemplate" suffix=":"></dnn:label>
                <div class="dnnLeft">
                    <asp:DropDownList ID="rblType" runat="server" />
                </div>
            </div>
            <div class="dnnFormItem">
                <dnn:label id="lblDisplayTypes" runat="server" controlname="lblDisplayTypes" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbDisplayTypes" runat="server" Text="" />
            </div>
            <div class="dnnFormItem fmDistSettingType">
                <dnn:label id="lblDisplayTypesTitle" runat="server" controlname="lblDisplayTypesTitle" suffix=":"></dnn:label>
                <asp:TextBox ID="tbDisplayTypesTitle" runat="server" />
            </div>
            <div class="dnnFormItem fmDistSettingType">
                <dnn:label id="lblDisplayTypesName" runat="server" controlname="lblDisplayTypesName" suffix=":"></dnn:label>
                <asp:TextBox ID="tbDistTypeNameForListBox" runat="server" />
            </div>
            <div class="dnnFormItem fmDistSettingType">
                <dnn:label id="lblShowTypeAs" runat="server" resourceKey="ControlType" suffix=":"></dnn:label>
                <asp:DropDownList ID="ddlDistTypeControl" runat="server" />
            </div>            
        </div>
    </fieldset>

    <h2 class="dnnFormSectionHead" id="dnnPanel-Company">
        <a href='' class="dnnSectionExpanded">Company Search</a>
    </h2>
    <fieldset>
        <div>
            <div class="dnnFormItem">
                <dnn:label id="lblDisplayCompany" runat="server" controlname="lblDisplayCompany" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbDisplayCompany" runat="server" Text="" />
            </div>
            <div class="dnnFormItem fmDistSettingCompany">
                <dnn:label id="lblCompanySearch" runat="server" controlname="lblCompanySearch" suffix=":"></dnn:label>
                <asp:TextBox ID="tbCompanyTitle" runat="server" />
            </div>
        </div>
    </fieldset>

    <h2 class="dnnFormSectionHead" id="dnnPanel-State">
        <a href='' class="dnnSectionExpanded">States Search</a>
    </h2>
    <fieldset>
        <div>
            <div class="dnnFormItem">
                <dnn:label id="lblDisplayState" runat="server" controlname="lblDisplayState" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbDisplayState" runat="server" Text="" />
            </div>
            <div class="dnnFormItem fmDistSettingState">
                <dnn:label id="lblDefaultStates" runat="server" controlname="lblDefaultStates" suffix=":"></dnn:label>
                <asp:DropDownList ID="ddlDefaultStates" runat=server />
            </div>
            <div class="dnnFormItem fmDistSettingState">
                <dnn:label id="lblShowStatesAs" runat="server" resourceKey="ControlType" suffix=":"></dnn:label>
                <asp:DropDownList ID="ddlShowStatesControl" runat="server" />
            </div>
            <div class="dnnFormItem fmDistSettingState">
                <dnn:label id="lblStateSearch" runat="server" controlname="lblStateSearch" suffix=":"></dnn:label>
                <asp:TextBox ID="tbStateTitle" runat="server" />
            </div>
        </div>
    </fieldset>

    <h2 class="dnnFormSectionHead" id="dnnPanel-International">
        <a href='' class="dnnSectionExpanded">International Search</a>
    </h2>
    <fieldset>
        <div>
            <div class="dnnFormItem">
                <dnn:label id="lblDisplayInternational" runat="server" controlname="lblDisplayInternational" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbDisplayInternational" runat="server" Text="" />
            </div>
            <div class="dnnFormItem fmDistSettingInternational">
                <dnn:label id="lblInternationalSearch" runat="server" controlname="lblInternationalSearch" suffix=":"></dnn:label>
                <asp:TextBox ID="tbInternationalTitle" runat="server" />
            </div>
            <div class="dnnFormItem fmDistSettingInternational">
                <dnn:label id="lblIntAddUS" runat="server" controlname="lblIntAddUS" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbAddUStoInt" runat="server" />
            </div>
            <div class="dnnFormItem fmDistSettingInternational">
                <dnn:label id="lblIntSortUsFirst" runat="server" controlname="lblIntSortUsFirst" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbIntSortUsFirst" runat="server" />
            </div>
            <div class="dnnFormItem fmDistSettingInternational">
                <dnn:label id="lblShowInternationalAs" runat="server" resourceKey="ControlType" suffix=":"></dnn:label>
                <asp:DropDownList ID="ddlCountryControl" runat="server" />
            </div> 
        </div>
    </fieldset>    
</div>

<script type="text/javascript">

    var ddlTypes = $('#<%= rblType.ClientID %>');
    var divTypes = $(".fmDistSettingType");
    var cbShowTypes = $('#<%= cbDisplayTypes.ClientID %>');
    var cbShowState = $('#<%= cbDisplayState.ClientID %>');
    var ddlState = $('#<%= ddlDefaultStates.ClientID %>');
    var divState = $('.fmDistSettingState');
    var cbShowInternational = $('#<%= cbDisplayInternational.ClientID %>');
    var divInternational = $('.fmDistSettingInternational');
    var cbShowCompany = $('#<%= cbDisplayCompany.ClientID %>');
    var divCompany = $('.fmDistSettingCompany');

    function showHideType(x, y) {
        if (!$(x).attr("checked")) {
            $(y).toggle();
        }
        $(x).change(function () {
            $(y).toggle();
        });
    }

    jQuery(document).ready(function () {
        showHideType(cbShowTypes, divTypes);
        showHideType(cbShowState, divState);
        showHideType(cbShowInternational, divInternational);
        showHideType(cbShowCompany, divCompany);

        $(cbShowTypes).change(function () {
            $(ddlTypes).children(":selected").removeAttr("selected");
            $(ddlTypes).children(":first-child").attr("selected", "selected");
        });
    });
</script>