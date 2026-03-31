<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="ControlsEmailForm.ascx.cs"
    Inherits="DNNCentric.Modules.MultilanguageForms.ControlsEmailForm" %>
<div class="CF_Admin_wrapper">
<table width="100%" align="center">
    <tr>
        <td colspan="2" align="left" >
            <asp:Label ID="lblErrorMsg" runat="server" resourcekey="Error.Text" CssClass="SubHead"
                ForeColor="#FF3300" Visible="False"></asp:Label>
            <asp:Label ID="lblcheckFieldExist" runat="server" resourcekey="CheckError.Text" CssClass="SubHead"
                ForeColor="#FF3300" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="width: 35.1%; padding-left: 5px;">
            <asp:Label ID="lblControlType" runat="server"  resourcekey="ControlType.Text" CssClass="SubHead"></asp:Label>
        </td>
        <td align="left">
            <asp:DropDownList ID="ddlControlType" runat="server" OnSelectedIndexChanged="ddlControlType_SelectedIndexChanged1"
                AutoPostBack="True" Height="20px" CssClass="CFC_NormalTextBox">
                <asp:ListItem Value="textbox">TextBox</asp:ListItem>
                <asp:ListItem Value="dropdownlist">DropDownList</asp:ListItem>
                <asp:ListItem Value="listbox">ListBox</asp:ListItem>
                <asp:ListItem Value="radiobuttonlist">RadioButtonList</asp:ListItem>
                <asp:ListItem Value="fileupload">FileUpload</asp:ListItem>
                <asp:ListItem Value="checkbox">CheckBox</asp:ListItem>
                <asp:ListItem Value="checkboxlist">CheckBoxList</asp:ListItem>
                <asp:ListItem Value="datepicker">DatePicker</asp:ListItem>
                <asp:ListItem Value="timepicker">TimePicker</asp:ListItem>
                <asp:ListItem Value="dnncountrynamelist">Country Name List(English Only)</asp:ListItem>
                <asp:ListItem Value="mlcountrynamelist">Country Name List(Multi Language)</asp:ListItem>
                <asp:ListItem Value="label">Label</asp:ListItem>
                <asp:ListItem Value="hiddenfield">Hidden Field</asp:ListItem>
                <asp:ListItem Value="richtextbox">RichTextBox</asp:ListItem>
                <asp:ListItem Value="watermarktextbox">WaterMarkTextBox</asp:ListItem>
                <asp:ListItem Value="autoincrementfield">AutoIncrementField</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="width: 35.1%; padding-left: 5px;">
            <asp:Label ID="lblFieldname" runat="server" resourcekey="FieldName.Text" CssClass="SubHead"></asp:Label>
        </td>
        <td align="left">
            <asp:TextBox ID="txtFieldName" runat="server" Width="170px" CssClass="CFC_NormalTextBox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFVFieldName" runat="server" ErrorMessage="*" ControlToValidate="txtFieldName" CssClass="NormalRed"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 35.1%; padding-left: 5px;">
            <asp:Label ID="lblCategory" runat="server" resourcekey="Category.Text" CssClass="SubHead"></asp:Label>
        </td>
        <td align="left">
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="CFC_NormalTextBox">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
          <td style="width: 35.1%; padding-left: 5px;">
             <asp:Label ID="lblIsActive" runat="server" ResourceKey="lblIsActive" CssClass="SubHead"></asp:Label> 
          </td>
          <td align="left">
             <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" />
          </td>
    </tr>
    <%--<tr>
        <td colspan="2" align="left">
            <asp:Label ID="lblProperties" runat="server" resourcekey="lblProperties.Text" CssClass="SubHead"
                Font-Underline="true"></asp:Label>
        </td>
    </tr>--%>
    <tr>
        <td colspan="2" align="left" >
       
            <asp:PlaceHolder ID="phldrPlaceControls"  runat="server"></asp:PlaceHolder>
        </td>
    </tr>
   
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="lblStatusMsg" runat="server" CssClass="SubHead" ForeColor="Blue" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:LinkButton ID="lnkSave" runat="server" resourcekey="lnkSave.Text"  CssClass="NormalBold"
                OnClick="lnkSave_Click"  Visible="true"></asp:LinkButton>
            <asp:LinkButton ID="lnkUpdate" runat="server" resourcekey="lnkUpdate.Text"  CssClass="NormalBold"
                OnClick="lnkUpdate_Click"  Visible="false"></asp:LinkButton>
            <asp:LinkButton ID="lnkDelete" runat="server" resourcekey="lnkDelete.Text"  CssClass="NormalBold"
                OnClick="lnkDelete_Click"  Visible="false"></asp:LinkButton>
            <asp:LinkButton ID="lnkBack" runat="server" resourcekey="lnkBack.Text" 
                 CssClass="NormalBold"
                OnClick="lnkBack_Click" CausesValidation="False" ></asp:LinkButton>
        </td>
    </tr>
    
</table>

</div>