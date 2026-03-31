<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FormValidationsList.ascx.cs" Inherits="DNNCentric.MultilanguageForms.FormValidationsList" %>


<%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>
<script language="javascript" type="text/javascript">
    function getvalue(par) {

        var msg = '<%=GetGlobalResource("DeleteFormValidation.Text")%>' + " " + par + " ?";
        return confirm(msg);

    }
</script>

<table  width="100%">
<tr>
<td align="center" valign="top" colspan="2">
<asp:LinkButton ID="lnkFormValidation" resourcekey="lnkFormValidation.Text"  CssClass="NormalBold" 
        runat="server" onclick="lnkFormValidation_Click" ></asp:LinkButton>
</td>
</tr>
<tr>
<td align="center">
<asp:Label ID="lblErrormsg" Visible="false" Font-Size="Small" ForeColor="Red" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="center" valign="top">
   <asp:GridView ID="gvShowFormValidationList" runat="server" Width="400px" 
        AutoGenerateColumns="False" BorderWidth="1px"
                CssClass="Normal" ForeColor="#333333" GridLines="None" 
        onrowdatabound="gvShowFormValidationList_RowDataBound" >
        
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <EmptyDataRowStyle CssClass="Normal" BorderColor="Blue" BackColor="White" />
                <Columns>
                 <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" resourcekey="imgEdit.Text" ImageUrl='<%# Common.GetImagePath("edit-icon.jpg")%>' OnClick="edit_click" CommandArgument='<%# Eval("FormValidationId") %>' />
                        </ItemTemplate>
                        <HeaderStyle Font-Italic="True" />
                 </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" HeaderText="Workflow Name" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblStoredSQLQueryName" runat="server" Text='<%# Eval("FormValidationName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField> 
                     <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Active" ItemStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="White">
                       <ItemTemplate>
                         <asp:Image ID="imgIsActive" runat="server" />
                       </ItemTemplate>
                    </asp:TemplateField>                                            
                  <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgUp" runat="server" resourcekey="imgMoveUp" OnClick="lnkUp_Click"
                                ImageUrl='<%# Common.GetImagePath("icon_arrow_up.gif")%>' CommandArgument='<%# Eval("FormValidationId") %>' />
                        
                            <asp:HiddenField ID="hdnId" runat="server" Value='<%# Eval("FormValidationId") %>' />
                        <asp:HiddenField ID="hdnSortOrder" runat="server" Value='<%# Eval("SortOrder") %>' />                          
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>                           
                            <asp:ImageButton ID="imgDown" runat="server" resourcekey="imgMoveDown" OnClick="lnkDown_Click"
                                ImageUrl='<%# Common.GetImagePath("down.gif")%>' CommandArgument='<%# Eval("FormValidationId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                 <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgDelete" runat="server" OnClick="delete_click" resourcekey="imgDelete.Text" ImageUrl='<%# Common.GetImagePath("delete-icon.jpg")%>'
                                 OnClientClick=<%#"return getvalue('" + Eval("FormValidationName")+ ","+ "');"%>
                                CommandArgument='<%# Eval("FormValidationId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                </Columns>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle  BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
</td>
  </tr>
  <tr>
  <td align="center" valign="top">
  <asp:LinkButton ID="lnkBack" resourcekey="lnkBack.Text" runat="server" 
          CssClass="NormalBold" onclick="lnkBack_Click" 
          ></asp:LinkButton>
  </td>
  </tr>
</table>

