using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Songhay.Web.WebFormsSample.Models;
using Songhay.Web.Controls.Extensions;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class FormView : System.Web.UI.Page
    {
        public FormView()
        {
            this.Load += (s, args) =>
            {
                if(!this.IsPostBack)
                {
                    GridOneData.Load();
                    this.DataBind();
                }
            };
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.FormOne.ItemCommand += (s, args) =>
            {
                switch(args.CommandName)
                {
                    case "Edit":
                        this.FormOne.ChangeMode(FormViewMode.Edit);
                        break;
                    case "InsertForm":
                        this.FormOne.ChangeMode(FormViewMode.Insert);
                        break;
                    default:
                        this.FormOne.ChangeMode(FormViewMode.ReadOnly);
                        break;
                }
            };

            this.FormOne.ItemInserting += (s, args) =>
            {
                var param = this.GridOneObjectDataSource.InsertParameters["isPropertyZero"];
                var checkbox = this.FormOne.FindControl<CheckBox>("InsertIsPropertyZero");
                if(checkbox != null) param.DefaultValue = checkbox.Checked.ToString();

                param = this.GridOneObjectDataSource.InsertParameters["propertyOne"];
                var textbox = this.FormOne.FindControl<TextBox>("InsertPropertyOne");
                if(textbox != null) param.DefaultValue = textbox.Text;

                param = this.GridOneObjectDataSource.InsertParameters["propertyOneDate"];
                textbox = this.FormOne.FindControl<TextBox>("InsertPropertyOneDate");
                if(textbox != null) param.DefaultValue = textbox.Text;
            };
        }

        protected void DoCustomValidatorForPropertyOneDate(object sender, ServerValidateEventArgs args)
        {
            var input = args.Value;
            DateTime result;
            args.IsValid = DateTime.TryParse(input, out result);
        }
    }
}