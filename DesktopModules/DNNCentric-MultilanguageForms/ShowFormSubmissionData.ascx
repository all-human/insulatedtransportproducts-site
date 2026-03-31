<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ShowFormSubmissionData.ascx.cs"
    Inherits="DNNCentric.MultilanguageForms.ShowFormSubmissionData" %>
<%@ Import Namespace="DNNCentric.MultilanguageForms.Utilities" %>
<script type="text/javascript" language="javascript">
   
function poponload(url,qstr)
{
    var fullurl = url + escape(qstr);
    window.open(fullurl, "DownLoad", "top=200,left=200,width=200,height=100,modal=yes,alwaysRaised=yes");
    //testwindow.close();
}

if (!window.jqsDCCEmailForm)
    jqsDCCEmailForm = jQuery;
(function(jQuery) {
    jQuery(document).ready(function() 
    {
        
        var idDatePickers = jQuery(this).find('input.datepicker');
        
        jQuery.each(idDatePickers, function() 
        {
                     
            Date.format = jQuery(this).attr("datepicker_format").toLowerCase();
            jQuery(this).datePicker();
            
            if(jQuery(this).attr("value")=='')
            {
                
            }
            else
            {
                jQuery(this).dpSetSelected(jQuery(this).attr("value"));
            }
            jQuery(this).dpSetStartDate(jQuery(this).attr("datepicker_min"));
            jQuery(this).dpSetEndDate(jQuery(this).attr("datepicker_max"));
            //resetting the claender image path to spacer.gif
            jQuery(this).next("a.dp-choose-date").find("img").attr("src",jQuery(this).attr("datepicker_imagesrc"));

        });
    });
         })(jqsDCCEmailForm);

         function DeleteItem(RowVal) {
             if (RowVal > 0 && RowVal != '') {
                 var msg = "Are you sure you want to delete this record?";

                 if (confirm(msg)) {
                     document.getElementById('<%=HdnRowVal.ClientID %>').value = RowVal;
                     document.getElementById('<%=BtnDelete.ClientID %>').click();
                     return true;

                 }
                 return false;       
             
             }
         }

</script>
<input type="button" id="BtnDelete" onserverclick="BtnDelete_ServerClick" runat="server" 
    style="display:none" dir="ltr"  />
    <input type="hidden" runat="server" id="HdnRowVal" />
<table width="100%">
    <tr>
        <td colspan="2" style="white-space: nowrap">
            <asp:Panel GroupingText="Filter"  runat="server" Font-Bold="true" BorderColor="Gray">
                <table cellpadding="0" cellspacing="0">
                    <tr>
                        <td align="left" valign="bottom">
                            <asp:DropDownList ID="ddlFieldsName" runat="server" CssClass="CFC_NormalTextBox">
                            </asp:DropDownList>
                        </td>
                        <td align="left" valign="bottom">
                            <asp:Label ID="lblSearchText" runat="server" CssClass="SubHead" resourcekey="lblSearchText.Text" ></asp:Label><br />
                            <asp:TextBox ID="txtSearchText" CssClass="CFC_NormalTextBox" runat="server"></asp:TextBox>
                        </td>
                        <td align="left" valign="bottom">
                            <asp:Label ID="lblFromDate" runat="server" CssClass="SubHead" resourcekey="lblFromDate.Text" ></asp:Label><br />
                            <asp:TextBox ID="txtFromDate" runat="server"  
                                datepicker_min="01/01/1900" datepicker_max="01/01/2100" datepicker_format="MM/dd/yyyy"
                                dpc_submit_format="YYYY/MM/DD" datepicker="true" class="datepicker CFC_NormalTextBox dp-applied"></asp:TextBox>
                        </td>
                        <td align="left" valign="bottom">
                            <asp:Label ID="lblToDate" runat="server" CssClass="SubHead" resourcekey="lblToDate.Text" ></asp:Label><br />
                            <asp:TextBox ID="txtToDate" runat="server" 
                                datepicker_min="01/01/1900" datepicker_max="01/01/2100" datepicker_format="MM/dd/yyyy"
                                dpc_submit_format="YYYY/MM/DD" datepicker="true" class="datepicker CFC_NormalTextBox dp-applied"></asp:TextBox>
                        </td>
                        <td align="left" valign="bottom">
                            <asp:Button ID="btnSearch" runat="server" resourcekey="btnSearch.Text"  OnClick="btnSearch_Click" />
                        </td>
                       
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="lblErrMsg" Font-Bold="true" ForeColor="Red" Font-Size="Small" runat="server"
                Visible="false"></asp:Label>
        </td>
    </tr>
    <tr> <td valign="bottom" colspan="2"><asp:Button ID="BtnDeleteAll" runat="server" Text="Delete All" 
                                onclick="BtnDeleteAll_Click" OnClientClick="javascript:return confirm('Are you sure you want to delete all records?'); " /></td></tr>
    <tr>
        <td colspan="2">
            <div style="overflow: auto; width:800px">
                <asp:GridView ID="gvShowFormSubmissionData"  DataSourceID="ODSFormData" 
                    AllowPaging="True" CellPadding="0" runat="server" 
                    OnPageIndexChanging="gvShowFormSubmissionData_PageIndexChanging" 
                    ondatabound="gvShowFormSubmissionData_DataBound" 
                    OnRowDataBound="gvShowFormSubmissionData_RowDataBound">
                    <Columns>
                        <asp:TemplateField HeaderText="Action" Visible="true" >
                        <ItemTemplate>                            
                            <asp:ImageButton ID="imgDelete" runat="server"  />
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                    <HeaderStyle CssClass="DCC_gvHeader_submissiondata" />
                    <RowStyle CssClass="DCC_gvRow_submissiondata" />
                    <AlternatingRowStyle CssClass="DCC_gvAlternateRow_submissiondata"/>
                   
                </asp:GridView>
            </div>
        </td>
    </tr>
    <tr>
    <td colspan="2" align="left">
    <asp:Button ID="btnExportExcel" runat="server" onclick="btnExportExcel_Click" 
    resourcekey="btnExportExcel"  /><br />
    <asp:Label ID="lblExportdataTips" CssClass="Normal" runat="server" resourcekey="lblExportdataTips.Text" ></asp:Label>
    <img id="imgExcel" alt="No image found" src='<%=Common.GetImagePath("excellogo.jpg")%>' />
    </td>
    </tr>
     <tr>
  <td align="center" colspan="2">
  <asp:LinkButton ID="lnkBack" resourcekey="lnkBack.Text"   runat="server" CssClass="NormalBold" 
          onclick="lnkBack_Click"></asp:LinkButton>
  </td>
  </tr>
</table>
<asp:ObjectDataSource ID="ODSFormData" SelectMethod="GetFormSubmissionDataWithPaging"
    EnablePaging="true" TypeName="DNNCentric.MultilanguageForms.Components.EmailFormController"
    SelectCountMethod="GetRecordCount" SortParameterName="SortColumn" StartRowIndexParameterName="StartPageIndex"
    MaximumRowsParameterName="PageSize" runat="server" OnSelecting="ODSFormData_Selecting">    
    
    <SelectParameters>    
        <asp:Parameter Name="FromDate" Type="DateTime" />
        <asp:Parameter Name="ToDate" Type="DateTime" />
        <asp:Parameter Name="FieldID" Type="Int32" />
        <asp:Parameter Name="SearchText" Type="String" />
        <asp:Parameter Name="ModuleID" Type="Int32" />
        <asp:Parameter Name="DFPageURL" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>

