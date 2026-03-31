<%@ control language="C#" autoeventwireup="false" inherits="ForemostMedia.Modules.FM_Forms_DNN.Settings" codebehind="Settings.ascx.cs" %>
<%@ register tagprefix="dnn" tagname="Label" src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>

<div class="fm-bootstrap" id="FM_Forms_DNNSettings">
 <asp:Panel runat="server" ID="pnlSettingsErrors" CssClass="alert alert-danger" Visible="False">
     <asp:Literal runat="server" ID="ltSettingsErrorMessage"></asp:Literal>
 </asp:Panel>
    
    <div id="fmExternalLibraries">
    <h2 id="fmPnlRow1" class="dnnFormSectionHead">
        <a href="#"><%= LocalizeString("ExternalLibraries.Text") %></a>
    </h2>
    <fieldset class="dnnClear">
        <div class="dnnForm" id="fmExternalLibraries">
          <ul class="dnnAdminTabNav">
            <li><a href="#Recaptcha"><%= LocalizeString("Recaptcha.Text") %></a></li>
            <li><a href="#ActOn"><%= LocalizeString("ActOn.Text") %></a></li>
            <li><a href="#SalesForce"><%= LocalizeString("SalesForce.Text") %></a></li>
        </ul>
        <div id="Recaptcha">
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="UseRecaptcha" suffix=":"></dnn:label>
                    <asp:CheckBox ID="cbUseRecaptcha" CssClass="NormalTextBox" runat="server" />
                </div>
                <div class="dnnFormItem">
                    <dnn:Label runat="server" resourcekey="UseRecaptchaInvisible" suffix=":"></dnn:Label>
                    <asp:CheckBox ID="cbUseRecaptchaInvisible" CssClass="NormalTextBox" runat="server" OnCheckedChanged="cbRecaptchaInv_CheckedChanged" AutoPostBack="true" /><br/><br/>
                </div>
                <div class="dnnFormItem">
                    <dnn:Label runat="server" resourcekey="RecaptchaReposition" suffix=":"></dnn:Label>             
                     <asp:RadioButtonList ID="rbRecaptchaReposition" runat="Server" CssClass="NormalTextBox" >
                            <asp:ListItem Text="Bottom-Right" Value="bottomright"></asp:ListItem>
                            <asp:ListItem Text="Bottom-Left" Value="bottomleft"></asp:ListItem>
                            <asp:ListItem Text="Inline" Value="inline"></asp:ListItem>
                        </asp:RadioButtonList>
                    <br/><br/>
                </div>
                <div class="dnnFormItem">
                    <dnn:Label runat="server" resourcekey="RecaptchaSiteKey" suffix=":"></dnn:Label>
                    <asp:TextBox ID="tbRecaptchaSiteKey" CssClass="NormalTextBox" runat="server"/><br/><br/>
                </div>
                <div class="dnnFormItem">
                    <dnn:Label runat="server" resourcekey="RecaptchaSecretKey" suffix=":"></dnn:Label>
                    <asp:TextBox ID="tbRecaptchaSecretKey" CssClass="NormalTextBox" runat="server"/>
                </div>
                <div class="dnnFormItem">
                    <dnn:Label runat="server" resourcekey="RecaptchaLang" suffix=":"></dnn:Label>
                    <asp:TextBox ID="tbRecaptchaLang" CssClass="NormalTextBox" runat="server"/>
                </div>
            </div>
            <div id="ActOn">
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="UseActOn" suffix=":"></dnn:label>
                    <asp:CheckBox ID="cbUseActOn" CssClass="NormalTextBox" runat="server" />
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="ao_PostUrl.Text" suffix=":"></dnn:Label>
                  <asp:TextBox ID="tbActOnUrl" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
            </div>
            <div id="SalesForce">
              <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="UseSalesForce" suffix=":"></dnn:label>
                    <asp:CheckBox ID="cbSubmitToSalesForce" CssClass="NormalTextBox" runat="server" />
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceWebLeadUrl" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceWebLeadUrl" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
              <div class="dnnFormItem">
                  <dnn:label runat="server" resourcekey="UseSalesForceWebToCase" suffix=":"></dnn:label>
                  <asp:CheckBox ID="cbSubmitToSalesForceWebToCase" CssClass="NormalTextBox" runat="server" />
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceWebCaseUrl" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceWebCaseUrl" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceOID" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceOID" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceCampaignID" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceCampaignID" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceLeadSource" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceLeadSource" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
              
              <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="SalesForceDebugMode" suffix=":"></dnn:label>
                    <asp:CheckBox ID="cbEnableDebugMode" CssClass="NormalTextBox" runat="server" />
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceDebugMode.Email" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceDebugEmail" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceCustomParamName" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceCustomParamName" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
              <div class="dnnFormItem">
                  <dnn:Label runat="server" resourcekey="SalesForceCustomParamValue" suffix=":"></dnn:Label>
                  <asp:TextBox ID="txtSalesForceCustomParamValue" CssClass="NormalTextBox" runat="server"/><br/><br/>
              </div>
            </div>
          </div>
        </fieldset>
    </div>
    <h2 id="fmPnlRow2" class="dnnFormSectionHead">
        <a href="#"><%= LocalizeString("FormSettings.Text") %></a>
    </h2>
    <fieldset class="dnnClear">
        <div class="dnnForm container-fluid" id="fmFormSettings">
            <div class="row">
                <div class="dnnFormItem isSuperUser form-group col-sm-8" runat="server" id="dvCWTracking" >
                    <dnn:Label runat="server" resourcekey="CWTracking" suffix=":" />
                    <asp:CheckBox ID="cbCWTracking" CssClass="NormalTextBox" runat="server" /><br />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem isSuperUser form-group col-sm-8" runat="server" id="dvFileUploadFolder" >
                    <dnn:Label runat="server" resourcekey="FileUploadFolder" suffix=":" />
                    <asp:DropDownList runat="server" ID="ddlFileUploadFolder"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem isSuperUser form-group col-sm-8" runat="server" id="dvFileUploadRoles" >
                    <dnn:Label runat="server" resourcekey="FileUploadRoles" suffix=":" />
                    <asp:ListBox runat="server" ID="lbxUploadRoles" SelectionMode="multiple"></asp:ListBox> 
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem isSuperUser form-group col-sm-8" runat="server" id="dvFileAsAttachments" >
                    <dnn:Label runat="server" resourcekey="FilesAsAttachments" suffix=":" />
                    <asp:CheckBox runat="server" ID="cbFilesAsAttachments"></asp:CheckBox> <br />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:label runat="server" id="lblPageSize" resourcekey="AdminPageSize" suffix=":"></dnn:label>
                    <asp:DropDownList runat="server" ID="ddlPageSize" CssClass="form-control">
                        <asp:ListItem Text="10" Value="10"></asp:ListItem>
                        <asp:ListItem Text="25" Value="25" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="50" Value="50"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem isSuperUser form-group col-sm-8" runat="server" id="lblUpgradeFiles" >
                    <dnn:Label runat="server" resourcekey="UpgradeFiles" suffix=":" />
                    <asp:Button ID="btnUpgradeFiles" runat="server" onclick="btn_Upgrade_Click" Text="Upgrade Files" /> 
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="IncludeUserInfo" suffix=":"></dnn:label>
                    <asp:CheckBox ID="cbIncludeUserInfo" CssClass="NormalTextBox" runat="server" /><br />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem isSuperUser form-group col-sm-8" runat="server" id="lbGoogleUrlCodes" >
                    <dnn:Label runat="server" resourcekey="TrackGoogleUrlCodes" suffix=":" />
                    
                    <table border="0" with="100%">
                     <tr  valign="top">
                      <td>
                          <asp:CheckBox ID="cbTrackGoogleUrlCodes" CssClass="NormalTextBox" runat="server" />&nbsp;&nbsp;</td>
                      <td style="width:400px;word-wrap:break-word">
                          <%= LocalizeString("GoogleUrlCodeMsg.Text") %>
                      </td>
                     </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="SendEmailToUser" suffix=":"></dnn:label>
                    <asp:CheckBox ID="cbSendEmailToUser" CssClass="NormalTextBox" runat="server" /><br />
                </div>
            </div>            
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:Label runat="server" font-bold="True" resourcekey="FromEmail" suffix=":"></dnn:Label>
                    <asp:TextBox ID="txtFromEmail" CssClass="form-control" runat="server"/>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:Label runat="server" font-bold="True" resourcekey="InputEmail" suffix=":"></dnn:Label>
                    <asp:TextBox ID="tbInputEmail" CssClass="form-control" runat="server"/>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:Label runat="server" font-bold="True" resourcekey="ExternalReplyTo" suffix=":"></dnn:Label>
                    <asp:TextBox ID="tbExternalReplyTo" CssClass="form-control" runat="server"/>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:Label runat="server" font-bold="True" resourcekey="InternalReplyTo" suffix=":"></dnn:Label>
                    <asp:TextBox ID="tbInternalReplyTo" CssClass="form-control" runat="server"/>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:label runat="server" font-bold="True" resourcekey="SendEmails" associatedcontrolid="txtEmails" suffix=":"></dnn:label>
                    <br />
                    <asp:TextBox ID="txtEmails" CssClass="form-control" Height="200" TextMode="MultiLine" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:label runat="server" font-bold="True" resourcekey="EmailSubject" associatedcontrolid="txtEmailSubject" suffix=":"></dnn:label>
                    <asp:TextBox runat="server" ID="txtEmailSubject" CssClass="form-control" />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:label runat="server" font-bold="True" resourcekey="EmailTemplate" associatedcontrolid="txtEmailTemplate" suffix=":"></dnn:label>
                    <asp:TextBox ID="txtEmailTemplate" CssClass="form-control" TextMode="MultiLine" Height="200" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:label runat="server" id="lblEmailMessageFormatting" resourcekey="EmailFormatStyle" suffix=":"></dnn:label>
                    <asp:DropDownList runat="server" ID="ddlEmailFormatStyle" CssClass="form-control">
                        <asp:ListItem Text="Standard" Value="Standard"></asp:ListItem>
                        <asp:ListItem Text="Table" Value="Table"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:Label runat="server" font-bold="true" ResourceKey="AfterSubmittedAction" suffix=":"></dnn:Label>
                    <asp:DropDownList runat="server" ID="ddlAfterSubmitAction"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:Label runat="server" font-bold="true" ResourceKey="SubmitCallback" suffix=":"></dnn:Label>
                    <asp:TextBox runat="server" ID="tbSubmitCallback" CssClass="form-control" />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:label runat="server" font-bold="True" resourcekey="RedirectURL" associatedcontrolid="txtRedirectURL" suffix=":"></dnn:label>
                    <asp:TextBox runat="server" ID="txtRedirectURL" CssClass="form-control" />
                </div>
            </div>
            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:Label runat="server" font-bold="true" ResourceKey="SubmittedMessage" suffix=":"></dnn:Label>    
                    <dnn:texteditor id="txtSubmittedMessage" width="100%" height="400" runat="server"></dnn:texteditor><br />
                </div>
            </div>
            <div class="row">
                <div style="font-size: 16px; text-align:center; width:80%; margin:0 auto; color:#d60404;">
                  <strong>Danger!</strong> If there are existing form submissions, you must export them before changing field names or data the for prior field can no longer be exported.
                </div>
                <br />
            </div>

            <div class="row">
                <div class="dnnFormItem form-group col-sm-8">
                    <dnn:label runat="server" associatedcontrolid="txtFormSetup" resourcekey="PasteJSON" suffix=":"></dnn:label>
                    <asp:TextBox ID="txtFormSetup" BackColor="#FCF8E3" CssClass="form-control" Height="500" TextMode="MultiLine" runat="server" />
                    <asp:CustomValidator id="rfvJsonValidation" controltovalidate="txtFormSetup" errormessage="Invalid Json" OnServerValidate="ValidateJson" runat="Server" CssClass="dnnFormMessage dnnFormError"/>
                    <br />
                </div>
            </div>
            <div class="dnnFormItem">
                <dnn:label runat="server" resourcekey="IgnorePostBackInMainView" suffix=":"></dnn:label>
                <asp:CheckBox ID="cbIgnorePostBackInMainView" CssClass="NormalTextBox" runat="server" /><br />
            </div>

            <div class="row">
                <div class="dnnFormItem">
                    <dnn:label runat="server" resourcekey="IncludeWebPageSubmittedFrom" suffix=":"></dnn:label>
                    <asp:CheckBox ID="cbIncludeWebPageSubmittedFrom" CssClass="NormalTextBox" runat="server" /><br />
                </div>
            </div>

            <div class="row">
                <div class="dnnFormItem">
                    <label class="dnnLabel" style="position: relative;">ModuleId, TabId, TabModuleId: </label>
                    <span><%=ModuleId.ToString() + ", " + TabId.ToString() + ", " + TabModuleId.ToString() %></span>
                </div>
            </div>

        </div>
    </fieldset>
</div>

<script type="text/javascript">
    (function($, Sys) {

        function setUpMyDnnModule() {
            // your initialization code here...
            $('#fmPanelId').dnnPanels();
            $('#fmExternalLibraries').dnnTabs();
        }

        $(document).ready(function () {

            setUpMyDnnModule();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(function() {
                setUpMyDnnModule();
            });
        });

    }(jQuery, window.Sys));
</script>

