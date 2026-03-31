<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="ActionOnProcessCompletion.ascx.cs"
    Inherits="DNNCentric.Modules.MultilanguageForms.ActionOnProcessCompletion" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<%@ Register TagPrefix="Portal" TagName="URL" Src="~/controls/urlcontrol.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnnSec" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<table cellpadding="2" cellspacing="0" width="100%" >
    <tr style="height: 18px">
        <td colspan="2">
        </td>
    </tr>
    <tr>
        <td align="center" valign="top" colspan="2">
            <asp:Label ID="lblSelectScreenAction" resourcekey="lblSelectScreenAction.Text" CssClass="SubHead"
                Font-Size="Small" runat="server"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlScreenActionType" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlScreenActionType_SelectedIndexChanged" CssClass="CFC_NormalTextBox">
                <asp:ListItem Selected="True" Value="0">Show Message To User</asp:ListItem>
                <asp:ListItem Value="1">Redirect User To Given URL</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr style="height: 13px">
        <td colspan="2">
        </td>
    </tr>
    <tr id="trUserMessage" runat="server">
        <td colspan="2">
            <table width="100%">
                <tr runat="server" id="trCultureDDL">
                    <td align="right">
                        <asp:Label ID="lblLanguage" runat="server" CssClass="SubHead" resourcekey="lblLanguage.Text"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlLanguages" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlLanguages_SelectedIndexChanged" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <dnn:TextEditor ID="txtThnkMessage" Width="600px" Height="400px" runat="server" CssClass="CFC_NormalTextBox"></dnn:TextEditor>
                    </td>
                    <td align="left" valign="middle">
                        <div style="background-color: Transparent; width: 200px; height: 285px; overflow: scroll;
                            border: 1px solid  #111">
                            <dnn:Label ID="lblAutoFillAllFields" ResourceKey="lblAutoFillAllFields" runat="server">
                              
 </dnn:Label>
                            <dnn:Label ID="lblAutoFillOptedFields" ResourceKey="lblAutoFillOptedFields" runat="server">
                              
</dnn:Label>
                            <asp:Label ID="lblAvailableTokens" Style="overflow: scroll;" runat="server"></asp:Label>
                        </div>
                        <asp:Label ID="lblNote" runat="server" resourcekey="lblNote"></asp:Label>
                    </td>			  
                </tr>
		    <tr>
		    <td colspan="2" style="padding-left:6px; float:left">
			<dnn:Label ID="lblConvertionTrack" runat="server" ResourceKey="lblConvertionTrack" />
		    </td>
		    </tr>
		    <tr>		    
			<td colspan="2" style="padding-left:0px">
			
		   <div style="padding-left:8px">
			<asp:TextBox ID="txtConvertionTrack" runat="server" TextMode="MultiLine" Rows="20" Width="593px" CssClass="CFC_NormalTextBox"> </asp:TextBox>
			</div>
			</td>
		    </tr>
            </table>
        </td>
    </tr>
    <tr id="trRedirectToURL" align="left" runat="server" visible="false">
        <td align="left"  style="padding-left: 0px">
            <asp:Label ID="lblRedirectToURL" CssClass="SubHead" runat="server" resourcekey="lblRedirectToURL.Text"></asp:Label>
        </td>
        <td align="left">
            <Portal:URL ID="ctrlURL" ShowFiles="false" ShowLog="false" ShowTrack="false" ShowDatabase="false" urltype="F" 
             ShowUpLoad="false" ShowUsers="false" ShowSecure="false" runat="server" />
        </td>
    </tr>
    <tr id="trQueryString" runat="server" visible="false">
        <td align="left" style="width:20%;padding-left: 0px" colspan="2">
            <dnnSec:SectionHead ID="SecQueryString" IsExpanded="true" CssClass="Head" runat="server"
                ResourceKey="QueryString.Text" Section="tblQueryString" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
                <br />
            <table id="tblQueryString" runat="server" width="40%" cellpadding="0" cellspacing="0"  >
                <tr>
                        <td align="left" style="padding-right:50px;" valign="top">
                            <asp:TextBox ID="txtQueryString" runat="server" TextMode="MultiLine" Rows="10" Columns="40" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        </td>
                        
                        <td align="left" valign="top">
                            <div style="background-color: Transparent; width: 200px; height: 160px; overflow: scroll;
                                border: 1px solid  #111">
                                <dnn:Label ID="lblAutoFillAllFields1" ResourceKey="lblAutoFillAllFields" runat="server">
                                  
</dnn:Label>
                                <dnn:Label ID="lblAutoFillOptedFields1" ResourceKey="lblAutoFillOptedFields" runat="server">
                                  
 </dnn:Label>
                                <asp:Label ID="lblAvailableTokens1" Style="overflow: scroll;" runat="server"></asp:Label>
                            </div>
                        </td>
				
                    </tr>
                    <tr><td colspan="2">
                    
                            <asp:Label ID="lblQueryUsesInstruction" CssClass="NormalBold"   runat="server" ResourceKey="QueryUsesInstruction.Text"></asp:Label>
                    </td></tr>
                
            </table>
        </td>
    </tr>
    
    <tr style="height: 13px">
        <td align="center" valign="top" colspan="2">
            <asp:Label ID="lblErrormsg" ForeColor="Red" Font-Size="Small" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:LinkButton ID="lnkSave" runat="server" resourcekey="lnkSave.Text" CssClass="NormalBold"
                OnClick="lnkSave_Click"></asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="lnkBack" runat="server" CausesValidation="false" resourcekey="lnkBack.Text"
                CssClass="NormalBold" OnClick="lnkBack_Click"></asp:LinkButton>
        </td>
    </tr>
</table>
