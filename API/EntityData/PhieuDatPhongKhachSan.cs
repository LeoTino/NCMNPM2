//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class PhieuDatPhongKhachSan
    {
        public int ID { get; set; }
        public int SoPhong { get; set; }
        public System.DateTime NgayVao { get; set; }
        public System.DateTime NgayRa { get; set; }
        public int TinhTrang { get; set; }
        public string idKhachHang { get; set; }
    
        public virtual KhachHang KhachHang { get; set; }
        public virtual Phong Phong { get; set; }
    }
}