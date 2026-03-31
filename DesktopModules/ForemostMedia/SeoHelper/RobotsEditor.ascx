<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RobotsEditor.ascx.cs" Inherits="ForemostMedia.Modules.SeoHelper.RobotsEditor" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="form-horizontal">
     <div class="form-group">
        <label class="control-label col-sm-3">
            <%= LocalizeString("UserAgents.Text") %>:
        </label>
         <div class="col-sm-9">
             <asp:TextBox id="tbUserAgents" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="10" />
         </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">
            <%= LocalizeString("Disallows.Text") %>:
        </label>
         <div class="col-sm-9">
             <asp:TextBox runat="server" ID="tbRobots" CssClass="form-control" TextMode="MultiLine" Rows="25" />
         </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-3">
            <%= LocalizeString("LastEditedBy.Text") %>:
        </label>
         <div class="col-sm-9">
             <p runat="server" id="lbLastEdit" class="form-control-static" />
         </div>
    </div>
    <div class="btn-group col-sm-offset-3">
        <asp:LinkButton runat="server" CssClass="btn btn-primary" OnClick="lbSave_Click">
            <i class="fa fa-floppy-o"></i>
            <%= LocalizeString("Save.Text") %>
        </asp:LinkButton>
        <asp:HyperLink runat="server" ID="lbCancel" CssClass="btn btn-default" NavigateUrl="/">
            <i class="fa fa-arrow-left"></i>
            <%= LocalizeString("Cancel.Text") %>
        </asp:HyperLink>
    </div>
</div>
<script type="text/javascript">
    if (typeof fmSeoHelper === "undefined") {
        fmSeoHelper = {}
    }
    fmSeoHelper.moduleId = <%= ModuleConfiguration.ModuleID %>;
    fmSeoHelper.tabId = <%= TabId %>;
    fmSeoHelper.userId = <%= UserId %>;
</script>