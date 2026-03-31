<%@ Control Language="vb" AutoEventWireup="false" Codebehind="EditVideo.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.EditVideo" %>
<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="TagPicker" Src="ucTagPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPicker" Src="ucCategoryPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SeriesPicker" Src="ucSeriesPicker.ascx" %>


<div class="section">
        <div class="head"><asp:Label ID="lblRawFile" runat="server" Text=""></asp:Label></div>
        <table>
            <tr><td class="twocolleft">

                <asp:Panel ID="pnlVideoSrc" runat="server" CssClass="message">
                <asp:Label ID="Label1" runat="server" resourcekey="VideoSource" CssClass="SubHead bigger block"></asp:Label>
                <asp:Panel ID="pnlOriginal" runat="server" CssClass="verticalMiddle">
                <asp:Label ID="lblOriginalName" runat="server"></asp:Label>
                <asp:HyperLink ID="lnkDownload" runat="server" Tooltip="Download encoded file" CssClass="Normal" ImageUrl="~/Images/save.gif"></asp:HyperLink>
                </asp:Panel>

                <asp:panel ID="pnlVideoUrl" runat="server" visible="false">
                <div class="SubHead second"><asp:Label ID="Label11" runat="server" resourcekey="plVideoUrl"></asp:Label></div>
                <div><asp:TextBox ID="txtVideoUrl" Width="500px" runat="server" Text="http://" CssClass="NormalTextBox"></asp:TextBox></div>
                </asp:panel>

                <asp:panel id="pnlScreenShotUrl" runat="server" visible="false">
                <div class="SubHead second"><asp:Label ID="Label13" runat="server" resourcekey="plScreenShotUrl"></asp:Label></div>
                <div><asp:TextBox ID="txtScreenShotUrl" runat="server" Width="500px" CssClass="NormalTextBox"></asp:TextBox></div>
                </asp:panel>

                <asp:panel id="pnlEmbedCode" runat="server" visible="false">
                <div class="SubHead second"><asp:Label ID="Label12" runat="server" resourcekey="plEmbedCode"></asp:Label></div>
                <div><asp:TextBox ID="txtEmbedCode" Width="500px" TextMode="MultiLine" Rows="3" runat="server" Text="" CssClass="NormalTextBox"></asp:TextBox></div>
                </asp:panel>
                </asp:Panel>

                <asp:Label ID="Label2" runat="server" resourcekey="Screenshot" CssClass="SubHead block"></asp:Label>
                <div class="scrst">
                <asp:Image ID="imgScreenshot" runat="server" BorderWidth="1" />
                <asp:Panel ID="pnlCapture" runat="server" cssclass="newscrst">
                    <div class="SubHead bigger"><asp:Label ID="Label14" runat="server" resourcekey="NewScreenshot"></asp:Label></div>
                    <div><asp:Label ID="lblTimePoint" runat="server" resourcekey="TimePoint"></asp:Label>, 00:00 ~ <asp:Label ID="lblTime" runat="server" /> : 
                    <asp:TextBox ID="txtTimePoint" Width="40px" runat="server" Text="00:00" CssClass="NormalTextBox" autocomplete="off" /></div>
                    <div><asp:Button  ID="btnCapture" runat="server" resourcekey="Capture" CssClass="CommandButton"/></div>
                </asp:Panel>
                <div style="clear:both;"></div>
                </div>

                <asp:Label ID="Label4" runat="server" resourcekey="Title" CssClass="SubHead second block"></asp:Label>
                <div><asp:TextBox ID="txtTitle" runat="server" Width="500px"></asp:TextBox></div>
                <asp:Label ID="Label5" runat="server" resourcekey="Description" CssClass="SubHead second block"></asp:Label>
                <div><asp:TextBox ID="txtDescription" runat="server" Width="500px" TextMode="MultiLine" Rows="3"></asp:TextBox></div>
                <asp:Label ID="Label6" runat="server" resourcekey="Tags" CssClass="SubHead second block"></asp:Label>
                <div style="width: 500px;"><uc1:tagpicker id="ucTagpicker1" runat="server"></uc1:tagpicker>
                </div>

                <asp:Label ID="Label7" runat="server" resourcekey="Subtitle" CssClass="SubHead second block"></asp:Label>
                <div class="subtitle">
                    <div class="nosubtitle">
                    <asp:Label ID="lblSubTitle" runat="server" />
                    <input type="button" class="CommandButton" value="Upload" />
                    </div>
                    <div class="uploadsubtitle displaynone">
                    <asp:Label ID="lblSubtitleMime" runat="server" resourcekey="SubtitleMime" ForeColor="Red"></asp:Label>
                    <p />
                    <input type="file" size="40" id="fileSubTitle" runat="server" />
                    </div>
                </div>
                <div style="clear:both;"></div>

                <asp:Label ID="Label8" runat="server" resourcekey="Statistics" CssClass="SubHead second block"></asp:Label>
                <div>
                    <asp:Label ID="lblViews" runat="server" />
                    <asp:Label ID="Label9" runat="server" resourcekey="ViewsSinceCreated"></asp:Label>
                    <asp:Label ID="lblDateAdded" CssClass="dateadded" runat="server" /><asp:TextBox ID="txtDateAdded" runat="server" Width="140px" CssClass="NormalTextbox dateadded"></asp:TextBox>
                </div>

                <asp:panel id="pnlAccessCode" runat="server" visible="false">
                <asp:Label ID="Label10" runat="server" resourcekey="OneTimeUrl" CssClass="SubHead second block"></asp:Label>
                <div>
                <asp:Label ID="lblAccessUrl" runat="server"></asp:Label>
                <asp:Button ID="btnAccessCode" runat="server" CssClass="CommandButton" resourcekey="CreateAccessCode" />
                </div>
                </asp:panel>

            </td><td style="vertical-align:top; padding-left:20px;">
                <asp:Label ID="Label15" runat="server" resourcekey="Categories" CssClass="SubHead block"></asp:Label>
                <uc1:categorypicker id="ucCategoryPicker1" runat="server"></uc1:categorypicker>

                <asp:Label ID="Label16" runat="server" resourcekey="Series" CssClass="SubHead second block"></asp:Label>
                <uc1:seriespicker id="ucSeriespicker1" runat="server"></uc1:seriespicker>

                <asp:Panel ID="pnlBroadcast" runat="server">
                    <div class="SubHead second"><asp:Label ID="Label3" runat="server" resourcekey="BroadCast" CssClass="SubHead"></asp:Label></div>
                    <asp:CheckBox ID="chkApproved" runat="server" resourcekey="Approved" style="display:block;"></asp:CheckBox>
                    <asp:CheckBox ID="chkFeatured" runat="server" resourcekey="Featured" style="display:block;"></asp:CheckBox>
                    <asp:Label ID="lblApproved" runat="server" Visible="False" />

                    <asp:Panel ID="pnlViewRoles" runat="server">
                    <div class="SubHead second"><asp:Label ID="plViewRoles" runat="server" resourcekey="plViewRoles">
                                                </asp:Label></div>
                    <div><uc1:rolepicker id="ucRolePicker1" runat="server" DisplayAllUsers="True"></uc1:rolepicker></div>
                    </asp:Panel>
                </asp:Panel>
            </td></tr>
        </table>                                    
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="btnSave" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="btnDelete" runat="server" resourcekey="cmdDelete"
                causesvalidation="False"></asp:LinkButton></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="btnCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery(".unlink").click(function(){dnn.setVar("selectedItem", ""); jQuery(".seriestitle").val("");});
        jQuery("span.dateadded").click(function(){jQuery("input.dateadded").show().val(this.innerHTML); jQuery(this).hide();});
        jQuery(".scrst").hover(function(){jQuery(".newscrst").show();}, function(){jQuery(".newscrst").hide();});
    });
</script>