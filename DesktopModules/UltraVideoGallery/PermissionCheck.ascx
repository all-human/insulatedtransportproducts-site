<%@ Control Language="vb" AutoEventWireup="false" Codebehind="PermissionCheck.ascx.vb" Inherits="BizModules.UltraVideoGallery.PermissionCheck"
    EnableViewState="true" %>
    
<div class="section">
    <div class="head"><asp:Label ID="lblPermissionCheck" runat="server" resourcekey="PermissionCheck"></asp:Label></div>
    <div class="message"><asp:Label ID="lblPermissionCheckHelp" runat="server" resourcekey="PermissionCheck.Help"></asp:Label></div>

    <p></p>

    <div class="SubHead">
    <asp:Label id="lblTrustLevelLabel" runat="server" resourcekey="TrustLevel"></asp:Label><asp:Label id="lblTrustLevel" runat="server"></asp:Label>
    </div>

    <p></p>

    <asp:Button id="btnRunPermissionCheck" runat="server" resourcekey="RunPermissionCheck" Text="Button"></asp:Button>
</div>

<p>
    <asp:Button class="CommandButton" ID="cmdCancel" runat="server" resourcekey="cmdCancel"
                Text="Cancel" CausesValidation="False"></asp:Button>
    </p>
