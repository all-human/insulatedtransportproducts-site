<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CompactPlayerSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.CompactPlayerSettings" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>


<div class="section">
    <div class="head"><asp:Label ID="lblTitle" runat="server" resourcekey="ControlTitle_modulesettings"></asp:Label></div>

    <div class="SubHead"><asp:Label ID="plPlayerSize" runat="server" resourcekey="PlayerSize"></asp:Label></div>
    <div><asp:TextBox ID="txtPlayerWidth" runat="server" Width="60" CssClass="NormalTextBox"></asp:TextBox>
         <asp:RegularExpressionValidator ID="Regularexpressionvalidator2" runat="server" ErrorMessage="*" ValidationExpression="\d*" ControlToValidate="txtPlayerWidth"></asp:RegularExpressionValidator>
        X&nbsp;
        <asp:TextBox ID="txtPlayerHeight" runat="server" Width="60" CssClass="NormalTextBox"></asp:TextBox>
        <asp:RegularExpressionValidator ID="Regularexpressionvalidator3" runat="server" ErrorMessage="*" ValidationExpression="\d*" ControlToValidate="txtPlayerHeight"></asp:RegularExpressionValidator>                        
    </div>


    <div class="SubHead second"><asp:Label ID="Label5" runat="server" resourcekey="VideoSource"></asp:Label></div>
    <div><asp:RadioButton ID="rdoFixed" resourcekey="Fixed" runat="server" GroupName="SourceType"
                            AutoPostBack="True"></asp:RadioButton>
         <asp:RadioButton ID="rdoDynamic" resourcekey="Dynamic" runat="server" GroupName="SourceType"
                            AutoPostBack="True"></asp:RadioButton></div>

    <asp:Panel ID="pnlFixed" runat="server">
    <div class="SubHead second"><asp:Label ID="Label6" runat="server" resourcekey="Video"></asp:Label></div>
    <div><asp:TextBox ID="txtVideoTitle" runat="server" Width="300px" CssClass="NormalTextBox"></asp:TextBox></div>
    </asp:Panel>

    <asp:Panel ID="pnlDynamic" runat="server">
    <div class="SubHead second"><asp:Label ID="Label7" runat="server" resourcekey="Condition"></asp:Label></div>
    <asp:DropDownList ID="cboTypes" runat="server" class="Normal"></asp:DropDownList>

    <div class="SubHead second"><asp:Label ID="Label8" runat="server" resourcekey="plTimeline"></asp:Label></div>
    <asp:DropDownList ID="cboTimeline" Width="128" runat="server" class="Normal">
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
                        <asp:ListItem Text="AllTime" Value="0"></asp:ListItem>
                    </asp:DropDownList>

    <div class="SubHead second"><asp:Label ID="Label9" runat="server" resourcekey="plCategory"></asp:Label></div>
    <asp:DropDownList ID="cboCategories" runat="server" DataTextField="Category" DataValueField="ItemId"
                        class="Normal">
                    </asp:DropDownList>
    </asp:Panel>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>

<script type="text/javascript">
    jQuery("#<%=txtVideoTitle.ClientID %>").autocomplete({
        source: completeVideo
                , focus: function (event, ui) { return false; }
                , select: function (event, ui) { if (ui.item.id * 1 <= 0) { dnn.setVar("selectedItem", -1); } dnn.setVar("selectedItem", ui.item.id); ui.item.value = ui.item.label; }
    });
</script>