<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SkinView.ascx.cs" Inherits="ForemostMedia.Modules.FM_Forms_DNN.SkinView" %>

<div id="fm-form-skin-container">
    <% if(UserEdit) { %>
        <a class="btn btn-primary pull-right" href="<%= EditUrl %>"> Edit Form</a>
    <% } %>  
    <asp:PlaceHolder runat="server" id="controlPlaceholder" />   
</div>
