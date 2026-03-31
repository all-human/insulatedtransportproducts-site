<%@ Control Language="C#" AutoEventWireup="True" CodeBehind="EditFormLayout.ascx.cs"
    Inherits="DNNCentric.Modules.MultilanguageForms.EditFormLayout" %>
<%@ Register TagPrefix="dnnSec" TagName="SectionHead" Src="~/controls/SectionHeadControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/labelcontrol.ascx" %>

<script type="text/javascript" language="javascript">
    function GetCustomColor(obj) {

        if (obj.value == 'Custom Color') {
            document.getElementById("<%=hdnCC.ClientID %>").value = 1;
          
            document.getElementById("<%=txtCustomColor.ClientID %>").style.display = "Block";
            document.getElementById("sphash").style.display = "Block";

        } else {
            document.getElementById("<%=hdnCC.ClientID %>").value = 0;
            document.getElementById("<%=txtCustomColor.ClientID %>").style.display = "none";
            document.getElementById("sphash").style.display = "none";

        }
    }
    function GetHeaderBackgroundCustomColor(obj) {
       
        if (obj.value == 'Custom Color') {
            document.getElementById("<%=HDNCC1.ClientID %>").value = 1;
         
            document.getElementById("<%=txtCcolor.ClientID %>").style.display = "Block";
            document.getElementById("spHash1").style.display = "Block";

        } else {
            document.getElementById("<%=HDNCC1.ClientID %>").value = 0;
            document.getElementById("<%=txtCcolor.ClientID %>").style.display = "none";
            document.getElementById("spHash1").style.display = "none";

        }
    }
    function GetBackgroundCustomColor(obj) {
     
        if (obj.value == 'Custom Color') {
            document.getElementById("<%=hdnCCBC.ClientID %>").value = 1;

            document.getElementById("<%=txtBGColor.ClientID %>").style.display = "block";
            document.getElementById("Spbc").style.display = "Block";

        } else {
            document.getElementById("<%=hdnCCBC.ClientID %>").value = 0;
            document.getElementById("<%=txtBGColor.ClientID %>").style.display = "none";
            document.getElementById("Spbc").style.display = "none";

        }
    }
    function GetCaptionColor(obj) {
        if (obj.value == 'Custom Color') {
            document.getElementById("<%=hdnCaption.ClientID %>").value = 1;

            document.getElementById("<%=txtCaption.ClientID %>").style.display = "block";
            document.getElementById("spCaption").style.display = "Block";

        } else {
            document.getElementById("<%=hdnCaption.ClientID %>").value = 0;
            document.getElementById("<%=txtCaption.ClientID %>").style.display = "none";
            document.getElementById("spCaption").style.display = "none";

        }
    }
        function GetWaterMarkCaptionColor(obj) {
        if (obj.value == 'Custom Color') {
            document.getElementById("<%=hdnWaterMarkCaption.ClientID %>").value = 1;

            document.getElementById("<%=txtWaterMarkCaption.ClientID %>").style.display = "block";
            document.getElementById("spWaterMarkCaption").style.display = "Block";

        } else {
        document.getElementById("<%=hdnWaterMarkCaption.ClientID %>").value = 0;
            document.getElementById("<%=txtWaterMarkCaption.ClientID %>").style.display = "none";
            document.getElementById("spWaterMarkCaption").style.display = "none";

        }
    }
    function validation() 
    {
  
        var ddlmode = document.getElementById('<%=ddlCaptchaStyle.ClientID%>');
        if (ddlmode.value == '1') {
            
            var publickey = document.getElementById('<%=txtPublickey.ClientID%>').value;
            var privatekey = document.getElementById('<%=txtPrivatekey.ClientID%>').value;
            if (publickey == "" && privatekey == "") {
                document.getElementById('<%=lblerrorprivatekey.ClientID%>').innerHTML = "*";
                document.getElementById('<%=lblerrorpublickey.ClientID%>').innerHTML = "*";
                return false;
            }
            else {
                document.getElementById('<%=lblerrorprivatekey.ClientID%>').innerHTML = "";
                document.getElementById('<%=lblerrorpublickey.ClientID%>').innerHTML = "";
                return true;
             }
        }
    }
    
</script>

<table width="100%" cellpadding="0" cellspacing="0">
    <tr style="height: 7px">
        <td valign="top" align="left">
        </td>
        <td valign="top" align="left">
        </td>
    </tr>
    <tr>
        <td>
            <dnnSec:SectionHead ID="SecHeadGeneral" IsExpanded="true" CssClass="Head" runat="server"
                ResourceKey="SecHeadGeneral.Text" Section="tblsec_general" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
            <br />
            <table id="tblsec_general" runat="server" width="100%" cellpadding="0" cellspacing="0"
                class="TableBorder">
                <tr style="background-color: White;">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label CssClass="DCC_NormalText" ID="lblShowHeader" runat="server" resourcekey="lblShowHeader.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:CheckBox ID="chkbxShowHeader" runat="server" />
                    </td>
                </tr>
                <tr style="background-color: White;">
                    <td valign="top" style="width: 30%; white-space: nowrap" align="left" class="Alttdtwo">
                        <asp:Label CssClass="DCC_NormalText" ID="lblShowMLContent" runat="server" resourcekey="lblShowMLContent.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:CheckBox ID="chkbxShowMLContent" runat="server" />
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttd">
                        <asp:Label ID="lblCategoryCollapsible" CssClass="DCC_NormalText" runat="server" resourcekey="lblCategoryCollapsible.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlCategoryCollapsible" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Text="No" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Yes" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:Label ID="lblCaptionAlign" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptionAlign.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:DropDownList ID="ddlCaptionPosition" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Text="To the Left of Input Control" Value="left"></asp:ListItem>
                            <asp:ListItem Text="Above Input Control" Value="top"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttd">
                        <asp:Label ID="lblFormAlignment" CssClass="DCC_NormalText" runat="server" resourcekey="lblFormAlignment.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlFormAlignment" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Selected="True">Left</asp:ListItem>
                            <asp:ListItem>Right</asp:ListItem>
                            <asp:ListItem>Center</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:Label ID="lblFormWidth" CssClass="DCC_NormalText" runat="server" resourcekey="lblFormWidth.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:TextBox ID="txtFormWidth" Width="40px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <asp:Label ID="Label1" CssClass="DCC_NormalText" runat="server" Text="px"></asp:Label>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttd">
                        <asp:Label ID="lblControlsAreaWidth" CssClass="DCC_NormalText" runat="server" resourcekey="lblControlsAreaWidth.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:TextBox ID="txtControlsAreaWidth" Width="40px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <asp:Label ID="lblPercOfWidth" CssClass="DCC_NormalText" runat="server" resourcekey="lblPercOfWidth.Text"></asp:Label>
                    </td>
                </tr>
                <tr style="background-color: White;">
                    <td valign="top" style="width: 30%; white-space: nowrap" align="left" class="Alttdtwo">
                        <dnn:Label ID="lblSendMails" runat="server" CssClass="DCC_NormalText" ResourceKey="lblSendMails" />
                        <%--<asp:Label CssClass="DCC_NormalText" ID="Label2" runat="server" resourcekey="lblShowMLContent.Text"></asp:Label>--%>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:CheckBox ID="chkSendmails" runat="server" />
                    </td>
                </tr>
                <tr style="background-color: White;">
                    <td valign="top" style="width: 30%; white-space: nowrap" align="left" class="Alttd">
                        <asp:Label ID="lblAsynchronousMail" runat="server" CssClass="DCC_NormalText" ResourceKey="AsynchronousEmail.Text">
                        </asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:CheckBox Checked="true" ID="ChkAsynchronousMail" runat="server" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr style="height: 10px">
        <td valign="top" align="left">
        </td>
        <td valign="top" align="left">
        </td>
    </tr>
    <tr>
        <td>
            <dnnSec:SectionHead ID="secHeadFormUI" IsExpanded="false" CssClass="Head" runat="server"
                ResourceKey="secHeadFormUI.Text" Section="tblsec_Color" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
            <table id="tblsec_Color" runat="server" width="100%" cellpadding="0" cellspacing="0"
                class="TableBorder">
                <tr style="background-color: White;">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label CssClass="DCC_NormalText" ID="lblHeaderTextFont" runat="server" resourcekey="lblHeaderTextFont.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlHeaderTextFont" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Value="Default">CSS Default</asp:ListItem>
                            <asp:ListItem Value="Arial, Helvetica, sans-serif">Arial, Helvetica, sans-serif</asp:ListItem>
                            <asp:ListItem Value="Times New Roman, Times, serif">Times New Roman, Times, serif</asp:ListItem>
                            <asp:ListItem Value="Courier New, Courier, monospace">Courier New, Courier, monospace</asp:ListItem>
                            <asp:ListItem Value="Georgia, Times New Roman, Times, serif">Georgia, Times New Roman, Times, serif</asp:ListItem>
                            <asp:ListItem Value="Verdana, Arial, Helvetica, sans-serif">Verdana, Arial, Helvetica, sans-serif</asp:ListItem>
                            <asp:ListItem Value="Geneva, Arial, Helvetica, sans-serif">Geneva, Arial, Helvetica, sans-serif</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <asp:DropDownList ID="ddlHeaderTextSize" runat="server" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlHeaderTextFace" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Selected="True" Value="-1">CSS Default</asp:ListItem>
                            <asp:ListItem Value="Normal">Normal</asp:ListItem>
                            <asp:ListItem Value="Bold">Bold</asp:ListItem>
                            <asp:ListItem Value="Italic">Italic</asp:ListItem>
                            <asp:ListItem Value="Bold Italic">Bold Italic</asp:ListItem>
                            <asp:ListItem Value="Underline">Underline</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:Label ID="lblCategoryTextAlign" CssClass="DCC_NormalText" runat="server" resourcekey="lblCategoryTextAlign.Text"
                            Text="Category Text Alignment:"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:DropDownList ID="ddlCategoryTextAlign" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Text="CSS Default" Value="default"></asp:ListItem>
                            <asp:ListItem Text="To Left" Value="left"></asp:ListItem>
                            <asp:ListItem Text="To Center" Value="center"></asp:ListItem>
                            <asp:ListItem Text="To Right" Value="right"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label ID="lblHeaderTextColor" CssClass="DCC_NormalText" runat="server" resourcekey="lblHeaderTextColor.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlHeaderTextColor" runat="server" onchange="GetCustomColor(this);" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                        <span id="sphash" style="display: none"></span>
                        <asp:TextBox ID="txtCustomColor" Text="#" Width="60" MaxLength="7" runat="server"
                            Style="display: none" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <input type="hidden" runat="server" id="hdnCC" />
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:Label ID="lblHeaderBackgroundColor" CssClass="DCC_NormalText" runat="server"
                            resourcekey="lblHeaderBackgroundColor.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:DropDownList ID="ddlHeaderBackgroundColor" runat="server" onchange="GetHeaderBackgroundCustomColor(this);" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                        <span id="spHash1" style="display: none"></span>
                        <asp:TextBox ID="txtCcolor" Text="#" Width="60" MaxLength="7" runat="server" Style="display: none" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <input type="hidden" runat="server" id="HDNCC1" />
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label ID="lblCaptionColor" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptionColor.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlCaptionTextColor" runat="server" onchange="GetCaptionColor(this);" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                       
                        <asp:DropDownList ID="ddlCaptionTextFont" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Value="Default">CSS Default</asp:ListItem>
                            <asp:ListItem Value="Arial, Helvetica, sans-serif">Arial, Helvetica, sans-serif</asp:ListItem>
                            <asp:ListItem Value="Times New Roman, Times, serif">Times New Roman, Times, serif</asp:ListItem>
                            <asp:ListItem Value="Courier New, Courier, monospace">Courier New, Courier, monospace</asp:ListItem>
                            <asp:ListItem Value="Georgia, Times New Roman, Times, serif">Georgia, Times New Roman, Times, serif</asp:ListItem>
                            <asp:ListItem Value="Verdana, Arial, Helvetica, sans-serif">Verdana, Arial, Helvetica, sans-serif</asp:ListItem>
                            <asp:ListItem Value="Geneva, Arial, Helvetica, sans-serif">Geneva, Arial, Helvetica, sans-serif</asp:ListItem>
                        </asp:DropDownList>
                         <span id="spCaption" style="display: none"></span>
                        <asp:TextBox ID="txtCaption" Text="#" Width="60" MaxLength="7" runat="server" Style="display: none" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <input type="hidden" runat="server" id="hdnCaption" />
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttdtwo">
                        <asp:Label ID="lblCaptionSizeStyle" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptionSizeStyle.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:DropDownList ID="ddlCaptionTextSize" runat="server" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlCaptionTextFace" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Selected="True" Value="-1">CSS Default</asp:ListItem>
                            <asp:ListItem Value="Normal">Normal</asp:ListItem>
                            <asp:ListItem Value="Bold">Bold</asp:ListItem>
                            <asp:ListItem Value="Italic">Italic</asp:ListItem>
                            <asp:ListItem Value="Bold Italic">Bold Italic</asp:ListItem>
                            <asp:ListItem Value="Underline">Underline</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttd">
                        <asp:Label ID="lblCaptionTextAlign" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptionTextAlign.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlCaptionFieldAlignment" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Text="CSS Default" Value="default" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="To Left" Value="left"></asp:ListItem>
                            <asp:ListItem Text="To Center" Value="center"></asp:ListItem>
                            <asp:ListItem Text="To Right" Value="right"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlCaptionVAlignment" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Text="CSS Default" Value="default"></asp:ListItem>
                            <asp:ListItem Text="Top" Value="top"></asp:ListItem>
                            <asp:ListItem Text="Middle" Value="middle"></asp:ListItem>
                            <asp:ListItem Text="Bottom" Value="bottom"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttdtwo">
                        <asp:Label ID="lblWatemarkTextColor" CssClass="DCC_NormalText" runat="server" resourcekey="lblWatemarkCaptionColor.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:DropDownList ID="ddlWaterMarkTextColor" runat="server" onchange="GetWaterMarkCaptionColor(this);" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                       
                        <asp:DropDownList ID="ddlWaterMarkTextFont" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Value="Default">CSS Default</asp:ListItem>
                            <asp:ListItem Value="Arial, Helvetica, sans-serif">Arial, Helvetica, sans-serif</asp:ListItem>
                            <asp:ListItem Value="Times New Roman, Times, serif">Times New Roman, Times, serif</asp:ListItem>
                            <asp:ListItem Value="Courier New, Courier, monospace">Courier New, Courier, monospace</asp:ListItem>
                            <asp:ListItem Value="Georgia, Times New Roman, Times, serif">Georgia, Times New Roman, Times, serif</asp:ListItem>
                            <asp:ListItem Value="Verdana, Arial, Helvetica, sans-serif">Verdana, Arial, Helvetica, sans-serif</asp:ListItem>
                            <asp:ListItem Value="Geneva, Arial, Helvetica, sans-serif">Geneva, Arial, Helvetica, sans-serif</asp:ListItem>
                        </asp:DropDownList>
                         <span id="spWaterMarkCaption" style="display: none"></span>
                        <asp:TextBox ID="txtWaterMarkCaption" Text="#" Width="60" MaxLength="7" runat="server" Style="display: none" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <input type="hidden" runat="server" id="hdnWaterMarkCaption" />
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label ID="lblWaterMarkCaptionSizeStyle" CssClass="DCC_NormalText" runat="server" resourcekey="lblWaterMarkCaptionSizeStyle.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlWaterMarkCaptionSizeStyle" runat="server" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddlWaterMarkCaptionTextFace" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Selected="True" Value="-1">CSS Default</asp:ListItem>
                            <asp:ListItem Value="Normal">Normal</asp:ListItem>
                            <asp:ListItem Value="Bold">Bold</asp:ListItem>
                            <asp:ListItem Value="Italic">Italic</asp:ListItem>
                            <asp:ListItem Value="Bold Italic">Bold Italic</asp:ListItem>
                            <asp:ListItem Value="Underline">Underline</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>                
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:Label ID="lblFormBackgroundColor" CssClass="DCC_NormalText" runat="server" resourcekey="lblFormBackgroundColor.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:DropDownList ID="ddlFormBackgroundColor" runat="server" onchange="GetBackgroundCustomColor(this);" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                        <span id="Spbc" style="display: none"></span>
                        <asp:TextBox ID="txtBGColor" Text="#" Width="60" MaxLength="7" runat="server" Style="display: none"></asp:TextBox>
                        <input type="hidden" runat="server" id="hdnCCBC" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr style="height: 10px">
        <td valign="top" align="left">
        </td>
        <td valign="top" align="left">
        </td>
    </tr>
    <tr>
        <td>
            <dnnSec:SectionHead ID="secHeadCaptcha" IsExpanded="false" CssClass="Head" runat="server"
                ResourceKey="secHeadCaptcha.Text" Section="tblsec_Captcha" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
            <table id="tblsec_Captcha" runat="server" width="100%" cellpadding="0" cellspacing="0"
                class="TableBorder">
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label ID="lblCaptchaVisibility" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptchaVisibility.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" style="white-space: nowrap" class="Alttd">
                        <asp:DropDownList ID="ddlCaptchaVisibility" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Value="0">Disabled</asp:ListItem>
                            <asp:ListItem Value="1">To All Visitors</asp:ListItem>
                            <asp:ListItem Value="2">Only to Anonymous Visitors</asp:ListItem>
                        </asp:DropDownList>
                       <%-- <div id="divCaptchaSize" runat="server" style="position: inherit; white-space: nowrap">
                            <asp:Label ID="lblHeight" CssClass="DCC_NormalText" runat="server" Text="Height(px):"></asp:Label>
                            <asp:TextBox ID="txtCaptchaHeight" Width="40px" runat="server"></asp:TextBox>
                            <asp:Label ID="lblpx" CssClass="DCC_NormalText" runat="server" Text="Width(px):"></asp:Label>
                            <asp:TextBox ID="txtCaptchaWidth" Width="40px" runat="server"></asp:TextBox></div>--%>
                    </td>
                </tr>
               
                 <tr id="divcaptchastyle" style="background-color: White" runat="server">
                    <td valign="top" style="width: 35%" align="left" class="Alttdtwo">
                      <asp:Label ID="lblCaptchaStyle" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptchaStyle.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" style="white-space: nowrap" class="Alttdtwo">
                       <asp:DropDownList ID="ddlCaptchaStyle" runat="server" CssClass="CFC_NormalTextBox">
                          <asp:ListItem Value="0">Standard</asp:ListItem>
                          <asp:ListItem Value="1">reCAPTCHA</asp:ListItem>
                       </asp:DropDownList>
                       <br />
                        <asp:Label ID="lblrecaptchekey" runat="server" ForeColor="Gray" Font-Size="Small"></asp:Label>
                    </td>
                 </tr>
                  <tr id="trstandardheight" style="background-color: White" runat="server">
                    <td  valign="top" style="width: 35%" align="right" class="Alttd">
                        <dnn:Label ID="lblstandardheight" CssClass="DCC_NormalText" runat="server" ResourceKey="lblstandardheight"/>   
                    </td>
                    <td valign="top" align="left" style="white-space: nowrap" class="Alttd">
                      <asp:TextBox ID="txtCaptchaHeight"  Width="60px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
                    </td>
                  </tr>
                   <tr id="trstandardwidth" style="background-color: White" runat="server">
                    <td  valign="top" style="width: 35%" align="right" class="Alttd">
                        <dnn:Label ID="lblstandardwidth" CssClass="DCC_NormalText" runat="server" ResourceKey="lblstandardwidth"/>   
                    </td>
                    <td valign="top" align="left" style="white-space: nowrap" class="Alttd">
                      <asp:TextBox ID="txtCaptchaWidth"  Width="60px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
                    </td>
                  </tr>

                  <tr id="trpublickey" style="background-color: White" runat="server">
                    <td valign="top" style="width: 35%" align="right" class="Alttd">                                         
                      <dnn:Label ID="lblPublickey" CssClass="DCC_NormalText" runat="server" ResourceKey="lblPublickey"/>
                    </td>
                    <td valign="top" align="left" style="white-space: nowrap" class="Alttd">
                      <asp:TextBox ID="txtPublickey"  Width="70%" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>  
                      <asp:Label ID="lblerrorpublickey" runat="server" CssClass="NormalRed"></asp:Label>                    
                    </td>
                 </tr>
                  <tr id="trprivatekey" style="background-color: White" runat="server">
                    <td valign="top" style="width: 35%" align="right" class="Alttd">                    
                      <dnn:Label ID="lblPrivatekey" CssClass="DCC_NormalText" runat="server" ResourceKey="lblPrivatekey"/>
                    </td>
                    <td valign="top" align="left" style="white-space: nowrap" class="Alttd">
                      <asp:TextBox ID="txtPrivatekey" Width="70%" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
                      <asp:Label ID="lblerrorprivatekey" runat="server" CssClass="NormalRed"></asp:Label> 
                    </td>
                 </tr>
                 <tr id="divcaptchatheme" style="background-color: White" runat="server">
                    <td valign="top" style="width: 35%" align="right" class="Alttd">
                      <dnn:Label ID="lblCaptchaTheme" CssClass="DCC_NormalText" runat="server" ResourceKey="lblCaptchaTheme"/>
                    </td>
                    <td valign="top" align="left" style="white-space: nowrap" class="Alttd">
                       <asp:DropDownList ID="ddlCaptchaTheme" runat="server" CssClass="CFC_NormalTextBox">
                          <asp:ListItem Value="0">Red</asp:ListItem>
                          <asp:ListItem Value="1">White</asp:ListItem>
                          <asp:ListItem Value="2">Blackglass</asp:ListItem>
                          <asp:ListItem Value="3">Clean</asp:ListItem>
                       </asp:DropDownList>
                    </td>
                 </tr>
                 <tr id="trcaptchaAlign" style="background-color: White">
                    <td valign="top" style="width: 35%" align="right" class="Alttd">
                        <asp:Label ID="lblCaptchaAlign" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptchaAlign.Text"></asp:Label>
                    </td>
                    <td valign="top" style="white-space: nowrap" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlCaptchaAlign" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Selected="True">Left</asp:ListItem>
                            <asp:ListItem>Center</asp:ListItem>
                            <asp:ListItem>Right</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblCaptchaAlignwrt" CssClass="DCC_NormalText" runat="server" resourcekey="lblCaptchaAlignwrt.Text"></asp:Label>
                        <asp:DropDownList ID="ddlCaptchaAlignwrt" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Text="Form Width" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Input Fields" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr style="height: 10px">
        <td valign="top" align="left">
        </td>
        <td valign="top" align="left">
        </td>
    </tr>
    <tr>
        <td>
            <dnnSec:SectionHead ID="secHeadErrorFormat" IsExpanded="false" CssClass="Head" runat="server"
                ResourceKey="secHeadErrorFormat.Text" Section="tblsec_Errors" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
            <table id="tblsec_Errors" runat="server" width="100%" cellpadding="0" cellspacing="0"
                class="TableBorder">
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label ID="lblReqFldIndict" runat="server" class="DCC_NormalText" resourcekey="ReqFldIndict.Text"></asp:Label>
                    </td>
                    <td class="Alttd">
                        <asp:CheckBox ID="chkReqFldIndict" runat="server" Checked="true" />
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" class="Alttdtwo">
                        <asp:Label ID="lblAlignErrorCap" runat="server" CssClass="DCC_NormalText" resourcekey="AlignErrorCap.Text"></asp:Label>
                    </td>
                    <td class="Alttdtwo">
                        <asp:RadioButtonList ID="rbCapErrorAllign" runat="server" CssClass="DCC_NormalText">
                            <asp:ListItem Value="Before Caption" Text="Before Caption"></asp:ListItem>
                            <asp:ListItem Value="After Caption" Text="After Caption"></asp:ListItem>
                            <asp:ListItem Value="After Control" Text="After Control"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td class="Alttd">
                        <asp:Label ID="lblRfieldTemplate" runat="server" CssClass="DCC_NormalText" resourcekey="RfieldTemplate.Text"></asp:Label>
                    </td>
                    <td class="Alttd">
                        <asp:TextBox ID="txtRfieldTemplate" runat="server" Width="90%" CssClass="CFC_NormalTextBox"></asp:TextBox>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttdtwo">
                        <asp:Label ID="lblErrorPositon" CssClass="DCC_NormalText" runat="server" resourcekey="lblErrorPositon.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:DropDownList ID="ddlErrorMsgPositon" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Value="0">Show at Top Only</asp:ListItem>
                            <asp:ListItem Selected="True" Value="1">Show at Bottom Only</asp:ListItem>
                            <asp:ListItem Value="2">Show at Both Positions</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttd">
                        <asp:Label ID="lblErrorMsgTemplate" CssClass="DCC_NormalText" runat="server" resourcekey="lblErrorMsgTemplate.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:TextBox ID="txtErrorMsgTemplate" CssClass="CFC_NormalTextBox" Width="90%" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="lblHelpTokens" runat="server" ForeColor="Gray" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                 <tr style="background-color: White">
                   <td valign="top" style="width: 35%" align="left" class="Alttdtwo">
                     <asp:Label ID="lblMaxErrorShow" runat="server" CssClass="DCC_NormalText" resourcekey="lblMaxErrorShow"></asp:Label> 
                   </td>
                   <td valign="top" align="left" class="Alttdtwo">
                     <asp:TextBox ID="txtMaxErrorShow" runat="server" MaxLength="3" Text="4" CssClass="CFC_NormalTextBox" ></asp:TextBox>&nbsp;
                     <asp:RequiredFieldValidator ID="rfvMaxErrorShow" runat="server" ControlToValidate="txtMaxErrorShow" CssClass="NormalRed" ErrorMessage="*" Display="Static"></asp:RequiredFieldValidator>&nbsp
                     <asp:CompareValidator id="CompareValidator1" runat="server"   ErrorMessage="You must enter a number" CssClass="NormalRed" ControlToValidate="txtMaxErrorShow" Type="Integer" Operator="DataTypeCheck"></asp:CompareValidator>
                     <br />
                     <asp:Label ID="lblMaxErrorHelp" runat="server" ForeColor="Gray" Resourcekey="lblMaxErrorHelp" Font-Size="Small"></asp:Label>
                   </td>
                 </tr>
            </table>
        </td>
    </tr>
    <tr style="height: 10px">
        <td valign="top" align="left">
        </td>
        <td valign="top" align="left">
        </td>
    </tr>
    <tr>
        <td>
            <dnnSec:SectionHead ID="secHeadSubmitBtn" CssClass="Head" IsExpanded="false" runat="server"
                ResourceKey="secHeadSubmitBtn.Text" Section="tblsec_SubmitBtn" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
            <table id="tblsec_SubmitBtn" runat="server" width="100%" cellpadding="0" cellspacing="0"
                class="TableBorder">
                <tr style="background-color: White">
                    <td valign="top" style="width: 35%" align="left" class="Alttd">
                        <asp:Label ID="lblSubmitBtnAlign" CssClass="DCC_NormalText" runat="server" resourcekey="lblSubmitBtnAlign.Text"></asp:Label>
                    </td>
                    <td valign="top" style="white-space: nowrap" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlSubmitBtnAlign" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Selected="True">Center</asp:ListItem>
                            <asp:ListItem>Left</asp:ListItem>
                            <asp:ListItem>Right</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="lblwrtText" CssClass="DCC_NormalText" runat="server" resourcekey="lblwrtText.Text"></asp:Label>
                        <asp:DropDownList ID="ddlSubmitAlignWRT" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Text="Form Width" Value="0" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Input Fields" Value="1"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:Label ID="lblSubmitButtonType" CssClass="DCC_NormalText" runat="server" resourcekey="lblSubmitButtonType.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:RadioButtonList AutoPostBack="true" CssClass="DCC_NormalText" RepeatDirection="Horizontal"
                            ID="rdlSubmitButtonType" runat="server" OnSelectedIndexChanged="rdlSubmitButtonType_SelectedIndexChanged">
                            <asp:ListItem Value="0">Link Button</asp:ListItem>
                            <asp:ListItem Value="1">Image Button</asp:ListItem>
                            <asp:ListItem Value="2">Command Button</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr id="trImageBtn" visible="false" runat="server" style="background-color: White">
                    <td valign="top" align="right" class="Alttd">
                        <asp:Label ID="lblSubmitbtnImage" runat="server" Text="Submit Button Image" CssClass="DCC_NormalText"></asp:Label>
                    </td>
                    <td valign="top" colspan="2" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlSubmitBtnImages" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlSubmitBtnImages_SelectedIndexChanged">
                        </asp:DropDownList>
                        <br />
                        <asp:FileUpload ID="fUploadSubmitBtnImage" runat="server" Visible="False" />
                        <asp:Button ID="btnUploadImage" runat="server" resourcekey="btnUploadImage.Text"
                            OnClick="btnUploadImage_Click" Visible="False" />
                        <asp:ImageButton ID="imgbtnPreview" Enabled="false" runat="server" Visible="False" />
                    </td>
                </tr>
                <tr id="trclearImageBtn" runat="server" style="background-color: White" visible="false">
                    <td valign="top" align="right" class="Alttd">
                        <asp:Label ID="lblclearallbtnImage" runat="server" Text="Clear All Button Image"
                            CssClass="DCC_NormalText"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlClearAllBtnImg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlClearAllBtnImg_SelectedIndexChanged" CssClass="CFC_NormalTextBox">
                        </asp:DropDownList>
                        <br />
                        <asp:FileUpload ID="FUClearAllBtnImg" runat="server" Visible="False" />
                        <asp:Button ID="btnUploadCAImgBtn" runat="server" Visible="False" resourcekey="btnUploadImage.Text"
                            OnClick="btnUploadCAImgBtn_Click" />
                        <asp:ImageButton ID="imgClearAllImgPre" Enabled="false" runat="server" Visible="False" />
                    </td>
                </tr>
                <tr id="trLinkBtn" style="background-color: White" runat="server" visible="true">
                    <td valign="top" align="right" class="Alttd">
                        <asp:Label ID="lblSubmitbtnText" runat="server" Text="Submit Button Text" CssClass="DCC_NormalText"></asp:Label><br />
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:TextBox ID="txtSubmitBtnText" Width="100px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <asp:Label ID="lblLnkBtnText" CssClass="DCC_NormalText" runat="server" resourcekey="lblLnkBtnText.Text"></asp:Label>
                    </td>
                </tr>
                <tr id="trclearLinkBtn" style="background-color: White" runat="server" visible="true">
                    <td valign="top" align="right" class="Alttd">
                        <asp:Label ID="lblClearAllText" runat="server" Text="Clear All Button Text" CssClass="DCC_NormalText"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:TextBox ID="txtClearAllBtnText" Width="100px" runat="server" CssClass="CFC_NormalTextBox"></asp:TextBox>
                        <asp:Label ID="Label2" CssClass="DCC_NormalText" runat="server" resourcekey="lblLnkBtnText.Text"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:Label ID="lblHeightandWidth" runat="server" CssClass="DCC_NormalText" Text="Button Size(px):"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttdtwo">
                        <asp:TextBox ID="txtHeightBtn" runat="server" Width="60px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;
                        <asp:Label ID="lblBtnHeight" runat="server" Text="Height" CssClass="DCC_NormalText"></asp:Label>
                        <br />
                        <asp:TextBox ID="txtBtnWidth" runat="server" Width="60px" CssClass="CFC_NormalTextBox"></asp:TextBox>&nbsp;
                        <asp:Label ID="lblBtnWidth" runat="server" Text="Width" CssClass="DCC_NormalText"></asp:Label>
                    </td>
                </tr>
                <tr style="background-color: White">
                    <td valign="top" align="left" class="Alttd">
                        <asp:Label ID="lblClearBtnVisibility" CssClass="DCC_NormalText" runat="server" resourcekey="lblClearBtnVisibility.Text"></asp:Label>
                    </td>
                    <td valign="top" align="left" class="Alttd">
                        <asp:DropDownList ID="ddlClearBtnVisibility" runat="server" CssClass="CFC_NormalTextBox">
                            <asp:ListItem Value="0">Hide</asp:ListItem>
                            <asp:ListItem Value="1">Show</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <%--<tr id="trCommandbtn" style="background-color: White" runat="server" visible="true">
                <td valign="top" align="right" class="Alttd">
                <asp:Label ID="lblCommandbtn" runat="server" Text="Command Button Text:" CssClass="DCC_NormalText"></asp:Label>
                </td>
                <td valign="top" align="left" class="Alttd">
                <asp:TextBox ID="txtCmdBtnText" Width="100px" runat="server"></asp:TextBox>
                    <asp:Label ID="lblCmdBtnText" CssClass="DCC_NormalText" runat="server"
                     Text="(as default button text) "></asp:Label>  
                </td>
                </tr>--%>
               
            </table>
        </td>
    </tr>
     
    <tr style="height: 10px">
        <td valign="top" align="left">
        </td>
        <td valign="top" align="left">
        </td>
    </tr>
    <tr>
     <td>
     <dnnSec:SectionHead ID="shFileUploadSetting" CssClass="Head" IsExpanded="false" runat="server"
                ResourceKey="shFileUploadSetting.Text" Section="tblFileUploadSetting" MaxImageUrl='<%# GetImagePath("maximize.jpg") %>'
                MinImageUrl='<%# GetImagePath("minimize.jpg") %>' />
      <table id="tblFileUploadSetting" runat="server" width="100%" cellpadding="0" cellspacing="0"
                class="TableBorder" >
         <tr style="background-color: White">
           <td align="left" class="Alttd" style="width: 35%">
           <dnn:Label ID="lblUploadpath" runat="server" ResourceKey="lblUploadpath" CssClass="DCC_NormalText" />
           </td>            
           <td align="left" class="Alttd">
             <asp:TextBox ID="txtFileUploadPath" runat="server" Width="351px" CssClass="CFC_NormalTextBox"></asp:TextBox>
           </td> 
            
            <%--<div style="background-color:Transparent; width:auto; height:auto; overflow: scroll;
                border: 1px solid  #111">
            <asp:Label ID="lblFUploadToken" runat="server" ></asp:Label>
            </div>--%>
           
         </tr>
      </table>          
     </td>
    </tr>
    <tr>
        <td valign="top" colspan="2" align="center" >
            <asp:Label ID="lblErrorMsg" ForeColor="Red" runat="server" CssClass="DCC_NormalText"
                Visible="false"></asp:Label>
            <asp:Label ID="lblStatusMessage" ForeColor="BlueViolet" runat="server" CssClass="DCC_NormalText"
                Visible="false"></asp:Label>
        </td>
    </tr>
    <tr style="height: 10px">
        <td valign="top" align="left">
        </td>
        <td valign="top" align="left">
        </td>
    </tr>
    <tr>
        <td valign="top" colspan="2" align="center">
            <asp:LinkButton ID="lnkbtnSave" runat="server" resourcekey="lnkbtnSave.Text" CssClass="NormalBold"
                OnClick="lnkbtnSave_Click" OnClientClick=" return validation()"></asp:LinkButton>
            &nbsp;<asp:LinkButton ID="lnkbtnBack" runat="server" resourcekey="lnkbtnBack.Text"
                CssClass="NormalBold" OnClick="lnkbtnBack_Click"></asp:LinkButton>
        </td>
    </tr>
</table>

<script type="text/javascript">
    jQuery(document).ready(function () {
        
        var mode = document.getElementById('<%=ddlCaptchaVisibility.ClientID%>');
        
        if (mode.value == '0') {
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "none"; 
            document.getElementById('<%=divcaptchastyle.ClientID %>').style.display = "none";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "none";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "none";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "none";
        }
        else {
            //document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "table-row"; 
            document.getElementById('<%=divcaptchastyle.ClientID %>').style.display = "table-row";
        }

        var ddlmode = document.getElementById('<%=ddlCaptchaStyle.ClientID%>');
        if (mode.value == '1' && ddlmode.value == '0' || mode.value == '2' && ddlmode.value == '0')// multi line
        {
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "table-row";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "none";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "none";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "none";
            document.getElementById('<%=lblrecaptchekey.ClientID %>').style.display = "none";
        }
        else if (mode.value == '1' && ddlmode.value == '1' || mode.value == '2' && ddlmode.value == '1') {
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "none";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "table-row";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "table-row";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "table-row";
            document.getElementById('<%=lblrecaptchekey.ClientID %>').style.display = "table-row";
        }

    });
    function disableEnableDiv() {
       
        var ddlmode = document.getElementById('<%=ddlCaptchaVisibility.ClientID%>');
        var ddlmode1 = document.getElementById('<%=ddlCaptchaStyle.ClientID%>');
        if (ddlmode.value == '0') {
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "none";
            document.getElementById('<%=divcaptchastyle.ClientID %>').style.display = "none";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "none";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "none";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "none";
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "none";
        }
        if (ddlmode.value == '1' && ddlmode1.value == '0' || ddlmode.value == '2' && ddlmode1.value == '0')// multi line
        {
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "table-row";
            document.getElementById('<%=divcaptchastyle.ClientID%>').style.display = "table-row";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "none";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "none";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "none";
            document.getElementById('<%=lblrecaptchekey.ClientID %>').style.display = "none";
        }
        if (ddlmode.value == '1' && ddlmode1.value == '1' || ddlmode.value == '2' && ddlmode1.value == '1') {
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "none";
            document.getElementById('<%=divcaptchastyle.ClientID%>').style.display = "table-row";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "table-row";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "table-row";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "table-row";
            document.getElementById('<%=lblrecaptchekey.ClientID %>').style.display = "table-row";
        }
    }
    function disableEnableTheme() {
        var ddlmode = document.getElementById('<%=ddlCaptchaVisibility.ClientID%>');
        var ddlmode1 = document.getElementById('<%=ddlCaptchaStyle.ClientID%>');
        if (ddlmode.value == '0') {
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "none";
            document.getElementById('<%=divcaptchastyle.ClientID %>').style.display = "none";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "none";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "none";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "none";
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "none";
        }
        if (ddlmode.value == '1' && ddlmode1.value == '0' || ddlmode.value == '2' && ddlmode1.value == '0')// multi line
        {
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "table-row";
            document.getElementById('<%=divcaptchastyle.ClientID%>').style.display = "table-row";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "none";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "none";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "none";
            document.getElementById('<%=lblrecaptchekey.ClientID %>').style.display = "none";
        }
        if (ddlmode.value == '1' && ddlmode1.value == '1' || ddlmode.value == '2' && ddlmode1.value == '1') {
            document.getElementById('<%=trcaptchaAlign.ClientID%>').style.display = "table-row";
            document.getElementById('<%=trstandardheight.ClientID%>').style.display = "none";
            document.getElementById('<%=trstandardwidth.ClientID%>').style.display = "none";
            document.getElementById('<%=divcaptchastyle.ClientID%>').style.display = "table-row";
            document.getElementById('<%=divcaptchatheme.ClientID %>').style.display = "table-row";
            document.getElementById('<%=trpublickey.ClientID %>').style.display = "table-row";
            document.getElementById('<%=trprivatekey.ClientID %>').style.display = "table-row";
            document.getElementById('<%=lblrecaptchekey.ClientID %>').style.display = "table-row";
        }
    }
   
</script>