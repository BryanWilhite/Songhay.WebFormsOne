using System;
using System.ComponentModel;

namespace Songhay.Web.WebFormsSample.Models
{
    [DataObject(isDataObject: true)]
    public class GridOneDatum
    {
        /// <summary>
        /// Gets or sets a value indicating whether this instance is property zero.
        /// </summary>
        /// <value>
        /// 	<c>true</c> if this instance is property zero; otherwise, <c>false</c>.
        /// </value>
        [DataObjectField(primaryKey: false)]
        public bool IsPropertyZero { get; set; }

        [DataObjectField(primaryKey: true)]
        public int PrimaryKey { get; set; }

        /// <summary>
        /// Gets or sets the property one.
        /// </summary>
        /// <value>The property one.</value>
        [DataObjectField(primaryKey: false)]
        public string PropertyOne { get; set; }

        /// <summary>
        /// Gets or sets the property one date.
        /// </summary>
        /// <value>The property one date.</value>
        [DataObjectField(primaryKey: false)]
        public DateTime PropertyOneDate { get; set; }
    }
}