<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="ShowCategoryList.ascx.cs" Inherits="DNNCentric.Modules.MultilanguageForms.ShowCategoryList" %>
<%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>
<script language="javascript" type="text/javascript">
function getvalue(par) {
       
    var msg = '<%=GetGlobalResource("DeleteCatMsg.Text")%>' + par + '<%=GetGlobalResource("DeleteCatMsg2.Text")%>';
    if (confirm(msg)) {
        var msg1 = '<%=GetGlobalResource("WarningDeleteMsg.Text")%>' + par + '<%=GetGlobalResource("DeleteCatMsg2.Text")%>' + " ?";
        return confirm(msg1);
    }
    else
        return false;
}
</script>

<table width="100%" >
<tr>
<td align="center" valign="top">
<asp:LinkButton ID="lnkbtnNewCategory" resourcekey="lblAddCategory.Text" CssClass="NormalBold" runat="server" 
        onclick="lnkbtnNewCategory_Click"></asp:LinkButton>
</td>
</tr>
<tr>
<td>
<asp:Label ID="lblErrormsg" Visible="false" ForeColor="Red" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="center" valign="top">
   <asp:GridView ID="gvShowCategoryList" BorderWidth="1px" runat="server"  AutoGenerateColumns="False"
                CssClass="Normal"  CellPadding="3" ForeColor="#333333" GridLines="None" onrowdatabound="gvShowCategoryList_RowDataBound">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <EmptyDataRowStyle CssClass="Normal" BorderColor="Blue" BackColor="White" />
                <Columns>
                 <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" resourcekey="imgEdit" ImageUrl='<%# Common.GetImagePath("edit-icon.jpg")%>' OnClick="edit_click" CommandArgument='<%# Eval("CategoryID") %>' />
                        </ItemTemplate>
                      
                 </asp:TemplateField>
                 <asp:TemplateField ItemStyle-HorizontalAlign="Center" HeaderText="ShowExpanded" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                           <asp:CheckBox runat="server" OnCheckedChanged="chkbxVisible_CheckedChanged" AutoPostBack="true" ID="chkbxVisible" Checked='<%# Eval("IsExpanded")%>' />
                        </ItemTemplate>
                      
                 </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" HeaderText="CategoryName" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblcategoryName" runat="server" Font-Size="Small" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Active" ItemStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="White">
                       <ItemTemplate>
                       <asp:HiddenField ID="hdnactive" runat="server" Value='<%# Eval("ISActive") %>' />
                         <asp:Image ID="imgIsActive" runat="server" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgUp" runat="server" resourcekey="imgMoveUp" OnClick="lnkUp_Click"
                                ImageUrl='<%# Common.GetImagePath("icon_arrow_up.gif")%>' CommandArgument='<%# Eval("CategoryID") %>' />
                        
                            <asp:HiddenField ID="hdnId" runat="server" Value='<%# Eval("CategoryID") %>' />
                        <asp:HiddenField ID="hdnSortOrder" runat="server" Value='<%# Eval("SortOrder") %>' />
                           <%-- <asp:HiddenField ID="hdfControlType" runat="server" Value='<%# Eval("ControlType") %>' />--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <%-- <asp:CheckBox ID="chkUpdate" runat="server" />--%>
                            <asp:ImageButton ID="imgDown" runat="server" resourcekey="imgMoveDown" OnClick="lnkDown_Click"
                                ImageUrl='<%# Common.GetImagePath("down.gif")%>' CommandArgument='<%# Eval("CategoryID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                  <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgDelete" runat="server" OnClick="delete_click" resourcekey="imgDelete" ImageUrl='<%# Common.GetImagePath("delete-icon.jpg")%>' 
                                 OnClientClick=<%#"return getvalue('" + Eval("CategoryName")+ "');"%>
                                CommandArgument='<%# Eval("CategoryID") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
</td>
  </tr>
  <tr>
  <td align="center" valign="top">
  <asp:LinkButton ID="lnkBack" resourcekey="lnkbtnBack.Text" CausesValidation="false" runat="server" CssClass="NormalBold" onclick="lnkBack_Click"></asp:LinkButton>
  </td>
  </tr>
    </table>

