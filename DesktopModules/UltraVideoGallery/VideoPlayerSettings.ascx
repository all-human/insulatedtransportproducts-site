<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoPlayerSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoPlayerSettings" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ucColorPicker" Src="ucColorPicker.ascx" %>

     <div class="section">
         <div class="head"><asp:Label ID="lblHead" runat="server" resourcekey="ControlTitle_modulesettings"></asp:Label></div>
            <table id="tblUIOptions" runat="server" width="100%">
                <tr id="trGallerySize" runat="server">
                    <td class="SubHead">
                        <asp:Label ID="plGalleryWidth" runat="server" resourcekey="GallerySize">
                        </asp:Label></td>
                    <td class="Normal">
                        <asp:TextBox ID="txtGalleryWidth" runat="server" Width="50" CssClass="NormalTextBox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="validator2" runat="server" ErrorMessage="*" ValidationExpression="\d*"
                            ControlToValidate="txtGalleryWidth"></asp:RegularExpressionValidator>
                        X &nbsp;
                        <asp:TextBox ID="txtGalleryHeight" runat="server" Width="50" CssClass="NormalTextBox"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="validator3" runat="server" ErrorMessage="*" ValidationExpression="\d*"
                            ControlToValidate="txtGalleryHeight"></asp:RegularExpressionValidator>
                 </td>
                </tr>
                <tr>
                    <td class="SubHead" width="160">
                        <asp:Label ID="Label1" runat="server" resourcekey="ResponsivePlayer">
                        </asp:Label></td>
                    <td class="Normal">
                        <asp:checkbox  ID="chkResponsivePlayer" runat="server" resourcekey="Yes" /></td>
                </tr>
                <tr>
                    <td class="SubHead" width="160">
                        <asp:Label ID="plStageBackground" runat="server" resourcekey="StageBackground">
                        </asp:Label></td>
                    <td class="Normal">
                        <div style="float:left;"><uc1:uccolorpicker id="stageBackgroundColor" runat="server">
                                    </uc1:uccolorpicker></div>
                        <div style="float:left; margin:0px 8px 0px 8px;"><asp:Label ID="Label6" runat="server" resourcekey="Alpha" CssClass="GreyText">
                                    </asp:Label></div>
                        <div><asp:DropDownList ID="stageBackgroundAlpha" runat="server" CssClass="NormalTextBox">
                                        <asp:ListItem Text="10"></asp:ListItem>
                                        <asp:ListItem Text="20"></asp:ListItem>
                                        <asp:ListItem Text="30"></asp:ListItem>
                                        <asp:ListItem Text="40"></asp:ListItem>
                                        <asp:ListItem Text="50"></asp:ListItem>
                                        <asp:ListItem Text="60"></asp:ListItem>
                                        <asp:ListItem Text="70"></asp:ListItem>
                                        <asp:ListItem Text="80"></asp:ListItem>
                                        <asp:ListItem Text="90"></asp:ListItem>
                                        <asp:ListItem Text="100"></asp:ListItem>
                                    </asp:DropDownList></div>
                    </td>
                </tr>
                <tr>
                    <td class="SubHead">
                        <asp:Label ID="plControlBackgroundColor" resourcekey="ControlBackgroundColor" runat="server">
                        </asp:Label></td>
                    <td class="Normal">
                        <uc1:uccolorpicker id="controlBackgroundColor" runat="server">
                        </uc1:uccolorpicker></td>
                </tr>
                <tr>
                    <td class="SubHead">
                        <asp:Label ID="Label2" resourcekey="WatermarkImage" runat="server">
                        </asp:Label></td>
                    <td class="Normal">
                        <asp:TextBox ID="watermarkLogo" runat="server" Width="400px" CssClass="NormalTextBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="SubHead">
                        <asp:Label ID="Label3" resourcekey="WatermarkText" runat="server">
                        </asp:Label></td>
                    <td class="Normal">
                        <asp:TextBox ID="watermark" runat="server" Width="200px" CssClass="NormalTextBox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="SubHead">
                        <asp:Label ID="Label4" resourcekey="WatermarkPosition" runat="server">
                        </asp:Label></td>
                    <td class="Normal">
                        x:
                        <asp:TextBox ID="watermarkPosition_X" runat="server" Width="50px" CssClass="NormalTextBox">20</asp:TextBox>
                        <asp:RegularExpressionValidator ID="Regularexpressionvalidator15" runat="server"
                                        resourcekey="InvalidInput" ErrorMessage="*" ValidationExpression="\d*"
                                        ControlToValidate="watermarkPosition_X"></asp:RegularExpressionValidator>
                        y: 
                        <asp:TextBox ID="watermarkPosition_Y" runat="server" Width="50px" CssClass="NormalTextBox">20</asp:TextBox>
                                    <asp:RegularExpressionValidator ID="Regularexpressionvalidator16" runat="server"
                                        resourcekey="InvalidInput" ErrorMessage="*" ValidationExpression="\d*"
                                        ControlToValidate="watermarkPosition_Y"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="SubHead">
                        <asp:Label ID="Label5" resourcekey="WatermarkAppearance" runat="server">
                        </asp:Label></td>
                    <td class="Normal">
                        <asp:Label ID="plwatermarkAlpha" resourcekey="Alpha" runat="server">
                                    </asp:Label>
                        <asp:DropDownList ID="watermarkAlpha" runat="server" CssClass="NormalTextBox">
                                        <asp:ListItem Text="10"></asp:ListItem>
                                        <asp:ListItem Text="20"></asp:ListItem>
                                        <asp:ListItem Text="30"></asp:ListItem>
                                        <asp:ListItem Text="40"></asp:ListItem>
                                        <asp:ListItem Text="50"></asp:ListItem>
                                        <asp:ListItem Text="60"></asp:ListItem>
                                        <asp:ListItem Text="70"></asp:ListItem>
                                        <asp:ListItem Text="80"></asp:ListItem>
                                        <asp:ListItem Text="90"></asp:ListItem>
                                        <asp:ListItem Text="100"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="plGradient" resourcekey="Gradient" runat="server">
                                    </asp:Label>
                        <asp:DropDownList ID="watermarkGradient" runat="server" CssClass="NormalTextBox">
                                        <asp:ListItem Text="-45"></asp:ListItem>
                                        <asp:ListItem Text="-30"></asp:ListItem>
                                        <asp:ListItem Text="-15"></asp:ListItem>
                                        <asp:ListItem Text="0"></asp:ListItem>
                                        <asp:ListItem Text="15"></asp:ListItem>
                                        <asp:ListItem Text="30"></asp:ListItem>
                                        <asp:ListItem Text="45"></asp:ListItem>
                                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="SubHead">
                        <asp:Label ID="plTextColor" resourcekey="TextColor" runat="server">
                        </asp:Label></td>
                    <td class="Normal">
                        <uc1:uccolorpicker id="textColor" runat="server" Color="000000">
                        </uc1:uccolorpicker></td>
                </tr>
                <tr>
                    <td class="SubHead">
                        <asp:Label ID="plScale" resourcekey="AutoStart" runat="server">
                        </asp:Label></td>
                    <td class="Normal">
                        <asp:DropDownList ID="autoStart" runat="server" CssClass="NormalTextBox">
                            <asp:ListItem Value="True"></asp:ListItem>
                            <asp:ListItem Value="Preload"></asp:ListItem>
                            <asp:ListItem Value="False"></asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td class="SubHead" width="160">
                        <asp:Label ID="Label7" runat="server" resourcekey="SubtitleSwitch">
                        </asp:Label></td>
                    <td class="Normal">
                        <asp:checkbox  ID="chkSubtitleSwitch" runat="server" resourcekey="Yes" /></td>
                </tr>
            </table>
     </div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"></asp:LinkButton></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdLoadDefault" runat="server" resourcekey="cmdLoadDefault"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery("#<%=watermarkLogo.ClientID %>").watermark("<%=Localize("WatermarkImage.Help") %>");

        var group = jQuery("#<%=watermark.ClientId %>,#<%=watermarkLogo.ClientId %>");
        group.bind("keydown change", function () {
            if (this.value.length > 0) group.not(this).val("");
        });
    });
</script>