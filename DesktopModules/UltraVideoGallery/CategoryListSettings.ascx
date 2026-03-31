<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CategoryListSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.CategoryListSettings" %>

<div class="section">
    <div class="smallhead"><asp:Label ID="Label4" runat="server" resourcekey="CategoryListSettings"></asp:Label></div>
    <div class="SubHead">
    <asp:Label ID="Label1" runat="server" cssclass="SubHead" resourcekey="lblCategoriesPerRow"></asp:Label>
    </div>
    <asp:DropDownList ID="cboCategoriesPerRow" Width="128" runat="server" CssClass="Normal">
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

    <div class="SubHead second">
    <asp:label id="plHtmlBody" resourcekey="plHtmlBody" runat="server">
                                    </asp:label>
    </div>
    <asp:TextBox ID="txtHtmlBody" runat="server" Rows="4" TextMode="MultiLine" MaxLength="50"
                                        Width="400" CssClass="NormalTextBox"></asp:TextBox>
    <div class="SubHead second">
    <asp:label id="Label2" Text="Filter" runat="server"></asp:label>
    </div>
    <div class="verticalMiddle">
    <asp:CheckBox ID="chkShowAllCategories" runat="server" resourcekey="plShowAllCategories"></asp:CheckBox></div>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>