<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Popup.aspx.vb" Inherits="BizModules.UltraVideoGallery.Popup" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Common.Controls" Assembly="DotNetNuke" %>
<%@ Register TagPrefix="uc1" TagName="VideoPlayer" Src="VideoPlayer.ascx" %>
<!DOCTYPE html>
<html>
	<head runat="server">
		<title><%=WindowTitle%></title>
	</head>
	<body id="Body" runat="server" style="margin:0px;">

    <dnn:Form ID="Form" runat="server" ENCTYPE="multipart/form-data">
        <input id="ScrollTop" runat="server" name="ScrollTop" type="hidden" />
        <uc1:VideoPlayer id="VideoPlayer" runat="server" />
        <input id="__dnnVariable" runat="server" name="__dnnVariable" type="hidden" />
    </dnn:Form>
	</body>
</html>
