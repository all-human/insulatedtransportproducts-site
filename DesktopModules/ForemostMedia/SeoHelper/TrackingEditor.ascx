<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrackingEditor.ascx.cs" Inherits="ForemostMedia.Modules.SeoHelper.TrackingEditor" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="form-horizontal">
    <div class="panel-group" >
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="fmTrackingGoogle">
            <h4 class="panel-title">
                <%= LocalizeString("Google.Text") %>
            </h4>
        </div>
        <div class="panel-body">
                <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("GoogleAnalytics.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <a href="/Admin/GoogleAnalytics" class="btn btn-default form-control-static">
                            <i class="fa fa-cogs"></i>
                            <%= LocalizeString("GoogleAnalyticsClickHere.Text") %>
                        </a>
                    </div>
                </div>
            <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("MultiDomain.Text") %>:
                    </label>
                    <div class="col-sm-9">
                      <asp:TextBox runat="server" ID="tbMultiDomains" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                        <div class="alert alert-info">
                            <i class="fa fa-info-circle"></i>
                            One domain per line. EG:<br/>
                            first.com<br/>second.com

                        </div>
                    </div>
                </div>
            <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("MultiDomain.Text") %> <%= LocalizeString("LastEditedBy.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <p id="lblLastEditMultiDomain" runat="server" class="form-control-static" />
                    </div>
                </div>
                <div class="alert alert-warning">
                    <%= LocalizeString("GoogleTagManager.Note") %>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("GoogleTagManager.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <asp:TextBox id="tbGoogleTagManager" runat="server" placeholder="GTM-XXXX" CssClass="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("LastEditedBy.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <p id="lblLastEditGtm" runat="server" class="form-control-static" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="fmTrackingLeadformix">
            <h4 class="panel-title">
                <%= LocalizeString("LeadFormix.Text") %>
            </h4>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="control-label col-sm-3">
                    <%= LocalizeString("LeadFormix.Text") %>:
                </label>
                <div class="col-sm-9">
                    <asp:TextBox id="tbLeadFormix" runat="server" CssClass="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">
                    <%= LocalizeString("LastEditedBy.Text") %>:
                </label>
                <div class="col-sm-9">
                    <p id="lblLastEditLeadformix" runat="server" class="form-control-static" />
                </div>
            </div>
        </div>

    </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><%= LocalizeString("ActOn.Text") %></h3>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("ActOnId.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <asp:TextBox id="tbActOnId" runat="server" CssClass="form-control" />
                        <p class="help-block"><%= LocalizeString("ActOnId.Help") %></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("ActOnCdnr.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <asp:TextBox id="tbActOnCdnrId" runat="server" CssClass="form-control" />
                        <p class="help-block"><%= LocalizeString("ActOnCdnr.Help") %></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("ActOnHost.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <asp:TextBox id="tbActOhHost" runat="server" CssClass="form-control" />
                        <p class="help-block"><%= LocalizeString("ActOnHost.Help") %></p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">
                        <%= LocalizeString("LastEditedBy.Text") %>:
                    </label>
                    <div class="col-sm-9">
                        <p id="lblLastEditActon" runat="server" class="form-control-static" />
                    </div>
                </div>
            </div>
        </div>
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="fmTrackingWebTrax">
            <h4 class="panel-title">
                <%= LocalizeString("WebTrax.Text") %>
            </h4>
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="control-label col-sm-3">
                    <%= LocalizeString("WebTrax.Text") %>:
                </label>
                <div class="col-sm-9">
                    <asp:TextBox id="tbWebTrax" runat="server" CssClass="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-3">
                    <%= LocalizeString("LastEditedBy.Text") %>:
                </label>
                <div class="col-sm-9">
                    <p id="lblLastEditWebTrax" runat="server" class="form-control-static" />
                </div>
            </div>
        </div>

    </div>
</div>

   
	
    
    <ul class="dnnActions dnnClear">
        <li>
            <asp:LinkButton runat="server" CssClass="btn btn-primary" OnClick="lbSave_Click">
                <i class="fa fa-floppy-o"></i>
                <%= LocalizeString("Save.Text") %>
            </asp:LinkButton>
        </li>
        <li>
            <asp:HyperLink runat="server" ID="hlCancel" CssClass="btn btn-default" NavigateUrl="/">
                <i class="fa fa-arrow-circle-left"></i>
                <%= LocalizeString("Cancel.Text") %>
            </asp:HyperLink>
        </li>
    </ul>


<script type="text/javascript">
    if (typeof fmSeoHelper === "undefined") {
        fmSeoHelper = {}
    }
    fmSeoHelper.moduleId = <%= ModuleConfiguration.ModuleID %>;
    fmSeoHelper.tabId = <%= TabId %>;
    fmSeoHelper.userId = <%= UserId %>;
</script>