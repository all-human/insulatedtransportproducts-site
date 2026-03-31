<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DistributorView.ascx.cs" Inherits="ForemostMedia.Modules.FM_Distributor.DistributorView" %>
<div class="fmStyle">
    <div class="container">
        <div class="row">
            <div class="col-xs-8">
                <div class="form-group">
                    <label class="control-label"><%= LocalizeString("lblCompany.Text") %></label>
                    <asp:TextBox ID="tbCompany" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <div class="col-xs-4 text-center">
                <div class="btn-group">
                    <asp:linkbutton cssclass="btn btn-primary" id="cmdUpdate" runat="server" OnClick="cmdUpdate_Click">
                        <i class="fa fa-floppy-o"></i>
                        <%= LocalizeString("cmdUpdate.Text") %>
                    </asp:linkbutton>
                    <asp:linkbutton cssclass="btn btn-default" id="cmdCancel" runat="server" causesvalidation="False" OnClick="cmdCancel_Click">
                        <i class="fa fa-ban"></i>
                        <%= LocalizeString("cmdCancel.Text") %>
                    </asp:linkbutton>
                    <asp:linkbutton cssclass="btn btn-danger" id="cmdDelete" runat="server" causesvalidation="False" OnClick="cmdDelete_Click">
                        <i class="fa fa-trash"></i>
                        <%= LocalizeString("cmdDelete.Text") %>
                    </asp:linkbutton>
                </div>
            </div>
            <div class="col-xs-8">
                <div class="col-xs-12 no-padding panel panel-default">
                    <div class="col-xs-12 panel-heading">
                        Contact Information
                    </div>
                    <div class="col-xs-12 panel-body">
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblFirstName.Text") %></label>
                            <asp:TextBox ID="tbFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblLastName.Text") %></label>
                            <asp:TextBox ID="tbLastName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label  class="control-label"><%= LocalizeString("lblEmail.Text") %></label>
                            <asp:TextBox ID="tbEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblEmailAlt.Text") %></label>
                            <asp:TextBox ID="tbEmailAlt" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblWebsite.Text") %></label>
                            <asp:TextBox ID="tbWebsite" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label  class="control-label"><%= LocalizeString("lblWebsiteAlt.Text") %></label>
                            <asp:TextBox ID="tbWebsite2" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblPhone.Text") %></label>
                            <asp:TextBox ID="tbPhone" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblPhoneAlt.Text") %></label>
                            <asp:TextBox ID="tbPhoneAlt" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblCell.Text") %></label>
                            <asp:TextBox ID="tbCell" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-xs-6">
                            <label class="control-label"><%= LocalizeString("lblFax.Text") %></label>
                            <asp:TextBox ID="tbFAx" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 no-padding panel panel-default">
                    <div class="col-xs-12 panel-heading">
                        Location Information
                    </div>
                    <div class="col-xs-12 panel-body">
                        <div class="col-xs-6 no-padding">
                            <div class="col-xs-12">
                                <label class="control-label"><%= LocalizeString("lblAddress.Text") %></label>
                                <asp:TextBox ID="tbAddress" runat="server" CssClass="form-control"></asp:TextBox> 
                            </div>
                            <div class="col-xs-12">
                                <label class="control-label"><%= LocalizeString("lblAddress2.Text") %></label>
                                <asp:TextBox ID="tbAddress2" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-xs-6 no-padding">
                            <div class="col-xs-12">
                                <label class="control-label"><%= LocalizeString("lblCity.Text") %></label>
                                <asp:TextBox ID="tbCity" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-12">
                                <label class="control-label"><%= LocalizeString("lblRegion.Text") %></label>
                                <asp:DropDownList ID="ddlRegion" runat="server" CssClass="form-control"
                                    DataValueField="Value" DataTextField="Text" Visible="False"></asp:DropDownList>
                                <asp:TextBox ID="tbRegion" runat="server" MaxLength="50" CssClass="form-control"></asp:TextBox>
                                <asp:label runat="server" ID="lblRegionRequired" runat="server" CssClass="NormalBold"></asp:label>
                                <asp:label runat="server" class="SubHead" style="display: none;">Region Is Required.</asp:label>
                                <asp:RequiredFieldValidator ID="valRegion1" runat="server" CssClass="NormalRed" ControlToValidate="ddlRegion" ErrorMessage="<br>Region Is Required." Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RequiredFieldValidator ID="valRegion2" runat="server" CssClass="NormalRed" ControlToValidate="tbRegion" ErrorMessage="<br>Region Is Required." Display="Dynamic"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <label class="control-label"><%= LocalizeString("lblCountry.Text") %></label>
                        <asp:DropDownList ID="ddlCountry" runat="server" CssClass="form-control"
                            DataValueField="Value" DataTextField="Text" AutoPostBack="True"
                            OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged"></asp:DropDownList>
                        </div>
                        <div class="col-xs-12">
                            <label class="control-label"><%= LocalizeString("lblPostalCode.Text") %></label>
                            <asp:TextBox ID="tbPostalCode" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xs-4">                    
                <div class="col-xs-12 no-padding panel panel-default">
                    <div class="col-xs-12 panel-heading">
                        Additional Information
                    </div>
                    <div class="col-xs-12 panel-body">
                        <div class="form-group">
                            <label class="control-label"><%= LocalizeString("lblNotes.Text") %></label>
                            <asp:TextBox ID="tbNotes" runat="server" Rows="5" Columns="50" TextMode="MultiLine" Wrap="true" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label class="control-label"><%= LocalizeString("lblType.Text") %></label>
                            <asp:CheckBoxList ID="cblType" runat="server"/>
                        </div>
                        <div class="form-group">
                            <label class="control-label"><%= LocalizeString("lblPriorityGroup.Text") %></label>
                            <asp:DropDownList ID="ddlPriorityGroup" runat="server" CssClass="form-control"/>
                        </div>
                        <div class="row no-padding">
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label class="control-label">
                                        <%= LocalizeString("lblRegionCovered.Text") %>
                                    </label>
                                    <asp:DropDownList ID="ddlCountryRegion" runat="server" CssClass="form-control"
                                                      DataValueField="Value" DataTextField="Text" AutoPostBack="True"
                                                      OnSelectedIndexChanged="ddlCountryRegion_SelectedIndexChanged"></asp:DropDownList>
                                    <asp:DropDownList ID="ddlStateRegion" runat="server" CssClass="form-control"
                                                      DataValueField="Value" DataTextField="Text" Visible="False"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-xs-12 text-right">
                                <div class="btn-group">
                                    <asp:LinkButton runat="server" ID="btnAddRegion" OnClick="btnAddRegion_Click" CssClass="btn btn-success">
                                        <i class="fa fa-plus"></i>
                                        <%= LocalizeString("AddRegion.Text") %>
                                    </asp:LinkButton>
                                    <asp:LinkButton ID="btnRemoveRegion" runat="server" onclick="btnRemoveRegion_Click" CssClass="btn btn-danger">
                                        <i class="fa fa-minus"></i>
                                        <%= LocalizeString("RemoveRegion.Text") %>
                                    </asp:LinkButton>
                                </div>
                            </div>
                            <div class="col-xs-12">
                                <div class="form-group">
                                    <label class="control-label"><%= LocalizeString("AssignedRegions.Text") %></label>
                                    <asp:ListBox ID="lbRegions" runat="server" Rows="10" SelectionMode="Multiple" CssClass="form-control"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
