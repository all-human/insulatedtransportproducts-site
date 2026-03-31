<%@ Control Language="vb" AutoEventWireup="false" Codebehind="RelatedVideosSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.RelatedVideosSettings" %>

<div class="section">
    <div class="head"><asp:Label ID="lblLibrary" runat="server" resourcekey="RelatedVideosSettings"></asp:Label></div>
    <div class="message"><asp:Label ID="lblLibraryHelp" runat="server" resourcekey="RelatedVideosSettings.Help"></asp:Label></div>

    <div class="SubHead"><asp:Label ID="Label1" runat="server" resourcekey="IndividualVideos"></asp:Label></div>
    <div class="individual">
    <asp:checkbox ID="chkIndividualRelated" runat="server" resourcekey="CommonTags" />
    <asp:checkbox ID="chkIndividualAuthor" runat="server" resourcekey="FromSameAuthor" />
    </div>

    <div class="SubHead second"><asp:Label ID="Label2" runat="server" resourcekey="SeriesVideos"></asp:Label></div>
    <div class="series">
    <asp:checkbox ID="chkSeriesSiblings" runat="server" Checked="true" Enabled="false" resourcekey="Siblings" />
    <asp:checkbox ID="chkSeriesRelated" runat="server" resourcekey="CommonTags" />
    <asp:checkbox ID="chkSeriesAuthor" runat="server" resourcekey="FromSameAuthor" />
    </div>

    <div class="SubHead second"><asp:Label ID="Label3" runat="server" resourcekey="MaxiumOutputs"></asp:Label></div>
    <asp:DropDownList ID="cboMaxOutputs" runat="server">
    <asp:ListItem Value="2"></asp:ListItem>
    <asp:ListItem Value="3"></asp:ListItem>
    <asp:ListItem Value="4"></asp:ListItem>
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
    </asp:DropDownList>

    <div class="SubHead second"><asp:Label ID="Label5" runat="server" resourcekey="DisplayTemplates"></asp:Label></div>
    <asp:TextBox ID="txtBodyTemplate" runat="server" CssClass="NormalTextBox" Width="600"
                            TextMode="MultiLine" Rows="7"></asp:TextBox>

</div>

<ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
</ul>
