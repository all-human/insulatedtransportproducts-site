<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Pages.ascx.cs" Inherits="ForemostMedia.Modules.SeoHelper.Pages" %>
<div id="fmSeoHelper<%= ModuleId %>-Pages" class="container fm-seo-helper-wrapper">
    <div class="loader" data-bind="visible: isLoading">
        <i class="fa fa-spinner fa-spin" aria-hidden="true"></i>
    </div>
    <div class="row">
        <div class="col-xs-12 text-right">
            <div data-bind="pagination: { pageSize: pageSize, currentPage: currentPage, totalCount: tabCount, maxPages: maxPages, directions: directions, boundary: boundary, text: text }, visible: showPager"></div>
        </div>
        <div class="col-xs-12">
            <div class="row">
                <div class="col-xs-12 col-sm-2"><h4>Name</h4></div>
                <div class="col-xs-12 col-sm-3"><h4>Title</h4></div>
                <div class="col-xs-12 col-sm-5"><h4>Description</h4></div>
                <div class="col-xs-12 col-sm-2"></div>
            </div>
            <div data-bind="foreach: pages">
                  <div class="row page-wrapper" data-bind="css: {'bg-danger': isDanger}">
                    <div class="col-xs-12 col-sm-2">
                        <span data-bind="text: name"></span>
                    </div>
                    <div class="col-xs-12 col-sm-3">
                        <!-- ko if: !isEditing() -->
                        <span data-bind="text: title"></span>
                        <!-- /ko -->
                        <!-- ko if: isEditing() -->
                        <input class="form-control" data-bind="value: title" />
                        <!-- /ko -->
                    </div>
                    <div class="col-xs-12 col-sm-5">
                        <!-- ko if: !isEditing() -->
                        <span data-bind="text: description"></span>
                        <!-- /ko -->
                        <!-- ko if: isEditing() -->
                        <textarea class="form-control" data-bind="value: description"></textarea>
                        <!-- /ko -->
                    </div>
                    <div class="col-xs-12 col-sm-2 text-right">
                        <!-- ko if: isEditing() -->
                        <button class="btn btn-success" type="button" data-bind="click: $parent.savePageData">
                            <i class="fa fa-floppy-o" aria-hidden="true"></i> Save
                        </button>
                        <!-- /ko -->
                        <button class="btn btn-default" type="button" data-bind="toggle: isEditing">
                            <!-- ko if: !isEditing() -->
                            <i class="fa fa-pencil" aria-hidden="true"></i> Edit
                            <!-- /ko -->
                            <!-- ko if: isEditing() -->
                            <i class="fa fa-ban" aria-hidden="true"></i> Cancel
                            <!-- /ko -->
                        </button>
                    </div>
                </div>
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
            nodeId: "fmSeoHelper<%= ModuleId %>-Pages"
        };
        new fmSeoHelper.models.fmPages(settings).initialize();
    });
</script> 