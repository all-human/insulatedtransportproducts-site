<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ControlPannel.ascx.cs" Inherits="DNNCentric.MultilanguageForms.ControlPannel" %>

<%@ Register TagPrefix="dnn" TagName="HelpButton" Src="~/controls/HelpButtonControl.ascx" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>
<script language="javascript" type="text/javascript">
   
    jQuery(document).ready(function () {


        jQuery("a.AF_MenuItem").hover(
      function () {
          jQuery(this).removeClass("AF_MenuInactive").addClass("AF_MenuActive");
      },
      function () {
          jQuery(this).removeClass("AF_MenuActive").addClass("AF_MenuInactive");
      }
    );

    });
</script>
<div>
    <table width="470px" class="PageHeader">
        <tr>
            <td>
                <asp:LinkButton ID="lnkbtnBack" CausesValidation="false"  runat="server" 
                    onclick="lnkbtnBack_Click" >
                               <img border="0" alt="" src='<%=GetImagePath("Leftback.gif") %>'/>&nbsp;Back</asp:LinkButton>
            </td>
            
        </tr>
    </table>
</div>
 
<table  border="0" cellpadding="0" width="500px" cellspacing="0"  class="box_borderTL">
    <tr>
        <td align="left" style="color:White; font-weight:bold; font-size:medium"  class="box_borderRB box_header" colspan="2">
         <dnn:Label ID="lblGlobalSettings"  Font-Size="12px" runat="server" />
        </td>     
      
    </tr>
    <tr>
     <td align="center" class="box_borderRB">
       <asp:Label id="lblBuild" runat="server" ResourceKey="lblBuild" CssClass="NormalBold"></asp:Label>
     </td>
     <td align="center" class="box_borderRB">
       <asp:Label id="lblConfigure" runat="server" ResourceKey="lblConfigure" CssClass="NormalBold"></asp:Label>
     </td>
    </tr>
    <tr>
        <td class="box_borderRB">
            <asp:LinkButton ID="lnkManageCategory" 
                CssClass="Commandbutton AF_MenuItem AF_MenuInactive" runat="server" 
                ResourceKey="lnkManageCategory.Text" onclick="lnkManageCategory_Click"></asp:LinkButton>
        </td>
        <td class="box_borderRB">
           <asp:LinkButton ID="lnkConfiguration" 
             CssClass="Commandbutton AF_MenuItem AF_MenuInactive" runat="server" 
           ResourceKey="lnkConfiguration.Text" onclick="lnkConfiguration_Click"></asp:LinkButton>
        </td>
    </tr>
    <tr>
     <td class="box_borderRB">
            <asp:LinkButton ID="lnkAddEditFormField" 
                CssClass="Commandbutton AF_MenuItem AF_MenuInactive" runat="server" 
                 ResourceKey="lnkAddEditFormField.Text" 
                onclick="lnkAddEditFormField_Click"></asp:LinkButton>
      </td>       
     <td class="box_borderRB">
       <asp:LinkButton ID="lnkEditDynamicContent" 
            CssClass="Commandbutton AF_MenuItem AF_MenuInactive" runat="server" 
             ResourceKey="lnkEditDynamicContent.Text" 
            onclick="lnkEditDynamicContent_Click"></asp:LinkButton>
    </td>
   </tr>
   <tr>
    <td class="box_borderRB">
         <asp:LinkButton ID="lnkManageWorkFlow" 
             CssClass="Commandbutton AF_MenuItem AF_MenuInactive" runat="server" 
           ResourceKey="lnkManageWorkFlow.Text" onclick="lnkManageWorkFlow_Click"></asp:LinkButton></td>
     
        
   <td class="box_borderRB">
   <asp:LinkButton ID="lnkStoredSQLQueries" 
            CssClass="Commandbutton AF_MenuItem AF_MenuInactive" runat="server" 
             ResourceKey="lnkStoredSQLQueries.Text" 
           onclick="lnkStoredSQLQueries_Click"></asp:LinkButton>
   
   </td>
  </tr>
  <tr>
    <td class="box_borderRB">
       <asp:LinkButton ID="lnkFormValidations" 
            CssClass="Commandbutton AF_MenuItem AF_MenuInactive" runat="server" 
             ResourceKey="lnkFormValidations.Text" onclick="lnkFormValidations_Click" ></asp:LinkButton></td>   
        
   <td class="box_borderRB">
     &nbsp;
   </td>
  </tr>    
</table>

