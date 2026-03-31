<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Control Language="vb" AutoEventWireup="false" Codebehind="CategoryListEdit.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.CategoryListEdit" %>


<asp:Panel ID="pnlSingle" runat="server" cssclass="section">
    <div class="head"><asp:Label ID="Label7" runat="server" resourcekey="AddCategory"></asp:Label></div>
        <table>
            <tr><td class="twocolleft">
    <div class="SubHead">
    <asp:Label ID="Label1" runat="server" cssclass="SubHead" resourcekey="plCategory"></asp:Label>
    </div>
    <asp:TextBox ID="txtCategory" runat="server" Width="300px" CssClass="NormalTextBox"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required"
                                        ControlToValidate="txtCategory"></asp:RequiredFieldValidator>

    <div class="SubHead second">
    <asp:Label ID="Label2" runat="server" cssclass="SubHead" resourcekey="plViewOrder"></asp:Label>
    </div>
    <asp:TextBox ID="txtViewOrder" runat="server" CssClass="NormalTextBox" Width="300px"></asp:TextBox>

    <div class="SubHead second">
    <asp:Label ID="Label3" runat="server" cssclass="SubHead" resourcekey="plPlayerTab"></asp:Label>
    </div>
    <uc1:moduletabpicker id="ucModuleTabPicker1" runat="server" ShowNoneSpecified="True"></uc1:moduletabpicker>
            </td>
            <td style="vertical-align:top; ">
            <asp:Panel ID="pnlViewRoles" runat="server">
            <div class="SubHead"><asp:Label ID="plViewRoles" runat="server" resourcekey="plViewRoles">
                                    </asp:Label></div>
<uc1:rolepicker id="RolePicker1" runat="server" DisplayAllUsers="True"></uc1:rolepicker>
            </asp:Panel>
            </td></tr>
        </table>
</asp:Panel>
<asp:Panel ID="pnlBulk" runat="server" cssclass="section" Visible="false">
    <div class="head"><asp:Label ID="Label6" runat="server" resourcekey="AddBulk"></asp:Label></div>
        <table>
            <tr><td class="twocolleft">
            <div class="SubHead">
                <asp:Label ID="Label5" runat="server" resourcekey="Categories"></asp:Label>
            </div>
                <asp:TextBox ID="txtCategories" runat="server" CssClass="NormalTextBox" Width="300" TextMode="MultiLine" Rows="8">Category 1
Category 2
...</asp:TextBox>
            </td>
            <td style="vertical-align:top; ">
            </td></tr>
        </table>
</asp:Panel>



  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdDelete" runat="server" resourcekey="cmdDelete"
                causesvalidation="False"></asp:LinkButton></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
    <li><asp:LinkButton ID="btnBluk" runat="server" CssClass="dnnSecondaryAction" resourcekey="AddBulk" CausesValidation="False"></asp:LinkButton></li>
  </ul>
