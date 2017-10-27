using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace Songhay.Web.WebFormsSample.Services
{
    using Models;

    /// <summary>
    /// The Service Contract for Service One.
    /// </summary>
    [ServiceContract]
    public interface IWcfServiceOne
    {
        /// <summary>
        /// Lists the service one data.
        /// </summary>
        [OperationContract]
        IEnumerable<ServiceOneDatum> ListServiceOneData();

        /// <summary>
        /// Lists the service one data for ajax.
        /// </summary>
        [OperationContract]
        [WebGet(ResponseFormat=WebMessageFormat.Json)]
        IEnumerable<ServiceOneDatum> ListServiceOneDataForAjax();
    }
}
