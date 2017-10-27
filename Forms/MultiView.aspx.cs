using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.ViewNext.Click += (s, args) =>
            {
                var count = this.MultiViewOne.Views.Count;
                var index = this.MultiViewOne.ActiveViewIndex;
                if(index < (count - 1)) this.MultiViewOne.ActiveViewIndex += 1;
            };

            this.ViewPrevious.Click += (s, args) =>
            {
                var index = this.MultiViewOne.ActiveViewIndex;
                if(index > 0) this.MultiViewOne.ActiveViewIndex -= 1;
            };
        }

        protected override void OnLoad(EventArgs e)
        {
            base.OnLoad(e);

            if(!this.IsPostBack) this.MultiViewOne.ActiveViewIndex = 0;
        }
    }
}