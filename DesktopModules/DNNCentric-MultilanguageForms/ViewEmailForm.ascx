<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewEmailForm.ascx.cs" Inherits="DNNCentric.Modules.MultilanguageForms.ViewEmailForm" %>

<%@Register TagPrefix="wc" Namespace="DotNetNuke.UI.WebControls" Assembly="CountryListBox" %>
<%@ Register TagPrefix="dnn" Assembly="DotNetNuke" Namespace="DotNetNuke.UI.WebControls"%>
<%@ Register  Assembly="Recaptcha" Namespace="Recaptcha"  TagPrefix="recatpcha" %>
<script type="text/javascript" language="javascript">
    if (!window.jqsDCCEmailForm) 
    jqsDCCEmailForm = jQuery;
(function(jQuery) {
    jQuery(document).ready(function() {
        var idModule = '<%=this.ModuleId%>';
        // Is category Collapsible
         RefreshCaptchaImage<%=this.ModuleId%>();
         RefreshReCaptchaImage<%=this.ModuleId%>();
        var IscatCollapsible = jQuery("div[id$='ctr" + idModule + "_ModuleContent']").find("#tblefmain").find('td[jQSelector="CategoryCollapsible"]').find('input:hidden')[0].value;
        if (IscatCollapsible == "1") {
            var CatHeaders = jQuery("div[id$='ctr" + idModule + "_ModuleContent']").find("table[tablename='eftable']").find("tr[iscategoryheader='true']");

            //jQuery(CatHeaders).find('td').addClass("HeaderClosed");
            jQuery(CatHeaders).css('cursor', 'pointer').unbind('click').bind('click', function() {
                var catID = jQuery(this).attr("categoryid");
                var isvisible = jQuery(this).attr("isvisible");

                if (isvisible == "True") {
                    jQuery(this).find('td').removeClass("HeaderOpen").addClass("HeaderClosed");
                    jQuery(this).nextAll("tr[categoryid='" + catID + "']").hide(); //fadeOut("slow");
                    jQuery(this).attr("isvisible", "False");
                }
                else {
                    jQuery(this).find('td').removeClass("HeaderClosed").addClass("HeaderOpen");
                    jQuery(this).nextAll("tr[categoryid='" + catID + "']").show(); //.fadeIn("fast");
                    jQuery(this).attr("isvisible", "True");
                }
            });

           
            jQuery.each(CatHeaders, function() {

                var catID = jQuery(this).attr("categoryid");
                var isvisible = jQuery(this).attr("isvisible");
                var HasErrors = jQuery(this).nextAll("tr[categoryid='" + catID + "']").filter("tr[haserror='True']");

                if (isvisible == "True") {
                    jQuery(this).nextAll("tr[categoryid='" + catID + "']").show();
                    jQuery(this).find('td').addClass("HeaderOpen");
                }
                else {
                    if (jQuery(HasErrors).length == 0) {
                        jQuery(this).nextAll("tr[categoryid='" + catID + "']").hide();
                        jQuery(this).find('td').addClass("HeaderClosed");
                    }
                    else {
                        jQuery(this).attr("isvisible", "True");
                        jQuery(this).find('td').addClass("HeaderOpen");
                    }
                }
            }

        );
        }



        //        Date.dayNames = ['Sonntag', 'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag'];
        //        Date.abbrDayNames = ['So', 'Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa'];
        //        Date.monthNames = ['Januar', 'Februar', 'M�rz', 'April', 'Mai', 'Juni', 'Juli', 'August', 'September', 'Oktober', 'November', 'Dezember'];
        //        Date.abbrMonthNames = ['Jan', 'Feb', 'Mrz', 'Apr', 'Mai', 'Jun', 'Jul', 'Aug', 'Sep', 'Okt', 'Nov', 'Dez'];

        Date.dayNames[0] = '<%=this.strarrDayNames[0] %>';
        Date.dayNames[1] = '<%=this.strarrDayNames[1] %>';
        Date.dayNames[2] = '<%=this.strarrDayNames[2] %>';
        Date.dayNames[3] = '<%=this.strarrDayNames[3] %>';
        Date.dayNames[4] = '<%=this.strarrDayNames[4] %>';
        Date.dayNames[5] = '<%=this.strarrDayNames[5] %>';
        Date.dayNames[6] = '<%=this.strarrDayNames[6] %>';

        Date.abbrDayNames[0] = '<%=this.strarrAbbrDayNames[0] %>';
        Date.abbrDayNames[1] = '<%=this.strarrAbbrDayNames[1] %>';
        Date.abbrDayNames[2] = '<%=this.strarrAbbrDayNames[2] %>';
        Date.abbrDayNames[3] = '<%=this.strarrAbbrDayNames[3] %>';
        Date.abbrDayNames[4] = '<%=this.strarrAbbrDayNames[4] %>';
        Date.abbrDayNames[5] = '<%=this.strarrAbbrDayNames[5] %>';
        Date.abbrDayNames[6] = '<%=this.strarrAbbrDayNames[6] %>';

        Date.monthNames[0] = '<%=this.strarrMonthNames[0] %>';
        Date.monthNames[1] = '<%=this.strarrMonthNames[1] %>';
        Date.monthNames[2] = '<%=this.strarrMonthNames[2] %>';
        Date.monthNames[3] = '<%=this.strarrMonthNames[3] %>';
        Date.monthNames[4] = '<%=this.strarrMonthNames[4] %>';
        Date.monthNames[5] = '<%=this.strarrMonthNames[5] %>';
        Date.monthNames[6] = '<%=this.strarrMonthNames[6] %>';
        Date.monthNames[7] = '<%=this.strarrMonthNames[7] %>';
        Date.monthNames[8] = '<%=this.strarrMonthNames[8] %>';
        Date.monthNames[9] = '<%=this.strarrMonthNames[9] %>';
        Date.monthNames[10] = '<%=this.strarrMonthNames[10] %>';
        Date.monthNames[11] = '<%=this.strarrMonthNames[11] %>';

        Date.abbrMonthNames[0] = '<%=this.strarrAbbrMonthNames[0] %>';
        Date.abbrMonthNames[1] = '<%=this.strarrAbbrMonthNames[1] %>';
        Date.abbrMonthNames[2] = '<%=this.strarrAbbrMonthNames[2] %>';
        Date.abbrMonthNames[3] = '<%=this.strarrAbbrMonthNames[3] %>';
        Date.abbrMonthNames[4] = '<%=this.strarrAbbrMonthNames[4] %>';
        Date.abbrMonthNames[5] = '<%=this.strarrAbbrMonthNames[5] %>';
        Date.abbrMonthNames[6] = '<%=this.strarrAbbrMonthNames[6] %>';
        Date.abbrMonthNames[7] = '<%=this.strarrAbbrMonthNames[7] %>';
        Date.abbrMonthNames[8] = '<%=this.strarrAbbrMonthNames[8] %>';
        Date.abbrMonthNames[9] = '<%=this.strarrAbbrMonthNames[9] %>';
        Date.abbrMonthNames[10] = '<%=this.strarrAbbrMonthNames[10] %>';
        Date.abbrMonthNames[11] = '<%=this.strarrAbbrMonthNames[11] %>';

        var idThisModule = '<%=this.ModuleId%>';

        var idDatePickers = jQuery("div[id$='ctr" + idThisModule + "_ModuleContent']").find('input.datepicker');

           jQuery.each(idDatePickers, function() {

            Date.format = jQuery(this).attr("datepicker_format").toLowerCase();
            jQuery(this).datePicker();

            if (jQuery(this).attr("value") == '') {

            }
            else {
                jQuery(this).dpSetSelected(jQuery(this).attr("value"));
            }
            jQuery(this).dpSetStartDate(jQuery(this).attr("datepicker_min"));
            jQuery(this).dpSetEndDate(jQuery(this).attr("datepicker_max"));
            //resetting the claender image path to spacer.gif
            //jQuery(this).next("a.dp-choose-date").find("img").attr("src", jQuery(this).attr("datepicker_imagesrc"));
        });
    });
    })(jqsDCCEmailForm);



function RefreshCaptchaImage<%=this.ModuleId %>() {

    // var captchaImage = jQuery("#imgcaptcha");
    
    var captchaImage = jQuery("img[id$='ctr" + <%=this.ModuleId %> +"_ViewEmailForm_dcc_Captcha_imgcaptcha"+ <%=this.ModuleId %> +"']");
    var strModulePath = '<%= this.ctrPath %>';
    var moduleid = '<%= this.ModuleId %>';
    var captchaHeight = '<%= this.CaptchaHeight %>';
    var captchaWidth = '<%= this.CaptchaWidth %>';
    captchaImage.attr("src", strModulePath + 'Thumbnail.ashx?ot=3&mid=' + moduleid + '&rnd=' + Math.random() +'&cht=' + captchaHeight+ '&cwt=' + captchaWidth);
    return false;
}

function RefreshReCaptchaImage<%=this.ModuleId %>() {

    var captchaImage = jQuery("img[id$='ctr" + <%=this.ModuleId %> +"_ViewEmailForm_dcc_reCaptcha_imgrecaptcha']");
    var strModulePath = '<%= this.ctrPath %>';
    var moduleid = '<%= this.ModuleId %>';
    var captchaHeight = '<%= this.CaptchaHeight %>';
    var captchaWidth = '<%= this.CaptchaWidth %>';
    captchaImage.attr("src", strModulePath + 'Thumbnail.ashx?ot=3&mid=' + moduleid + '&rnd=' + Math.random() +'&cht=' + captchaHeight+ '&cwt=' + captchaWidth);
    return false;
}
</script>


<table id="tblefmain" width="100%" cellpadding="0" cellspacing="0">
    <tr>
          <td jQSelector="CategoryCollapsible">
        <asp:HiddenField ID="hfCategoryCollapsible" runat="server" />
        </td>
    </tr>
    <tr>
        
        <td id="pnlEmailForm" runat="server">        
        </td>
    </tr>
    <tr>
        <td>
            <table id="pnlUserMessages"  runat="server" visible="false">
                <tr>
                    <td>
                        <asp:Label ID="lblMessageToAdmin"  runat="server" CssClass="Normal" ></asp:Label>
				<asp:Literal ID="litConversionScriptValue" runat="server"></asp:Literal>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>




