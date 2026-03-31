<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Settings.ascx.cs" Inherits="Ventrian.Modules.ChildLinks.Settings" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<h2 id="BasicSettings" class="dnnFormSectionHead"><a href="#"><%= LocalizeString("BasicSettings") %></a></h2>
<fieldset class="dnnClear">
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="lstDisplay" ResourceKey="Display" />
       <asp:RadioButtonList id="lstDisplay" Runat="server" CssClass="dnnFormRadioButtons" AutoPostBack="True" OnSelectedIndexChanged="lstDisplay_SelectedIndexChanged"></asp:RadioButtonList>
    </div>
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="lstMode" ResourceKey="Mode" />
        <asp:RadioButtonList id="lstMode" Runat="server" CssClass="dnnFormRadioButtons" AutoPostBack="True" OnSelectedIndexChanged="lstMode_SelectedIndexChanged"></asp:RadioButtonList>
    </div>
    <div class="dnnFormItem" runat="server" ID="divAnotherPage">
        <dnn:Label runat="server" ControlName="drpPages" ResourceKey="AnotherPage" />
        <asp:dropdownlist ID="drpPages" runat="server" DataTextField="IndentedTabName" DataValueField="TabId"></asp:dropdownlist>
    </div>
</fieldset>

<h2 id="AdvancedSettings" class="dnnFormSectionHead"><a href="#"><%= LocalizeString("AdvancedSettings") %></a></h2>
<fieldset class="dnnClear">
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="chkShowHiddenPages" ResourceKey="ShowHiddenPages" />
        <asp:checkbox ID="chkShowHiddenPages" runat="server"></asp:checkbox>
    </div>
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="chkShowDisabledPages" ResourceKey="ShowDisabledPages" />
        <asp:checkbox ID="chkShowDisabledPages" runat="server"></asp:checkbox>
    </div>
</fieldset>

<asp:PlaceHolder runat="server" ID="phTemplates">
<h2 id="TemplateSettings" class="dnnFormSectionHead"><a href="#"><%= LocalizeString("TemplateSettings") %></a></h2>
<fieldset class="dnnClear">
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="txtHtmlHeader" ResourceKey="HtmlHeader" />
        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtHtmlHeader" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="txtHtmlBody" ResourceKey="HtmlBody" />
        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtHtmlBody" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="txtHtmlSeparator" ResourceKey="HtmlSeparator" />
        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtHtmlSeparator" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="txtHtmlFooter" ResourceKey="HtmlFooter" />
        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtHtmlFooter" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label runat="server" ControlName="txtHtmlEmpty" ResourceKey="HtmlEmpty" />
        <asp:TextBox runat="server" TextMode="MultiLine" ID="txtHtmlEmpty" />
    </div>
    <div class="dnnFormItem">
        <dnn:Label runat="server" ResourceKey="Tokens" />
        <table class="dnnGrid">
            <tr class="dnnGridHeader">
                <td colspan="2">Header/Footer Tokens</td>
            </tr>
            <tr class="dnnGridItem">
                <td>[DESCRIPTION]</td>
                <td><%=LocalizeString("ParentDescription") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[ISPARENTCURRENT][/ISPARENTCURRENT]</td>
                <td><%=LocalizeString("IsParentCurrent") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[PARENTLINK]</td>
                <td><%=LocalizeString("ParentLink") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[PARENTNAME]</td>
                <td><%=LocalizeString("ParentName") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[GRANDPARENTDESCRIPTION]</td>
                <td><%=LocalizeString("GrandParentDescription") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[GRANDPARENTLINK]</td>
                <td><%=LocalizeString("GrandParentLink") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[GRANDPARENTNAME]</td>
                <td><%=LocalizeString("GrandParentName") %></td>
            </tr>
            <tr class="dnnGridHeader">
                <td colspan="2"><hr />Body Tokens</td>
            </tr>
            <tr class="dnnGridItem">
                <td>[DESCRIPTION]</td>
                <td><%=LocalizeString("LinkDescription") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[DESCRIPTION:XXX]</td>
                <td><%=LocalizeString("LinkDescriptionXXX") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[ISCURRENT][/ISCURRENT]</td>
                <td><%=LocalizeString("IsCurrent") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[ISNOTCURRENT][/ISNOTCURRENT]</td>
                <td><%=LocalizeString("IsNotCurrent") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[ICON]</td>
                <td><%=LocalizeString("Icon") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[ITEMINDEX]</td>
                <td><%=LocalizeString("ItemIndex") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[KEYWORDS]</td>
                <td><%=LocalizeString("Keywords") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[LINK]</td>
                <td><%=LocalizeString("Link") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[NAME]</td>
                <td><%=LocalizeString("LinkName") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[NAME:XXX]</td>
                <td><%=LocalizeString("LinkNameXXX") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[TABID]</td>
                <td><%=LocalizeString("TabID") %></td>
            </tr>
            <tr class="dnnGridAltItem">
                <td>[TITLE]</td>
                <td><%=LocalizeString("TITLE") %></td>
            </tr>
            <tr class="dnnGridItem">
                <td>[TITLE:XXX]</td>
                <td><%=LocalizeString("TitleXXX") %></td>
            </tr>
        </table>
    </div>
</fieldset>
    
</asp:PlaceHolder>