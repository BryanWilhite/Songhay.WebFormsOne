using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Web.UI.WebControls;

namespace Songhay.Web.WebFormsSample.Models
{
    [DataObject(isDataObject: false)]
    public class GridOneData
    {
        static GridOneData()
        {
            GridOneData.isAscendingSortForPropertyOne = true;
        }

        [DataObjectField(primaryKey: false)]
        public static int CollectionCount
        {
            get { return (GridOneData.list != null) ? GridOneData.list.Count : 0; }
        }

        static public void Load()
        {
            GridOneData.list = GridOneData.GetSampleData();
        }

        static public void Sort(string sortExpression)
        {
            if(sortExpression == "PropertyOne")
            {
                if(GridOneData.isAscendingSortForPropertyOne)
                {
                    GridOneData.list = GridOneData.list.OrderBy(i => i.PropertyOne).ToList();
                }
                else
                {
                    GridOneData.list = GridOneData.list.OrderByDescending(i => i.PropertyOne).ToList();
                }
                GridOneData.isAscendingSortForPropertyOne = !GridOneData.isAscendingSortForPropertyOne;
            }
            else if(sortExpression == "PropertyOneDate")
            {
                if(GridOneData.isAscendingSortForPropertyOneDate)
                {
                    GridOneData.list = GridOneData.list.OrderBy(i => i.PropertyOneDate).ToList();
                }
                else
                {
                    GridOneData.list = GridOneData.list.OrderByDescending(i => i.PropertyOneDate).ToList();
                }
                GridOneData.isAscendingSortForPropertyOneDate = !GridOneData.isAscendingSortForPropertyOneDate;
            }
        }

        [DataObjectMethod(DataObjectMethodType.Delete, isDefault: false)]
        public void Delete(int primaryKey)
        {
            var item = GridOneData.list.First(i => i.PrimaryKey == primaryKey);
            GridOneData.list.Remove(item);
        }

        [DataObjectMethod(DataObjectMethodType.Insert, isDefault: false)]
        public void Insert(bool isPropertyZero, string propertyOne, DateTime propertyOneDate)
        {
            var id = GridOneData.list.Max(i => i.PrimaryKey);
            var item = new GridOneDatum();
            item.PrimaryKey = id++;
            item.IsPropertyZero = isPropertyZero;
            item.PropertyOne = propertyOne;
            item.PropertyOneDate = propertyOneDate;
            GridOneData.list.Add(item);
        }

        [DataObjectMethod(DataObjectMethodType.Select, isDefault: true)]
        public IList<GridOneDatum> List()
        {
            return GridOneData.list;
        }

        /// <summary>
        /// Selects paged data.
        /// </summary>
        /// <param name="pageIndex">Index of the page.</param>
        /// <param name="pageSize">Size of the page.</param>
        /// <remarks>
        /// See “Paging Report Data in a DataList or Repeater Control” by Scott Mitchell
        /// [http://www.asp.net/data-access/tutorials/paging-report-data-in-a-datalist-or-repeater-control-cs]
        /// </remarks>
        [DataObjectMethod(DataObjectMethodType.Select, isDefault: false)]
        public PagedDataSource Select(int pageIndex, int pageSize)
        {
            var pagedData = new PagedDataSource
            {
                AllowPaging = true,
                CurrentPageIndex = pageIndex,
                DataSource = GridOneData.list,
                PageSize = pageSize
            };

            return pagedData;
        }

        [DataObjectMethod(DataObjectMethodType.Update, isDefault: false)]
        public void Update(int primaryKey, bool isPropertyZero, string propertyOne, DateTime propertyOneDate)
        {
            var item = GridOneData.list.First(i => i.PrimaryKey == primaryKey);
            item.IsPropertyZero = isPropertyZero;
            item.PropertyOne = propertyOne;
            item.PropertyOneDate = propertyOneDate;
        }

        static IList<GridOneDatum> GetSampleData()
        {
            GridOneData.list = new Collection<GridOneDatum>();

            #region Add sample data:

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 1,
                PropertyOne = "My Property",
                PropertyOneDate = DateTime.Now
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 2,
                PropertyOne = "My Other Property",
                PropertyOneDate = DateTime.Now.AddDays(-13).AddMinutes(34)
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 3,
                IsPropertyZero = true,
                PropertyOne = "Yet Other Property",
                PropertyOneDate = DateTime.Now.AddDays(-3).AddMinutes(12)
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 4,
                PropertyOne = "My Property of the fourth",
                PropertyOneDate = DateTime.Now.AddDays(-9).AddMinutes(5)
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 5,
                PropertyOne = "Property Five",
                PropertyOneDate = DateTime.Now.AddDays(-3).AddMinutes(34)
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 6,
                IsPropertyZero = true,
                PropertyOne = "Property of Six",
                PropertyOneDate = DateTime.Now.AddDays(3).AddMinutes(64)
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 7,
                PropertyOne = "Seventh Property",
                PropertyOneDate = DateTime.Now
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 8,
                PropertyOne = "My Other Property, of Eight",
                PropertyOneDate = DateTime.Now.AddDays(-7).AddMinutes(54)
            });

            GridOneData.list.Add(new GridOneDatum
            {
                PrimaryKey = 9,
                IsPropertyZero = true,
                PropertyOne = "Ninth Property",
                PropertyOneDate = DateTime.Now.AddDays(-8).AddMinutes(3)
            });

            #endregion

            return GridOneData.list;
        }

        static bool isAscendingSortForPropertyOne;
        static bool isAscendingSortForPropertyOneDate;
        static IList<GridOneDatum> list;
    }
}