﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class StoreFrontEntities : DbContext
    {
        public StoreFrontEntities()
            : base("name=StoreFrontEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Bakery> Bakeries { get; set; }
        public virtual DbSet<BakerySupplier> BakerySuppliers { get; set; }
        public virtual DbSet<HasGluten> HasGlutens { get; set; }
        public virtual DbSet<Season> Seasons { get; set; }
        public virtual DbSet<Supplier> Suppliers { get; set; }
        public virtual DbSet<TreatCategory> TreatCategories { get; set; }
        public virtual DbSet<TreatStatu> TreatStatus { get; set; }
    }
}
