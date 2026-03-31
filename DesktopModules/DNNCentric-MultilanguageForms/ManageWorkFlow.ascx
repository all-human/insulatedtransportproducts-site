<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ManageWorkFlow.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.ManageWorkFlow" %>
    <%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>
   
<table cellpadding="0" cellspacing="0" border="0" >
    <tr>
        <td align="left" valign="top">
            <img src='<%= Common.GetImagePath("WF_Step1.png") %>' id="Image1" width="200px" />
            <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%= Common.GetImagePath("WF_Step1.png") %>' Width="200px"/>--%>
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <img alt="" id="Image4" src='<%= Common.GetImagePath("arrow.png")%>' width="200px" />
        </td>
        <td>
        </td>
    </tr>
    <tr id="trSaveToDB" runat="server">
        <td align="left" valign="top">
            <img alt="" id="Image5" src='<%= Common.GetImagePath("WF_Step3.png")%>' width="200px" />
        </td>
        <td align="left" valign="middle" style="padding-left: 5px;white-space:nowrap">
        <table cellpadding="0" cellspacing="0" border="0">
        <tr>
        <td>
        <asp:CheckBox ID="chkbxSubmissionData" resourcekey="chkbxSubmissionData.Text" CssClass="SubHead" runat="server" AutoPostBack="true" 
                oncheckedchanged="chkbxSubmissionData_CheckedChanged" />
        </td>
        <td>
        <asp:LinkButton ID="lnkbtnViewSavedData" resourcekey="lnkbtnViewSavedData.Text" runat="server"  CssClass="NormalBold"
                onclick="lnkbtnSaveToDB_Click"  ></asp:LinkButton>
        </td>
        </tr>
        <tr>
        <td colspan="2">
        <asp:Label ID="lblSubmissiondataTips"  CssClass="Normal" runat="server" resourcekey="lblSubmissiondataTips.Text" ></asp:Label>
        </td>
        </tr>
        </table>
        </td>
    </tr>
    <tr>
        <td align="left" valign="top">
            <img alt="" id="Image2" src='<%= Common.GetImagePath("arrow.png") %>' width="200px" />
        </td>
        <td>
        </td>
    </tr>
    
    
    
    <tr>
        <td align="left" valign="top">
            <img alt="" id="Image3" src='<%=Common.GetImagePath("WF_Step2.png")%>' width="200px" />
        </td>
        
         <td align="left" valign="middle" style="padding-left: 5px;white-space:nowrap">
         <table>
         <tr>
         <td>  <asp:CheckBox ID="ChkDisableEmail" Checked="true" OnCheckedChanged="ChkDisableEmail_CheckedChanged" resourcekey="chkbxDisabeEmail.Text" CssClass="SubHead" runat="server" AutoPostBack="true" 
               />
         </td>
         <td  style="padding-left:125px"> <asp:LinkButton ID="lnkbtnEmailWorkFlow" resourcekey="lnkbtnEmailWorkFlow.Text"  CssClass="NormalBold"
                runat="server" OnClick="lnkbtnEmailWorkFlow_Click"></asp:LinkButton></td>
         </tr>
         </table>
             
              
        </td>
        
        
    </tr>
    
    <tr id="trArrowDB" runat="server">
        <td align="left" valign="top">
            <img alt="" id="Image6" src='<%= Common.GetImagePath("arrow.png")%>' width="200px" />
        </td>
        <td>
        </td>
    </tr>
    <!-- ********* -->
    <tr>
        <td align="left" valign="top">
            <img alt="" id="Image8" src='<%=Common.GetImagePath("SQL_Post.png")%>' width="200px" />
        </td>
        
         <td align="left" valign="middle" style="padding-left: 5px;white-space:nowrap">
         <table>
         <tr>
         <td>  <asp:CheckBox ID="chkPostData"  
                 resourcekey="chkbxDisablePostData.Text" CssClass="SubHead" 
                 runat="server" AutoPostBack="true" oncheckedchanged="chkPostData_CheckedChanged" 
               />
         </td>
         <td  style="padding-left:105px"> <asp:LinkButton ID="lnkPostData" 
                 resourcekey="lnkbtnPostData.Text"  CssClass="NormalBold"
                runat="server" onclick="lnkPostData_Click" ></asp:LinkButton></td>
         </tr>
         </table>
             
              
        </td>
        
        
    </tr>
    
    <tr>
        <td align="left" valign="top">
            <img alt="" id="Image9" src='<%= Common.GetImagePath("arrow.png")%>' width="200px" />
        </td>
        <td>
        </td>
    </tr>
    
   <!-- ******* -->
    <tr>
        <td align="left" valign="top">
            <img alt="" id="Image7" src='<%= Common.GetImagePath("WF_Step4.png")%>' width="200px" />
        </td>
        <td align="left" valign="middle" style="padding-left: 5px">
            <asp:LinkButton ID="lnkbtnScreenOnCompletion" resourcekey="lnkbtnScreenOnCompletion.Text"  CssClass="NormalBold"
                runat="server" OnClick="lnkbtnScreenOnCompletion_Click"></asp:LinkButton>
        </td>
    </tr>
    <tr style="height: 12px">
        <td colspan="2">
        </td>
    </tr>
    <tr>
        <td align="center" valign="bottom">
            <asp:LinkButton ID="lnkBtnBack" resourcekey="lnkBtnBack.Text" CssClass="NormalBold" runat="server" OnClick="lnkBtnBack_Click"></asp:LinkButton>
        </td>
        <td>
        </td>
    </tr>
</table>
