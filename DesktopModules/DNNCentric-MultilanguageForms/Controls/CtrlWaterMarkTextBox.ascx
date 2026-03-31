<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlWaterMarkTextBox.ascx.cs" Inherits="DNNCentric.MultilanguageForms.Controls.CtrlWaterMarkTextBox" %>

  <%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

  <script language="javascript">
      function ShowCustom(obj) {
       
          if (obj.value == "8") {
              document.getElementById("<%=txtenterregularexpression.ClientID%>").style.display = "inline";
              document.getElementById("<%=lblenterregularexpression1.ClientID%>").style.display = "inline";

          } else {
              document.getElementById("<%=txtenterregularexpression.ClientID%>").style.display = "none";
              document.getElementById("<%=lblenterregularexpression1.ClientID%>").style.display = "none";
          }

      }

 
   </script>
<table style="background-color: White" width="100%">
 <tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
    <tr>
        <td style="width:35%">
            <asp:Label ID="lblTextMode" runat="server" resourcekey="lblTextMode.Text"  CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlTextMode"   runat="server" 
                onselectedindexchanged="ddlTextMode_SelectedIndexChanged" AutoPostBack="true" CssClass="CFC_NormalTextBox" >
                <asp:ListItem Value="1">Single Line</asp:ListItem>
                <asp:ListItem Value="2">Multi Line</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="txtNoOfRows" MaxLength="3" runat="server" Width="30px" CssClass="CFC_NormalTextBox"></asp:TextBox><asp:Label ID="lblNumOfRows" CssClass="CF_Admin_NormalText" runat="server" resourcekey="lblNumOfRows.Text" ></asp:Label>
        </td>
    </tr>
    
    <tr>
        <td>
            <asp:Label ID="lblIsReadOnly" runat="server" resourcekey="lblIsReadOnly.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkReadOnly" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblWidth" runat="server" resourcekey="lblWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth" runat="server" Width="71px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;<asp:Label ID="lblPix" runat="server" resourcekey="PixWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
    </tr>
    <tr id="trMaxLength" runat="server">
        <td>
            <asp:Label ID="lblMaxLength" MaxLength="3" runat="server" resourcekey="lblMaxLength.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtMaxLength" MaxLength="3" runat="server" Width="70px" CssClass="CFC_NormalTextBox"></asp:TextBox>
        </td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
        <td colspan="2" class="CF_Header">
            Validation Rule</td>
        
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblValidationType" runat="server" resourcekey="lblValidationType.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlValidationType" runat="server" onchange="ShowCustom(this);" CssClass="CFC_NormalTextBox">
                <asp:ListItem Value="1">Text</asp:ListItem>
                <asp:ListItem Value="2">Whole Number</asp:ListItem>
                <asp:ListItem Value="3">Email ID</asp:ListItem>
                <asp:ListItem Value="4">Phone Number</asp:ListItem>
                <asp:ListItem Value="5">Decimal/Whole Number</asp:ListItem>
                <asp:ListItem Value="6">Comma Seperated EmailID(s)</asp:ListItem>
                 <asp:ListItem Value="7">US - SSN (xxx-xx-xxxx)</asp:ListItem>
                  <asp:ListItem Value="8">Custom Validation (Regex)</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="lblenterregularexpression1" runat="server"  style="display:none;" Text="Enter Regular expression"  CssClass="CF_Admin_NormalText"></asp:Label>
            <asp:TextBox ID="txtenterregularexpression" style="display:none;" CssClass="CFC_NormalTextBox" runat="server"></asp:TextBox>
          
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblRequired" runat="server" resourcekey="lblRequiredField.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:CheckBox ID="chkRequired" runat="server" />
        </td>
    </tr>
     <tr><td colspan="2">&nbsp;</td></tr>
    <tr align="left">
        <td colspan="2" class="CF_Header">
            <asp:Label ID="lbllangDependTxt" resourcekey="lbllangDependTxt.Text" runat="server"
                ></asp:Label>
        </td>
    </tr>
    <tr align="left">
        <td colspan="2">
            <asp:DataList ID="dlstTextBox" runat="server" Width="100%" BackColor="White" BorderWidth="0px" CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <ItemTemplate>
                    <table id="tblML" runat="server" width="100%">
                        <tr>
                            <td style="width:35%">
                                <asp:Label ID="lblCaptionText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaption.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="CF_Admin_NormalText"></asp:Label>
                            </td>
                            <td style="width: 65%">
                                <asp:TextBox ID="txtCaptionValue" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Text="<%# ((mlContent)Container.DataItem).Caption %>" Width="100%"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>                               
                                <%--<dnn:Label runat="server" ID="lblDefault" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblWaterMarkText.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' ResourceKey="lblDefault" />--%>
                               <asp:Label runat="server" ID="lblDefault" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblWaterMarkText.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' ></asp:Label>
                            
                            </td>
                            <td>
                                <asp:TextBox ID="txtDefault" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).DefaultValue %>"  Width="100%"></asp:TextBox>
                                <asp:Label ID="lbldefaultmsg" runat="server" resourcekey="DefaultError.Text" Visible="false"
                                    CssClass="CF_Admin_NormalText" ForeColor="#FF3300"></asp:Label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblreqiredfieldtext" ResourceKey="lblreqiredfieldtext"  CssClass="CF_Admin_NormalText"   Text='<%#string.Format("{0} ({1})",Localization.GetString("lblreqiredfieldtext.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtreqiredfieldtext" Width="100%" CssClass="CFC_NormalTextBox" runat="server" Text="<%# ((mlContent)Container.DataItem).Requiredfieldtext %>"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dnn:Label runat="server" ID="lblvalidationerrortext" ResourceKey="lblvalidationerrortext" CssClass="CF_Admin_NormalText"  Text='<%#string.Format("{0} ({1})",Localization.GetString("lblvalidationerrortext.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="txtvalidationerrortext" Width="100%" CssClass="CFC_NormalTextBox" runat="server" Text="<%# ((mlContent)Container.DataItem).Validationerrortext %>"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </td>
    </tr>
    <tr>
    <td align="left" colspan="2">
    <dnn:Label runat="server"  ID="lblMLHelpText" ResourceKey="lblMLHelpText"  Visible="false" CssClass="CFC_NormalTextBox" ></dnn:label>
    </td>
    </tr>
    <tr >
    <td align="center" colspan="2">
        <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="X-Small" ForeColor="Red" Visible="false"></asp:Label>
        
        </td>
    </tr>
    
</table>
   <script type="text/javascript">

       var ddltxtmode = document.getElementById('<%=ddlTextMode.ClientID%>');

       if (ddltxtmode.value == '1')// single line
       {
           document.getElementById('<%=txtNoOfRows.ClientID%>').style.visibility = "hidden"
           document.getElementById('<%=lblNumOfRows.ClientID%>').style.visibility = "hidden"

       }

       function disableRowsBox() {
           var ddltxtmode = document.getElementById('<%=ddlTextMode.ClientID%>');

           if (ddltxtmode.value == '2')// multi line
           {
               document.getElementById('<%=txtNoOfRows.ClientID%>').style.visibility = "visible"
               document.getElementById('<%=lblNumOfRows.ClientID%>').style.visibility = "visible"
           }
           else {
               document.getElementById('<%=txtNoOfRows.ClientID%>').style.visibility = "hidden"
               document.getElementById('<%=lblNumOfRows.ClientID%>').style.visibility = "hidden"
           }
       }
   </script> 
