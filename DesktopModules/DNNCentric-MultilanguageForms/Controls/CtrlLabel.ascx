<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlLabel.ascx.cs" Inherits="DNNCentric.MultilanguageForms.Controls.CtrlLabel" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TextEditor" Src="~/controls/texteditor.ascx" %>

<table style="background-color: White" width="100%">
<tr><td colspan="2">&nbsp;</td></tr> 
    <tr>
        <td  class="CF_Header" colspan="2">
            Properties</td>
        
    </tr>
    <tr>
        <td >
            <asp:Label ID="lblAlignment" runat="server" resourcekey="lbllabelAlignment.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:DropDownList ID="ddlFieldAlign" runat="server" CssClass="CFC_NormalTextBox">
          <asp:ListItem Text="To Left" Value="left"></asp:ListItem>
          <asp:ListItem Text="To Center" Value="center"></asp:ListItem>
          <asp:ListItem Text="To Right" Value="right"></asp:ListItem>
    </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblWidth" runat="server" resourcekey="lblWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtWidth" MaxLength="3" runat="server" Width="71px" CssClass="CFC_NormalTextBox" ></asp:TextBox>&nbsp;<asp:Label ID="lblPix" runat="server" resourcekey="PixWidth.Text" CssClass="CF_Admin_NormalText"></asp:Label>
        </td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr align="left">
        <td colspan="2" class="CF_Header" >
            <asp:Label ID="lbllangDependTxt" resourcekey="lbllangDependTxt.Text" runat="server" ></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:DataList ID="dlstLabel" runat="server" Width="100%" BackColor="White"
                BorderWidth="0px" CellPadding="2" GridLines="Vertical">
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <AlternatingItemStyle BackColor="#DCDCDC" />
                <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table width="99%">
                        <tr>
                            <td colspan="2" style="width: 100%" align="left">
                                <asp:Label ID="lblTextContent" runat="server" Text='<%#string.Format("{0} [{1}]({2})<br />",Localization.GetString("lblTextContent.Text",UserResourceFile),Localization.GetString("lblHTMLSupported.Text",UserResourceFile),((mlContent)Container.DataItem).Culture) %>'
                                    CssClass="CF_Admin_NormalText"></asp:Label><br/>
                                   
                            </td>
                            <%--<td style="width: 70%">
                                <asp:TextBox ID="txtTextContent" runat="server" TextMode="MultiLine" Text="<%# ((mlContent)Container.DataItem).TextContent %>"
                                  Height="170px"  Width="100%"></asp:TextBox>
                            </td> --%>                           
                        </tr>
                      <tr>
                      <td colspan="2" style="width: 100%">                     
                      <dnn:TextEditor ID="RtLabelText"  ChooseRender="false" HtmlEncode="true" Width="100%" CssClass="CFC_NormalTextBox"
                        Height="300px" runat="server" Text="<%# ((mlContent)Container.DataItem).TextContent %>"></dnn:TextEditor>
                      </td>
                      </tr>  
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
    <td align="left" colspan="2">
    <dnn:Label runat="server"  ID="lblMLHelpText" Visible="false" CssClass="CFC_NormalTextBox" Text="Tip to Enable MultiLanguage Features." HelpText="<b>Tip:</b> Since you have enabled more than one language on your site,<br/>you can keep Field Properties in different languages.<br/>Go to [Form Layout] page to Enable MultiLanguage Features."/>
    </td>
    </tr>
    <tr>
        <td align="center" colspan="2">
            <asp:Label ID="lblErrMsgRequiredField" runat="server" Font-Size="Small" ForeColor="Red"
                Visible="false"></asp:Label>
        </td>
    </tr>
</table>
