<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlDropDownList.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.Controls.CtrlDropDownList" %>
    <%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
    
  
    
<table style="background-color: White" width="100%" >
    
    <tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
   
    <tr>
        <td>
            <asp:Label ID="lblIsReadOnly" runat="server" resourcekey="lblIsReadOnly.Text" CssClass="CF_Admin_NormalText">           </asp:Label>
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
            <asp:TextBox ID="txtWidth" MaxLength="3" runat="server" Width="71px" CssClass="CFC_NormalTextBox" ></asp:TextBox>&nbsp;<asp:Label ID="lblddlPercwidth" runat="server" resourcekey="PixWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
        <td colspan="2" class="CF_Header">
            Validation Rule</td>
        
    </tr>
     <tr>
      <td style="width:35%">
      <asp:Label ID="lblDropdownItemType" runat="server" resourcekey="lblDropdowntemtype.Text" CssClass="CF_Admin_NormalText"></asp:Label>
      </td>
    <td>
    <asp:DropDownList ID="ddlDropdownItemType" runat="server" CssClass="CFC_NormalTextBox">
     <asp:ListItem Value="1">Default</asp:ListItem>
     <asp:ListItem Value="2">Email</asp:ListItem>
     <asp:ListItem Value="3">Numeric</asp:ListItem>
    </asp:DropDownList>
    </td>
    </tr>
     <tr>
        
        <td style="width:35%" valign="middle">
            <asp:Label ID="lblRequired" runat="server" resourcekey="lblRequiredField.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td valign="middle">
            <asp:CheckBox ID="chkRequired"  runat="server" />
            <asp:Label ID="lblmsg" runat="server" Font-Size="Small" ForeColor="Blue" Text="please enter first item of list as user select message.for eg. --Please Select--" ></asp:Label>
        </td>
    </tr>
     <tr><td colspan="2">&nbsp;</td></tr>
   
    <tr>
        <td colspan="2" class="CF_Header">
            <asp:Label ID="lbllangDependTxt" resourcekey="lbllangDependTxt.Text" runat="server"
                ></asp:Label>
        </td>
    </tr>
   <tr align="left">
        <td colspan="2">
        <asp:DataList ID="dlstDDLOption" runat="server" Width="100%" BackColor="White" BorderWidth="0px"
                CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black"  />
            <ItemTemplate>
                <table width="99%">
                    <tr>
                        <td style="width: 35%">
                            <asp:Label ID="lblCaptionText" runat="server" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCaption.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                CssClass="CF_Admin_NormalText"></asp:Label>
                        </td>
                        <td style="width: 65%">
                            <asp:TextBox ID="txtCaptionValue" Width="100%" runat="server" CssClass="CFC_NormalTextBox" TextMode="MultiLine" Text="<%# ((mlContent)Container.DataItem).Caption %>" ></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td>
                            <dnn:Label ID="lblCultureText" runat="server" CssClass ="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblCultureText.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />
                            <%--<dnn:Label ID="lblCultureText" runat="server" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblEnterItems",UserResourceFile),((mlContent)Container.DataItem).Culture) %>' />--%>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDDLOption" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).Options %>"
                                TextMode="MultiLine" Width="100%" Height="80px"></asp:TextBox>
                            <%--<br/>
                            <asp:Label ID="lblOptionMsg" runat="server" resourcekey="lblOptionMsg.Text" CssClass="Normal"
                                ForeColor="Gray"></asp:Label>--%>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <%--<asp:Label ID="lblDefault" runat="server" Text='<%#string.Format("{0} ({1})","Default Item",((mlContent)Container.DataItem).Culture) %>' CssClass="CF_Admin_NormalText"></asp:Label>--%>
                            <dnn:Label runat="server" ID="lblDefault" CssClass="CF_Admin_NormalText" Text='<%#string.Format("{0} ({1})",Localization.GetString("lblDefault.DisplayText",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'  />
                        </td>
                        <td>
                            <asp:TextBox ID="txtDefault" runat="server" CssClass="CFC_NormalTextBox" Text="<%# ((mlContent)Container.DataItem).DefaultValue %>" Width="100%"></asp:TextBox>
                            <asp:Label ID="lbldefaultmsg" runat="server" Visible="false" CssClass="CF_Admin_NormalText" ForeColor="#FF3300"></asp:Label>
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
                </table>
            </ItemTemplate>
            <AlternatingItemStyle BackColor="#DCDCDC" />
            <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        </td>
    </tr>
    <tr>
    <td align="left" colspan="2">
    <dnn:Label runat="server"  ID="lblMLHelpText" Visible="false" CssClass="CFC_NormalTextBox" Text="Tip to Enable MultiLanguage Features." HelpText="<b>Tip:</b> Since you have enabled more than one language on your site,<br/>you can keep Field Properties in different languages.<br/>Go to [Form Layout] page to Enable MultiLanguage Features."/>
    </td>
    </tr>
    <tr >
    <td align="center" colspan="2">
        <asp:Label ID="lblErrMsgRequiredField" runat="server"   Visible="false"></asp:Label>
        </td>
    </tr>
    <tr >
    <td align="center" colspan="2">
        <asp:Label ID="lblErrorMsgInvalidEmailID" runat="server"   Visible="false"></asp:Label>
        </td>
    </tr>
    <tr >
    <td align="center" colspan="2">
        <asp:Label ID="lblErrorMsgInvalidInteger" runat="server"   Visible="false"></asp:Label>
        </td>
    </tr>
</table>

 <script type="text/javascript">
   
   var chkrqd=document.getElementById('<%=chkRequired.ClientID%>');
   
   if(chkrqd.checked==1)// single line
   {
    document.getElementById('<%=lblmsg.ClientID%>').style.visibility="visible"
   }
   if (chkrqd.checked==0)
   {
   document.getElementById('<%=lblmsg.ClientID%>').style.visibility="hidden"
   }
   
   function showhide()
   {
       if(chkrqd.checked==1)// single line
       {
        document.getElementById('<%=lblmsg.ClientID%>').style.visibility="visible"
       }
       if (chkrqd.checked==0)
       {
       document.getElementById('<%=lblmsg.ClientID%>').style.visibility="hidden"
       }
   }
   
   </script> 