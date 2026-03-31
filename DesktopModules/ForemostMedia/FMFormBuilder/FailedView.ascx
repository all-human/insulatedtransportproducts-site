<%@ control language="C#" autoeventwireup="true" codebehind="FailedView.ascx.cs" inherits="ForemostMedia.Modules.FM_Forms_DNN.FailedView" %>
<%@ register tagprefix="dnn" tagname="Label" src="~/controls/LabelControl.ascx" %>

<div class="fm-bootstrap container-fluid">
    <div class="row">
        <div class="col-sm-12" style="margin-bottom: 20px;">
            <asp:hyperlink runat="server" id="hypBackToMain" cssclass="btn btn-default float-right">Back to Form</asp:hyperlink>
        </div>
        <div class="col-sm-12" style="clear: both;"></div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="table-responsive">
                <asp:repeater id="FailedSubmissions" runat="server">
                    <HeaderTemplate>
                        <table class="table">
                            <thead>
                                <tr>
                                    <td>Date</td>
                                    <td>Error</td>
                                    <td>Data</td>
                                    <td>Notified</td>
                                </tr>
                            </thead>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label runat="server" ID="Date" text='<%# Eval("SubmissionTime") %>' />
                            </td>
                            <td>
                                <asp:Label runat="server" ID="Error" text='<%# Eval("Error") %>' />
                            </td>
                            <td>
                                <asp:Label runat="server" ID="Data" text='<%# Eval("DataObjJson") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="Notified" runat="server" Checked='<%# Eval("Notified").ToString() == "True" %>' Enabled="False" />
                            </td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:repeater>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <asp:button runat="server" id="btnDeleteEntries" cssclass="btn btn-danger" resourcekey="DeleteBtn.Text" onclick="btnDeleteEntries_OnClick" onclientclick="return confirm('This delete action is permanent. Are you sure?');" />
        </div>
    </div>
</div>
