<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Template.ascx.cs" Inherits="ForemostMedia.Modules.FM_Distributor.Template" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<div class="fmStyle">
    <div class="container">
        <div class="row">
            <div class="col-xs-6 no-padding panel panel-default">
                <div class="col-xs-12 panel-body">
                    <div class="col-xs-4">
                        <asp:label runat="server" controlname="txtTemplate"><%= LocalizeString("lblPageSize.Text") %></asp:label>
                        <asp:TextBox ID="tbPageSize" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-xs-8">
                        <asp:label runat="server" controlname="tbButton"><%= LocalizeString("lblButtonText.Text") %></asp:label>
                        <asp:TextBox ID="tbButton" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-xs-12">
                        <asp:label runat="server" controlname="txtTemplate"><%= LocalizeString("lblTemplate.Text") %></asp:label>
                        <asp:TextBox Columns="70" Rows="20" TextMode="Multiline" runat="server" ID="tbTemplate"  CssClass="form-control"/>
                    </div>
                </div>
                <div class="col-xs-12 text-center panel-footer">
                    <asp:LinkButton ID="lbUpdate" runat="server" onclick="lbUpdate_Click" CssClass="btn btn-success">Save</asp:LinkButton>
                    <asp:LinkButton ID="lbCancel" runat="server" onclick="lbCancel_Click" CssClass="btn btn-default">Cancel</asp:LinkButton>
                </div>
            </div>
            <div class="col-xs-6">
                <div class="col-xs-11 col-xs-offset-1 alert-info">
                    <h4><asp:label runat="server" resourcekey="lblTokens" ></asp:label></h4>
                    <asp:Label runat="server" resourcekey="Tokens.Text"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</div>