<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="AddEmailWorkFlow.ascx.cs" Inherits="DNNCentric.MultilanguageForms.AddEmailWorkFlow" %>

    <%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
    <%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
    <%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/sectionheadcontrol.ascx"%>

<table width="800px" cellpadding="0" cellspacing="0" >

<tr>
<td>
<dnn:SectionHead ID="secEmailSettings" IsExpanded="true" CssClass="Head" runat="server"
                ResourceKey="secEmailSettings.Text" Section="tblEmailSettings" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
                <br />
<table width="100%" id="tblEmailSettings" runat="server">
        <tr style="height:12px">
        <td colspan="2">
        &nbsp;
        </td>       
        </tr>
        <tr>
          <td style="padding-bottom:10px">
             <asp:Label ID="lblIsActive" runat="server" ResourceKey="lblIsActive" CssClass="SubHead"></asp:Label> &nbsp;
             <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" />
         </td>
        </tr>
         <tr>
        <td colspan="2" align="left" valign="top">
        <asp:Label ID="lblFromEmailText" runat="server" CssClass="SubHead" resourcekey="lblFromEmailText.Text" ></asp:Label><br />
        <asp:DropDownList ID="ddlFromEmailID" runat="server" CssClass="CFC_NormalTextBox">
            </asp:DropDownList>
            <asp:TextBox ID="txtFromEmail" Width="200px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
        </td>
        </tr>
    
     <tr runat="server" id="trCultureDDL" >
        <td colspan="2" align="left" valign="top">
        <asp:Label ID="lblSelectCulture" runat="server" CssClass="SubHead" resourcekey="lblSelectCulture.Text" ></asp:Label><br />
        <asp:DropDownList ID="ddlCulture" runat="server" CssClass="CFC_NormalTextBox">
            </asp:DropDownList>
        </td>
       
        </tr>
    <tr>
        <td align="left" valign="top" colspan="2">
            <asp:Label ID="lblWorkFlowName" runat="server" resourcekey="lblWorkFlowName.Text" CssClass="SubHead" ></asp:Label>
        </td>
        
    </tr>
    <tr>
        <td align="left" valign="top" style="white-space:nowrap" colspan="2">
            <asp:TextBox ID="txtWorkFlowName" Width="100%" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
            <%--<asp:RequiredFieldValidator ID="rfvWorkFlowName" runat="server" ControlToValidate="txtWorkFlowName"
                Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>--%>
       </td>        
    </tr>
    <tr>
        <td align="left" valign="top" colspan="2">
            <asp:Label ID="lblEmailSubject" runat="server" resourcekey="lblEmailSubject.Text" CssClass="Normal" ></asp:Label>
        </td>
       
    </tr>
    <tr>
        <td align="left" valign="top" style="white-space:nowrap" colspan="2">
            <asp:TextBox ID="txtEmailSubject" runat="server" Height="22px" Width="100%" CssClass="CFC_NormalTextBox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmailSubject" runat="server" ControlToValidate="txtEmailSubject"
                Display="Dynamic" ErrorMessage="*" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
        
    </tr>
    <tr>
        <td align="left" valign="top">
            <asp:Label ID="lblEmailTemplate" runat="server" CssClass="SubHead" resourcekey="lblEmailTemplate.Text" ></asp:Label>
        </td>
        <td align="left" valign="top">
            <asp:Label ID="lblShowTokens" runat="server" CssClass="SubHead" resourcekey="lblShowTokens.Text" ></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top" style="width:75%">
        <dnn:TextEditor ID="txtEmailTemp" Width="100%" Height="570px" runat="server" CssClass="CFC_NormalTextBox" ></dnn:TextEditor>
            <asp:RequiredFieldValidator ID="rfvEmailTemplate" runat="server" ControlToValidate="txtEmailTemp"
                Display="Dynamic" ErrorMessage="*" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
        <td align="left" valign="top" style="padding-top:35px">
            <div style="background-color:Transparent; width: 200px; height: 350px; overflow: scroll;
                border: 1px solid  #111">
                <dnn:Label ID="lblAutoFillAllFields" ResourceKey="lblAutoFillAllFields" runat="server" CssClass="Normal"></dnn:Label>
                <dnn:Label ID="lblAutoFillOptedFields" ResourceKey="lblAutoFillOptedFields" runat="server" CssClass="Normal"></dnn:Label>
                <asp:Label ID="lblAvailableTokens" Style=" overflow: scroll;" runat="server" CssClass="Normal"></asp:Label>
                
            </div>
            <asp:Label ID="lblNote" runat="server" resourcekey="lblNote" CssClass="Normal"></asp:Label>
        </td>
    </tr>
   <%-- <tr>
        <td align="left" valign="top">
            <asp:RadioButtonList ID="rblUserMail" runat="server" CssClass="Normal" CellSpacing="0"
                CellPadding="0" Width="80%" AutoPostBack="true" Height="21px" RepeatDirection="Horizontal"
                OnSelectedIndexChanged="rblUserMail_SelectedIndexChanged">
                <asp:ListItem Value="SendEmailTo" Selected="True" ResourceKey="SendEmailTo"></asp:ListItem>
                <asp:ListItem Value="DNNRole" ResourceKey="DNNRole"></asp:ListItem>
                <asp:ListItem Value="DnnUser" ResourceKey="DNNUser"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td align="left" valign="top">
        </td>
    </tr>--%>
    <tr>
        <td align="left" valign="top">           
            <asp:Label CssClass="SubHead" ID="lblEmail" resourcekey="lblEmail.Text" 
                Visible="true" runat="server"></asp:Label>
            <asp:Label ID="lblSendEmailToRoles" resourcekey="lblSendEmailToRoles.Text"  CssClass="SubHead" runat="server"
                Visible="False"></asp:Label>
            <asp:Label ID="lblSendEmailToUsers" resourcekey="lblSendEmailToUsers.Text"  CssClass="SubHead" runat="server"
                Visible="False"></asp:Label>
         <asp:DropDownList ID="ddlUserMail" runat="server" AutoPostBack="true" 
                onselectedindexchanged="ddlUserMail_SelectedIndexChanged" CssClass="CFC_NormalTextBox" >
          <asp:ListItem Value="SendEmailTo" Selected="True" ResourceKey="liCustom"></asp:ListItem>
          <asp:ListItem Value="DNNRole" ResourceKey="liSelDNNRole"></asp:ListItem>
                <asp:ListItem Value="DnnUser" ResourceKey="liSelDNNUser"></asp:ListItem>
         
         </asp:DropDownList>
        </td>
        <td align="left" valign="top">
           
            <asp:Label ID="lblAvailableEmailTokensText" runat="server" resourcekey="lblAvailableEmailTokensText.Text" CssClass="SubHead" ></asp:Label>
           
        </td>
    </tr>
    <tr id="trCustomTip" runat="server" visible="false">
     <td colspan="2">
     <asp:Label ID="lblCustomTip" runat="server" ResourceKey="lblCustomTip"></asp:Label>      
     </td>
    </tr>
    <tr id="trSendEmailAdvTip" runat="server" visible="false">
     <td colspan="2">     
      <dnn:Label ID="lblSendEmailTip" runat="server" ResourceKey="lblSendEmailTip" CssClass="DCC_NormalText" />
     </td>
    </tr>
    <tr id="trEmailID" runat="server" visible="true">
        <td align="left" valign="top">
            <asp:TextBox ID="txtEmail" runat="server" Width="100%" Height="139px" TextMode="MultiLine" CssClass="CFC_NormalTextBox"></asp:TextBox>
           
            <br />
            <asp:Label ID="lblCustom" resourcekey="lblCustom.Text"  CssClass="Normal"
                runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="reqValEmailList" runat="server" ControlToValidate="txtEmail"
                Display="Dynamic" ErrorMessage="*" CssClass="NormalRed"></asp:RequiredFieldValidator>            
        </td>
        <td align="left" valign="top">
         <div  id="divEmailTokens" runat="server" style=" background-color:Transparent; width:100%; overflow:scroll;
                border: 1px solid  #111">
                <asp:Label ID="lblEmailTokens" runat="server"></asp:Label>
            </div>
        </td>
        
    </tr>
    <tr>
        <td align="left" valign="top" colspan="2">
            <asp:Panel ID="pnlUser" runat="server" Visible="False">
                <div style=" width:337px; height:139px;  overflow:scroll;
                    border: 1px solid  #111">
                    <asp:CheckBoxList ID="chkUsers" runat="server" CssClass="Normal" >
                    </asp:CheckBoxList>
                </div><br />
                <asp:Label ID="lblAlertMsgNoUsersSelected" resourcekey="lblAlertMsgNoUsersSelected.Text" runat="server" CssClass="Normal" ForeColor="#FF3300"
                     Visible="False"></asp:Label>
            </asp:Panel>
            <asp:Panel ID="pnlDNNRole" runat="server" Visible="False">
                <div style=" width: 337px; height: 139px; overflow: scroll;
                    border: 1px solid  #111">
                    <asp:CheckBoxList ID="chkRoles" runat="server" CssClass="Normal" ></asp:CheckBoxList>
                   
                </div><br />
                <asp:Label ID="lblAlertMsgNoRoleSelected" resourcekey="lblAlertMsgNoRoleSelected.Text" runat="server" CssClass="Normal" ForeColor="#FF3300"
                     Visible="False"></asp:Label>
            </asp:Panel>            
        </td>
       
    </tr>
    <tr>
    <td colspan="2">
    <asp:label ID="lblCCEmailid" runat="server" CssClass="SubHead" ResourceKey="CCMailids.Text"></asp:label>
    </td>
    </tr>
    <tr><td colspan="2">
    <asp:TextBox ID="txtCCEmailid" runat="server" TextMode="MultiLine" Width="100%" Rows="2" CssClass="CFC_NormalTextBox"></asp:TextBox>

    </td></tr>
    <tr>
    <td colspan="2">
    <asp:Label ID="lblBccEmailid" runat="server" CssClass="SubHead" resourcekey="BCEmailid.Text" ></asp:Label>
    
    </td>
    </tr>
    <tr><td colspan="2">
    <asp:TextBox ID="txtBCCEMailids" runat="server" TextMode="MultiLine" Width="100%" Rows="2" CssClass="CFC_NormalTextBox"></asp:TextBox>
    </td></tr>
    
</table>
</td>
</tr>
<tr>
<td>
<dnn:SectionHead ID="shAttachment" IsExpanded="false" CssClass="Head" runat="server"
                ResourceKey="secAttachment.Text" Section="tblAttachment" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
                <br />
    <table id="tblAttachment" runat="server" width="100%" >
    <tr id="trFirstAttHeader" runat="server">
    <td colspan="2">
    <asp:label ID="lblFirstAttachment" runat="server" CssClass="SubHead" ResourceKey="FirstAttachemnt.Text"></asp:label>
    </td>
    </tr>
    <tr><td colspan="2">
    <asp:FileUpload ID="fuFirstAttachment" runat="server"  />
    &nbsp;
    <asp:LinkButton ID="lnkUploadfirstAtt" runat="server" Text="Upload" 
            CssClass="Normal" onclick="lnkUploadfirstAtt_Click" 
            CausesValidation="False"></asp:LinkButton>
    &nbsp;
    <asp:label ID="lblFirstAttPath" runat="server" CssClass="Normal"></asp:label>
    &nbsp;
    
    <asp:LinkButton ID="lnkRemoveFirstAtt" runat="server" Text="Remove" 
            CssClass="Normal" onclick="lnkRemoveFirstAtt_Click" 
            OnClientClick="javascript:return confirm('Are you sure want to delete ?');" 
            CausesValidation="False" ></asp:LinkButton>
    <asp:HiddenField id="hfFirstAttFileName" runat="server" />
    <asp:HiddenField ID="hfFirstTempAttFileName" runat="server" />
    </td>
    </tr>
    <tr>
    <td colspan="2">    
    <asp:Label ID="lblInvalidAttFA" runat="server" CssClass="Normal" Visible="false"></asp:Label>
    </td>
    </tr>
    <tr id="trSecondAttHeader" runat="server">
    <td colspan="2">
    <asp:label ID="lblSecondAttachment" runat="server" CssClass="SubHead" ResourceKey="FirstAttachemnt.Text"></asp:label>
    </td>
    </tr>
    <tr><td colspan="2">
    <asp:FileUpload ID="fuSecondAttachment" runat="server" />
    &nbsp;
    <asp:LinkButton ID="lnkUploadSecondAtt" runat="server" Text="Upload" 
            CssClass="Normal" onclick="lnkUploadSecondAtt_Click" 
            CausesValidation="False"></asp:LinkButton>
    &nbsp;
    <asp:label ID="lblSecondAttPath" runat="server" CssClass="Normal"></asp:label>
    &nbsp;
    <asp:LinkButton ID="lnkRemovesecondAtt" runat="server" Text="Remove" 
            CssClass="Normal" onclick="lnkRemovesecondAtt_Click" 
            OnClientClick="javascript:return confirm('Are you sure want to delete?');" 
            CausesValidation="False"></asp:LinkButton>
    <asp:HiddenField id="hfSecondAttFileName" runat="server" />
    <asp:HiddenField ID="hfSecondTempAttFileName" runat="server" />
    </td></tr>
    <tr>
    <td colspan="2">    
     <asp:Label ID="lblInvalidAttSA" runat="server" CssClass="Normal" Visible="false"></asp:Label>
    </td>
    </tr>
    <tr id="trTheirdAttHeader" runat="server">
    <td colspan="2">
    <asp:label ID="lblTheirdAttachment" runat="server" CssClass="SubHead" ResourceKey="FirstAttachemnt.Text"></asp:label>
    </td>
    </tr>
    <tr><td colspan="2">
    <asp:FileUpload ID="fuTheirdAttachment" runat="server" />
    &nbsp;
    <asp:LinkButton ID="lnkUploadTheirdAtt" runat="server" Text="Upload" 
            CssClass="Normal" onclick="lnkUploadTheirdAtt_Click" 
            CausesValidation="False"></asp:LinkButton>
    &nbsp;
    <asp:label ID="lblTheirdAttPath" runat="server" CssClass="Normal"></asp:label>
    &nbsp;
    <asp:LinkButton ID="lnkRemoveTheirdAtt" runat="server" Text="Remove" 
            CssClass="Normal" onclick="lnkRemoveTheirdAtt_Click" 
            OnClientClick="javascript:return confirm('Are you sure want to delete?');" 
            CausesValidation="False"></asp:LinkButton> 
    <asp:HiddenField id="hfTheirdAttFileName" runat="server" />
    <asp:HiddenField ID="hfTheirdTempAttFileName" runat="server" />
    </td></tr>
    <tr>
    <td colspan="2">    
    <asp:Label ID="lblInvalidAttTA" runat="server" CssClass="Normal" Visible="false"></asp:Label>
    </td>
    </tr>
    <%--<tr>
    <td align="center">
    <asp:Button ID="FinalUpload" runat="server" Text="Upload" 
            OnClick="FinalUpload_Click" />
    </td>
    </tr>--%>
    </table>            
</td>
</tr>
<tr>
 <td>
   <dnn:SectionHead ID="shAppoinment" IsExpanded="false" CssClass="Head" runat="server" ResourceKey="secAppointment.Text" Section="tblAppointment" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
 MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
  <br />
   <table id="tblAppointment" runat="server" width="90%" cellpadding="4" cellspacing="0">
       <tr>
         <td colspan="4" class="Normal">
          <asp:Label ID="lblAppontmentHelp" runat="server" ResourceKey="lblAppontmentHelp" ></asp:Label>
         </td>
       </tr>
       <tr>
       <td colspan="2" class="SubHead">
         <dnn:Label ID="lblEnableAppoinment" runat="server" ResourceKey="lblEnableAppoinment" CssClass="DCC_NormalText" /> 
       </td>
       <td colspan="2">
         <asp:CheckBox ID="chkEnableAppoinment" runat="server" />
       </td>
       </tr>
        <tr>
         <td class="SubHead" colspan="2">
         <dnn:Label ID="lblDateStart" runat="server" ResourceKey="lblDateStart" CssClass="DCC_NormalText" />
         </td>
         <td colspan="2">
          <table width="100%">
            <tr>
             <td style="width:30%">
             <asp:TextBox ID="txtDateStart" runat="server" CssClass="CFC_NormalTextBox" ></asp:TextBox>&nbsp;             
             </td>
            
             <td style="width:10px">
                <asp:Label ID="lblStartDtErr" runat="server" Text="" ForeColor="Red" ></asp:Label>
             </td>
             <td style="width:20%">
              <dnn:label ID="lblStartTime" runat="server" ResourceKey="lblStartTime" CssClass="DCC_NormalText" />
              </td>
              <td>
              <asp:TextBox ID="txtStartTime" runat="server" Width="116px" CssClass="CFC_NormalTextBox" ></asp:TextBox>            
              <asp:Label ID="lblStartTErr" runat="server" Text="" ForeColor="Red" ></asp:Label>
             </td>           
            </tr>
          </table>
         </td>        
         </tr>
         <tr>
         <td class="SubHead" colspan="2">
         <dnn:Label ID="lblDateEnd" runat="server" ResourceKey="lblDateEnd"  CssClass="DCC_NormalText" />
         </td>
         <td colspan="2">
          <table width="100%">
           <tr>
            <td style="width:30%">
             <asp:TextBox ID="txtDateEnd" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;             
            </td>
            <td style="width:10px">            
             <asp:Label ID="lblEndDtErr" runat="server" Text="" ForeColor="Red" ></asp:Label>              
            </td>
            <td style="width:20%">
             <dnn:Label ID="lblEndTime" runat="server" ResourceKey="lblEndTime" CssClass="DCC_NormalText" />
             </td>
             <td>
             <asp:TextBox ID="txtEndTime" runat="server" Width="116px" CssClass="CFC_NormalTextBox"></asp:TextBox>            
             <asp:Label ID="lblEndTErr" runat="server" Text="" ForeColor="Red" ></asp:Label>
           </td>
           </tr>
          </table>
         </td>         
         
      </tr>
      <tr>
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblCategories" runat="server" ResourceKey="lblCategories" CssClass="DCC_NormalText" />
         </td>          
         <td colspan="2">
         <asp:TextBox ID="txtCategories" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
         </td>
      </tr>
      <tr>
         <td align="left" class="SubHead" colspan="2">
         <dnn:Label ID="lblSummery" runat="server" ResourceKey="lblSummery"  CssClass="DCC_NormalText" />
         </td> 
        
         <td colspan="2">
         <asp:TextBox ID="txtSummery" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Rows="2" Columns="40"></asp:TextBox>
         </td>
      </tr>
      <tr>
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblLocation" runat="server" ResourceKey="lblLocation" CssClass="DCC_NormalText" />
         </td> 
         
         <td colspan="2">
         <asp:TextBox ID="txtLocation" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Rows="2" Columns="40"></asp:TextBox>
         </td>
      </tr>
      <tr>
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblDescription" runat="server" ResourceKey="lblDescription" CssClass="DCC_NormalText" />
         </td> 
         
         <td colspan="2">
         <asp:TextBox ID="txtDescription" runat="server" Width="75%" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Rows="6" Columns="40"></asp:TextBox>
         </td>
      </tr>
      <tr style="display:none">
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblPriority" runat="server" ResourceKey="lblPriority" CssClass="DCC_NormalText" />
         </td> 
        
         <td colspan="2">
         <%--<asp:TextBox ID="txtPriority" runat="server" Width="75%"></asp:TextBox>--%>
         <asp:DropDownList ID="ddlPriority" runat="server" CssClass="CFC_NormalTextBox" >
           <asp:ListItem Text="Low" Value="Low"></asp:ListItem>
           <asp:ListItem Text="Medium" Value="Medioum"></asp:ListItem>
           <asp:ListItem Text="High" Value="High"></asp:ListItem>
         </asp:DropDownList>
         </td>
      </tr>
       <tr>
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblAlarmTrigger" runat="server" ResourceKey="lblAlarmTrigger" CssClass="DCC_NormalText" />
         </td>
        
         <td colspan="2">
         <asp:TextBox ID="txtAlarmTrigger" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;
         <asp:DropDownList ID="ddlAlarmInterval" runat="server" CssClass="CFC_NormalTextBox">          
          <asp:ListItem Text="Minute" Value="Minute"></asp:ListItem>
          <asp:ListItem Text="Day" Value="Day"></asp:ListItem>          
         </asp:DropDownList>
         </td>
      </tr>
       <tr style="display:none">
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblAlarmAction" runat="server" ResourceKey="lblAlarmAction" CssClass="DCC_NormalText" />
         </td> 
        
         <td colspan="2">
         <%--<asp:TextBox ID="txtAlarmAction" runat="server" Width="75%"></asp:TextBox>--%>
         <asp:DropDownList ID="ddlAlarmaction" runat="server" CssClass="CFC_NormalTextBox">
          <asp:ListItem Text="Take Action" Value="1"></asp:ListItem>
          <asp:ListItem Text="Do Nothing" Value="1"></asp:ListItem>
         </asp:DropDownList>
         </td>
      </tr>
       <tr>
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblAlarmDescription" runat="server" ResourceKey="lblAlarmDescription" CssClass="DCC_NormalText" />
         </td> 
         
         <td colspan="2">
         <asp:TextBox ID="txtAlarmDescription" runat="server" Width="75%" CssClass="CFC_NormalTextBox"></asp:TextBox>
         </td>
      </tr>
       <tr>
         <td align="left" class="SubHead" colspan="2" >
         <dnn:Label ID="lblMethod" runat="server" ResourceKey="lblMethod" CssClass="DCC_NormalText" />
         </td> 
         
         <td colspan="2">
         <asp:DropDownList ID="ddlMethod" runat="server" CssClass="CFC_NormalTextBox">
          <asp:ListItem Text="publish" Value="publish"></asp:ListItem>
          <asp:ListItem Text="request" Value="request"></asp:ListItem>
         </asp:DropDownList>
         
         </td>
      </tr>
   </table>
 
 </td>
</tr>
<tr>
<td>
<dnn:SectionHead ID="shPreCondition" IsExpanded="false" CssClass="Head" runat="server" ResourceKey="secPreCondition.Text" Section="tblPreCondition" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
 MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
<table id="tblPreCondition" runat="server" width="100%">
 <tr>
 <td align="left" class="SubHead" colspan="2" style="padding-top:20px">
 <dnn:Label ID="lblPrecondition" runat="server" ResourceKey="lblPrecondition" CssClass="DCC_NormalText" />
 </td> 
 </tr>
 <tr>
 <td colspan="2">
 <asp:TextBox ID="txtPrecondition" runat="server" Width="75%" CssClass="CFC_NormalTextBox"></asp:TextBox>
 </td>
 </tr>
 <tr>
  <td colspan="2"><asp:Label ID="lblPreConTip" runat="server" ResourceKey="lblPreConTip"></asp:Label></td>
 </tr>
 <tr>  
  <td width="100%" colspan="2">
    <asp:Label ID="lblPreConditionHelp" runat="server" resourceKey="lblPreConditionHelp" CssClass="normal"></asp:Label> 
  </td>
 </tr>
 <tr>
 <td colspan="2">
 <asp:Label ID="lblNoteFinalPreCon" runat="server" ResourceKey="lblNoteFinalPreCon" CssClass="normal"></asp:Label>
 </td>
 </tr>
</table>
</td>
</tr>
<%--<tr>
  <td style="padding-top:20px">
    <dnn:SectionHead ID="SecPDFConversion" IsExpanded="false" CssClass="Head" runat="server" ResourceKey="SecPDFConversion.Text" Section="tblPDFConversion" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
     MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
    <table id="tblPDFConversion" runat="server" width="100%">
     <tr>
      <td align="left" class="SubHead" colspan="2" style="padding-top:20px">
        <table cellpadding="0" cellspacing="0" width="100%">
         <tr>
          <td style="width:25%;">
          <dnn:Label ID="lblEnablePDFConversion" runat="server" ResourceKey="lblEnablePDFConversion" /> 
          </td>
          <td align="left">
           <asp:CheckBox ID="chkEnablePDFConversion" runat="server" />
          </td>
         </tr>
        </table>        
      </td>      
     </tr>    
      <tr>
      <td align="left" class="SubHead" colspan="2" style="padding-top:20px">
        <dnn:Label ID="lblPDFHeading" runat="server" ResourceKey="lblPDFHeading" />
      </td>
     </tr>
     <tr>
     <td colspan="2">
      <asp:TextBox ID="txtPDFHeader" TextMode="MultiLine" runat="server" Columns="80" Rows="4"></asp:TextBox>
     </td>
     </tr>
      <tr>
      <td align="left" class="SubHead" colspan="2" style="padding-top:20px">
        <dnn:Label ID="lblPDFContent" runat="server" ResourceKey="lblPDFContent" />
      </td>
     </tr>
     <tr>
     <td colspan="2">
      <asp:TextBox ID="txtPDFContent" runat="server" TextMode="MultiLine" Columns="80" Rows="12"></asp:TextBox>
     </td>
     </tr>
    </table>
  </td>
</tr>--%>
  
<tr>
<td>
<table runat="server" width="100%">
<tr>
    <td align="center" colspan="2">
    <asp:Label ID="lblUserMsg" runat="server" CssClass="Normal" ForeColor="#FF3300" Visible="False"></asp:Label>
    </td>
    </tr>
    <tr>
    <td align="center" colspan="2">
    <asp:Label ID="lblErrorWF" runat="server" CssClass="Normal" ForeColor="#FF3300" Visible="False"></asp:Label>
    </td>
    </tr>
    <%--<tr>
    <td align="center" colspan="2">
    <asp:Label ID="lblErrorSub" runat="server" CssClass="Normal" ForeColor="#FF3300" Visible="False"></asp:Label>
    </td>
    </tr>--%>
    <tr>
        <td align="center"  colspan="2" valign="top">
            &nbsp;&nbsp;
            <asp:LinkButton ID="lnkSave"  resourcekey="lnkSave.Text" runat="server" CssClass="NormalBold" OnClick="lnkSave_Click" OnClientClick="return ValidateiCalDateTime()"></asp:LinkButton>
            <asp:LinkButton ID="lnkUpdate" resourcekey="lnkUpdate.Text" runat="server" OnClientClick="return ValidateiCalDateTime()"  Visible="false" CssClass="NormalBold"
                OnClick="lnkUpdate_Click"></asp:LinkButton>
        &nbsp;<asp:LinkButton ID="lnkBack" CausesValidation="false" resourcekey="lnkBack.Text" CssClass="NormalBold" runat="server" OnClick="lnkBack_Click"></asp:LinkButton>
        
        </td>
        
    </tr>
</table>
</td>
</tr>
</table>
<script type="text/javascript">
   
   var ddltxtmode=document.getElementById('<%=ddlFromEmailID.ClientID%>');
   
   if(ddltxtmode.value!='custom')
   {
    document.getElementById('<%=txtFromEmail.ClientID%>').style.visibility="hidden";
   }
   
   function disableRowsBox()
   {
   var ddltxtmode=document.getElementById('<%=ddlFromEmailID.ClientID%>');
   
   if(ddltxtmode.value=='custom')
   {
    document.getElementById('<%=txtFromEmail.ClientID%>').style.visibility="visible";
   }
   else
   {
   document.getElementById('<%=txtFromEmail.ClientID%>').style.visibility="hidden";
   }
  }

  function ValidateiCalDateTime() {
      
      var isiCalEnable = document.getElementById('<%=chkEnableAppoinment.ClientID%>');
      var startDate = document.getElementById('<%=txtDateStart.ClientID%>');
      var startTime = document.getElementById('<%=txtStartTime.ClientID%>');
      var endDate = document.getElementById('<%=txtDateEnd.ClientID%>');
      var endTime = document.getElementById('<%=txtEndTime.ClientID%>');
      if (isiCalEnable.checked) {
          if (startDate.value == '') {
              document.getElementById('<%=lblStartDtErr.ClientID%>').innerHTML = '*';              
              return false;
          }
          else
              document.getElementById('<%=lblStartDtErr.ClientID%>').innerHTML = ''; 

          if (startTime.value == '') {
              document.getElementById('<%=lblStartTErr.ClientID%>').innerHTML = '*';          
              return false;
          }
          else
              document.getElementById('<%=lblStartTErr.ClientID%>').innerHTML = ''; 
                     
          if (endDate.value == '') {
              document.getElementById('<%=lblEndDtErr.ClientID%>').innerHTML = '*';          
              return false;
          }
          else
              document.getElementById('<%=lblEndDtErr.ClientID%>').innerHTML = ''; 
                
          if (endTime.value == '') {
              document.getElementById('<%=lblEndTErr.ClientID%>').innerHTML = '*';       
              return false;
          }
          else
              document.getElementById('<%=lblEndTErr.ClientID%>').innerHTML = ''; 
      }
      return true;
       
         
  }
   </script> 