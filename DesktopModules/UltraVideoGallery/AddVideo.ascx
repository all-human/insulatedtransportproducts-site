<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Register assembly="DotNetNuke.Web" namespace="DotNetNuke.Web.UI.WebControls" tagprefix="cc1" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="AddVideo.ascx.vb" Inherits="BizModules.UltraVideoGallery.AddVideo" %>

<asp:panel id="pnlWarning" runat="server" visible="False"></asp:panel>

<asp:Panel ID="pnlAddVideo" runat="server">
<table style="padding-bottom:10px;" width="100%">
    <tr>
        <td class="dnnupload twocolleft">
            <asp:Panel ID="pnlUpload" runat="server" CssClass="uploadsection way_upload">
                <h4><asp:Label ID="Label4" runat="server" resourcekey="UploadFiles"></asp:Label></h4>
                
                <div class="upload">
                    <div class="message">
                        <asp:Label ID="Label1" runat="server" resourcekey="WeAccept" class="accept"></asp:Label> 
                        <asp:Label ID="lblSupportedFormats" runat="server"></asp:Label>
                    </div>
                    <cc1:DnnUpload ID="DnnUpload1" runat="server" ControlObjectsVisibility="AddButton, RemoveButtons" InputSize="40" MaxFileSize="2147483647" EnableFileInputSkinning="False">
                    </cc1:DnnUpload>        
                    <cc1:DnnProgressArea ID="DnnProgressArea1" runat="server" Skin="Simple" DisplayCancelButton="True" ProgressIndicators="TotalProgressBar, CurrentFileName, TimeEstimated, TransferSpeed">
                    </cc1:DnnProgressArea>
                    <cc1:DnnProgressManager ID="DnnProgressManager1" runat="server" />
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlImport" runat="server" CssClass="uploadsection way_import">
                <h4><asp:Label ID="Label23" runat="server" resourcekey="ImportVideoFrom"></asp:Label></h4>
                <div class="upload">
                    <div class="message">
                            <asp:Label ID="Label25" runat="server" resourcekey="ImportVideoFrom.Help"></asp:Label>
                        </div>
                    <div>
                        <asp:repeater id="lstFolders" runat="server">
                            <ItemTemplate>
                                <asp:Label ID="lblFolder" runat="server" Text='<%# DataBinder.Eval(Container, "DataItem.Key")%>' CssClass="SubHead block second"></asp:Label>
                                <asp:CheckBoxList ID="lstVideos" runat="server" DataTextField="FriendlyPath" DataValueField="Path" RepeatColumns="3"></asp:CheckBoxList>
                            </ItemTemplate>
                            </asp:repeater>
                    </div>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnlUrl" runat="server" CssClass="uploadsection way_link">
                <h4><asp:Label ID="Label5" runat="server" resourcekey="LinkVideo" CssClass="Head"></asp:Label></h4>
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
                <h4><asp:Label ID="Label8" runat="server" resourcekey="EmbedVideo"></asp:Label></h4>
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
                <h4><asp:Label ID="Label11" runat="server" resourcekey="RecordVideo"></asp:Label></h4>
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
        <td class="uploadoptions twocolright" id="tdUploadOptions" runat="server">
            <h4><asp:Label ID="Label12" runat="server" resourcekey="MoreOptions"></asp:Label></h4>
            
            <asp:Panel ID="pnlUploadOption" runat="server">
            <a href="#" class="otherway" rel="way_upload">
                <asp:Image  ID="Image1" runat="server" ImageUrl="~/DesktopModules/UltraVideoGallery/Images/upload.png" CssClass="icon"/>
                <asp:Label ID="Label13" runat="server" resourcekey="UploadAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label14" runat="server" resourcekey="UploadAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
            <asp:Panel ID="pnlChooseOption" runat="server">
            <a href="#" class="otherway" rel="way_import">
                <asp:Image  ID="Image4" runat="server" ImageUrl="~/DesktopModules/UltraVideoGallery/Images/choose.png" CssClass="icon"/>
                <asp:Label ID="Label21" runat="server" resourcekey="ImportVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label22" runat="server" resourcekey="ImportVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
            <asp:Panel ID="pnlUrlOption" runat="server">
            <a href="#" class="otherway" rel="way_link">
                <asp:Image  ID="imgLink" runat="server" ImageUrl="~/DesktopModules/UltraVideoGallery/Images/link.png" CssClass="icon"/>
                <asp:Label ID="Label15" runat="server" resourcekey="LinkAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label16" runat="server" resourcekey="LinkAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
            <asp:Panel ID="pnlEmdedOption" runat="server">
            <a href="#" class="otherway" rel="way_embed">
                <asp:Image  ID="Image2" runat="server" ImageUrl="~/DesktopModules/UltraVideoGallery/Images/embed.png" CssClass="icon"/>
                <asp:Label ID="Label17" runat="server" resourcekey="EmbedAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label18" runat="server" resourcekey="EmbedAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
            <asp:Panel ID="pnlRecordOption" runat="server">
            <a href="#" class="otherway" rel="way_record">
                <asp:Image  ID="Image3" runat="server" ImageUrl="~/DesktopModules/UltraVideoGallery/Images/record.png" CssClass="icon"/>
                <asp:Label ID="Label19" runat="server" resourcekey="RecordAVideo" CssClass='label'></asp:Label>
                <asp:Label ID="Label20" runat="server" resourcekey="RecordAVideo.Help" CssClass='label2'></asp:Label>
            </a>
            </asp:Panel>
        </td>
    </tr>
</table>
  
  <ul class="dnnActions dnnClear">
    <li>
        <asp:LinkButton ID="btnUpload" runat="server" resourcekey="Upload" CssClass="dnnPrimaryAction btnupload" />
    </li>
    <li>
        <asp:LinkButton ID="btnSave" runat="server" resourcekey="Save" CssClass="dnnPrimaryAction btnsave" />  
    </li>
  </ul>
 </asp:Panel>
