using System;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class ServerTransferOne : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if(this.IsPostBack)
            {
                this.Server.Transfer("~/Forms/ServerTransferTwo.aspx", false);
            }
        }
    }
}