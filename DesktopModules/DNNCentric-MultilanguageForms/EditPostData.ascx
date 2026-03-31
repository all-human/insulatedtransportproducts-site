<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditPostData.ascx.cs" Inherits="DNNCentric.MultilanguageForms.EditPostData" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/sectionheadcontrol.ascx"%>
 
<script type="text/javascript" language="javascript">

    window.onload = function() {
    var Id = document.getElementById("lblTip");
    var ddlId = document.getElementById('<%= ddlScriptType.ClientID %>');
    if (ddlId.selectedIndex == 0)
    	Id.innerHTML = "<strong>For eg:</strong> AddEmployee '$(firstname)','$(lastname)',$(age)<br/>Tip: notice single quotes around string parameters";
    if (ddlId.selectedIndex == 1)
    	Id.innerHTML = "<strong>For eg:</strong>insert into employee(firstname,lastname,age)<Br/>values('$(firstname)','$(lastname)',$(age))<br/>Tip: notice single quotes around string parameters";
     }
    function OnSelectedIndexChange() {
       
        var Id = document.getElementById("lblTip");
        var ddlId = document.getElementById('<%= ddlScriptType.ClientID %>');
        if (ddlId.selectedIndex == 0)
        	Id.innerHTML = "<strong>For eg:</strong> AddEmployee '$(firstname)','$(lastname)',$(age)<br/>Tip: notice single quotes around string parameters";
        if (ddlId.selectedIndex == 1)
        	Id.innerHTML = "<strong>For eg:</strong>insert into employee(firstname,lastname,age)<Br/>values('$(firstname)','$(lastname)',$(age))<br/>Tip: notice single quotes around string parameters";
    }

</script>

<style type="text/css">
    .style1
    {
        width: 462px;
    }
</style>
 

<table width="740px" cellpadding="0" cellspacing="0" border="0">
 <tr>
    <td colspan="2" style="padding-bottom:12px">
    <asp:Label ID="lblActive" runat="server" ResourceKey="lblActive" CssClass="SubHead"></asp:Label> &nbsp;
    <asp:CheckBox ID="chkActive" runat="server" Checked="true" />
    </td>
 </tr> 
 
<tr>
<td style="padding-bottom:5px" align="left" colspan="2">
<dnn:Label ID="lblculture" runat="server" ResourceKey="lblculture" CssClass="DCC_NormalText" /> 
</td>
</tr>
<tr>
<td style="padding-bottom:5px" align="left" colspan="2">
<asp:DropDownList ID="ddlculture" runat="server" CssClass="CFC_NormalTextBox">

</asp:DropDownList>
</td>
</tr>

<tr>
<td style="padding-bottom:5px" colspan="2">
<dnn:Label ID="lblWorkflowname" runat="server" ResourceKey="lblPostWorkflowname"  CssClass="DCC_NormalText"  />
</td>
</tr>
<tr>
<td style="padding-bottom:5px" colspan="2">
<asp:TextBox ID="txtWorkflowname" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
<asp:RequiredFieldValidator runat="server" ID="RFVWorkFlowName" ControlToValidate="txtWorkflowname" ErrorMessage="*" CssClass="NormalRed" ValidationGroup="vgWorkFlowName" ></asp:RequiredFieldValidator>
<asp:Label ID="lblError" runat="server" resourcekey="lblWFNameError" ForeColor="Red" Visible="false" Font-Size="Smaller"></asp:Label>
</td>
</tr>
<tr>
<td style="padding-bottom:5px" colspan="2">
<dnn:Label ID="lblPostConnString" runat="server" ResourceKey="lblPostDtConnString" CssClass="DCC_NormalText" />
</td>
</tr>
<tr>
<td style="padding-bottom:5px" colspan="2" >
<asp:TextBox ID="txtPostDtConnString" runat="server" TextMode="MultiLine" Columns="65" Rows="2" CssClass="CFC_NormalTextBox"></asp:TextBox>
</td>


</tr>
<tr>
<td style="padding-bottom:5px" align="left" colspan="2">
<dnn:Label ID="lblscriptType" runat="server" ResourceKey="lblscriptType" CssClass="DCC_NormalText" />
</td>
</tr>
<tr> 
<td style="padding-bottom:5px" align="left" colspan="2">
<asp:DropDownList ID="ddlScriptType" runat="server" CssClass="CFC_NormalTextBox">
<asp:ListItem Text="Stored procedure" Value="1"></asp:ListItem>
<asp:ListItem Text="SQL script" Value="2"></asp:ListItem>
</asp:DropDownList>

</td>
</tr>
<tr>
<td style="padding-bottom:5px" align="left">
<dnn:Label ID="lblSqlScript" runat="server" ResourceKey="lblPostDtSqlScript" CssClass="DCC_NormalText" />
</td>
<td style="padding-bottom:5px" align="left">
<dnn:Label ID="lblTokens" runat="server" ResourceKey="lblTokens" CssClass="DCC_NormalText" />
</td>
</tr>
<tr>
<td style="padding-bottom:5px;padding-right:7px" align="left" valign="top">
<asp:TextBox ID="txtSqlScript" runat="server" TextMode="MultiLine" Columns="65"  Rows="22" CssClass="CFC_NormalTextBox" ></asp:TextBox>
</td>
<td style="padding-bottom:5px" align="left" valign="top">
            <div style="background-color:Transparent; width: 200px; height: 200px; overflow: scroll;
                border: 1px solid  #111">                
                 <dnn:Label ID="lblAutoFillAllFields" ResourceKey="lblAutoFillAllFields" runat="server" CssClass="Normal"></dnn:Label>
                 <dnn:Label ID="lblAutoFillOptedFields" ResourceKey="lblAutoFillOptedFields" runat="server" CssClass="Normal"></dnn:Label>
                <asp:Label ID="lblAvailableTokens" Style=" overflow: scroll;" runat="server" CssClass="Normal"></asp:Label>
            </div>            
      <asp:Label ID="lblNote" runat="server" resourcekey="lblNote"></asp:Label>  
</td>
</tr>
<tr>
<td style="padding-bottom:10px;" align="left" colspan="2">
<label id="lblTip" ></label>
</td>
</tr>
<tr>
<td colspan="2">
<dnn:SectionHead ID="shPreCondition" IsExpanded="false" CssClass="Head" runat="server" ResourceKey="secPreCondition.Text" Section="tblPreCondition" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
 MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
<table id="tblPreCondition" runat="server" width="100%">
 <tr><td align="left" class="SubHead" colspan="2" style="padding-top:20px">
 <dnn:Label ID="lblPrecondition" runat="server" ResourceKey="lblPrecondition" CssClass="DCC_NormalText" />
 </td> 
 </tr>
 <tr>
 <td colspan="2">
 <asp:TextBox ID="txtPrecondition" runat="server" width="70%" CssClass="CFC_NormalTextBox"></asp:TextBox>
 </td>
 </tr>
 
 <tr>
  <td colspan="2"><asp:Label ID="lblPreConTip" runat="server" ResourceKey="lblPreConTip"></asp:Label></td>
 </tr>
 <tr>  
  <td colspan="2">
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

<tr>
<td style="padding-bottom:10px;" align="left" colspan="2">
<asp:Label ID="lblSuccessfull" runat="server" resourcekey="lblSuccessfull" Visible="false" ForeColor="Green" Font-Size="Smaller"></asp:Label>
</td>
</tr>
<tr>
<td style="padding-bottom:5px;" align="center" colspan="2">
<asp:LinkButton runat="server" ID="lnksave" resourcekey="lnksave"  
        CssClass="NormalBold" onclick="lnksave_Click" ValidationGroup="vgWorkFlowName"></asp:LinkButton>
        <asp:LinkButton ID="lnkUpdate" resourcekey="lnkUpdate.Text" runat="server" Visible="false" CssClass="NormalBold"
                OnClick="lnkUpdate_Click"></asp:LinkButton>
<asp:LinkButton runat="server" ID="lnkcancel" resourcekey="lnkcancel" 
        CssClass="NormalBold" onclick="lnkcancel_Click"></asp:LinkButton>
</td>
</tr>
</table>

