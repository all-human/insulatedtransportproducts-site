<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="ucSortByPicker.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.ucSortByPicker" %>
<asp:Table ID="tblContainer" runat="server" BorderWidth="0" GridLines="None" CellPadding="1"
    CellSpacing="0">
    <asp:TableRow>
        <asp:TableCell HorizontalAlign="center" Width="30">
            <asp:LinkButton ID="lnkTitle" runat="server" resourcekey="Title" CssClass="CommandButton"
                OnClick="ChangeSortBy"></asp:LinkButton>
            <asp:Label ID="lblTitle" runat="server" Visible="False" CssClass="Normal" Font-Bold="True"
                resourcekey="Title"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="10" HorizontalAlign="Center"> <img alt="separator" src="<%=ModulePath %>/images/separator.gif" /> </asp:TableCell>
        <asp:TableCell HorizontalAlign="center" Width="30">
            <asp:LinkButton ID="lnkTime" runat="server" resourcekey="Time" CssClass="CommandButton"
                OnClick="ChangeSortBy"></asp:LinkButton>
            <asp:Label ID="lblTime" runat="server" Visible="False" CssClass="Normal" Font-Bold="True"
                resourcekey="Time"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="10" HorizontalAlign="Center"> <img alt="separator" src="<%=ModulePath %>/images/separator.gif" /> </asp:TableCell>
        <asp:TableCell HorizontalAlign="center" Width="80">
            <asp:LinkButton ID="lnkDateAdded" runat="server" resourcekey="DateAdded" CssClass="CommandButton"
                OnClick="ChangeSortBy"></asp:LinkButton>
            <asp:Label ID="lblDateAdded" runat="server" Visible="False" CssClass="Normal" Font-Bold="True"
                resourcekey="DateAdded"></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="10" HorizontalAlign="Center"> <img alt="separator" src="<%=ModulePath %>/images/separator.gif" /> </asp:TableCell>
        <asp:TableCell HorizontalAlign="center" Width="30">
            <asp:LinkButton ID="lnkViews" runat="server" resourcekey="Views" CssClass="CommandButton"
                OnClick="ChangeSortBy"></asp:LinkButton>
            <asp:Label ID="lblViews" runat="server" Visible="False" CssClass="Normal" Font-Bold="True"
                resourcekey="Views"></asp:Label>
        </asp:TableCell>
        <asp:TableCell HorizontalAlign="right" Width="150" CssClass="verticalMiddle">
            <asp:CheckBox ID="chkDesendingOrder" runat="server" Checked="true" resourcekey="DesendingOrder" CssClass="Normal" AutoPostBack="true" />
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
