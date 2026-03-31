<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Configurations.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.Configurations" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ucColorPicker" Src="ucColorPicker.ascx" %>

<asp:Panel ID="pnlMessage" runat="server" class="Normal warning">
<asp:Label ID="Label6" runat="server" class="header" resourcekey="Issues"></asp:Label>

<asp:Panel ID="pnlNoBinaryPack" runat="server">
<asp:Label ID="Label38" runat="server" resourcekey="NoBinaryPack"></asp:Label>
<asp:HyperLink ID="lnkBinaryPack" runat="server" Target="_blank" NavigateUrl="http://www.bizmodules.net/tabid/141/Default.aspx#uvg" resourcekey="FixIt"></asp:HyperLink>
</asp:Panel>

<asp:Panel ID="pnlPermissionCheck" runat="server">
<asp:Label ID="lblPermissionCheck" runat="server" resourcekey="PermissionCheckNotPassed"></asp:Label>
<asp:HyperLink ID="lnkPermissionCheck" runat="server" resourcekey="FixIt"></asp:HyperLink>
</asp:Panel>

<asp:Panel ID="pnlAllowedFormats" runat="server">
<asp:Label ID="lblAllowedFormats" runat="server" resourcekey="NotAllFormatsAllowed"></asp:Label>
<asp:LinkButton ID="lnkAddFormats" runat="server" resourcekey="FixIt"></asp:LinkButton>
</asp:Panel>

<asp:Panel ID="pnlMimeType" runat="server">
    <asp:Label ID="lblMimeType" runat="server" resourcekey="MimeTypeNotEnabled"></asp:Label>
    <asp:LinkButton ID="lnkEnableMime" runat="server" resourcekey="Ignore" />
</asp:Panel>

<asp:Panel ID="pnlMRL" runat="server">
    <asp:Label ID="lblMaxRequestLength" runat="server"></asp:Label>
    <asp:LinkButton ID="lnkUpdateMRL" runat="server" resourcekey="FixIt" />
</asp:Panel>

<asp:Panel ID="pnlTimeout" runat="server">
    <asp:Label ID="lblExecutionTimeout" runat="server"></asp:Label>
    <asp:LinkButton ID="lnkUpdateTimeout" runat="server" resourcekey="FixIt" />
</asp:Panel>

<asp:Panel ID="pnlSetupPages" runat="server">
    <asp:Label ID="lblNoUVGPages" runat="server" resourcekey="NoUVGPages"></asp:Label>
    <asp:LinkButton ID="lnkSetupPages" runat="server" resourcekey="FixIt" />
</asp:Panel>

<asp:Panel ID="pnlAmazon" runat="server">
    <asp:Label ID="lblAmazonConfig" runat="server" resourcekey="AmazonConfig"></asp:Label>
    <asp:LinkButton ID="lnkIgnoreAmazon" runat="server" resourcekey="Ignore" />
</asp:Panel>

</asp:Panel>

<div class="dnnForm dnnstyletab">
    <ul class="dnnAdminTabNav">
        <li>
            <a href="#divVideoEncoding"><asp:Label ID="lnkVideoEncoding" runat="server" resourcekey="VideoEncoding"></asp:Label></a>    
        </li>
        <li>
            <a href="#divVideoRecording"><asp:Label ID="Label10" runat="server" resourcekey="VideoRecording"></asp:Label></a>    
        </li>
        <li>
            <a href="#divYoutube">Youtube</a>    
        </li>
        <li>
            <a href="#divOtherOptions"><asp:Label ID="Label46" runat="server" resourcekey="OtherOptions"></asp:Label></a>
        </li>
        <li>
            <a href="#divAbout"><asp:Label ID="Label44" runat="server" resourcekey="About"></asp:Label></a>
        </li>
    </ul>

    <div id="divVideoEncoding">
        <table class="settingtable">
            <tr>
                <td class="SubSubHead" width="160"><dnn:label id="Label53" runat="server"  resourcekey="EncodingAlias"></dnn:label></td>
                <td>
                <asp:dropdownlist id="cboAlias" runat="server" cssclass="Normal">
            </asp:dropdownlist>
			/DesktopModules/UltraVideoGallery/Ceq.aspx
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label23" runat="server"  resourcekey="LowQualityVersion"></dnn:label></td>
                <td>
                <asp:dropdownlist id="cboLowQualityVersion" runat="server" cssclass="Normal">
            </asp:dropdownlist>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label37" runat="server"  resourcekey="LowQualitySize"></dnn:label></td>
                <td><asp:dropdownlist id="cboLowQualityHeight" runat="server" cssclass="Normal">
                                    <asp:ListItem Text="640p" Value="640" />
                                    <asp:ListItem Text="576p" Value="576" />
                                    <asp:ListItem Text="480p" Value="480" />
                                    <asp:ListItem Text="360p" Value="360" />
                                    <asp:ListItem Text="240p" Value="240" />
                                </asp:dropdownlist></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label36" runat="server"  resourcekey="HighQualityVersion"></dnn:label></td>
                <td><asp:dropdownlist id="cboHighQualityVersion" runat="server" cssclass="Normal">
                                </asp:dropdownlist></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label45" runat="server"  resourcekey="HighQualitySize"></dnn:label></td>
                <td><asp:dropdownlist id="cboHighQualityHeight" runat="server" cssclass="Normal">
                                    <asp:ListItem Text="1080p HD" Value="1080" />
                                    <asp:ListItem Text="720p HD" Value="720" />
                                    <asp:ListItem Text="640p" Value="640" />
                                    <asp:ListItem Text="576p" Value="576" />
                                    <asp:ListItem Text="480p" Value="480" />
                                    <asp:ListItem Text="360p" Value="360" />
                                </asp:dropdownlist></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label55" runat="server"  resourcekey="FrameRate"></dnn:label></td>
                <td><asp:textbox id="txtFrameRate" cssclass="NormalTextBox" width="50" runat="server"
                maxlength="3" /></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label13" runat="server" resourcekey="ScreenshotResolution"></dnn:label></td>
                <td><asp:textbox id="txtScreenshotWidth" cssclass="NormalTextBox" width="50" runat="server"
                maxlength="3" />
            <asp:Label ID="lblX" runat="server" Text="*"></asp:Label>
            <asp:textbox id="txtScreenshotHeight" cssclass="NormalTextBox" width="50" runat="server"
                maxlength="3" /></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label32" runat="server" resourcekey="ScreenshotFrames"></dnn:label></td>
                <td><asp:dropdownlist id="cboScreenshotFrames" width="60" runat="server">
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
                                </asp:dropdownlist></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label18" runat="server" resourcekey="ReencodeMp4"></dnn:label></td>
                <td><asp:checkbox id="chkReencodeMp4" runat="server"></asp:checkbox></td>
            </tr>
        </table>
    </div>
    <div id="divVideoRecording">
        <table class="settingtable">
            <tr>
                <td class="SubSubHead"><dnn:label id="Label16" runat="server" resourcekey="FMSUrl"></dnn:label></td>
                <td><asp:textbox id="txtFMSUrl" cssclass="NormalTextBox" width="200" runat="server" /></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label34" runat="server" resourcekey="VideoQuality"></dnn:label></td>
                <td><asp:dropdownlist id="cboVideoQuality" runat="server" cssclass="Normal">
                                    <asp:ListItem Text="Best" Value="100" />
                                    <asp:ListItem Text="95%" Value="95" />
                                    <asp:ListItem Text="90%" Value="90" />
                                    <asp:ListItem Text="85%" Value="85" />
                                    <asp:ListItem Text="80%" Value="80" />
                                    <asp:ListItem Text="75%" Value="75" />
                                    <asp:ListItem Text="70%" Value="70" />
                                </asp:dropdownlist></td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label17" runat="server" resourcekey="VideoSize"></dnn:label></td>
                <td><asp:dropdownlist id="lstSize" runat="server">
                <asp:ListItem Value="640x360" Text="640 x 360 Widescreen"></asp:ListItem>
                <asp:ListItem Value="640x480" Text="640 x 480"></asp:ListItem>
                <asp:ListItem Value="600x338" Text="600 x 338 Widescreen"></asp:ListItem>
                <asp:ListItem Value="600x450" Text="600 x 450"></asp:ListItem>
                <asp:ListItem Value="560x315" Text="560 x 315 Widescreen"></asp:ListItem>
                <asp:ListItem Value="560x420" Text="560 x 420"></asp:ListItem>
                <asp:ListItem Value="520x293" Text="520 x 293 Widescreen"></asp:ListItem>
                <asp:ListItem Value="520x390" Text="520 x 390"></asp:ListItem>
                <asp:ListItem Value="480x270" Text="480 x 270 Widescreen"></asp:ListItem>
                <asp:ListItem Value="480x360" Text="480 x 360"></asp:ListItem>
                <asp:ListItem Value="440x248" Text="440 x 248 Widescreen"></asp:ListItem>
                <asp:ListItem Value="440x330" Text="440 x 330"></asp:ListItem>
                <asp:ListItem Value="400x225" Text="400 x 225 Widescreen"></asp:ListItem>
                <asp:ListItem Value="400x300" Text="400 x 300"></asp:ListItem>
                </asp:dropdownlist></td>
            </tr>
        </table>
    </div>
    <div id="divYoutube">
        <table class="settingtable">
            <tr>
                <td class="SubSubHead" width="160"><dnn:label id="Label5" runat="server"  resourcekey="PlayerSize"></dnn:label></td>
                <td>
                <asp:textbox id="txtYoutubeWidth" runat="server" width="60px" cssclass="NormalTextbox"></asp:textbox>
                <asp:Label ID="Label1" runat="server" Text="*"></asp:Label>
                <asp:textbox id="txtYoutubeHeight" runat="server" width="60px" cssclass="NormalTextbox"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label2" runat="server"  resourcekey="Theme"></dnn:label></td>
                <td><asp:dropdownlist id="cboTheme" runat="server">
            <asp:ListItem Value="light"></asp:ListItem>
            <asp:ListItem Value="dark"></asp:ListItem>
            </asp:dropdownlist>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label14" runat="server"  resourcekey="AutoPlay"></dnn:label></td>
                <td><asp:checkbox id="chkAutoPlay" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label3" runat="server"  resourcekey="ShowControls"></dnn:label></td>
                <td>
            <asp:dropdownlist id="cboShowControls" runat="server">
            <asp:ListItem Value="0" Text="always visible"></asp:ListItem>
            <asp:ListItem Value="1" Text="auto hide controls and progress bar"></asp:ListItem>
            <asp:ListItem Value="2" Text="auto hide progress bar"></asp:ListItem>
            </asp:dropdownlist>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label42" runat="server"  resourcekey="Color"></dnn:label></td>
                <td>
            <asp:dropdownlist id="cboHighlightColor" runat="server">
            <asp:ListItem Value="red"></asp:ListItem>
            <asp:ListItem Value="white"></asp:ListItem>
            </asp:dropdownlist>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label43" runat="server"  resourcekey="Disablekb"></dnn:label></td>
                <td>
            <asp:checkbox id="chkDisablekb" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label8" runat="server"  resourcekey="FullScreen"></dnn:label></td>
                <td>
            <asp:checkbox id="chkFullScreen" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label12" runat="server"  resourcekey="Loop"></dnn:label></td>
                <td>
            <asp:checkbox id="chkLoop" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label4" runat="server"  resourcekey="IncludeRelated"></dnn:label></td>
                <td>
            <asp:checkbox id="chkIncludeRelated" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label9" runat="server"  resourcekey="Modestbranding"></dnn:label></td>
                <td>
            <asp:checkbox id="chkModestbranding" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label39" runat="server"  resourcekey="UpdateExisting"></dnn:label></td>
                <td>
            <asp:linkbutton id="cmdUpdateYTVideos" runat="server" resourcekey="UpdateYTVideos"
                    cssclass="CommandButton"></asp:linkbutton>
                </td>
            </tr>
        </table>
    </div>
    <div id="divOtherOptions">
        <table class="settingtable">
            <tr>
                <td class="SubSubHead"><dnn:label id="Label7" runat="server"  resourcekey="DefaultQuality"></dnn:label></td>
                <td><asp:dropdownlist id="cboDefaultQuality" runat="server" cssclass="Normal">
                <asp:ListItem Text="low" />
                <asp:ListItem Text="high" />
            </asp:dropdownlist></td>
            </tr>
            <tr>
                <td class="SubSubHead" width="160"><dnn:label id="Label15" runat="server" resourcekey="NeedApproval"></dnn:label></td>
                <td>
            <asp:checkbox id="chkNeedApproval" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label19" runat="server" resourcekey="NotifyModerators"></dnn:label></td>
                <td>
            <asp:checkbox id="chkNotifyModerators" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label20" runat="server" resourcekey="UploadQuota"></dnn:label></td>
                <td>
            <asp:dropdownlist id="cboUploadQuota" runat="server">
                                    <asp:ListItem Value="0" Text="Disabled"></asp:ListItem>
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
                                    <asp:ListItem Value="12"></asp:ListItem>
                                    <asp:ListItem Value="15"></asp:ListItem>
                                    <asp:ListItem Value="20"></asp:ListItem>
                                    <asp:ListItem Value="25"></asp:ListItem>
                                    <asp:ListItem Value="30"></asp:ListItem>
                                    <asp:ListItem Value="40"></asp:ListItem>
                                    <asp:ListItem Value="50"></asp:ListItem>
                                </asp:dropdownlist>
                </td>
            </tr>
              <tr>
                    <td class="SubSubHead">
                        <dnn:label id="Label49" runat="server" resourcekey="DNNJournalIntegration" suffix=":">
                                        </dnn:label>
                    </td>
                    <td>
                        <asp:checkbox id="chkDNNJournalIntegration" runat="server" resourcekey="Enabled">
                                        </asp:checkbox>
                    </td>
                </tr>


            <tr>
                <td class="SubSubHead"><dnn:label id="Label26" runat="server" resourcekey="NewTags"></dnn:label></td>
                <td>
            <asp:CheckBox ID="chkLimitTagAdd" runat="server"/>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label27" runat="server" resourcekey="CategoryViewPermission"></dnn:label></td>
                <td>
            <asp:checkbox id="chkOnCategories" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label28" runat="server" resourcekey="VideoViewPermission"></dnn:label></td>
                <td>
            <asp:checkbox id="chkOnVideos" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label11" runat="server" resourcekey="LoginToRate"></dnn:label></td>
                <td>
            <asp:checkbox id="chkLoginToRate" runat="server"></asp:checkbox>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label41" runat="server" resourcekey="AmazonS3"></dnn:label></td>
                <td>
            <asp:hyperlink id="lnkAmazonS3" runat="server" resourcekey="Config" cssclass="CommandButton"></asp:hyperlink>
                </td>
            </tr>
        </table>
    </div>
    <div id="divAbout">
        <table class="settingtable">
            <tr>
                <td class="SubSubHead" width="160"><dnn:label id="Label33" runat="server" resourcekey="ProductName"></dnn:label></td>
                <td>
            <asp:label id="lblProductName" runat="server"></asp:label>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label29" runat="server" resourcekey="VersionNumber"></dnn:label></td>
                <td>
            <asp:label id="lblVersion" runat="server"></asp:label>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label30" runat="server" resourcekey="LicenseStatus"></dnn:label></td>
                <td>
            <asp:label id="lblLicenseStatus" runat="server"></asp:label>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label31" runat="server" resourcekey="ActivationDate"></dnn:label></td>
                <td>
            <asp:label id="lblActivationDate" runat="server"></asp:label>
                </td>
            </tr>
            <tr>
                <td class="SubSubHead"><dnn:label id="Label40" runat="server" resourcekey="lblActivate"></dnn:label></td>
                <td>
            <asp:hyperlink id="lnkActivate" runat="server" cssclass="CommandButton" resourcekey="Activate"></asp:hyperlink>
                </td>
            </tr>
        </table>
    </div>

</div>

<script type="text/javascript">
    $(document).ready(function () {
        $('.dnnstyletab').dnnTabs({selected:0});
    });
</script>


  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
  </ul>

