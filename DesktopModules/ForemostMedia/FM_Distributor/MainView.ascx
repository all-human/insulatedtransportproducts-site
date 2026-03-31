<%@ Control Language="C#" EnableViewState="false" Inherits="ForemostMedia.Modules.FM_Distributor.MainView"
    AutoEventWireup="true" CodeBehind="MainView.ascx.cs" %>
<%@ Register TagPrefix="cc1" Namespace="DotNetNuke.UI.WebControls" Assembly="DotNetNuke" %>

<div id="Distributor" class="fmStyle container">
    <a id="<%=GetModuleAnchor()%>"></a>

    <asp:Label ID="lblError" runat="server" CssClass="NormalRed" Visible="false" />
    <asp:Panel ID="pnlForm" runat="server">
        <input type="hidden" id="hidType" runat="server" />
        <asp:HiddenField ID="hidStateDdl" runat="server" />
        <asp:HiddenField ID="hidCountryDdl" runat="server" />
        <asp:HiddenField ID="hidTypeDdl" runat="server" />
    
        <div class="row">
            <div class="fm_dist_header col-xs-12">
                &nbsp; <asp:Label ID="lblTypeTitle" runat="server" CssClass="fmDistHeaderTitle" />
                <span class="fmDistHeaderHypen"> - </span>
                <asp:Label ID="lblStateCountryTitle" runat="server" CssClass="fmDistHeaderStateCountry" /> &nbsp;
            </div>
        </div>
    
        <div class="row panel panel-default">
            <div class="col-xs-12 col-sm-4 col-md-3 panel-heading fm-search-heading">
                <strong runat="server" id="lblSearchTitle"></strong>
                <br /><br />
                <div id="dvCompanySearch" runat="server" class="fmDistCompanyDiv">
                    <div id="lblCompanyTitle" runat="server">
                    </div>
                    <asp:TextBox ID="tbCompany" runat="server" CssClass="form-control"/>
                </div>
                <div id="dvDistSearch" runat="server" class="fmDistDistTypeDiv">
                    <div id="lblDistSearchTitle" runat="server" ></div>
                    <asp:ListBox ID="ddlDistTypes" Rows="10" runat="server" CssClass="form-control" />
                </div>
                <div id="dvStateSearch" runat="server" class="fmDistStateDiv">
                    <div id="lblStateTitle" runat="server">
                    </div>
                    <asp:ListBox ID="ddlState" Rows="10" runat="server" CssClass="form-control" />
                </div>
                <div id="dvInternationalSearch" runat="server" class="fmDistInternationalDiv">
                    <div id="lblInternationalTitle" runat="server">
                    </div>
                    <asp:ListBox ID="ddlCountry" Rows="10" runat="server" CssClass="form-control" />
                </div>
                <asp:Button ID="btnCompany" runat="server" OnClick="btnSearch_Click"  CssClass="btn btn-success btn-block"></asp:Button><br />
                <button class="btn btn-success" data-bind="click: searchLocations">Knockout</button>
            </div>
            <div class="col-xs-12 col-sm-8 col-md-9 panel-body no-padding">
                <asp:Image runat="server" ID="imgInitialDisplay" CssClass="fmDistInitialImg" Visible="False" />
                    <table class="table table-hover" style="border-collapse: collapse;">
                        <asp:repeater ID="lstContent" runat="server" OnItemDataBound="lstContent_ItemDataBound">
                            <ItemTemplate>
                                <tr>
                                    <asp:Label ID="lblContent" runat="server" />
                                </tr>
                            </ItemTemplate>
                        </asp:repeater>
                    </table>
                <div class="col-xs-12 text-center" id="phDivFtr" runat="server" style="color:#808080;">
                    Total Found:
                    <asp:Label ID="lblTotal" runat="server" /><br />
                    <br />
                    <cc1:PagingControl ID="Pager1" runat="server" oncommand="Pager1_Command" onDataBound="Pager1_DataBound" />
                </div>
            </div>
        </div>

    </asp:Panel>
</div>

<script type="text/javascript">
    var ddlState = $('#<%= ddlState.ClientID %>');
    var ddlCountry = $('#<%= ddlCountry.ClientID %>');
    var ddlDist = $('#<%= ddlDistTypes.ClientID %>');

    function listBoxToSelectList(hid, lb) {
        if ($(hid).val() === "1") {
            $(lb).removeAttr("size");
            if ($(lb).children(':selected').val() === undefined) {
                $(lb).children(":first-child").attr("selected", "selected");
            }
        }
    }

    jQuery(document).ready(function () {

        if ($('#<%= hidStateDdl.ClientID %>').val() === "1") {
            $(ddlState).attr("size", "10");
            $(ddlState).addClass("form-control");
            $(ddlState).children(":selected").removeAttr("selected").attr("selected", "selected");
        }

        $(ddlCountry).change(function () {
            $(ddlState).val('-1');
            $(ddlDist).val('-1');
        });

        $(ddlState).change(function() {
            $(ddlCountry).val('-1');
            $(ddlDist).val('-1');
        });

        $(ddlDist).change(function () {
            $(ddlCountry).val('-1');
            $(ddlState).val('-1');
        });

        listBoxToSelectList($('#<%= hidStateDdl.ClientID %>'), $('#<%= ddlState.ClientID %>'));
        listBoxToSelectList($('#<%= hidCountryDdl.ClientID %>'), $('#<%= ddlCountry.ClientID %>'));
        listBoxToSelectList($('#<%= hidTypeDdl.ClientID %>'), $('#<%= ddlDistTypes.ClientID %>'));

        var settings = {
            PortalId: '<%= PortalId %>',
            StopRender: '<%= StopRender %>',
            ErrorMessage: '<%= ErrorMessage %>',
            PageSize: '<%= PageSize %>',
            DisplayOnLoad: '<%= DisplayOnLoad %>',
            UsFirst: '<%= UsFirst %>'
        };

        new DistributorViewModel(settings).init({
            elementId: 'Distributor'
        });
    });    
    
</script>

