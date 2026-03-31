<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditEmailForm.ascx.cs"  Inherits="DNNCentric.Modules.MultilanguageForms.EditEmailForm" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/TextEditor.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Audit" Src="~/controls/ModuleAuditControl.ascx" %>
<%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>
<script language="javascript" type="text/javascript">
	function getvalue(par) {

    var deletemsg = '<%=strdeleteMsg %>';
    var msg = deletemsg + " " + par + " ?";
return confirm(msg);
}

</script>

<table  width="100%">
    <tr>
        <td align="center" valign="top">
            <asp:LinkButton ID="lnkbtnAdd" runat="server" resourcekey="lnkAdd.Text" CssClass="NormalBold"
                OnClick="lnkAddNew_Click" Font-Underline="True" ></asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td align="center" valign="top">
            <asp:Label ID="lblCategory" runat="server" resourcekey="Category.Text" CssClass="NormalBold"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlCategory" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" CssClass="CFC_NormalTextBox">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="center">	  
		<asp:UpdatePanel ID="Update1" runat="server">
			<ContentTemplate>
				<asp:GridView ID="gvEditControls" CellPadding="3" runat="server"  
				BorderWidth="1px" Width="80%" AutoGenerateColumns="False"
                CssClass="Normal"  
                ForeColor="#333333" GridLines="None" 
				onselectedindexchanged="gvEditControls_SelectedIndexChanged" onrowdatabound="gvEditControls_RowDataBound">
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <EmptyDataRowStyle CssClass="Normal" BorderColor="Blue" BackColor="White" />
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="imgEdit" runat="server" resourcekey="imgEdit" ImageUrl='<%# Common.GetImagePath("edit-icon.jpg")%>'
                                OnClick="edit_click" CommandArgument='<%# Eval("FieldId") %>' />
                        </ItemTemplate>
                        <HeaderStyle Font-Italic="True" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left"  HeaderText="FieldName" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblFieldName" runat="server" Text='<%# Eval("FieldName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="ControlType" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblControlType" runat="server" Text='<%# Eval("ControlType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" HeaderText="CategoryName" HeaderStyle-ForeColor="White">
                        <ItemTemplate>
                            <asp:Label ID="lblCategoryName" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Left" HeaderText="Active" ItemStyle-HorizontalAlign="Left" HeaderStyle-ForeColor="White">
                       <ItemTemplate>
                       <asp:HiddenField ID="hdnactive" runat="server" Value='<%# Eval("IsActive") %>' />
                         <asp:Image ID="imgIsActive" runat="server" />
                       </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>					
                            <asp:ImageButton ID="imgUp" runat="server" resourcekey="imgMoveUp" OnClick="lnkUp_Click"
                                ImageUrl='<%#Common.GetImagePath("icon_arrow_up.gif")%>' CommandArgument='<%# Eval("FieldId") %>' />
                            <asp:HiddenField ID="hdnSortOrder" runat="server" Value='<%# Eval("SortOrder") %>' />
                            <asp:HiddenField ID="hdnId" runat="server" Value='<%# Eval("FieldId") %>' />
                            <asp:HiddenField ID="hdfControlType" runat="server" Value='<%# Eval("ControlType") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <%-- <asp:CheckBox ID="chkUpdate" runat="server" />--%>
                            <asp:ImageButton ID="imgDown" runat="server" resourcekey="imgMoveDown" OnClick="lnkDown_Click"
                                ImageUrl='<%# Common.GetImagePath("down.gif")%>' CommandArgument='<%# Eval("FieldId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ID="imgDelete" runat="server" resourcekey="imgDelete" ImageUrl='<%#Common.GetImagePath("delete-icon.jpg")%>'
                                OnClick="delete_click" OnClientClick=<%#"return getvalue('" + Eval("FieldName")+ ","+ "' + '" + Eval("ControlType") + "');"%>
                                CommandArgument='<%# Eval("FieldId") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle  BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
			</ContentTemplate>
		</asp:UpdatePanel>
			
		
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Label ID="lblMsgUser" runat="server" ForeColor="Red" Font-Size="Small" Visible="false"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:LinkButton ID="lnkBack" runat="server" resourcekey="lnkBack.Text" CssClass="NormalBold"
                OnClick="lnkBack_Click"></asp:LinkButton>
        </td>
    </tr>
</table>
