<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrMLClientCaptcha.ascx.cs" Inherits="DNNCentric.MultilanguageForms.MiscControls.CtrMLClientCaptcha" %>


  <table  border="0"  cellpadding="0" cellspacing="0" >
      <tr>
      <td align="left" style="margin-bottom: 10px;">
       <img id="imgcaptcha" alt="captcha" name="imgcaptcha" runat="server" style="border:1px solid #35779f;" />
      </td>
      </tr>
      <tr>
       <td  align="left" style="width:30% ;margin-top: 10px;">
        <asp:TextBox ID="txtCaptcha" runat="server" CssClass="CFC_NormalTextBox1" ></asp:TextBox><br />
        <label id="lblEmptyCaptchaMsg" class="prc_error_critical"></label>
       </td>
      </tr>
      <tr>
       <td align="left" style="width:30% ;margin-top: 10px;">
       <%--<label id="lblCaptchaMsg" ></label>--%>
        <asp:Label ID="lblCaptchaMsg" runat="server" CssClass="prc_error_critical" ForeColor="Red"></asp:Label>
       </td>
                                                                
     </tr>
  </table>                                                        