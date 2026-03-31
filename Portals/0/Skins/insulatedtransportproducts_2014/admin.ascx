<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Skin.ascx.cs" Inherits="FmSkin" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CONTROLPANEL" Src="~/Admin/Skins/controlpanel.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>
<div id="ControlPanelWrapper">
  <dnn:CONTROLPANEL runat="server" id="cp"  IsDockable="True" />
</div>
<header>
    <div class="row">
	  <div class="large-12 columns">
		<dnn:LOGO ID="Logo" runat="server" />
        <div class="contactNumber">
            Call today!<br />
            <span class="hide-for-large-up"><a href="tel:800236180">800.233.6180</a></span>
            <span class="show-for-large-up">800.233.6180</span>
        </div>
        <div class="emailSignUp">
            <span class="emailTitle">Email Sign Up</span><br />
            <p>Be the first to find out about promotions, instructional videos & manuals, and the latest tech news.  <a href="http://info.insulatedtransportproducts.com/Subscribe.html" target="_blank">sign-up today!</a></p>
        </div>
		<a href="#MobileMenu" class="hide-for-large-up">menu</a>
		<dnn:Search runat="server" id="DnnSearch" Submit="<img src='img/search.png' alt='Search Submit' />" ShowSite="false" ShowWeb="false" />
		<dnn:MENU ID="MainMenu" MenuStyle="horizSimpleMenu" runat="server" ExcludeNodes="Home"></dnn:MENU>
	  </div>
    </div>
</header>
<div class="contentArea interior">
<section class="row">
	<div id="TopPane" runat="server" class="small-12 columns"></div>
</section>
<section class="row">
	<div id="ContentPane" runat="server" class="small-12 columns"></div>
</section>
<section class="row">
	<div id="LeftPane" runat="server" class="small-12 medium-4 columns"></div>
	<div id="LeftContentPane" runat="server" class="small-12 medium-8 columns"></div>
</section>
<section class="row">
	<div id="BottomPane" runat="server" class="small-12 columns"></div>
</section>
</div>
<footer>
    <div class="row">
	    <div class="small-12 medium-4 medium-offset-1 large-3 large-offset-0 columns">
            <img src="/portals/0/skins/insulatedtransportproducts_2014/img/footerHelp.png" alt="Ready to Help" />
            <p class="footerHelp">We are always<br>ready to help!</p>
            <p>Call us today at:<br><span class="hide-for-large-up"><a href="tel:800236180">800.233.6180</a></span><span class="show-for-large-up">800.233.6180</span></p>
            <p>or <a href="/Contact">click here</a> to tell us about<br>what you are looking for.</p>
        </div>
	    <div class="small-12 medium-3 large-2 columns">
            <h3>Company</h3>
		    <dnn:MENU ID="LeftFooterMenu" MenuStyle="secondaryMenu" runat="server" ExcludeNodes="Home"></dnn:MENU>
        </div>
	    <div class="small-12 medium-4 large-4 columns">
            <h3>Products</h3>
		    <dnn:MENU ID="RightFooterMenu" MenuStyle="secondaryMenu" runat="server" NodeSelector="99"></dnn:MENU>
        </div>
	    <div class="small-12 medium-12 large-3 columns">
            <h3>Become a dealer</h3>
            <a href="/login" class="dealerLogin"><img src="/portals/0/skins/insulatedtransportproducts_2014/img/dealerLogin.png" alt="Dealer Login" /></a>
            <div class="socialPane">
                <a href="https://www.facebook.com/InsulatedTransportProducts" target="_blank"><span class="social facebook"></span></a>
                <a href="https://twitter.com/InsulatedProds" target="_blank"><span class="social twitter"></span></a>
                <a href="http://www.youtube.com/channel/UCTdaj9O3T5rUgy2hV7Y3SfQ" target="_blank"><span class="social youtube"></span></a>
            </div>
        </div>
    </div>
    <div class="row">
	    <div class="small-12 medium-6 columns">
		    <dnn:COPYRIGHT ID="dnnCopyright" runat="server" /> All rights reserved.&nbsp;|&nbsp;<a href="http://signodegroup.com/privacy/" target="_blank">Online Privacy Policy</a>
	    </div>
	    <div class="small-12 medium-4 large-offset-2 columns text-right">
		    <a href="/register">Register</a> : <dnn:LOGIN ID="DnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
        </div>
    </div>
</footer>