<%@ control language="C#" autoeventwireup="true" codebehind="AdminView.ascx.cs" inherits="ForemostMedia.Modules.FM_Forms_DNN.AdminView" %>
<%@ register tagprefix="dnn" tagname="Label" src="~/controls/LabelControl.ascx" %>
<div class="fm-bootstrap container-fluid">
    <asp:panel runat="server" id="pnlFormRecords">
    <h1>Form Submissions Received</h1>
  </asp:panel>
    <div class="row">
        <div class="col-sm-12" style="margin-bottom: 20px;">
            <asp:hyperlink runat="server" id="hypBackToMain" cssclass="btn btn-default float-right">Back to Form</asp:hyperlink>
        </div>
        <div class="col-sm-12" style="clear: both;"></div>
    </div>
    <div class="well admin-search-form">
        <div class="row">
            <div class="col-sm-12">
                <p>Enter dates in the fields below to filter the Form Submission results.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <asp:label runat="server" associatedcontrolid="txtDateStart" resourcekey="SearchByDateLabel.Text" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <div class="form-group">
                    <div class="input-group date" id="dvStartDate">
                        <asp:textbox id="txtDateStart" cssclass="datepicker form-control" runat="server" placeholder="Start Date" />
                        <span class="input-group-append">
                            <span class="input-group-text glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-sm-1 text-center">
                <div class="form-group">
                    <div style="padding: 5px;">to</div>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="form-group">
                    <div class="input-group date" id="dvEndDate">
                        <asp:textbox id="txtDateEnd" cssclass="datepicker form-control" runat="server" placeholder="End Date" />
                        <span class="input-group-append">
                            <span class="input-group-text glyphicon glyphicon-calendar"></span>
                        </span>
                    </div>
                </div>
            </div>
            <div class="col-sm-offset-2 col-sm-3 fm-search-btn">
                <div class="form-group">
                    <asp:button id="lbSearch" runat="server" cssclass="btn btn-primary" onclick="lbSearch_Click" text="Search"></asp:button>
                    <asp:linkbutton id="lbClearSearch" runat="server" cssclass="btn btn-default" onclick="lbClearSearch_Click">Reset</asp:linkbutton>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">
            <h3>Form Submissions</h3>
        </div>
        <asp:literal runat="server" id="ltSubmissionList" />
        <div class="panel-body">
            <asp:literal runat="server" id="ltResultsPager" />
            <asp:literal runat="server" id="ltEmptyResults" />
            <asp:button runat="server" cssclass="btn btn-primary" resourcekey="FormExportButton.Text" id="btnExport" onclick="btnExport_OnClick" />
            <asp:button runat="server" id="btnDeleteEntries" cssclass="btn btn-danger" resourcekey="DeleteBtn.Text" onclick="btnDeleteEntries_OnClick" onclientclick="return confirm('This delete action is permanent. Are you sure?');" />
        </div>

    </div>

    <script type="text/javascript">
        jQuery(document).ready(function () {
            var $startDate = jQuery('#dvStartDate'),
                $endDate = jQuery('#dvEndDate'),
                datepickeroptions = {
                    format: 'MM/DD/YYYY',
                    useCurrent: false,
                    allowInputToggle: true
                }


            $startDate.datetimepicker(datepickeroptions);
            $endDate.datetimepicker(datepickeroptions);

            $startDate.on('dp.change', function (e) {
                $endDate.data("DateTimePicker").minDate(e.date);
            });

            $endDate.on('dp.change', function (e) {
                $startDate.data("DateTimePicker").maxDate(e.date);
            });

        });
    </script>
</div>
