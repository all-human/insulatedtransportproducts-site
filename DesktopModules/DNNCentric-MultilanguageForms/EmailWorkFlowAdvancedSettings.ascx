<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EmailWorkFlowAdvancedSettings.ascx.cs" Inherits="DNNCentric.MultilanguageForms.EmailWorkFlowAdvancedSettings" %>
  <%@ Register TagPrefix="dnn" TagName="HelpButton" Src="~/controls/HelpButtonControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<%--<script type="text/javascript">
    debugger;
    
        var SMTPPort = '<%= strSMTPPort %>';
        var SMTPUsername = '<%= strSMTOUsername %>';

        if (SMTPPort == '' && SMTPUsername == '') {           
            document.getElementById("<%= txtSMTPPassword.ClientID %>").value = "";           
        }
         

</script>--%>




<table cellspacing="2" cellpadding="2" border="0" style="" summary="Appearance Design Table">
  <tr>
   <td class="SubHead" style="width:250px">
     <dnn:Label ID="lblEnableCustomSMTP" runat="server" ResourceKey="lblEnableCustomSMTP" />
   </td>
   <td>
    <asp:CheckBox ID="chkEnableCustomSMTP" runat="server" Checked="false" />
   </td>
  </tr>
  <tr>
   <td class="SubHead" style="width:250px">
     <dnn:Label ID="lblSMTPServerandPort" runat="server" ResourceKey="lblSMTPServerandPort" />
   </td>
   <td>
    <asp:TextBox ID="txtSMTPServerandPort" runat="server" style="width:225px;" maxlength="256" CssClass="CFC_NormalTextBox"></asp:TextBox>
    <asp:LinkButton ID="lnkTest" runat="server" ResourceKey="lnkTest"  
           CssClass="CommandButton" onclick="lnkTest_Click"></asp:LinkButton>
   </td>
  </tr>
  <tr>   
   <td colspan="2" style="display:none;" id="tdSuccess" runat="server" align="right">
    <asp:Label ID="lblMailSendMsg" runat="server" class="NormalBold"></asp:Label>
   </td>
  </tr>  
  <tr>
   <td class="SubHead" style="width:250px">
     <dnn:Label ID="lblSMTPAuthentication" runat="server" ResourceKey="lblSMTPAuthentication" />
   </td>
   <td>
    <asp:RadioButtonList ID="rbSMTPAuthentication" runat="server"  RepeatDirection="Horizontal">
     <asp:ListItem Text="Anonymous" Value="0" ></asp:ListItem>
     <asp:ListItem Text="Basic" Value="1" Selected="True"></asp:ListItem>
     <asp:ListItem Text="NTLM" Value="2" ></asp:ListItem>
    </asp:RadioButtonList>
   </td>
  </tr>
  <tr>
   <td class="SubHead" style="width:250px">
     <dnn:Label ID="lblEnableSSL" runat="server" ResourceKey="lblEnableSSL" />
   </td>
   <td>
    <asp:CheckBox ID="chkEnableSSL" runat="server" Checked="false" />
   </td>
  </tr>
  <tr>
   <td class="SubHead" style="width:250px">
     <dnn:Label ID="lblSMTPUserName" runat="server" ResourceKey="lblSMTPUserName" />
   </td>
   <td>
      <asp:TextBox ID="txtSMTPUserName" runat="server" style="width:225px;" maxlength="256" CssClass="CFC_NormalTextBox"></asp:TextBox>
   </td>
  </tr>
  <tr>
   <td class="SubHead" style="width:250px">
     <dnn:Label ID="lblSMTPPassword" runat="server" ResourceKey="lblSMTPPassword" />
   </td>
   <td>
      <asp:TextBox ID="txtSMTPPassword" runat="server" style="width:225px;" maxlength="256" CssClass="CFC_NormalTextBox" TextMode="Password" Value="**********"></asp:TextBox>
   </td>
  </tr>
  <tr> 
   <td colspan="2" align="center">
    <asp:LinkButton ID="lnkUpdate" runat="server" ResourceKey="lnkUpdate" 
           CssClass="CommandButton" Visible="false" onclick="lnkUpdate_Click"></asp:LinkButton>&nbsp;
    <asp:LinkButton ID="lnkSave" ResourceKey="lnkSave" runat="server" 
           CssClass="CommandButton" onclick="lnkSave_Click" ></asp:LinkButton>&nbsp;
    <asp:LinkButton ID="lnkCancel" ResourceKey="lnkCancel" runat="server" 
           CssClass="CommandButton" onclick="lnkCancel_Click" ></asp:LinkButton>
   </td>
  </tr>
</table>
