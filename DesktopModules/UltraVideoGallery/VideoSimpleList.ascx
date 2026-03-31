<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoSimpleList.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoSimpleList" %>


<asp:Panel ID="pnlSimpleList" runat="server">
<asp:Panel runat="server" ID="pnlAction" CssClass="actionpanel">
<div>
    <asp:panel ID="pnlSearch" runat="server" CssClass="searchvideos verticalMiddle">
        <asp:TextBox ID="txtKeyword" runat="server" Width="120px" CssClass="script"></asp:TextBox>
        <asp:image ID="imgClear" class="clearsearch" runat="server" ImageUrl="~/Desktopmodules/UltraVideoGallery/Images/close.png" style="cursor:pointer; margin-left:-24px; " />
    </asp:panel>

    <asp:panel ID="pnlSorting" runat="server" CssClass="sorting" onmouseover="jQuery('.sorting .options').show();" onmouseout="jQuery('.sorting .options').hide();">
                <asp:Label ID="lblSorting" runat="server" CssClass="" />
                <div class='options'>
                    <asp:LinkButton ID="lnkMostRecent" runat="server" resourcekey="MostRecent"></asp:LinkButton>
                    <asp:LinkButton ID="lnkMostViewed" runat="server" resourcekey="MostViewed"></asp:LinkButton>
                    <asp:LinkButton ID="lnkMostPopular" runat="server" resourcekey="MostPopular" Visible="false"></asp:LinkButton>
                    <asp:LinkButton ID="lnkMostDiscussed" runat="server" resourcekey="MostDiscussed"></asp:LinkButton>
                    <asp:LinkButton ID="lnkTopRated" runat="server" resourcekey="TopRated"></asp:LinkButton>
                    <asp:LinkButton ID="lnkAlphabetical" runat="server" resourcekey="Alphabetical"></asp:LinkButton>
                </div>
    </asp:panel>
</div>
</asp:Panel>

<div class="simplelist">
<asp:Literal ID="lblVideos" runat="server">
</asp:Literal>
</div>
</asp:Panel>