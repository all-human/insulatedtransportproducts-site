<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoInformationSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoInformationSettings" %>

<div class="section">
    <div class="head"><asp:Label ID="Label9" runat="server" Text="Display Templates"></asp:Label></div>
    <div class="message"><asp:Label ID="Label10" runat="server" Text="This module supports many tokens to customize its final output, for a full list please refer to the user guide."></asp:Label></div>

    <div class="SubHead"><asp:Label ID="Label12" runat="server" resourcekey="IndividualVideo"></asp:Label></div>
    <asp:TextBox ID="txtHtmlBody" runat="server" Rows="7" TextMode="MultiLine"
                                        Width="600" CssClass="NormalTextBox">
                                    </asp:TextBox>

    <div class="SubHead second"><asp:Label ID="Label14" runat="server" resourcekey="SeriesVideo"></asp:Label></div>
    <asp:TextBox ID="txtHtmlSeriesBody" runat="server" Rows="7" TextMode="MultiLine"
                                        Width="600" CssClass="NormalTextBox">
                                    </asp:TextBox>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>