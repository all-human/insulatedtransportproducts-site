<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditPriorityGroups.ascx.cs" Inherits="ForemostMedia.Modules.FM_Distributor.EditPriorityGroups" %>
<%@ Register TagPrefix="dnn" TagName="URL" Src="~/controls/URLControl.ascx" %>
<div class="fmStyle">
    <div class="container">
        <div class="row">
            <div class="col-xs-8 col-xs-offset-1 no-padding panel panel-default">
                <div class="col-xs-12 panel-heading">
                    <label><asp:Label ID="lblPriorityGroup" runat="server" Text="Group Name" /></label>
                </div>
                <div class="col-xs-12 panel-body">
                    <div class="col-xs-12">
                        <div class="input-group">
                            <input type="text" id="tbPgName" class="form-control"/>
                            <span class="input-group-btn">
                                <button type="button" class="btn btn-success" id="btnAdd" ><span id="btnAddIcon" class="glyphicon glyphicon-plus"></span></button>
                            </span>
                        </div>
                    </div>
                    <div class="col-xs-12 text-center" style="padding-top: 20px;"></div>
                    <div class="col-xs-12 no-padding well" style="border-top: none;">
                        <input type="hidden" id="hidId" value="-1" />
                        <ul id="fmPrioritySortable" class="fm-ul-table">
                            <asp:Repeater ID="rptPriorityGroups" runat="server" >
                                <ItemTemplate>
                                    <li id='<%# Eval("Id") %>' class="col-xs-12 priorityGroupItem">
                                        <span class="glyphicon glyphicon-arrow-up" style="float: left;"></span>
                                        <span class="glyphicon glyphicon-arrow-down" style="float: left;"></span>
                                        <span class="col-xs-9 name"><%# Eval("Name") %></span>
                                        <span class="col-xs-1 btnEdit"><asp:Image ID="imgEdit" runat="server" ImageUrl="~/images/edit.gif" /></span>
                                        <span class="col-xs-1 delImg"><span class="glyphicon glyphicon-trash"></span></span>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <div class="col-xs-12 panel-footer text-center">
                    <a id="btnSaveOrder" class="btn btn-success">Save</a>
                    <a href='<%= DotNetNuke.Common.Globals.NavigateURL() %>' class="btn btn-default">Cancel</a> 
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    jQuery(document).ready(function () {
        $(".fmStyle").on('click', function (e) {
            if (e.target.tagName === "DIV")
            {
                if ($("#hidId").val() !== "-1") {
                    //clear Group info
                    $("#tbPgName").val("");
                    $("#hidId").val("-1");
                    $("#btnAddIcon").toggleClass("glyphicon-save");
                    $("#btnAddIcon").toggleClass("glyphicon-plus");
                    deleteable();
                }
            }
        });

        function deleteable() {
            $(".delImg").click(function (e) {
                $(this).parent().remove();
            });
        }

        deleteable();

        $("#btnAdd").click(function () {
            if ($("#hidId").val() === "-1") {
                $("#fmPrioritySortable").append('<li id="-1" class="col-xs-12 priorityGroupItem"><span class="glyphicon glyphicon-arrow-up" style="float: left;"></span><span class="glyphicon glyphicon-arrow-down" style="float: left;"></span><span class="col-xs-9 name">' + $("#tbPgName").val() + '</span><span class="col-xs-1 col-xs-offset-1 delImg"><span class="glyphicon glyphicon-trash"></span></span></li>');
            } else {
                $("#btnAddIcon").toggleClass("glyphicon-save");
                $("#btnAddIcon").toggleClass("glyphicon-plus");
                $("#" + $("#hidId").val()).find("span.name").html($("#tbPgName").val());
            }
            $("#tbPgName").val("");
            $("#hidId").val("-1");
            deleteable();
        });


        $(".btnEdit").click(function () {
            $("#tbPgName").val($(this).parent().find("span.name").html());
            $("#hidId").val($(this).parent().attr("id"));
            if ($("#btnAddIcon").hasClass("glyphicon-plus")) {
                $("#btnAddIcon").toggleClass("glyphicon-save");
                $("#btnAddIcon").toggleClass("glyphicon-plus");
            }
        });

        $(".glyphicon-arrow-down").click(function() {
            var $selected = $(this).parent();

            if ($selected.not(':last-child')) {
                $selected.next().after($selected);
                $selected.css("background-color", "#a1cea1");
                $selected.animate({
                    backgroundColor: "#f5f5f5"
                }, 500 );
            }
        });

        $(".glyphicon-arrow-up").click(function() {
            var $selected = $(this).parent();

            if ($selected.not(":first-child")) {
                $selected.prev().before($selected);
                $selected.css("background-color", "#a1cea1");
                $selected.animate({
                    backgroundColor: "#f5f5f5"
                }, 500);
            }
        });
        

        $("#btnSaveOrder").click(function (e) {
            e.preventDefault();
            var items = $("#fmPrioritySortable li");
            var priorityGroups = [];

            for (var x = 0; x < items.length; x++) {
                var priorityGroup = {};
                priorityGroup.Id = items[x].id;
                priorityGroup.Name = $(items[x]).find("span.name").html();
                priorityGroups.push(priorityGroup);
            }

            // save it now with jQuery
            $.ajax({
                type: "POST",
                url: '<%= ModulePath() %>FMDistributorWebService.asmx/SavePriorityGroups',
                data: "{groups : " + JSON.stringify(priorityGroups) + ", portalId : <%= PortalId %>}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: window.location.href = '<%= DotNetNuke.Common.Globals.NavigateURL("") %>'
            });
        });

    });
</script>