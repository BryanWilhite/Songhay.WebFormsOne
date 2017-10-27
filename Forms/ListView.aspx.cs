using System;
using Songhay.Web.WebFormsSample.Models;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class ListView : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.Load += (s, args) =>
            {
                this.DataBind();
            };

            if(!this.IsPostBack)
            {
                GridOneData.Load();
            }
        }
    }
}