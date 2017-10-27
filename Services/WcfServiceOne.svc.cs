using System;
using System.Collections.Generic;
using System.ServiceModel.Activation;

namespace Songhay.Web.WebFormsSample.Services
{
    using Models;

    /// <summary>
    /// The implementation of Service Contract for Service One.
    /// </summary>
    [AspNetCompatibilityRequirements(RequirementsMode
        = AspNetCompatibilityRequirementsMode.Allowed)]
    public class WcfServiceOne : IWcfServiceOne
    {
        /// <summary>
        /// Lists the service one data.
        /// </summary>
        public IEnumerable<ServiceOneDatum> ListServiceOneData()
        {
            var list = new List<ServiceOneDatum>();

            list.Add(new ServiceOneDatum
            {
                PropertyOne = "My Property",
                PropertyOneDate = DateTime.Now
            });

            list.Add(new ServiceOneDatum
            {
                PropertyOne = "My Other Property",
                PropertyOneDate = DateTime.Now.AddDays(-13).AddMinutes(34)
            });

            list.Add(new ServiceOneDatum
            {
                PropertyOne = "Yet Other Property",
                PropertyOneDate = DateTime.Now.AddDays(-3).AddMinutes(12)
            });

            return list;
        }

        /// <summary>
        /// Lists the service one data for ajax.
        /// </summary>
        public IEnumerable<ServiceOneDatum> ListServiceOneDataForAjax()
        {
            var list = this.ListServiceOneData();
            return list;
        }
    }
}
