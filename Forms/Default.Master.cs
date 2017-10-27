using System;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class Default : System.Web.UI.MasterPage
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            var siteMapNode = this.SiteMapDataSourceOne.Provider.CurrentNode;

            this.Page.Title = (siteMapNode != null) ?
                this.SiteMapDataSourceOne.Provider.CurrentNode.Title : "[Site Map?]";

            this.DesriptionLiteral.Text =(siteMapNode != null) ?
                siteMapNode.Description : "[Site Map?]";
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            this.TitleLiteral.DataBind();
        }
    }
}