<%@ Control Language="vb" AutoEventWireup="false" Codebehind="Activate.ascx.vb" Inherits="BizModules.UltraVideoGallery.Activate" %>

<asp:Label ID="lblMessage" cssclass="Normal warning" runat="server" Visible="false"></asp:Label>

<div class="section Normal">
    <div class="head"><asp:Label ID="lblTitle" runat="server" resourcekey="Activation"></asp:Label></div>

    <p>Please enter your serial number to activate this product.
    </p>
    <p>Serial numbers are sent to your email box after buying it on DotNetNuke Store or other market places.
    </p>
    <p>To re-send your serial numbers, visit http://www.bizmodules.net/DesktopModules/BizModules - IONConnecter/Resend.aspx?sku=UVG&email=<span style="color:#f00;">Your Email Address</span>
    </p>

    <asp:Label ID="plSerialNo" runat="server" resourcekey="SerialNo" CssClass="SubHead second block"></asp:Label>
    <asp:TextBox ID="txtSerialNo" runat="server" Width="400px" CssClass="NormalTextBox"></asp:TextBox>

            <table width="100%">
                <tr>
                    <td class="Normal" colspan="2">
                        </td>
                </tr>
                <tr>
                    <td class="Normal" width="150" align="right">
                        :</td>
                    <td class="Normal">
                        </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="color:#FF0000">
                        </td>
                </tr>
            </table>
 </div>

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton id="cmdUpdate" runat="server" CssClass="dnnPrimaryAction" resourcekey="cmdUpdate" /></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdManual" runat="server" resourcekey="cmdManual"
                causesvalidation="False"></asp:LinkButton></li>
    <li><asp:LinkButton class="dnnSecondaryAction" id="cmdCancel" runat="server" resourcekey="cmdCancel"
                causesvalidation="False"></asp:LinkButton></li>
  </ul>