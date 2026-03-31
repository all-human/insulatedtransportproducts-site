<%@ Control Language="vb" AutoEventWireup="false" Codebehind="VideoPlayerChooseDefault.ascx.vb"
    Inherits="BizModules.UltraVideoGallery.VideoPlayerChooseDefault" %>
<%@ Register TagPrefix="uc1" TagName="ModuleTabPicker" Src="ucModuleTabPicker.ascx" %>
<%@ Register src="ucRolePicker.ascx" tagname="rolepicker" tagprefix="uc1" %>

<div class="section">
    <div class="head"><asp:Label ID="Label7" runat="server" resourcekey="ControlTitle_modulesettings"></asp:Label></div>
    <div class="message"><asp:Label ID="Label8" runat="server" resourcekey="ChooseDefault.Help"></asp:Label></div>


     <div class="SubHead"><asp:Label ID="Label2" runat="server" resourcekey="DefaultVideo"></asp:Label></div>
     <div>
        <asp:RadioButton ID="rbNone" runat="server" GroupName="Default" AutoPostBack="true"
            resourcekey="None" />
        <asp:RadioButton ID="rbLatest" runat="server" GroupName="Default" AutoPostBack="true"
            resourcekey="Latest" />
        <asp:RadioButton ID="rbFixed" runat="server" GroupName="Default" AutoPostBack="true"
            resourcekey="Fixed" />
    </div>
    <div class="second">
        <asp:TextBox ID="txtVideoID" runat="server" Width="60px" CssClass="NormalTextbox"></asp:TextBox>
        <asp:DropDownList ID="cboLibraries" runat="server" DataTextField="Library" DataValueField="ItemId"></asp:DropDownList>
    </div>


     <div class="SubHead second"><asp:Label ID="Label1" runat="server" resourcekey="NoPermissionTab"></asp:Label></div>
     <div><asp:dropdownlist id="cboNoViewPermissionTab" runat="server" datatextfield="TabName"
                    datavaluefield="TabId"></asp:dropdownlist></div>    


     <div class="SubHead second"><asp:Label ID="Label3" runat="server" resourcekey="WatchHistory"></asp:Label></div>
     <div><asp:dropdownlist id="cboWatchHistory" runat="server">
                    <asp:ListItem Value="0"></asp:ListItem>
                    <asp:ListItem Value="1"></asp:ListItem>
                    <asp:ListItem Value="2"></asp:ListItem>
                    <asp:ListItem Value="3"></asp:ListItem>
                    <asp:ListItem Value="4"></asp:ListItem>
                    <asp:ListItem Value="5"></asp:ListItem>
                    <asp:ListItem Value="6"></asp:ListItem>
                    <asp:ListItem Value="7"></asp:ListItem>
                    <asp:ListItem Value="8"></asp:ListItem>
                    <asp:ListItem Value="9"></asp:ListItem>
                    <asp:ListItem Value="10"></asp:ListItem>
                    <asp:ListItem Value="15"></asp:ListItem>
     </asp:dropdownlist></div>    


     <div class="SubHead second"><asp:Label ID="Label4" runat="server" resourcekey="DownloadRoles"></asp:Label></div>
     <div><uc1:rolepicker id="ucDownloadRoles" runat="server" DisplayAllUsers="True" RepeatColumns="5">
                                                </uc1:rolepicker></div>    



     <div class="SubHead second"><asp:Label ID="Label5" runat="server" resourcekey="SocialFeatures"></asp:Label></div>
     <div><asp:CheckBox ID="chkShowRate" runat="server" resourcekey="ShowRate" />
     <asp:CheckBox ID="chkShowFlag" runat="server" resourcekey="ShowFlag" />
     <asp:CheckBox ID="chkShowShare" runat="server" resourcekey="ShowShare" />
     </div>    

</div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>
