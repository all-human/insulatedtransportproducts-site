<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditErrorMessage.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.EditErrorMessage" %>
<table width="100%">
<tr>
<td>
<asp:Label ID="lblHeadTitle" runat="server" resourcekey="lblHeadTitle.Text" CssClass="Head" ></asp:Label>
</td>
</tr>
    <tr>
        <td align="center">
            <asp:DropDownList ID="ddlLocalizeItems" CssClass="CFC_NormalTextBox" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlLocalizeItems_SelectedIndexChanged" >
                <asp:ListItem Value="0" Text="Submit ImageButton"></asp:ListItem>
                <asp:ListItem Value="1" Text="Error Message(s)"></asp:ListItem>
                <asp:ListItem Value="2" Text="Submit Button Text"></asp:ListItem>
                <asp:ListItem Value="3" Text="Clear Button Text"></asp:ListItem>
                <asp:ListItem Value="4" Text="Captcha Text"></asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
   <tr>
   <td>
    <hr style="text-align:left; color:Black; width:100%" />
   </td>
   </tr>
    <tr>
        <td>
            <asp:PlaceHolder ID="plchldrCtrls" runat="server"></asp:PlaceHolder>
        </td>
    </tr>

</table>
