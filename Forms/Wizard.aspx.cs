using System;
using System.Web.UI.HtmlControls;
using Songhay.Web.Controls.Extensions;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class Wizard : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.WizardOne.FinishButtonClick += (s, args) =>
            {
                var master = this.GetRootMaster();
                var header = master.FindControl<HtmlContainerControl>("Body$WizardOne$HeaderContainer", "WizardHeader");
                if(header != null) header.InnerText = "You are finished!";
                this.WizardOne.Enabled = false;
            };
        }
    }
}