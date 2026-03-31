<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="AddVideoStep2.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.AddVideoStep2" %>
<%@ Register TagPrefix="uc1" TagName="TagPicker" Src="ucTagPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPicker" Src="ucCategoryPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="SeriesPicker" Src="ucSeriesPicker.ascx" %>

<div class="overall">
<div class="head"><asp:Label ID="lblVideosAdded" runat="server" Text="0"></asp:Label> <asp:Label ID="Label1" runat="server" resourcekey="videosuploaded"></asp:Label></div>
<div><asp:Label ID="lblQueueStatus" runat="server" resourcekey="encodedsoon"></asp:Label></div>
</div>

<asp:Repeater ID="rptqueue" runat="server">
    <ItemTemplate>
        <div class="section">
                <div class="head"><asp:Label ID="lblFileName" runat="server" Text="<%#System.IO.Path.GetFileName(Container.DataItem.Path)%>"></asp:Label></div>
        <table>
            <tr><td class="twocolleft">
                <asp:Label ID="lblTitle" runat="server" resourcekey="Title" CssClass="SubHead block"></asp:Label>
                <div><asp:TextBox ID="txtTitle" runat="server" Width="500px" Text="<%#Container.DataItem.Title%>"></asp:TextBox></div>
                <asp:Label ID="Label2" runat="server" resourcekey="Description" CssClass="SubHead block second"></asp:Label>
                <div><asp:TextBox ID="txtDescription" runat="server" Width="500px" TextMode="MultiLine" Rows="3" Text="<%#Container.DataItem.Description%>"></asp:TextBox></div>
                <asp:Label ID="Label3" runat="server" resourcekey="Tags" CssClass="SubHead block second"></asp:Label>
                <div style="width: 500px;"><uc1:tagpicker id="ucTagpicker1" runat="server" Tags="<%#Container.DataItem.Tags%>"></uc1:tagpicker></div>
            </td><td style="vertical-align:top; padding-left:20px;">
                <asp:Label ID="Label4" runat="server" resourcekey="Categories" CssClass="SubHead block"></asp:Label>

                <div data-itemid="<%#Container.DataItem.ItemId%>">
                    <uc1:categorypicker id="ucCategoryPicker1" runat="server" LibraryId="<%#LibraryId %>" Categories="<%#Container.DataItem.Category %>">
                                            </uc1:categorypicker>

                    <asp:Label ID="Label5" runat="server" resourcekey="Series" CssClass="SubHead block second"></asp:Label>
                    <uc1:seriespicker id="ucSeriespicker1" runat="server" SetSeries="<%#GetSeries(Container.DataItem.SeriesId)%>"></uc1:seriespicker>
                </div>

                <asp:Label ID="lblItemId" runat="server" Text="<%#Container.DataItem.ItemId%>" Visible="false"></asp:Label>
            </td></tr>
        </table>
                                    
        </div>
    </ItemTemplate>
</asp:Repeater>
  
  <ul class="dnnActions dnnClear">
    <li>
        <asp:LinkButton ID="btnSave" runat="server" resourcekey="SaveNReturn" CssClass="dnnPrimaryAction btnupload" />
    </li>
  </ul>
 </asp:Panel>
