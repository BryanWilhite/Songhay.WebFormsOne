using System;
using System.Runtime.Serialization;

namespace Songhay.Web.WebFormsSample.Models
{
    /// <summary>
    /// The data for Service One.
    /// </summary>
    [DataContract]
    public class ServiceOneDatum
    {
        /// <summary>
        /// Gets or sets the property one.
        /// </summary>
        /// <value>The property one.</value>
        [DataMember]
        public string PropertyOne { get; set; }

        /// <summary>
        /// Gets or sets the property one date.
        /// </summary>
        /// <value>The property one date.</value>
        [DataMember]
        public DateTime PropertyOneDate { get; set; }
    }
}