using System;
using System.Web.UI.WebControls;
using Songhay.Web.Controls.Extensions;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class CrossPagePostBackTwo : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if(this.IsReallyCrossPagePostBack())
            {
                var textbox = this.PreviousPage.Master.FindControl<TextBox>("Body", "FirstPageTextBox");
                if(textbox != null) this.SecondPageLabel.Text = textbox.Text;
            }
        }
    }
}