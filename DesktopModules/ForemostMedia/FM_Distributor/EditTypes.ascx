<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditTypes.ascx.cs" Inherits="ForemostMedia.Modules.FM_Distributor.EditTypes" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="URL" Src="~/controls/URLControl.ascx" %>
<div class="fmStyle">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 no-padding panel panel-default">
                <div class="col-xs-12 panel-heading">
                    <asp:label runat="server" controlname="tbType" ><%= LocalizeString("lblType.Text") %></asp:label>
                    <asp:TextBox ID="tbType" runat="server" CssClass="form-control"/>	
                </div>
                <div class="col-xs-12 panel-body">
                    <p>Image</p>
                    <dnn:url id="imgUrl" runat="server" Required="False" showtrack="False"
                    shownewwindow="False" showlog="False" urltype="F" FileFilter="jpg,gif,png" showUrls="False"
                    showfiles="True" showtabs="False">
                    </dnn:url>
                </div>
                <div class="col-xs-12 panel-footer text-center">
                    <asp:linkbutton id="lbAddCategory" CssClass="btn btn-success" Runat="server" OnClick="lbAddCategory_Click">Add</asp:linkbutton>
                    <asp:linkbutton id="lbCancelCategory" CssClass="btn btn-default" Runat="server" OnClick="btnCancel_click">Cancel</asp:linkbutton>
                </div>
            </div>
            <div class="col-xs-8">
                <asp:label runat="server" controlname="tbType"><%= LocalizeString("lblTypes.Text") %></asp:label>
                <table class="table table-striped" style="border-collapse: collapse;">
                    <asp:repeater runat="server" ID="rptType" OnItemDataBound="bindRptData">
                        <ItemTemplate>
                            <tr>
                                <td class="col-xs-10"><asp:Label runat="server" ID="lbltype"></asp:Label></td>
                                <td class="col-xs-1"><asp:imagebutton id="cmdEditCat" runat="server" ImageUrl="~/images/edit.gif"
                                AlternateText="Edit Category" OnCommand="cmdEditCat_Click"></asp:imagebutton></td>
                                <td class="col-xs-1"><asp:LinkButton id="cmdDeleteCat" runat="server" OnCommand="cmdDeleteCat_Click" ForeColor="#000"><span class="glyphicon glyphicon-trash"></span></asp:LinkButton></td>
                            </tr>
                        </ItemTemplate>
                    </asp:repeater>
                </table>
            </div>
        </div>
    </div>
</div>


