<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Library.ascx.vb" Inherits="BizModules.UltraVideoGallery.Library"
    EnableViewState="true" %>
<%@ Register TagPrefix="uc1" TagName="RolePicker" Src="ucRolePicker.ascx" %>
<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>

<div class="section">
    <div class="head"><asp:Label ID="lblLibrary" runat="server" resourcekey="ChooseLibrary"></asp:Label></div>
    <div class="message"><asp:Label ID="lblLibraryHelp" runat="server" resourcekey="ChooseLibrary.Help"></asp:Label></div>


    <asp:DataList ID="lstLibraries" runat="server" Width="100%" RepeatDirection="Vertical" CssClass="videosibling">
    <ItemTemplate>
        <asp:Panel ID="pnlLibrary" runat="server" CssClass='<%#"library " + IIf(Container.DataItem.ItemId = LibraryId, "current", "") %>'>
        <asp:Label ID="lblItemId" runat="server" Text="<%#Container.DataItem.ItemId %>" Visible="false"></asp:Label>

        <asp:Label ID="lblLibrary" runat="server" CssClass="SubHead" Text="<%#Container.DataItem.Library %>"></asp:Label>

        <div class="managers">
        <asp:Label ID="Label1" runat="server" resourcekey="ManagedBy"></asp:Label>
        <asp:Label ID="lblManagers" runat="server" CssClass="roles" Text="<%#Container.DataItem.Managers %>"></asp:Label>
        <asp:Label ID="Label2" runat="server" resourcekey="CreatedOn"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="roles" Text="<%#Container.DataItem.CreatedDate.ToShortDateString() %>"></asp:Label>
        </div>

        <div class="buttons">
        <asp:Button ID="btnEdit" runat="server" resourcekey="cmdEdit" CausesValidation="false" Visible="<%#IsAdmin %>" OnClick="btnEdit_Click"></asp:Button>
        <asp:Button ID="btnDelete" runat="server" resourcekey="cmdDelete" CausesValidation="false" Visible="<%#IsAdmin %>" OnClick="btnEdit_Click"></asp:Button>
        <asp:Button ID="btnChoose" runat="server" resourcekey="Choose" CausesValidation="false" OnClick="btnChoose_Click" Visible="<%#Container.DataItem.ItemId <> LibraryId %>"></asp:Button>
        </div>

        </asp:Panel>
    </ItemTemplate>
    <EditItemTemplate>
    <asp:Panel ID="pnlLibrary" runat="server" CssClass='library editmode'>
        <asp:Label ID="lblItemId" runat="server" Text="<%#Container.DataItem.ItemId %>" Visible="false"></asp:Label>

        <asp:TextBox ID="txtLibrary" runat="server" Width="300px" Text="<%#Container.DataItem.Library %>"></asp:TextBox>

        <div class="second greytext">
        <asp:Label ID="Label1" runat="server" resourcekey="ManagedBy" CssClass="SubHead"></asp:Label>
        <asp:Label ID="lblManagers" runat="server" CssClass="roles" Text="<%#Container.DataItem.Managers %>" Visible="false"></asp:Label>
        <uc1:rolepicker id="RolePicker1" runat="server" repeatcolumns="5"></uc1:rolepicker>
        </div>

        <div class="second">
        <asp:Label ID="Label7" runat="server" resourcekey="PlayerPage" CssClass="SubHead"></asp:Label>
        <asp:Label ID="lblPlayerPage" runat="server" Text="<%#Container.DataItem.PlayerPage %>" Visible="false"></asp:Label>
        <uc1:moduletabpicker id="ucModuleTabPicker1" runat="server">
                                    </uc1:moduletabpicker>
        </div>

        <div class="buttons">
        <asp:Button ID="btnSave" runat="server" resourcekey="Save" CausesValidation="false" OnClick="btnEdit_Click"></asp:Button>
        </div>

        </asp:Panel>
    </EditItemTemplate>
    </asp:DataList>

    <asp:Panel ID="pnlAdd" runat="server">
    <div><asp:button id="btnAdd" runat="server" resourcekey="AddNew" cssclass="btnadd" /></div>
    <div class="addnew">
    <div class="close"></div>
    <div class="SubHead"><asp:Label ID="Label4" runat="server" resourcekey="LibraryName"></asp:Label></div>
    <asp:TextBox ID="txtLibrary" runat="server" CssClass="NormalTextBox" Width="200"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="txtLibrary" ErrorMessage="*"></asp:RequiredFieldValidator>
    <div class="SubHead second"><asp:Label ID="Label5" runat="server" resourcekey="Managers"></asp:Label></div>
    <div><uc1:rolepicker id="RolePicker1" runat="server" repeatcolumns="5"></uc1:rolepicker></div>

    <div class="SubHead second"><asp:Label ID="Label6" runat="server" resourcekey="PlayerPage"></asp:Label></div>
    <div><uc1:moduletabpicker id="ucModuleTabPicker1" runat="server"></uc1:moduletabpicker></div>

    <p></p>

    <div><asp:Button ID="btnSave" runat="server" resourcekey="Save"></asp:Button></div>
    </div>
    </asp:Panel>
</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="btnCancel" runat="server" CssClass="dnnPrimaryAction" CausesValidation="false" resourcekey="cmdCancel" /></li>
  </ul>
