<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditStoredSQLQuery.ascx.cs" Inherits="DNNCentric.MultilanguageForms.EditStoredSQLQuery" %>


<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/sectionheadcontrol.ascx"%>
 
<script type="text/javascript" language="javascript">

    window.onload = function () {
        var Id = document.getElementById("lblTip");
        var ddlId = document.getElementById('<%= ddlScriptType.ClientID %>');
        if (ddlId.selectedIndex == 0)
            Id.innerHTML = "<strong>For eg:</strong> GetEmployee $(dnn_ModuleID)<br/>Tip: notice single quotes around string paramaters";
        if (ddlId.selectedIndex == 1)
            Id.innerHTML = "<strong>For eg:</strong>select * from Employee where moduleId=$(dnn_ModuleID)<br/>Tip: notice single quotes around string paramaters";
    }
    function OnSelectedIndexChange() {

        var Id = document.getElementById("lblTip");
        var ddlId = document.getElementById('<%= ddlScriptType.ClientID %>');
        if (ddlId.selectedIndex == 0)
            Id.innerHTML = "<strong>For eg:</strong> GetEmployee $(dnn_ModuleID)<br/>Tip: notice single quotes around string paramaters";
        if (ddlId.selectedIndex == 1)
            Id.innerHTML = "<strong>For eg:</strong>select * from Employee where moduleId=$(dnn_ModuleID)<br/>Tip: notice single quotes around string paramaters";
    }

</script>

<style type="text/css">
    .style1
    {
        width: 462px;
    }
</style>
 

<table width="740px" cellpadding="3" cellspacing="0" border="0">
<%--<tr>
<td style="padding-bottom:5px" align="left" colspan="2">
<dnn:Label ID="lblculture" runat="server" ResourceKey="lblculture" CssClass="SubHead"/> 
</td>
</tr>
<tr>
<td style="padding-bottom:5px" align="left" colspan="2">
<asp:DropDownList ID="ddlculture" runat="server" >

</asp:DropDownList>
</td>
</tr>--%>

<tr>
<td style="padding-bottom:5px" colspan="2">
<dnn:Label ID="lblSQLQueryName" runat="server" ResourceKey="lblSQLQueryName"  CssClass="DCC_NormalText"  />
</td>
</tr>
<tr>
<td style="padding-bottom:5px" colspan="2">
<asp:TextBox ID="txtSQLQueryName" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
<asp:RequiredFieldValidator runat="server" ID="RFVSQLQueryName" ControlToValidate="txtSQLQueryName" ErrorMessage="*" ValidationGroup="vgSQLQueryName" CssClass="NormalRed"></asp:RequiredFieldValidator>
<asp:Label ID="lblError" runat="server" resourcekey="lblSQLQueryNameError" ForeColor="Red" Visible="false" Font-Size="Smaller"></asp:Label>
</td>
</tr>
<tr>
<td style="padding-bottom:5px" colspan="2">
<dnn:Label ID="lblConnectionString" runat="server" ResourceKey="lblConnectionString" CssClass="DCC_NormalText" />
</td>
</tr>
<tr>
<td style="padding-bottom:5px" colspan="2" >
<asp:TextBox ID="txtConnectionString" runat="server" TextMode="MultiLine" Columns="65" Rows="2" CssClass="CFC_NormalTextBox"></asp:TextBox><br />
<asp:Label ID="lblConStringTip" runat="server" ResourceKey="lblConStringTip"></asp:Label>
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
<dnn:Label ID="lblSqlScript" runat="server" ResourceKey="lblSqlScript" CssClass="DCC_NormalText" />
</td>
<td style="padding-bottom:5px" align="left">
<dnn:Label ID="lblTokens" runat="server" ResourceKey="lblTokens" CssClass="DCC_NormalText" />
</td>
</tr>
<tr>
<td style="padding-bottom:5px;padding-right:7px" align="left" valign="top">
<asp:TextBox ID="txtSqlScript" runat="server" TextMode="MultiLine" Columns="65" CssClass="CFC_NormalTextBox" Rows="15"></asp:TextBox>
</td>
<td style="padding-bottom:5px" align="left" valign="top">
            <div style="background-color:Transparent; width: 220px; height: 220px; overflow: scroll;
                border: 1px solid  #111">                 
                <asp:Label ID="lblAvailableTokens" Style=" overflow: scroll;" runat="server"></asp:Label>
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
<td style="padding-bottom:10px;" align="left" colspan="2">
<asp:Label ID="lblSuccessfull" runat="server" resourcekey="lblSuccessfull" Visible="false" ForeColor="Green" Font-Size="Smaller"></asp:Label>
</td>
</tr>
<tr>
<td style="padding-bottom:5px;" align="center" colspan="2">
<asp:LinkButton runat="server" ID="lnksave" resourcekey="lnksave"  
        CssClass="NormalBold" onclick="lnksave_Click" ValidationGroup="vgSQLQueryName"></asp:LinkButton>
        <asp:LinkButton ID="lnkUpdate" resourcekey="lnkUpdate.Text" runat="server" Visible="false" CssClass="NormalBold"
                OnClick="lnkUpdate_Click"></asp:LinkButton>
<asp:LinkButton runat="server" ID="lnkcancel" resourcekey="lnkcancel" 
        CssClass="NormalBold" onclick="lnkcancel_Click"></asp:LinkButton>
</td>
</tr>
</table>

