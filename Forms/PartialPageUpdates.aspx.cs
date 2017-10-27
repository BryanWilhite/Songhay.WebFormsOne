using System;
using System.Web.UI.HtmlControls;
using Songhay.Web.Controls.Extensions;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class PartialPageUpdates : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.ContentTemplateLiteral.Text = "This content is set during <code>OnInit</code>.";

            this.PartialPageCommand.Click += (s, args) =>
            {
                this.ContentTemplateLiteral.Text = string.Format("This content is set by a standard ASP.NET <code>Button</code> inside the <code>UpdatePanel</code>. (Date: {0}.)", DateTime.Now);
            };

            if(this.ScriptManagerOne.IsInAsyncPostBack)
            {
                this.DivisionOne.Controls.Add(new HtmlGenericControl
                {
                    TagName = "p",
                    InnerText = string.Format("This paragraph was added by the server. (Date: {0}.)", DateTime.Now)
                });
            }
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            if(this.ScriptManagerOne.IsInAsyncPostBack && this.HasEventTarget("PageClientCommand"))
            {
                this.ContentTemplateLiteral.Text = string.Format("This content is set by a standard ASP.NET <code>Button</code> outside the <code>UpdatePanel</code>. (Date: {0}.)", DateTime.Now);
            }

            this.PageLoadTimeLiteral.DataBind();
        }
    }
}