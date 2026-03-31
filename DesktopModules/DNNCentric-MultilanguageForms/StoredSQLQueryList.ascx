<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StoredSQLQueryList.ascx.cs" Inherits="DNNCentric.MultilanguageForms.StoredSQLQueryList" %>

<%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>

<script language="javascript" type="text/javascript">
    function getvalue(par) {

        var msg = '<%=GetGlobalResource("DeleteWorkflow.Text")%>' + " " + par + " ?";
        return confirm(msg);

    }
</script>

<table  width="100%">
<tr>
<td align="center" valign="top" colspan="2">
<asp:LinkButton ID="lnkbtnNewSQLScript" resourcekey="lnkbtnNewSQLScript.Text"  CssClass="NormalBold" 
        runat="server" onclick="lnkbtnNewSQLScript_Click"></asp:LinkButton>
</td>
</tr>
<tr>
<td align="center">
<asp:Label ID="lblErrormsg" Visible="false" Font-Size="Small" ForeColor="Red" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="center" valign="top">
   <asp:GridView ID="gvShowSQLPostList" runat="server" Width="60%" 
        AutoGenerateColumns="False" BorderWidth="1px"
                CssClass="Normal" ForeColor="#333333" GridLines="None" >
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <EmptyDataRowStyle CssClass="Normal" BorderColor="Blue" BackColor="White" />
                <Columns>
                 <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" resourcekey="imgEdit.Text" ToolTip="Edit" ImageUrl='<%# Common.GetImagePath("edit-icon.jpg")%>' OnClick="edit_click" CommandArgument='<%# Eval("StoredSQLQueryID") %>' />
                        </ItemTemplate>
                        <HeaderStyle Font-Italic="True" />
                 </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" HeaderText="Workflow Name" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblStoredSQLQueryName" runat="server" Text='<%# Eval("StoredSQLQueryName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <%--<asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" HeaderText="Culture" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblCultureName" runat="server" Text='<%# Eval("Culture") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>      --%>                              
                 
                 <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgDelete" runat="server" OnClick="delete_click" resourcekey="imgDelete.Text" ToolTip="Delete" ImageUrl='<%# Common.GetImagePath("delete-icon.jpg")%>'
                                 OnClientClick=<%#"return getvalue('" + Eval("StoredSQLQueryName")+ ","+ "');"%>
                                CommandArgument='<%# Eval("StoredSQLQueryID") %>' />
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


