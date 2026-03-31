<%@ Control Language="vb" AutoEventWireup="false" Codebehind="AmazonS3.ascx.vb" Inherits="BizModules.UltraVideoGallery.AmazonS3"
    EnableViewState="true" %>
<%@ Register TagPrefix="dnn" TagName="Label" Src="~/controls/LabelControl.ascx" %>

<div id="dnnEditExtension">

  <h2 class="dnnFormSectionHead" id="Settings-AmazonAccount"><a href="" class="dnnSectionExpanded"><asp:label ID="lblAmazonAccount" runat="server" resourcekey="AmazonAccount"></asp:label></a></h2>
    <fieldset class='dnnForm'>
        <div class="dnnFormItem">
            <dnn:Label ID="plAccessKeyId" runat="server" Suffix=":"></dnn:Label>
            <asp:TextBox ID="txtAccessKeyId" runat="server" Width="300" CssClass="NormalTextBox"></asp:TextBox>
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plSecretAccessKey" runat="server" Suffix=":"></dnn:Label>
            <asp:TextBox ID="txtSecretAccessKey" runat="server" Width="300" CssClass="NormalTextBox"></asp:TextBox>
            <asp:LinkButton ID="btnRefresh" runat="server" resourcekey="Refresh"></asp:LinkButton>
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plBucket" runat="server" Suffix=":"></dnn:Label>
            <asp:DropDownList ID="cboBuckets" runat="server">
                                </asp:DropDownList>
                                <asp:LinkButton ID="btnRemove" runat="server" resourcekey="Delete"></asp:LinkButton>
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plAddBucket" runat="server" Suffix=":"></dnn:Label>
            <asp:TextBox ID="txtBucket" runat="server" CssClass="NormalTextBox"></asp:TextBox>
            <asp:LinkButton ID="btnAdd" runat="server" resourcekey="Add"></asp:LinkButton>
        </div>
    </fieldset>

  <h2 class="dnnFormSectionHead" id="H1"><a href="" class="dnnSectionExpanded"><asp:label ID="Label1" runat="server" resourcekey="S3Integration"></asp:label></a></h2>
    <fieldset class='dnnForm'>
        <div class="dnnFormItem">
            <dnn:Label ID="plMoveFilesToS3" runat="server" resourcekey="MoveFilesToS3" Suffix=":"></dnn:Label>
            <asp:checkbox ID="chkMoveFilesToS3" runat="server" />
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plShortUrl" runat="server" Suffix=":"></dnn:Label>
            <asp:Checkbox ID="chkShortUrl" runat="server" CssClass="NormalTextBox"></asp:Checkbox>
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plDistributionName" runat="server" Suffix=":"></dnn:Label>
            <asp:TextBox ID="txtDistributionName" runat="server" CssClass="NormalTextBox"></asp:TextBox>.cloudfront.net
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plDistributionType" runat="server" Suffix=":"></dnn:Label>
            <asp:DropDownList ID="cboDistributionType" runat="server">
                                <asp:ListItem Value="Download"></asp:ListItem>
                                <asp:ListItem Value="Streaming"></asp:ListItem>
                            </asp:DropDownList>
        </div>
     </fieldset>

  <h2 class="dnnFormSectionHead" id="H2"><a href="" class="dnnSectionExpanded"><asp:label ID="Label2" runat="server" resourcekey="ElasticTranscoder"></asp:label></a></h2>
    <fieldset class='dnnForm'>
        <div class="dnnFormItem">
            <dnn:Label ID="plEnableElasticTranscoder" runat="server" resourcekey="EnableElasticTranscoder" Suffix=":"></dnn:Label>
            <asp:checkbox ID="chkEnableElasticTranscoder" runat="server" />
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plAutoEncodeS3Videos" runat="server" resourcekey="AutoEncodeS3Videos" Suffix=":"></dnn:Label>
            <asp:checkbox ID="chkAutoEncodeS3Videos" runat="server" />
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plServerRegion" runat="server" resourcekey="ServerRegion" Suffix=":"></dnn:Label>
            <asp:DropDownList ID="cboRegion" runat="server">
                                <asp:ListItem Value="us-east-1" Text="US East (Northern Virginia)"></asp:ListItem>
                                <asp:ListItem Value="us-west-2" Text="US West(Oregon)"></asp:ListItem>
                                <asp:ListItem Value="us-west-1" Text="US West(N. California)"></asp:ListItem>
                                <asp:ListItem Value="eu-west-1" Text="EU (Ireland)"></asp:ListItem>
                                <asp:ListItem Value="ap-southeast-1" Text="Asia Pacific (Singapore)"></asp:ListItem>
                                <asp:ListItem Value="ap-northeast-1" Text="Asia Pacific (Tokyo)"></asp:ListItem>
                            </asp:DropDownList>
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plLowQualityVersion" runat="server" resourcekey="LowQualityVersion" Suffix=":"></dnn:Label>
            <asp:DropDownList ID="cboAWSLowQualityVersion" runat="server">
                                <asp:ListItem Text="Generic 480p 16:9" Value="1351620000001-000020"></asp:ListItem>
                                <asp:ListItem Text="Generic 480p 4:3" Value="1351620000001-000030"></asp:ListItem>
                                <asp:ListItem Text="Generic 360p 16:9" Value="1351620000001-000040"></asp:ListItem>
                                <asp:ListItem Text="Generic 360p 4:3" Value="1351620000001-000050"></asp:ListItem>
                                <asp:ListItem Text="Disabled" Value=""></asp:ListItem>
                            </asp:DropDownList>
        </div>
        <div class="dnnFormItem">
            <dnn:Label ID="plHighQualityVersion" runat="server" resourcekey="HighQualityVersion" Suffix=":"></dnn:Label>
            <asp:DropDownList ID="cboAWSHighQualityVersion" runat="server">
                                <asp:ListItem Text="Generic 1080p" Value="1351620000001-000001"></asp:ListItem>
                                <asp:ListItem Text="Generic 720p" Value="1351620000001-000010"></asp:ListItem>
                                <asp:ListItem Text="Disabled" Value=""></asp:ListItem>
                            </asp:DropDownList>
        </div>
    </fieldset>

</div>

<script type="text/javascript">
    jQuery(document).ready(function () {
        $('#dnnEditExtension').dnnPanels();
    });
</script>            

  <ul class="dnnActions dnnClear">
    <li><asp:LinkButton class="dnnPrimaryAction" id="btnFinish" runat="server" resourcekey="cmdUpdate"></asp:LinkButton></li>
  </ul>