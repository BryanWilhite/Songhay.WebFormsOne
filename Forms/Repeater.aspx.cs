using System;
using Songhay.Web.WebFormsSample.Models;

namespace Songhay.Web.WebFormsSample.Forms
{
    public partial class Repeater : System.Web.UI.Page
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

            this.PageNext.Click += (s, args) =>
            {
                var pageIndex = this.GetGridOneObjectDataSourcePageIndex();
                ++pageIndex;
                this.PageGridOneObjectDataSource(pageIndex);
            };

            this.PagePrevious.Click += (s, args) =>
            {
                var pageIndex = this.GetGridOneObjectDataSourcePageIndex();
                --pageIndex;
                this.PageGridOneObjectDataSource(pageIndex);
            };
        }

        int GetGridOneObjectDataSourcePageIndex()
        {
            var paramPageIndex = this.GridOneObjectDataSource.SelectParameters["pageIndex"];
            var pageIndex = int.Parse(paramPageIndex.DefaultValue);

            return pageIndex;
        }

        void PageGridOneObjectDataSource(int pageIndex)
        {
            var paramPageIndex = this.GridOneObjectDataSource.SelectParameters["pageIndex"];
            var paramPageSize = this.GridOneObjectDataSource.SelectParameters["pageSize"];
            var pageSize = int.Parse(paramPageSize.DefaultValue);
            var maxIndex = Math.Ceiling((double)((GridOneData.CollectionCount) / pageSize)) - 1;

            //Keep index within bounds:
            if(pageIndex > maxIndex) pageIndex = (int)maxIndex;
            if(pageIndex < 0) pageIndex = 0;

            //Set new default value on data source and select:
            paramPageIndex.DefaultValue = pageIndex.ToString();
            this.GridOneObjectDataSource.Select();
        }
    }
}