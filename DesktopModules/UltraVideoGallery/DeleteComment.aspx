<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DeleteComment.aspx.vb" Inherits="BizModules.UltraVideoGallery.DeleteComment" %>

<html>
<head>
    <title>
        <%=PortalSettings.PortalName%>
    </title>
    <link href='<% =ResolveUrl("~/Portals/_default/default.css")%>' type="text/css" rel="stylesheet">
    <link href='<% =PortalSettings.HomeDirectory + "portal.css"%>' type="text/css" rel="stylesheet">
</head>
<body leftmargin="3" topmargin="3">
    <form id="Form1" runat="server">
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <p />
        <asp:Button ID="btnDelete" runat="server" resourcekey="cmdDelete"/>
    </form>
</body>
</html>
