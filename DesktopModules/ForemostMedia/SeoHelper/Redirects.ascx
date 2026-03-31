<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Redirects.ascx.cs" Inherits="ForemostMedia.Modules.SeoHelper.Redirects" %>
<div id="fmSeoHelper<%= ModuleId %>">
<div class="form-horizontal">
    <div class="dnnFormMessage dnnFormWarning">
        <p>NOTE! No changes are made until you click <strong>SAVE</strong>.
        </p>
        <p>This is for BASIC 301 Redirects. IE: Old Page to new page. Examples </p>
        <table class="table ">
            <thead>
            <tr >
                <th>From</th>
                <th>To</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>/index.html</td>
                <td>/</td>
            </tr>
            <tr>
                <td>/path/to/old/file.php</td>
                <td>/new/path/here.aspx</td>
            </tr>
            </tbody>
        </table>
        <p>If you require a more complicated redirect to be applied - Please see Andy.</p>
    </div>
    <h3>
        Using <span data-bind="text: totalCount"></span> out of <span data-bind="text: maxCount"></span> redirects
    </h3>
    <table width="100%" class="table table-hover" >
    <thead>
        <tr >
            <th></th>
            <th width="49%">Absolute From</th>
            <th width="49%">Relative To</th>
        </tr>
    </thead>
    <tbody data-bind='foreach: allItems' >
        <tr >
            <td>
                <button type="button" class="btn btn-danger" data-bind="click:$parent.removeItem">
                    <i class="fa fa-trash-o"></i>
                </button>
            </td>
            <td style="width: 49%">
                <input data-bind='value: from, valueUpdate: "afterkeydown"' style="width:100%" />
            </td>
            <td style="width: 49%">
                <input data-bind='value: to, valueUpdate: "afterkeydown"'  style="width:100%" />
            </td>
        </tr>
    </tbody>
</table>
    <div class="btn-group">
        <button type="button" data-bind="visible: canAdd, click:add" class="btn btn-success">
            <i class="fa fa-plus"></i>
            <%= LocalizeString("Add.Text") %>
        </button>
    </div>
     <div class="form-group">
         <label class="col-sm-3 control-label">
             <%= LocalizeString("LastEditedBy.Text") %>
         </label>
        <p class="form-control-static" runat="server" id="lbLastEdit" />
    </div>
    <asp:HiddenField runat="server" ID="hidJson"></asp:HiddenField>
    <div class="btn-group">
        <asp:LinkButton runat="server" ID="lbSave" data-bind="click: save" CssClass="btn btn-primary" ResourceKey="Save" OnClick="Save_Click" >
            <i class="fa fa-floppy-o"></i>
            <%= LocalizeString("Save.Text") %>
        </asp:LinkButton>
        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#modalImport">
            <i class="fa fa-upload"></i>
            <%= LocalizeString("Import.Text") %>
        </button>
        <asp:LinkButton runat="server" id="btnExport" CssClass="btn btn-default" OnClick="Export_Click" >
            <i class="fa fa-download"></i>
            <%= LocalizeString("Export.Text") %>
        </asp:LinkButton>
        <asp:HyperLink runat="server" CssClass="btn btn-default" ID="hlCancel" NavigateUrl="/" >
            <i class="fa fa-arrow-left"></i>
            <%= LocalizeString("Cancel.Text") %>
        </asp:HyperLink>
        <asp:LinkButton runat="server" id="btnNuke" CssClass="btn btn-danger" OnClientClick="return confirm('Please Validate Nuke Request');" OnClick="Nuke_Click" >
            <i class="fa fa-flash"></i>
            <%= LocalizeString("Nuke.Text") %>
        </asp:LinkButton>
    </div>
</div>
<div class="Hidden">
    <span id="btnImport" data-bind="click: importItems"></span>
    <div id="import-dialog" title="Import Redirects">
        <p>One per line comma or tab delimited - From To</p>
        <textarea data-bind="value: itemsToImport" rows="30" cols="60"></textarea>
    </div>
</div>
    <!-- Modal -->
    <div class="modal fade" id="modalImport" tabindex="-1" role="dialog" aria-labelledby="labelImport">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="labelImport">Import</h4>
                </div>
                <div class="modal-body">
                    <div class="alert alert-info">
                        <p>One per line, comma or tab delimited - <strong>From, To</strong></p>
                    </div>
                    <textarea class="form-control" data-bind="value: itemsToImport"></textarea>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-bind="click: importItems">
                        <i class="fa fa-floppy-o"></i>
                        Save changes
                    </button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">
                        <i class="fa fa-times"></i>
                        Close
                    </button>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        if (typeof fmSeoHelper === "undefined") {
            fmSeoHelper = {}
        }
        fmSeoHelper.moduleId = <%= ModuleConfiguration.ModuleID %>;
        fmSeoHelper.tabId = <%= TabId %>;
        fmSeoHelper.userId = <%= UserId %>;

        $(function () {
            var settings = {
                nodeId: "fmSeoHelper<%= ModuleId %>",
                $tbJson : $("#<%= hidJson.ClientID%>")
            };
            new fmSeoHelper.models.fm301s(settings).initialize();
        });
    </script>
</div>