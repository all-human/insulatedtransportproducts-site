<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="uc1" TagName="CategoryPicker" Src="ucCategoryPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoListSettings.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoListSettings" %>
     <div class="section">
        <asp:Label ID="Label1" runat="server" resourcekey="GeneralOptions" CssClass="head block"></asp:Label>
            <table cellpadding="3" width="100%">
                <tr id="trCategory" runat="server">
                    <td class="SubSubHead">
                        <dnn:Label ID="plCategory" runat="server" resourcekey="DefaultCategory">
                        </dnn:Label></td>
                    <td class="Normal">
                        <uc1:categorypicker id="ucCategoryPicker1" runat="server" MaxSelection="1"></uc1:categorypicker></td>
                </tr>
                <tr>
                    <td class="SubSubHead" width="160">
                        <dnn:Label ID="Label8" runat="server" resourcekey="DefaultSort"></dnn:Label></td>
                    <td>
                        <asp:DropDownList ID="lstTypes" runat="server" CssClass="lstTypes Normal">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plAllSortOptions" runat="server" resourcekey="AllSortOptions"></dnn:Label></td>
                    <td>
                        <asp:CheckBox ID="chkShowSortPicker" runat="server" resourcekey="Yes" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plDefaultView" runat="server" resourcekey="DefaultView">
                        </dnn:Label></td>
                    <td class="Normal">
                        <asp:RadioButton GroupName="DefaultView" ID="chkDefaultGridView" runat="server" CssClass="Normal" resourcekey="GridView" Checked="true" />
                        <asp:RadioButton GroupName="DefaultView" ID="chkDefaultListView" runat="server" CssClass="Normal" resourcekey="ListView" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plViewSwitch" runat="server" resourcekey="ViewSwitch">
                        </dnn:Label></td>
                    <td class="Normal">
                        <asp:CheckBox ID="chkShowGridListView" runat="server" resourcekey="Yes" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plGridViewPageSize" runat="server" resourcekey="GridViewPageSize">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="cboRows" runat="server" CssClass="Normal">
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem Selected="True">5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        </asp:DropDownList> x  
                        <asp:DropDownList ID="cboColumns" runat="server" CssClass="Normal">
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem Selected="True">4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plListViewPageSize" runat="server" resourcekey="ListViewPageSize">
                        </dnn:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="cboPageSize" runat="server" CssClass="Normal">
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem Selected="True">10</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plFilters" runat="server" resourcekey="ContentFilters">
                        </dnn:Label></td>
                    <td class="filters">
                        <asp:CheckBox ID="chkShowFilters" runat="server" resourcekey="ShowFilters" Checked="true" />
                        <asp:CheckBox ID="chkShowCategoryFilter" runat="server" resourcekey="Category" Checked="true" />
                        <asp:CheckBox ID="chkShowTagFilter" runat="server" resourcekey="Tag" Checked="true" />
                        <asp:CheckBox ID="chkShowDateFilter" runat="server" resourcekey="Date" Checked="true" />
                        <asp:CheckBox ID="chkShowSearchFilter" runat="server" resourcekey="Search" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plMultiSelection" runat="server" resourcekey="MultiSelection"></dnn:Label></td>
                    <td>
                        <asp:CheckBox ID="chkMultiSelection" runat="server" resourcekey="Yes" Checked="true" />
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plNoOfTags" runat="server" resourcekey="NoOfTags">
                        </dnn:Label></td>
                    <td>
                        <asp:DropDownList ID="cboNoOfTags" runat="server" CssClass="Normal">
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem Selected="True">50</asp:ListItem>
                        <asp:ListItem>60</asp:ListItem>
                        <asp:ListItem>70</asp:ListItem>
                        <asp:ListItem>80</asp:ListItem>
                        <asp:ListItem>90</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plLightbox" runat="server" resourcekey="Lightbox">
                        </dnn:Label></td>
                    <td>
                        <asp:CheckBox ID="chkLightbox" runat="server" resourcekey="Yes" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="plCheckViewPermission" runat="server" resourcekey="CheckViewPermission"></dnn:Label></td>
                    <td>
                        <asp:CheckBox ID="chkCheckViewPermission" runat="server" resourcekey="Yes" Checked="true" />
                    </td>
                </tr>
            </table>
     </div>

     <div class="section">
        <asp:Label ID="Label2" runat="server" resourcekey="DisplayTemplates" CssClass="head block"></asp:Label>
            <table cellpadding="3" width="100%">
                <tr>
                    <td class="SubSubHead" width="160">
                        <dnn:Label ID="Label3" runat="server" resourcekey="GridViewTemplate"></dnn:Label>
                    </td>
                    <td class="Normal">
                        <asp:TextBox ID="txtGridViewTemplate" runat="server" Rows="5" TextMode="MultiLine" Width="500"
                            CssClass="NormalTextBox expandable">
                        </asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="SubSubHead">
                        <dnn:Label ID="Label4" runat="server" resourcekey="ListViewTemplate"></dnn:Label>
                    </td>
                    <td class="Normal">
                        <asp:TextBox ID="txtListViewTemplate" runat="server" Rows="5" TextMode="MultiLine" Width="500"
                            CssClass="NormalTextBox expandable">
                        </asp:TextBox>
                    </td>
                </tr>
            </table>
     </div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>