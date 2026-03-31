<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ExampleView.ascx.cs" Inherits="ForemostMedia.Modules.fmCookiesTheme.ExampleView" %>
<%@ Import Namespace="ForemostMedia.Modules.fmCookiesTheme.Components.Factories" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="fm" TagName="FORMSCOOKIE" src="~/DesktopModules/ForemostMedia/fmCookiesTheme/CookiesTheme.ascx" %>


<fm:FORMSCOOKIE runat="server" id="fmGoogleUrlCodes" />

<div class="form-horizontal">
    <div class="form-group dnnFormItem">
        <label class="col-sm-4 control-label">

            <dnn:label runat="server" resourcekey="ExampleLabel" suffix=":" cssclass="dnnFormRequired" />
        </label>
        <div class="col-sm-8">
            <asp:TextBox CssClass="form-control dnnFormRequired" ID="tbExampleText" runat="server"/>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbExampleText" resourcekey="Required.Error" CssClass="dnnFormMessage dnnFormError"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="form-group dnnFormItem">
        <label class="col-sm-4 control-label">
            <dnn:label runat="server" resourcekey="ExampleLabelInt" suffix=":" cssclass="dnnFormRequired" />
        </label>
        <div class="col-sm-8">
            <asp:TextBox CssClass="form-control dnnFormRequired" Type="number" ID="tbExampleInt" runat="server" />
            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbExampleInt" resourcekey="Required.Error" CssClass="dnnFormMessage dnnFormError"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" ControlToValidate="tbExampleInt" resourcekey="InvalidInteger.Error" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-4 col-sm-8">
            <asp:Button runat="server" resourcekey="Save" OnClick="Submit_Click" CssClass="btn btn-primary" />
            <a href='<%= UrlFactory.Instance().TabId(ModuleContext.TabId) %>' class="btn btn-default">Cancel</a>
        </div>
    </div>
</div>

<script>
    
    alert("ExampleView.asc ====> " +  JSON.stringify(fmGoogleUrlCodes));


 </script>