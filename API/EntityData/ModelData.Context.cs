﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EntityData
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class HotelDbConnection : DbContext
    {
        public HotelDbConnection()
            : base("name=HotelDbConnection")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BaiViet> BaiViets { get; set; }
        public virtual DbSet<DatPhong> DatPhongs { get; set; }
        public virtual DbSet<HoaDon> HoaDons { get; set; }
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<LoaiDichVu> LoaiDichVus { get; set; }
        public virtual DbSet<LoaiPhong> LoaiPhongs { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }
        public virtual DbSet<PhieuDatPhongKhachSan> PhieuDatPhongKhachSans { get; set; }
        public virtual DbSet<PhieuDichVu> PhieuDichVus { get; set; }
        public virtual DbSet<Phong> Phongs { get; set; }
    
        public virtual ObjectResult<GET_SERVICE_ALL_Result> GET_SERVICE_ALL()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_SERVICE_ALL_Result>("GET_SERVICE_ALL");
        }
    
        public virtual ObjectResult<GET_LIST_ROOM_Result> GET_LIST_ROOM()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_LIST_ROOM_Result>("GET_LIST_ROOM");
        }
    
        public virtual ObjectResult<GET_LIST_SERVICE_Result> GET_LIST_SERVICE()
        {
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<GET_LIST_SERVICE_Result>("GET_LIST_SERVICE");
        }
    }
}
