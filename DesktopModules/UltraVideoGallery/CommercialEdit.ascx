<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CommercialEdit.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.CommercialEdit" %>

<div class="section">
        <div class="head"><asp:Label ID="lblVendorName" runat="server" /></div>
        <asp:Panel ID="pnlStatus" runat="server" CssClass="message">
        <asp:Label ID="Label9" runat="server" resourcekey="CurrentStatus" />
        <asp:Label ID="lblStatus" runat="server" CssClass="SubHead" />
        <asp:Label ID="Label22" runat="server" resourcekey="With" />
        <asp:Label ID="lblImpressions" runat="server" CssClass="SubHead" />
        <asp:Label ID="Label24" runat="server" resourcekey="ImpressionsAnd" />
        <asp:Label ID="lblClicks" runat="server" CssClass="SubHead" />
        <asp:Label ID="Label23" runat="server" resourcekey="Clicks" />
        <asp:HyperLink ID="lnkDownloadReport" runat="server" NavigateUrl="#" resourcekey="DownloadReport"
                        Visible="False" Target="_blank"></asp:HyperLink>
        </asp:Panel>
        <table>
            <tr><td class="twocolleft">

            <div class="SubHead"><asp:Label ID="Label13" runat="server" resourcekey="plType">
                        </asp:Label></div>
            <asp:DropDownList ID="lstTypes" runat="server" RepeatDirection="Horizontal" AutoPostBack="true" CssClass="Normal">
            <asp:ListItem Text="Preroll" Value="4" Selected="True"></asp:ListItem>
            <asp:ListItem Text="Postroll" Value="3"></asp:ListItem>
            <asp:ListItem Text="BottomThird" Value="2"></asp:ListItem>
            <asp:ListItem Text="FullStage" Value="1"></asp:ListItem>
            </asp:DropDownList>

            <div class="SubHead second"><asp:Label ID="plTitle" runat="server" resourcekey="plTitle">
                        </asp:Label></div>
            <asp:TextBox ID="txtTitle" runat="server" Width="400px" CssClass="NormalTextBox"></asp:TextBox>

            <asp:Panel ID="pnlDescription" runat="server">
            <div class="SubHead second"><asp:Label ID="Label25" runat="server" resourcekey="plDescription">
                        </asp:Label></div>
            <asp:TextBox ID="txtDescription" runat="server" Width="400px" CssClass="NormalTextBox"
                            TextMode="MultiLine" Rows="4"></asp:TextBox>
            </asp:Panel>

            <div class="SubHead second"><asp:Label ID="Label26" runat="server" resourcekey="Scope">
                        </asp:Label></div>
            <asp:DropDownList ID="cboLibraries" runat="server" DataTextField="Library" DataValueField="ItemId" Width="400px"></asp:DropDownList>

            <asp:Panel ID="pnlLinkText" runat="server">
            <div class="SubHead second"><asp:Label ID="Label27" runat="server" resourcekey="LinkText">
                        </asp:Label></div>
            <asp:TextBox ID="txtLinkText" runat="server" Width="400px" CssClass="NormalTextBox"></asp:TextBox>
            </asp:Panel>

            <div class="SubHead second"><asp:Label ID="Label28" runat="server" resourcekey="LinkUrl">
                        </asp:Label></div>
            <asp:TextBox ID="txtLinkUrl" runat="server" Width="400px" CssClass="NormalTextBox"></asp:TextBox>

            <asp:Panel ID="pnlFileUrl" runat="server">
            <div class="SubHead second"><asp:Label ID="Label29" runat="server" resourcekey="FileUrl">
                        </asp:Label></div>
            <asp:TextBox ID="txtFileUrl" runat="server" Width="400px" CssClass="NormalTextBox"></asp:TextBox>
			<asp:RequiredFieldValidator ID="required1" runat="server" ControlToValidate="txtFileUrl"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
            </asp:Panel>

            <div class="SubHead second"><asp:Label ID="Label30" runat="server" resourcekey="plAudience">
                        </asp:Label></div>
            <div>
            <asp:dropdownlist id="cboApply" runat="server">
                            <asp:listitem value="True" text="apply"></asp:listitem>
                            <asp:listitem value="False" text="remove"></asp:listitem>
                        </asp:dropdownlist> 
                        <asp:Label ID="Label31" runat="server" resourcekey="plAudience.Help">
                        </asp:Label>
            <uc1:rolepicker id="RolePicker1" runat="server" DisplayAllUsers="True" DefaultRoles="All Users" RepeatColumns="4">
                        </uc1:rolepicker>
            </div>

            </td>
            <td style="vertical-align:top;">

            <div class="SubHead"><asp:Label ID="Label4" runat="server" resourcekey="WhenToStop">
                        </asp:Label></div>
            <div>
            <asp:RadioButton ID="rbCriteriaOr" runat="server" GroupName="Criteria" resourcekey="CriteriaOr" /></div>
            <div><asp:RadioButton ID="rbCriteriaAnd" runat="server" GroupName="Criteria" resourcekey="CriteriaAnd" /></div>
            <div class="SubHead second"><asp:Label ID="Label6" runat="server" resourcekey="StartDate">
                        </asp:Label></div>
            <asp:TextBox ID="txtStartDate" runat="server" CssClass="NormalTextBox" Width="80"
                                        Columns="30" MaxLength="11"></asp:TextBox>
            <asp:HyperLink ID="cmdStartCalendar" resourcekey="Calendar" CssClass="CommandButton"
                                        runat="server" ImageUrl="~/images/calendar.png"></asp:HyperLink>
            <div class="SubHead second"><asp:Label ID="Label8" runat="server" resourcekey="EndDate">
                        </asp:Label></div>
            <asp:TextBox ID="txtEndDate" runat="server" CssClass="NormalTextBox" Width="80" Columns="30" MaxLength="11"></asp:TextBox>
            <asp:HyperLink ID="cmdEndCalendar" resourcekey="Calendar" CssClass="CommandButton"
                                        runat="server" ImageUrl="~/images/calendar.png"></asp:HyperLink>
            <div class="SubHead second"><asp:Label ID="Label12" runat="server" resourcekey="MaxImpressions">
                        </asp:Label></div>
            <asp:TextBox ID="txtMaxImpressions" runat="server" Width="200px" CssClass="NormalTextBox"></asp:TextBox>
            <asp:RegularExpressionValidator ID="validator1" runat="server" ControlToValidate="txtMaxImpressions"
                            ErrorMessage="*" ValidationExpression="\d*" CssClass="Head"></asp:RegularExpressionValidator>
            <div class="SubHead second"><asp:Label ID="Label14" runat="server" resourcekey="CPM">
                        </asp:Label></div>
            <asp:TextBox ID="txtCPM" runat="server" Width="200px" CssClass="NormalTextBox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="validator2" runat="server" ControlToValidate="txtCPM"
                            ErrorMessage="*" ValidationExpression="^[0-9]+(.[0-9]{1,3})?$" CssClass="Head"></asp:RegularExpressionValidator>

            </td>
            </tr>
        </table>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="btnSave" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="btnDelete" runat="server" resourcekey="cmdDelete"
                causesvalidation="False"></asp:LinkButton></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="btnCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
    <li><asp:LinkButton ID="cmdArchive" runat="server" CssClass="dnnSecondaryAction" resourcekey="Archive" Visible="false" CausesValidation="False"></asp:LinkButton></li>
  </ul>

<script type="text/javascript">
    jQuery(document).ready(function () {
	    if (typeof(Sys) != "undefined")
        {
	        var req=Sys.WebForms.PageRequestManager.getInstance();
            if (req)
	            req.add_endRequest(addWatermark);
        }
        addWatermark();
    });

    function addWatermark()
    {
        jQuery("#<%=txtLinkUrl.ClientID %>").watermark("<%=Localize("LinkUrl.Help") %>");
        if (jQuery("#<%=lstTypes.ClientID %>").val() == "1")
            jQuery("#<%=txtFileUrl.ClientID %>").watermark("<%=Localize("FileUrl1.Help") %>");
        else
            jQuery("#<%=txtFileUrl.ClientID %>").watermark("<%=Localize("FileUrl2.Help") %>");
        jQuery("#<%=txtMaxImpressions.ClientID %>").watermark("<%=Localize("MaxImpressions.Help") %>");
        jQuery("#<%=txtCPM.ClientID %>").watermark("<%=Localize("CPM.Help") %>");
    }
</script>