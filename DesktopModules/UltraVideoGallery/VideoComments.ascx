<%@ Register TagPrefix="dnn" TagName="login" Src="~/admin/skins/login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="user" Src="~/admin/skins/user.ascx" %>
<%@ Register TagPrefix="uvg" Assembly="BizModules.UltraVideoGallery" Namespace="BizModules.UltraVideoGallery" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoComments.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoComments" %>

<asp:Panel ID="pnlPost" runat="server" class="postcomment">
<div>
<textarea rows="3" class="NormalTextbox"></textarea>
<div>
<asp:Label ID="Label1" runat="server" CssClass="roundbtn post" resourcekey="Post"></asp:Label>
<asp:Label ID="lblMaxLength" runat="server" CssClass="texts"></asp:Label>
</div>
</div>
</asp:Panel>

<asp:Panel ID="pnlLogin" runat="server" class="postcomment needlogin" Visible="false">
<div>
<asp:Label ID="Label4" runat="server" resourcekey="LoginPrefix"></asp:Label>
<dnn:login id="ctlLogin" runat="server"></dnn:login>
<asp:Label ID="Label2" runat="server" resourcekey="LoginMiddle"></asp:Label>
<dnn:user id="ctlRegister" runat="server"></dnn:user>
<asp:Label ID="Label3" runat="server" resourcekey="LoginAffix"></asp:Label>
</div>
</asp:Panel>

<div class="comments">
    <div class="list"></div>
</div>

