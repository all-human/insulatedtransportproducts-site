<%@ Control Language="vb" AutoEventWireup="false" Codebehind="QueueInspector.ascx.vb" Inherits="BizModules.UltraVideoGallery.QueueInspector" %>

    <asp:DataList ID="lstQueue" runat="server" Width="100%" CellSpacing="0" CellPadding="3" CssClass="queuegrid">
    <ItemStyle CssClass="Normal"></ItemStyle>
    <HeaderStyle CssClass="header" />
    <HeaderTemplate>Index</td><td class="header">Priority</td><td class="header">Video</td><td class="header">Author</td><td class="header">Date</td><td class="header">Status</td><td class="header">Actions</HeaderTemplate>
    <ItemTemplate><%# GetIndex() %></td><td><%# Container.DataItem.Priority %></td><td><%# GetVideoSource(Container.DataItem.Path, Container.DataItem.AWSKey) %></td><td><%# BizModules.UltraVideoGallery.Utility.GetUserFullName(Container.DataItem.UserId, Container.DataItem.PortalId) %></td><td><%# GetCreatedDate(Container.DataItem.CreatedDate.ToString, SharedResourceFile) %></td><td><%# GetStatus(Container.DataItem.Status) %></td><td>
    
    <asp:Label ID="pnlToTop" runat="server" Wrap="false">
    <asp:LinkButton ID="lnkToTop" runat="server" resourcekey="MoveToTop" OnClick="lnkToTop_Click" CssClass="<%#Container.DataItem.ItemId%>"></asp:LinkButton> &nbsp;|&nbsp; 
    </asp:Label>

    <asp:LinkButton ID="lnkDelete" runat="server" resourcekey="Delete" OnClick="lnkDelete_Click" CssClass="<%#Container.DataItem.ItemId%>"></asp:LinkButton>
    </ItemTemplate>
    </asp:DataList>