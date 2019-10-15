//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace StoreFront.Data.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class Bakery
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Bakery()
        {
            this.BakerySuppliers = new HashSet<BakerySupplier>();
        }
    
        public int BakeryTreatID { get; set; }
        public string TreatName { get; set; }
        public int TreatCategoryID { get; set; }
        public decimal Cost { get; set; }
        public decimal Price { get; set; }
        public Nullable<int> UnitsSold { get; set; }
        public int Quantity { get; set; }
        public int TreatStatusID { get; set; }
        public int HasGlutenID { get; set; }
        public int Calories { get; set; }
        public string Description { get; set; }
        public int SeasonID { get; set; }
        public string Ingredients { get; set; }
        public string ImageFileName { get; set; }
    
        public virtual HasGluten HasGluten { get; set; }
        public virtual Season Season { get; set; }
        public virtual TreatCategory TreatCategory { get; set; }
        public virtual TreatStatu TreatStatu { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BakerySupplier> BakerySuppliers { get; set; }
    }
}
