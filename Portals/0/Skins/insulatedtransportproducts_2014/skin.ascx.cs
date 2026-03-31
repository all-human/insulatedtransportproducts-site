using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DotNetNuke.Entities.Users;
using DotNetNuke.UI.Skins;
using DotNetNuke.UI.Skins.Controls;
using DotNetNuke.Web.Client.ClientResourceManagement;
// DNN 7.2+
using DotNetNuke.Framework.JavaScriptLibraries;
//DNN < 7.2
using DotNetNuke.Framework;


public partial class FmSkin : DotNetNuke.UI.Skins.Skin
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SetUpMetaTags();
        cDefault = Parent.Page as DotNetNuke.Framework.CDefault;

        RegisterJavascript();
        RegisterStylesheets();

        SetUpForInternetExplorer();
    }

    private void RegisterStylesheets()
    {
        ClientResourceManager.RegisterStyleSheet(cDefault, ResolveUrl("css/application.css"));
    }

    private void RegisterJavascript()
    {
        //DNN 7.2+
        JavaScript.RequestRegistration(CommonJs.DnnPlugins); // Get's jQuery, jQueryUI
        JavaScript.RequestRegistration(CommonJs.HoverIntent);
        //DNN < 7.2
        //DotNetNuke.Framework.jQuery.RegisterDnnJQueryPlugins(Page);
        //DotNetNuke.Framework.jQuery.RegisterHoverIntent(Page);


        //// More Info http://www.dnnsoftware.com/wiki/page/client-resource-management-api#Relative_Order_10
        ClientResourceManager.RegisterScript(Page, ResolveUrl("js/application.js"),101);
        //ClientResourceManager.RegisterStyleSheet(cDefault, "", 100, "DnnFormBottomProvider");
    }

    #region "These are not the droids you are looking for..."

    private DotNetNuke.Framework.CDefault cDefault;
    private Literal attList;

    private void SetUpMetaTags()
    {
        var oMeta = new HtmlMeta
        {
            Name = "viewport",
            Content = "width=device-width, initial-scale=1, maximum-scale=1"
        };
        var oMeta2 = new HtmlMeta
        {
            Content = "IE=edge,chrome=1",
            HttpEquiv = "X-UA-Compatible"
        };

        AddHtmlMeta(oMeta);
        AddHtmlMeta(oMeta2);
    }

    private void SetUpForInternetExplorer()
    {
        if (cDefault == null || !IsInternetExplorer()) return;
        ClientResourceManager.RegisterScript(Page, "http://ajax.aspnetcdn.com/ajax/modernizr/modernizr-2.7.2.js",98);
        attList = cDefault.FindControl("attributeList") as Literal;
        var classes = new List<string>
                          {
                              "ie"
                          };

        if (Request.Browser.Version.StartsWith("6"))
            classes.Add("lt-ie9 lt-ie8 lt-ie7");
        else if (Request.Browser.Version.StartsWith("7"))
            classes.Add("lt-ie9 lt-ie8");
        else if (Request.Browser.Version.StartsWith("8"))
            classes.Add("lt-ie9");

        var classValues = string.Join(" ", classes.Distinct());
        if (attList == null)
            cDefault.HtmlAttributes.Add("class", classValues);
        else attList.Text += string.Format(" class='{0}'", classValues);
    }

    private bool IsInternetExplorer()
    {
        return Request.Browser.Browser.Contains("IE") || Request.Browser.Browser.Equals("InternetExplorer", StringComparison.InvariantCultureIgnoreCase);
    }

    private void AddHtmlMeta(HtmlMeta oMeta)
    {
        var meta = (from HtmlMeta hm in Page.Header.Controls.OfType<HtmlMeta>()
                    where
                        hm.Name.Equals(oMeta.Name, StringComparison.InvariantCultureIgnoreCase) ||
                        hm.Content.Equals(oMeta.Content, StringComparison.InvariantCultureIgnoreCase)
                    select hm).Any();
        if (!meta)
            Page.Header.Controls.Add(oMeta);
    }

    #endregion
}
