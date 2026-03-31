<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ActiveUsersSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.ActiveUsersSettings" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>


<div class="section">
    <div class="head"><asp:Label ID="lblTitle" runat="server" resourcekey="ModuleSettings"></asp:Label></div>

    <div class="SubHead"><asp:Label ID="plUserCount" runat="server" resourcekey="plUserCount">
                                    </asp:Label></div>
    <asp:DropDownList ID="cboUserCount" Width="128" runat="server" class="NormalTextBox">
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                        <asp:ListItem Value="6"></asp:ListItem>
                                        <asp:ListItem Value="7"></asp:ListItem>
                                        <asp:ListItem Value="8"></asp:ListItem>
                                        <asp:ListItem Value="9"></asp:ListItem>
                                        <asp:ListItem Value="10"></asp:ListItem>
                                        <asp:ListItem Value="15"></asp:ListItem>
                                        <asp:ListItem Value="25"></asp:ListItem>
                                        <asp:ListItem Value="50"></asp:ListItem>
                                        <asp:ListItem Value="100"></asp:ListItem>
                                    </asp:DropDownList>

    <div class="SubHead second"><asp:Label ID="plItemsPerRow" runat="server" resourcekey="plItemsPerRow">
                                    </asp:Label></div>
    <asp:DropDownList ID="cboItemsPerRow" Width="128" runat="server" class="NormalTextBox">
                                        <asp:ListItem Value="1"></asp:ListItem>
                                        <asp:ListItem Value="2"></asp:ListItem>
                                        <asp:ListItem Value="3"></asp:ListItem>
                                        <asp:ListItem Value="4"></asp:ListItem>
                                        <asp:ListItem Value="5"></asp:ListItem>
                                        <asp:ListItem Value="6"></asp:ListItem>
                                        <asp:ListItem Value="7"></asp:ListItem>
                                        <asp:ListItem Value="8"></asp:ListItem>
                                        <asp:ListItem Value="9"></asp:ListItem>
                                        <asp:ListItem Value="10"></asp:ListItem>
                                    </asp:DropDownList>

    <div class="SubHead second"><asp:Label ID="Label1" runat="server" resourcekey="plTimeline">
                                    </asp:Label></div>
    <asp:DropDownList ID="cboTimeline" Width="128" runat="server" class="NormalTextBox">
                                        <asp:ListItem Text="24Hours" Value="1"></asp:ListItem>
                                        <asp:ListItem Text="2Days" Value="2"></asp:ListItem>
                                        <asp:ListItem Text="3Days" Value="3"></asp:ListItem>
                                        <asp:ListItem Text="4Days" Value="4"></asp:ListItem>
                                        <asp:ListItem Text="5Days" Value="5"></asp:ListItem>
                                        <asp:ListItem Text="AWeek" Value="7"></asp:ListItem>
                                        <asp:ListItem Text="10Days" Value="10"></asp:ListItem>
                                        <asp:ListItem Text="2Weeks" Value="14"></asp:ListItem>
                                        <asp:ListItem Text="AMonth" Value="30"></asp:ListItem>
                                        <asp:ListItem Text="3Months" Value="91"></asp:ListItem>
                                        <asp:ListItem Text="HalfAYear" Value="183"></asp:ListItem>
                                        <asp:ListItem Text="AYear" Value="365"></asp:ListItem>
                                    </asp:DropDownList>

    <div class="SubHead second"><asp:Label class="SubHead" ID="Label2" resourcekey="CrossPortals" runat="server">
                                    </asp:Label></div>
    <asp:CheckBox ID="chkCrossPortals" resourcekey="Yes" runat="server"></asp:CheckBox>

    <div class="SubHead second"><asp:Label class="SubHead" ID="plHtmlBody" resourcekey="HtmlBody" runat="server">
                                    </asp:Label></div>
    <asp:TextBox ID="txtHtmlBody" runat="server" Rows="7" TextMode="MultiLine" Width="600"
                                        CssClass="NormalTextBox">
                                    </asp:TextBox>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>
