<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrMLReCaptcha.ascx.cs" Inherits="DNNCentric.MultilanguageForms.MiscControls.CtrMLReCaptcha" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<script type="text/javascript">
    jQuery(document).ready(function () {
        var theme = '<%=this.theme %>'
    });
</script>
 <table border="0px"  cellpadding="0" cellspacing="0">
    <tr>
      <td>
        
        <recaptcha:RecaptchaControl ID="Recaptcha" runat="server" PublicKey="<%=this.publickey %>" PrivateKey="<%=this.privatekey %>" />
        <asp:Label ID="lblrecaptcha" runat="server" Visible="false" Text="Incorrect. Try Again." CssClass="NormalRed" Font-Size="XX-Small"></asp:Label>
      </td>
    </tr>
 </table>