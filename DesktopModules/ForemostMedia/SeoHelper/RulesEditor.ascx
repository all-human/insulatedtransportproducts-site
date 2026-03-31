<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="RulesEditor.ascx.cs" Inherits="ForemostMedia.Modules.SeoHelper.RulesEditor" %>
<div class="form-horizontal">
    <div class="form-group">
        <label class="control-label"><%= LocalizeString("Rules.Text") %></label>
        <asp:TextBox CssClass="form-control" id="tbRules" runat="server" TextMode="MultiLine" Rows="30" />
    </div>
    <div class="form-group">
        <label class="control-label">
            <%= LocalizeString("LastEditedBy.Text") %>
        </label>
        <asp:label runat="server" id="lbLastEdit" CssClass="form-control-static" />
    </div>
    <div class="form-group">
	    <label class="control-label">
	        <%= LocalizeString("Example.Text") %>
	    </label> 
	    <asp:Repeater ID="rpRules" runat="server">   
		    <HeaderTemplate>   
			    <ul class="list-group">
		    </HeaderTemplate>   
		    <ItemTemplate>   
			    <li class="list-group-item">
			        <a target="_blank" href="<%# DataBinder.Eval(Container.DataItem, "Url") %>"><%# DataBinder.Eval(Container.DataItem, "Filename") %></a>
			    </li>   
		    </ItemTemplate>   
		    <FooterTemplate>   
			    </ul>
		    </FooterTemplate>   
	    </asp:Repeater>   
    </div>
    <div class="btn-group">
        <asp:LinkButton runat="server" CssClass="btn btn-primary" OnClick="lbSave_Click">
            <i class="fa fa-floppy-o"></i>
            <%= LocalizeString("Save.Text") %>
        </asp:LinkButton>
        <asp:HyperLink runat="server" ID="lbCancel" CssClass="btn btn-default" NavigateUrl="/" >
            <i class="fa fa-arrow-left"></i>
            <%= LocalizeString("Cancel.Text") %>
        </asp:HyperLink>
    </div>
</div>

<script type="text/javascript">
    if (typeof fmSeoHelper === "undefined") {
        fmSeoHelper = {}
    }
    fmSeoHelper.moduleId = <%= ModuleConfiguration.ModuleID %>;
    fmSeoHelper.tabId = <%= TabId %>;
    fmSeoHelper.userId = <%= UserId %>;
</script>