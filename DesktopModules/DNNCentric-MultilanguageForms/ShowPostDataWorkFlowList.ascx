<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShowPostDataWorkFlowList.ascx.cs" Inherits="DNNCentric.MultilanguageForms.ShowPostDataWorkFlowList" %>


<%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>
<script language="javascript" type="text/javascript">
function getvalue(par) {

    var msg = '<%=GetGlobalResource("DeleteWorkflow.Text")%>'+ " "+  par + " ?";
return confirm(msg);

}
</script>

<table  width="100%">
<tr>
<td align="center" valign="top" colspan="2">
<asp:LinkButton ID="lnkbtnNewWorkFlow" resourcekey="lnkbtnNewWorkFlow.Text"  CssClass="NormalBold" 
        runat="server" onclick="lnkbtnNewWorkFlow_Click"></asp:LinkButton>
</td>
</tr>
<tr>
<td align="center">
<asp:Label ID="lblErrormsg" Visible="false" Font-Size="Small" ForeColor="Red" runat="server"></asp:Label>
</td>
</tr>
<tr>
<td align="center" valign="top">
   <asp:GridView ID="gvShowWorkFlowList" runat="server" Width="60%" 
        AutoGenerateColumns="False" BorderWidth="1px"
                CssClass="Normal" ForeColor="#333333" GridLines="None" 
        onrowdatabound="gvShowWorkFlowList_RowDataBound">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <EmptyDataRowStyle CssClass="Normal" BorderColor="Blue" BackColor="White" />
                <Columns>
                 <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" resourcekey="imgEdit.Text" ImageUrl='<%# Common.GetImagePath("edit-icon.jpg")%>' OnClick="edit_click" CommandArgument='<%# Eval("WorkFlowID") %>' />
                        </ItemTemplate>
                        <HeaderStyle Font-Italic="True" />
                 </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" HeaderText="WorkFlowName" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblcategoryName" runat="server" Text='<%# Eval("WorkFlowName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-HorizontalAlign="Left" HeaderStyle-HorizontalAlign="Left" HeaderText="Culture" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblCultureName" runat="server" Text='<%# Eval("Culture") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>                                    
                  <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Active" ItemStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="White">
                       <ItemTemplate>
                         <asp:Image ID="imgIsActive" runat="server" />
                       </ItemTemplate>
                    </asp:TemplateField>
                 <asp:TemplateField HeaderStyle-HorizontalAlign="Left">
                        <ItemTemplate>
                            <asp:ImageButton ID="imgDelete" runat="server" OnClick="delete_click" resourcekey="imgDelete.Text" ImageUrl='<%# Common.GetImagePath("delete-icon.jpg")%>'
                                 OnClientClick=<%#"return getvalue('" + Eval("WorkFlowName")+ ","+ "');"%>
                                CommandArgument='<%# Eval("WorkFlowID") %>' />
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
  <asp:LinkButton ID="lnkBack" resourcekey="lnkBack.Text" runat="server" CssClass="NormalBold" 
          onclick="lnkBack_Click"></asp:LinkButton>
  </td>
  </tr>
</table>

