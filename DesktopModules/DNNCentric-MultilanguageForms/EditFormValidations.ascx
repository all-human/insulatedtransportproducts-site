<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditFormValidations.ascx.cs" Inherits="DNNCentric.MultilanguageForms.EditFormValidations" %>

   <%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
    <%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx"%>
    <%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/sectionheadcontrol.ascx"%>

<p>
    tblFormValidation</p>

<table width="800px" cellpadding="2" cellspacing="2" >
<tr>
<td>
<dnn:SectionHead ID="sectblFormValidation" IsExpanded="true" CssClass="Head" runat="server"
                ResourceKey="tblFormValidation.Text" Section="tblFormValidation" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
                <br />
<table width="100%" id="tblFormValidation" runat="server">
     <tr>
       <td colspan="2">
        <asp:Label ID="lblActive" runat="server" ResourceKey="lblActive" CssClass="SubHead"></asp:Label> &nbsp;
        <asp:CheckBox ID="chkActive" runat="server" Checked="true" />
       </td>
     </tr>  
    <tr>
        <td align="left" valign="top" colspan="2">
            <asp:Label ID="lblFormValidationName" runat="server" resourcekey="lblFormValidationName.Text" CssClass="SubHead" ></asp:Label>
        </td>
        
    </tr>
    <tr>
        <td align="left" valign="top" style="white-space:nowrap;" >
            <asp:TextBox ID="txtFormValidationName" Width="300px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp; 
            <asp:RequiredFieldValidator ID="rfvValidationname" ControlToValidate="txtFormValidationName" runat="server" ErrorMessage="*" CssClass="NormalRed"></asp:RequiredFieldValidator>          
       &nbsp;
         <asp:Label ID="lblNameError" runat="server" ResourceKey="lblNameError.Text" Visible="false"></asp:Label>
       </td>        
    </tr>
   
    <tr>
        <td align="left" valign="top">
            <asp:Label ID="lblFormValidationCondition" runat="server" CssClass="SubHead" resourcekey="lblFormValidationCondition.Text" ></asp:Label>
        </td>
        <td align="left" valign="top">
            <asp:Label ID="lblShowTokens" runat="server" CssClass="SubHead" resourcekey="lblShowTokens.Text" ></asp:Label>
        </td>
    </tr>
    <tr>
     <td colspan="2">
       <asp:Label ID="lblFVHelp" runat="server" ResourceKey="lblFVHelp.Text" CssClass="Normal"></asp:Label>
     </td>
    </tr>
    <tr>
        <td align="left" valign="top" style="width:75%">        
                <asp:TextBox ID="txtFormValidationCondition" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Rows="16" Columns="70"></asp:TextBox>
        </td>
        <td align="left" valign="top" >
            <div style="background-color:Transparent; width: 200px; height: 250px; overflow: scroll;
                border: 1px solid  #111">
               
                <asp:Label ID="lblAvailableTokens" Style=" overflow: scroll;" runat="server" CssClass="Normal"></asp:Label>
                
            </div>
           
        </td>
    </tr>
    <tr>
    <td colspan="2" style="padding-top:10px" >
     <asp:Label ID="lblExamples" runat="server" ResourceKey="lblExamples.Text" CssClass="SubHead"></asp:Label>
    </td>
    </tr>
    <tr>  
  <td width="100%" colspan="2">
    <asp:Label ID="lblPreConditionHelp" runat="server" resourceKey="lblPreConditionHelp" CssClass="normal"></asp:Label> 
  </td>
 </tr>
 <tr>
 <td colspan="2"  >
 <asp:Label ID="lblNoteFinalPreCon" runat="server" ResourceKey="lblNoteFinalPreCon" CssClass="normal"></asp:Label>
 </td>
 </tr>
    <tr align="left">
        <td colspan="2" style="padding-top:10px">
            <asp:DataList ID="dlstErrorMsg" runat="server" width="100%" BackColor="White" BorderWidth="1px" CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <ItemTemplate>
                    <table id="tblML" runat="server" width="100%">
                        <tr>
                            <td style="width:20%">
                                <asp:HiddenField ID="hfFormValidationCulId" runat="server" Value='<%#((FormValidations)Container.DataItem).formvalidationcultureid %>' />
                                <asp:HiddenField ID="hfCulture" runat="server"  Value='<%#((FormValidations)Container.DataItem).Culture %>' />
                                <asp:Label ID="lblErrorMsg" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblErrorMsg.Text",LocalResourceFile),((FormValidations)Container.DataItem).Culture) %>'  CssClass="DCC_NormalText"></asp:Label>
                            </td>
                            <td style="width: 75%">
                                <asp:TextBox ID="txtError" runat="server" TextMode="MultiLine" Width="100%" CssClass="CFC_NormalTextBox" Text="<%# ((FormValidations)Container.DataItem).ErrorMessage %>"></asp:TextBox>
                            </td>
                            
                        </tr>
                       
                    </table>
                </ItemTemplate>
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </td>
    </tr>
    <tr>
     <td colspan="2" style="padding-top:2px;">&nbsp;</td>
    </tr>
    <tr>
     <td colspan="2" class="SubHead">
        <asp:Label ID="lblHighlightedfiels" runat="server" ResourceKey="lblHighlightedfiels.Text" CssClass="SubHead"></asp:Label>
     </td>
    </tr>
    <tr>
     <td colspan="2" class="SubHead">
        <asp:TextBox ID="txtHighlightedFiels" runat="server" TextMode="MultiLine" Rows="2" Columns="80" CssClass="CFC_NormalTextBox"></asp:TextBox><br />
        <asp:Label ID="lblTip" runat="server" ResourceKey="lblTip.Text" CssClass="Normal"></asp:Label>
     </td>
    </tr>    
</table>
</td>
</tr>
<tr>
<td>
<table id="Table1" runat="server" width="100%">
<tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="Small" ForeColor="Red"
                Visible="false"></asp:Label>
        </td>
    </tr>
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
      <tr >
        <td align="center"  colspan="2" valign="top">
            &nbsp;&nbsp;
            <asp:LinkButton ID="lnkSave"  resourcekey="lnkSave.Text" runat="server" CssClass="NormalBold" OnClick="lnkSave_Click"></asp:LinkButton>
            <asp:LinkButton ID="lnkUpdate" resourcekey="lnkUpdate.Text" runat="server" Visible="false" CssClass="NormalBold"
                OnClick="lnkUpdate_Click"></asp:LinkButton>
        &nbsp;<asp:LinkButton ID="lnkBack" CausesValidation="false" resourcekey="lnkBack.Text" CssClass="NormalBold" runat="server" OnClick="lnkBack_Click"></asp:LinkButton>
        
        </td>
        
    </tr>
</table>
</td>
</tr>
</table>
 
