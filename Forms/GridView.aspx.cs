using System;
using System.Web.UI.WebControls;
using Songhay.Web.WebFormsSample.Models;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class GridView : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            this.Load += (s, args) =>
            {
                if(!this.IsPostBack)
                {
                    GridOneData.Load();
                    this.DataBind();
                }
            };

            this.GridOne.RowCommand += (s, args) =>
            {
                if(args.CommandName.ToLower() == "sort")
                {
                    var sortExpression = (string)args.CommandArgument;
                    GridOneData.Sort(sortExpression);
                    this.DataBind();
                }
            };

            this.GridOneObjectDataSource.Deleted += (s, args) =>
            {
                this.DataBind();
            };

            this.InsertData.Click += (s, args) =>
            {
                var param = this.GridOneObjectDataSource.InsertParameters["isPropertyZero"];
                param.DefaultValue = this.InputIsPropertyZero.Checked.ToString();

                param = this.GridOneObjectDataSource.InsertParameters["propertyOne"];
                param.DefaultValue = this.InputPropertyOne.Text;

                param = this.GridOneObjectDataSource.InsertParameters["propertyOneDate"];
                param.DefaultValue = this.InputPropertyOneDate.Text;

                this.GridOneObjectDataSource.Insert();
                this.DataBind();
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