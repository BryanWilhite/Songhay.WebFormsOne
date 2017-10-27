using System;
using System.Web.UI.WebControls;
using Songhay.Web.Controls.Extensions;

namespace Songhay.Web.WebFormsSample.Forms.NestedMasterPages
{
    public partial class Default : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.SetTitle.Click += (s, args) =>
            {
                var master = this.Page.GetRootMaster();
                if(master != null) master.Page.Title = this.TitleText.Text;
            };

            this.SetLabel.Click += (s, arg) =>
            {
                var master = this.Page.GetRootMaster();
                var label = master.FindControl<Label>("Body$Nest1", "NestedMasterPageLabel");
                if(label != null) label.Text = this.LabelText.Text;
            };
        }
    }
}