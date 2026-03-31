<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="View.ascx.cs" Inherits="DNN.Modules.DNNSecurityHotFix1.View"  %>
<%@ Import Namespace="DotNetNuke.Entities.Users" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<div class="dnnForm" id="DNNSecurityHotFix1">
    <asp:Panel runat="server" ID="youArePatched" Visible="False" class="dnnFormMessage dnnFormSuccess">
        <p>You are patched. However, if you use a 3rd party registration module, you may want to confirm with the vendor.</p>
    </asp:Panel>
    <p></p>
    <asp:Panel runat="server" ID="vendorWarning" Visible="False" class="dnnFormMessage dnnFormError">
        <p>WARNING: YOU MAY NOT BE PATCHED.</p>
        <p>We have detected that you are using a 3rd party registration module in some of the portals. Such portals are listed below:</p>
        <asp:Repeater runat="server" ID="portalList">
            <ItemTemplate>
                <div><%#Container.DataItem %></div>
            </ItemTemplate>
        </asp:Repeater>
        <p></p>
        <p>Please contact the vendor of the 3rd party registration module for an update.</p> 
        <p>Alternatively, you may also consider upgrading your installation to the latest version of DNN or Evoq.</p>
    </asp:Panel>
    <asp:Panel runat="server" ID="usingOtherRegistrationControl" Visible="False" class="dnnFormMessage dnnFormError">
        <p>WARNING: YOU MAY NOT BE PATCHED.</p>
        <p>Your site is not using the standard DNN Registration Control. The location of the standard Registration control is:</p>
        <p>
            DesktopModules/Admin/Security/Register.ascx
        </p>
        <p>
            However, your site is using this control:
        </p>
        <p>
            <%=NonStandardRegistrationControl%>
        </p>
    </asp:Panel>
</div>