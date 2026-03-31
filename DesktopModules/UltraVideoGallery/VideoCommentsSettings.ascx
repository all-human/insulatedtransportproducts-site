<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoCommentsSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoCommentsSettings" %>

<div class="section">
    <div class="head"><asp:Label ID="Label7" runat="server" Text="Comments Settings"></asp:Label></div>
    <div class="message"><asp:Label ID="Label8" runat="server" Text="To adjust display templates of the comments output, alter commenttplt.txt and commenttplt_manager.txt in /DesktopModules/UltraVideoGallery/Texts folder."></asp:Label></div>

    <div class="SubHead"><asp:Label ID="Label2" runat="server" resourcekey="PageSize"></asp:Label></div>
    <asp:DropDownList ID="cboPageSize" runat="server">
    <asp:ListItem Value="5"></asp:ListItem>
    <asp:ListItem Value="6"></asp:ListItem>
    <asp:ListItem Value="7"></asp:ListItem>
    <asp:ListItem Value="8"></asp:ListItem>
    <asp:ListItem Value="10"></asp:ListItem>
    <asp:ListItem Value="12"></asp:ListItem>
    <asp:ListItem Value="15"></asp:ListItem>
    <asp:ListItem Value="20"></asp:ListItem>
    <asp:ListItem Value="25"></asp:ListItem>
    <asp:ListItem Value="30"></asp:ListItem>
    <asp:ListItem Value="40"></asp:ListItem>
    <asp:ListItem Value="50"></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label5" runat="server" resourcekey="items"></asp:Label>

    <div class="SubHead second"><asp:Label ID="Label1" runat="server" resourcekey="MaximumLength"></asp:Label></div>
    <asp:DropDownList ID="cboMaxLength" runat="server">
    <asp:ListItem Value="50"></asp:ListItem>
    <asp:ListItem Value="75"></asp:ListItem>
    <asp:ListItem Value="100"></asp:ListItem>
    <asp:ListItem Value="150"></asp:ListItem>
    <asp:ListItem Value="200"></asp:ListItem>
    <asp:ListItem Value="300"></asp:ListItem>
    <asp:ListItem Value="400"></asp:ListItem>
    <asp:ListItem Value="500"></asp:ListItem>
    <asp:ListItem Value="700"></asp:ListItem>
    <asp:ListItem Value="1000"></asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label3" runat="server" resourcekey="charactors"></asp:Label>

    <div class="SubHead second"><asp:Label ID="Label4" runat="server" resourcekey="AnonymousComment"></asp:Label></div>
    <asp:checkbox ID="chkAnonymousComment" runat="server" resourcekey="Yes" />
</div>


  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>