<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Export.ascx.cs" Inherits="ForemostMedia.Modules.FM_Distributor.Export" %>
<table class="Normal" border="0" cellpadding="3" cellspacing="0">
<tr>
    <td valign="top" style="font-weight:700;">Distributor Type:</td>
    <td><asp:RadioButtonList ID="rblType" CssClass="Normal" runat="server" /></td>
</tr>
<tr>
    <td valign="top" style="font-weight:700;">Location: </td>
    <td><asp:RadioButtonList ID="rblLocation" CssClass="Normal" runat="server" >
    <asp:ListItem Text="Domestic" Value="true" Selected="true" />
    <asp:ListItem Text="International" Value="false" />
</asp:RadioButtonList></td>
</tr>
<tr>
    <td valign="top" style="font-weight:700;">Export Style:</td>
    <td><asp:RadioButtonList ID="rblStyle" runat="server"  CssClass="Normal">
    <asp:ListItem Text="Excel" Value="true" Selected="true" />
    <asp:ListItem Text="CSV" Value="false" />
</asp:RadioButtonList></td>
</tr>
<tr>
    <td></td>
    <td><asp:Button ID="btnSearch" runat="server" Text="Export"  CssClass="Normal"
    onclick="btnSearch_Click" /></td>
</tr>
</table>

<asp:Panel ID="pnlHost" runat="server" >
    <asp:LinkButton ID="lbExportXml" runat="server" Text="Export ALL Data as Xml" 
        onclick="lbExportXml_Click"></asp:LinkButton>
    <br />
    Upload XML data: <asp:FileUpload ID="fuImportXml" runat="server" />
</asp:Panel>
