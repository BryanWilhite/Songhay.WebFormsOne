using System;
using System.Web.UI.WebControls;
using Songhay.Web.Controls.Extensions;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class SiteMap : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            var source = this.Master.FindControl<SiteMapDataSource>("SiteMapDataSourceOne");
            if(source !=null) this.TreeViewOne.DataSource = source;
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);
            this.TreeViewOne.DataBind();
        }
    }
}