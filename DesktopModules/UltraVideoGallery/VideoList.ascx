<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoList.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoList" %>

    <asp:Panel ID="pnlVideoList" runat="server" CssClass="uvgvideolist">
        <asp:Panel ID="cellFilters" runat="server" CssClass="filters">
        <div class="Head" style="margin-bottom:10px;"><asp:Label ID="Label1" runat="server" resourcekey="Filters" CssClass="Head"></asp:Label></div>

        <asp:Panel runat="server" ID="pnlByLibrary" CssClass="section libraries">
            <asp:Label ID="Label6" runat="server" resourcekey="ByLibrary" CssClass="smallhead block"></asp:Label>
            <asp:DataList id="lstLibraries" runat="server" ItemStyle-CssClass="verticalMiddle">
	        <ItemTemplate>
            <asp:CheckBox ID="chkCategory" runat="server" Checked="true" AutoPostBack="true" Text='<%# DataBinder.Eval(Container.DataItem,"Library") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>' OnCheckedChanged="lnkPage_Click" />
        
	        </ItemTemplate>
            </asp:DataList>
            <asp:Label ID="Label7" runat="server" resourcekey="SelectionTip" CssClass="selectiontip"></asp:Label>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlByCategory" CssClass="section categories">
            <asp:Label ID="Label2" runat="server" resourcekey="ByCategory" CssClass="smallhead block"></asp:Label>
            <asp:DataList id="lstCategories" runat="server" ItemStyle-CssClass="verticalMiddle">
	        <ItemTemplate>
            <asp:CheckBox ID="chkCategory" runat="server" Checked="true" AutoPostBack="true" Text='<%# DataBinder.Eval(Container.DataItem,"Category") %>' ToolTip='<%# DataBinder.Eval(Container.DataItem,"ItemId") %>' OnCheckedChanged="lnkPage_Click" />
        
	        </ItemTemplate>
            </asp:DataList>
            <asp:Label ID="lblSelectTip" runat="server" resourcekey="SelectionTip" CssClass="selectiontip"></asp:Label>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlByDate" CssClass="section dates">
        <asp:Label ID="Label3" runat="server" resourcekey="ByDateAdded" CssClass="smallhead block"></asp:Label>
        <asp:DataList id="lstDates" runat="server" ItemStyle-CssClass="verticalMiddle">
	        <ItemTemplate>
            <asp:CheckBox ID="chkDate" runat="server" Checked="true" AutoPostBack="true" Text='<%# FormatDate(Container.DataItem) %>' CssClass='<%# Container.DataItem.ANSIYearDotMonth%>' OnCheckedChanged="lnkPage_Click" />
	        </ItemTemplate>
            </asp:DataList>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlByTag" CssClass="section">
            <asp:Label ID="Label4" runat="server" resourcekey="ByTags" CssClass="smallhead block"></asp:Label>
            <div class="verticalMiddle">
            <asp:Repeater id="rptTags" runat="server">
            <ItemTemplate>
            <asp:LinkButton ID="lnkTag" runat="server" CssClass='<%# "tag cloudlevel" + Container.DataItem.CreatedByUser.ToString()%>' Text='<%# Container.DataItem.Tag + " (" + Container.DataItem.VideoCount.ToString() + ")" %>' ToolTip="<%# Container.DataItem.ItemId%>" data-videos="<%# Container.DataItem.VideoCount%>" OnClick="lnkPage_Click"></asp:LinkButton>
            </ItemTemplate>
            </asp:Repeater>
            </div>
        </asp:Panel>

        <asp:Panel runat="server" ID="pnlSearch" CssClass="section">
        <asp:Label ID="Label5" runat="server" resourcekey="ByKeyword" CssClass="smallhead block verticalMiddle"></asp:Label>
            <div class="verticalMiddle" style="position:relative;height:20px;">
            <div style="position:absolute;left:0px;right:22px;">
            <asp:TextBox ID="txtKeyword" runat="server" Width="100%"></asp:TextBox>
            </div>
            <div style="position:absolute;width:16px;right:0px;top:2px;">
            <asp:ImageButton ID="imgSearch" runat="server" ImageUrl="~/images/view.gif" OnClick="lnkPage_Click" />
            </div>
            </div>
        </asp:Panel>
        </asp:Panel>

        <div class="thelist">

        <asp:Panel runat="server" ID="pnlAction" CssClass="actionpanel">
            <asp:panel ID="pnlView" runat="server">
            <asp:LinkButton ID="lnkGridView" runat="server" resourcekey="GridView" CssClass="gridview" OnClick="lnkPage_Click"></asp:LinkButton>
            <asp:LinkButton ID="lnkListView" runat="server" resourcekey="ListView" CssClass="listview" OnClick="lnkPage_Click"></asp:LinkButton>
            </asp:panel>
            <asp:panel ID="pnlSorting" runat="server" CssClass="sorting" onmouseover="jQuery('.sorting .options').show();" onmouseout="jQuery('.sorting .options').hide();">
                <asp:Label ID="lblSorting" runat="server" CssClass="" />
                <div class='options'>
                    <asp:LinkButton ID="lnkMostRecent" runat="server" resourcekey="MostRecent" OnClick="lnkPage_Click"></asp:LinkButton>
                    <asp:LinkButton ID="lnkMostViewed" runat="server" resourcekey="MostViewed" OnClick="lnkPage_Click"></asp:LinkButton>
                    <asp:LinkButton ID="lnkMostPopular" runat="server" resourcekey="MostPopular" Visible="false" OnClick="lnkPage_Click"></asp:LinkButton>
                    <asp:LinkButton ID="lnkMostDiscussed" runat="server" resourcekey="MostDiscussed" OnClick="lnkPage_Click"></asp:LinkButton>
                    <asp:LinkButton ID="lnkTopRated" runat="server" resourcekey="TopRated" OnClick="lnkPage_Click"></asp:LinkButton>
                    <asp:LinkButton ID="lnkAlphabetical" runat="server" resourcekey="Alphabetical" OnClick="lnkPage_Click"></asp:LinkButton>
                </div>
            </asp:panel>
    </asp:Panel>

        <asp:Panel ID="pnlListHeader" runat="server" CssClass="listheader" Visible="false">
        <asp:Label ID="lblListHeader" runat="server" CssClass="Head"></asp:Label>
        <asp:Button ID="btnShowAll" runat="server" CssClass="CommandButton" Text="Show All" OnClick="lnkPage_Click"></asp:Button>
        </asp:Panel>

        <asp:Panel ID="pnlVideos" runat="server" CssClass="videolist"><asp:Repeater ID="lstVideos" runat="server">
                <ItemTemplate></ItemTemplate>
            </asp:Repeater></asp:Panel>

        <asp:Panel ID="pnlBottomPager" runat="server" HorizontalAlign="Center">
		    <asp:DataList ID="lstPages" runat="server" ItemStyle-HorizontalAlign="Center" ItemStyle-CssClass="Normal"
                RepeatDirection="Horizontal" CssClass="pager">
                <ItemTemplate>
                    <asp:LinkButton ID="lnkPage" runat="server" CssClass="page" OnClick="lnkPage_Click" Text='<%#Container.DataItem + 1%>'>
                    </asp:LinkButton>
                    <asp:Label ID="lblPage" runat="server" Visible="false" Text='<%#Container.DataItem + 1%>'
                        CssClass="PagerDisabled"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
        </div>
    </asp:Panel>

