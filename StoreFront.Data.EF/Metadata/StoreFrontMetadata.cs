using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace StoreFront.Data.EF
{

    #region Bakery Metadata
    public class BakeryMetadata
    {
        //public int BakeryTreatID { get; set; }

        [Required(ErrorMessage = "*")]
        [StringLength(150, ErrorMessage = "This value needs to be 150 characters or less.")]
        [Display(Name = "Bakery Item")]
        public string TreatName { get; set; }


        [Range(1, 2, ErrorMessage = "* Value must be a valid number, 1 or 2.")]
        public int TreatCategoryID { get; set; }


        [Range(0, double.MaxValue, ErrorMessage = "* Value must be a valid number, 0 or larger.")]
        [DisplayFormat(DataFormatString = "{0:c}", NullDisplayText = "[-N/A-]")]
        public decimal Cost { get; set; }


        [Range(0, double.MaxValue, ErrorMessage = "* Value must be a valid number, 0 or larger.")]
        [DisplayFormat(DataFormatString = "{0:c}", NullDisplayText = "[-N/A-]")]
        public decimal Price { get; set; }

        [Display(Name = "Units Sold")]
        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        [Range(0, double.MaxValue, ErrorMessage = "* Value must be a valid number, 0 or larger.")]
        public Nullable<int> UnitsSold { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "* Value must be a valid number, 0 or larger.")]
        public int Quantity { get; set; }

        [Range(1, 2, ErrorMessage = "* Value must be a valid number, 1 or 2")]
        public int TreatStatusID { get; set; }


        [Range(1, 2, ErrorMessage = "* Value must be a valid number, 1 or 2")]
        public int HasGlutenID { get; set; }

        [Range(0, double.MaxValue, ErrorMessage = "* Value must be a valid number, 0 or larger.")]
        public int Calories { get; set; }

        [Required(ErrorMessage = "*")]
        [UIHint("MultilineText")]
        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        [StringLength(250, ErrorMessage = "* This value must be 250 characters or less.")]
        public string Description { get; set; }

        [Range(1, 5, ErrorMessage = "* Value must be a valid number between 1 and 5.")]
        public int SeasonID { get; set; }

        [StringLength(200, ErrorMessage = "* The value must be 200 characters or less.")]
        [Required(ErrorMessage = "*")]
        [UIHint("MultilineText")]
        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        public string Ingredients { get; set; }

        [Required(ErrorMessage = "*")]
        [DisplayFormat(NullDisplayText = "[-N/A-]")]
        [StringLength(100, ErrorMessage = "* The value must be 100 characters or less.")]
        [Display(Name = "Image")]
        public string ImageFileName { get; set; }
    }

    [MetadataType(typeof(BakeryMetadata))]
    public partial class Bakery
    {

    }
    #endregion

    #region HasGluten Metadata
    public class HasGlutenMetadata
    {
        [Display(Name = "Gluten")]
        [StringLength(20, ErrorMessage = "The value requires 20 characters or less.")]
        public string GlutenStatus { get; set; }
    }

    [MetadataType(typeof(HasGlutenMetadata))]
    public partial class HasGluten
    {

    }

    #endregion

    #region Season Metadata
    public class SeasonMetadata
    {
        //public int SeasonID { get; set; }
        [Display(Name = "Season")]
        [StringLength(50, ErrorMessage = "The value requires 50 characters or less.")]
        public string SeasonName { get; set; }
    }

    [MetadataType(typeof(SeasonMetadata))]
    public partial class Season
    {

    }
    #endregion

    #region Supplier Metadata
    public class SupplierMetadata
    {
        //public int SupplierID { get; set; }
        
        [Display(Name = "Company Name")]
        [StringLength(100, ErrorMessage = "The value requires 100 characters or less.")]
        public string CompanyName { get; set; }

        [StringLength(100, ErrorMessage = "The value requires 100 characters or less.")]
        public string City { get; set; }

        [StringLength(2, ErrorMessage = "The value requires 2 characters or less.")]
        public string State { get; set; }
    }

    [MetadataType(typeof(SupplierMetadata))]
    public partial class Supplier
    {

    }

    #endregion

    #region Treat Category Metadata

    public class TreatCategoryMetadata
    {
        //public int TreatCategoryID { get; set; }

        [Display(Name = "Category Name")]
        [StringLength(10, ErrorMessage = "* The value requires 10 characters or less.")]
        public string TreatCategoryName { get; set; }

    }

    [MetadataType(typeof(TreatCategoryMetadata))]
    public partial class TreatCategory
    {

    }

    #endregion

    #region Treat Status Metadata
    public class TreatStatusMetadata
    {
        //public int TreatStatusID { get; set; }

        [Display(Name = "Bakery Item Status")]
        [StringLength(20, ErrorMessage = "* The value must be 20 characters or less.")]
        public string TreatStatusName { get; set; }

    }

    [MetadataType(typeof(TreatStatusMetadata))]
    public partial class TreatStatu
    {

    }
    #endregion

    #region User Details Metadata
    public class UserDetailsMetadata
    {
        // public string UserID { get; set; }

        [StringLength(50, ErrorMessage = "This requires a value of 50 characters or less.")]
        public string FirstName { get; set; }
        [StringLength(75, ErrorMessage = "This requires a value of 75 characters of less.")]
        public string LastName { get; set; }
    }

    [MetadataType(typeof(UserDetailsMetadata))]
    public partial class UserDetail
    {

    }
    #endregion
}
