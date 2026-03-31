<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="EditCategoryEmailForm.ascx.cs"
    Inherits="DNNCentric.Modules.MultilanguageForms.EditCategoryEmailForm" %>
     <%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<table width="100%" >
    <tr>
        <td align="left" valign="top" colspan="2">
            <asp:Label ID="lblHeadingTxt" runat="server" resourcekey="lblTitleAddUpdate.Text"
                CssClass="SubHead"></asp:Label>
        </td>
    </tr>
    <tr style="height: 13px">
       <td align="left"  colspan="2">
           
        </td>
    </tr>
    <tr>
          <td style="padding-bottom:10px">
             <asp:Label ID="lblIsActive" runat="server" ResourceKey="lblIsActive" CssClass="SubHead"></asp:Label> &nbsp;
             <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" />
         </td>
        </tr>
    <tr>
        <td align="left" valign="middle" style="width:25%">
            <asp:Label ID="lblCategory" runat="server"  resourcekey="lblCategory.Text" CssClass="SubHead"></asp:Label>
        </td>
        <td align="left" valign="top" >
            <asp:DataList ID="DataListNewCategory" Width="100%" runat="server" 
                CellPadding="4" ForeColor="#333333">
            
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <ItemStyle  />
                <ItemTemplate>
                    <asp:TextBox ID="txtCategoryName" Width="80%" runat="server" Text="<%# ((CategoryContent)Container.DataItem).CategoryName %>" CssClass="CFC_NormalTextBox"></asp:TextBox>
                    <asp:Label ID="lblCultureTxt" runat="server" CssClass="DCC_NormalText" Text="<%# ((CategoryContent)Container.DataItem).Culture %>"></asp:Label>
                </ItemTemplate>
                <AlternatingItemStyle BackColor="White" />
                <ItemStyle BackColor="#F3F5F2" />
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="left" valign="top">
        <dnn:Label runat="server" ID="lblLanguageHelpText" Visible="false" CssClass="CFC_NormalTextBox" ResourceKey="lblMLHelpText"  />
        </td>
        </tr>
    <tr>
        <td colspan="2" align="center" valign="top">
        <%--<asp:Label ID="lblLanguageHelpText" Visible="false" ForeColor="GrayText" runat="server" Font-Size="Small" Text="<b>Tip:</b> Since you have enabled more than one language on your site,<br/>you can keep category names in different languages."></asp:Label>--%>
        
            <asp:Label ID="lblErrorMessage" Visible="false" ForeColor="Red" runat="server" Font-Size="Smaller"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center" valign="top">
            <asp:LinkButton ID="lnkSave" runat="server" resourcekey="lnkSave.Text" Visible="false" CssClass="NormalBold"
                OnClick="lnkSave_Click"></asp:LinkButton>
            <asp:LinkButton ID="lnkUpdate" runat="server" Visible="false" resourcekey="lnkUpdate.Text" CssClass="NormalBold"
                OnClick="lnkUpdate_Click"></asp:LinkButton>
            &nbsp;<asp:LinkButton ID="lnkBack" runat="server" resourcekey="lnkBack.Text" CssClass="NormalBold"
                OnClick="lnkBack_Click"></asp:LinkButton>
        </td>
    </tr>
</table>
