<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Register TagPrefix="Upload" Namespace="BizModules.UltraVideoGallery.DNN45" Assembly="BizModules.UltraVideoGallery.DNN45" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="AddVideo.ascx.vb" Inherits="BizModules.UltraVideoGallery.DNN45.AddVideoDNN45" %>

<table style="padding-bottom:10px;" width="100%" class="Normal">
    <tr>
        <td class="dnnupload twocolleft">
            <asp:Panel ID="pnlUpload" runat="server" CssClass="uploadsection way_upload">
                <asp:Label ID="Label4" runat="server" resourcekey="UploadFiles" CssClass="Head"></asp:Label>
                <div class="upload">
                    <div class="message">
                        <asp:Label ID="Label1" runat="server" resourcekey="WeAccept" class="accept"></asp:Label> 
                        <asp:Label ID="lblSupportedFormats" runat="server"></asp:Label>
                    </div>
                    <Upload:uploadprogressinput id="fileVideo" runat="server" size="40" class="NormalTextBox">
                                                                </Upload:uploadprogressinput>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlUrl" runat="server" CssClass="uploadsection way_link">
                <asp:Label ID="Label5" runat="server" resourcekey="LinkVideo" CssClass="Head"></asp:Label>
                <div class="upload">
                    <div class="message">
                        <asp:Label ID="Label2" runat="server" resourcekey="VideoUrl.Help"></asp:Label>
                    </div>
                    <asp:Label ID="Label6" runat="server" resourcekey="VideoURL" CssClass="SubHead block"></asp:Label>
                    <div><asp:TextBox ID="txtVideoURL" CssClass="videourl" runat="server" Width="400px"></asp:TextBox></div>
                    <asp:Label ID="Label7" runat="server" resourcekey="Screenshot" CssClass="SubHead block second"></asp:Label>
                    <div><asp:TextBox ID="txtScreenshot" CssClass="screenshot" runat="server" Width="400px"></asp:TextBox></div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlEmbed" runat="server" CssClass="uploadsection way_embed">
                <asp:Label ID="Label8" runat="server" resourcekey="EmbedVideo" CssClass="Head"></asp:Label>
                <div class="upload">
                    <div class="message">
                        <asp:Label ID="Label3" runat="server" resourcekey="EmbedCode.Help"></asp:Label>
                    </div>
                    <asp:Label ID="Label9" runat="server" resourcekey="EmbedCode" CssClass="SubHead block"></asp:Label>
                    <div><asp:TextBox ID="txtEmbedCode" runat="server" Width="400px" TextMode="MultiLine" Rows="3"></asp:TextBox></div>
                    <asp:Label ID="Label10" runat="server" resourcekey="Screenshot" CssClass="SubHead block second"></asp:Label>
                    <div><asp:TextBox ID="txtScreenshot2" runat="server" Width="400px"></asp:TextBox></div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlRecord" runat="server" CssClass="uploadsection way_record">
                <asp:Label ID="Label11" runat="server" resourcekey="RecordVideo" CssClass="Head"></asp:Label>
                <div class="upload">
                <div id="UVGRecord">

                <script src="<%=ModulePath%>Scripts/swfobject.js" language="javascript"></script>

                <object allowscriptaccess='always' allownetworking='all' width='<%=CameraWidth %>' height='<%=CameraHeight %>'>
                <param name='movie' value='<%=ResolveUrl("UVGRecord.swf") %>' />
                <param name='flashvars' value='<%=Params %>' />
                <embed src='<%=ResolveUrl("UVGRecord.swf") %>' type='application/x-shockwave-flash'
                allowscriptaccess='always' allownetworking='all' width='<%=CameraWidth %>' height='<%=CameraHeight %>' flashvars='<%=Params %>'></embed>
                </object>
                <div class="script">
                Install latest flash player if above video record program does not work.
                </div>
                </div>

                <script type="text/javascript">
                var fObj = new FlashObject('<%=ResolveUrl("UVGRecord.swf") %>', 'UVGRecord', '<%=CameraWidth %>', '<%=CameraHeight %>', "9.0.115", '');
                fObj.flashvars = '<%=Params%>';
                fObj.addParam('allowScriptAccess', 'always');
                fObj.write('UVGRecord');
                var UVGRecord;
                UVGRecord = document.getElementById('UVGRecord');

                function UVGRecorded(itemId)
                {
                var nextStep = "<%= NavigateURL(TabId, "", "mid=" + ModuleId.ToString + "&ctl=Step3&ItemId=UVGVID")%>";
                nextStep = nextStep.replace("UVGVID", itemId);

                document.location.href = nextStep;
                return;
                }
                </script>
                </div>
            </asp:Panel>
        </td>
        <td style="vertical-align:top;">
            <asp:Label ID="Label12" runat="server" resourcekey="MoreOptions" CssClass="Head"></asp:Label>
            <asp:Panel ID="pnlUploadOption" runat="server">
            <a href="#" class="otherway" rel="way_upload">
                <span class="icon computer"></span>
                <asp:Label ID="Label13" runat="server" resourcekey="UploadAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label14" runat="server" resourcekey="UploadAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
            <asp:Panel ID="pnlUrlOption" runat="server">
            <a href="#" class="otherway" rel="way_link">
                <span class="icon url"></span>
                <asp:Label ID="Label15" runat="server" resourcekey="LinkAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label16" runat="server" resourcekey="LinkAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
            <asp:Panel ID="pnlEmdedOption" runat="server">
            <a href="#" class="otherway" rel="way_embed">
                <span class="icon html"></span>
                <asp:Label ID="Label17" runat="server" resourcekey="EmbedAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label18" runat="server" resourcekey="EmbedAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
            <asp:Panel ID="pnlRecordOption" runat="server">
            <a href="#" class="otherway" rel="way_record">
                <span class="icon record"></span>
                <asp:Label ID="Label19" runat="server" resourcekey="RecordAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label20" runat="server" resourcekey="RecordAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
        </td>
    </tr>
</table>
<p>
    <asp:Button ID="btnUpload" runat="server" resourcekey="Upload" CssClass="CommandButton btnupload" />
    <asp:Button ID="btnSave" runat="server" resourcekey="Save" CssClass="CommandButton btnsave" />      
</p>
