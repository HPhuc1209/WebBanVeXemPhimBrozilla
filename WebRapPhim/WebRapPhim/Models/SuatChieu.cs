//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebRapPhim.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class SuatChieu
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SuatChieu()
        {
            this.Ves = new HashSet<Ve>();
        }
    
        public int ID { get; set; }
        public Nullable<System.DateTime> GioBatDau { get; set; }
        public Nullable<int> PhongID { get; set; }
        public Nullable<int> PhimID { get; set; }
        public Nullable<double> Gia { get; set; }
        public Nullable<bool> TrangThai { get; set; }
    
        public virtual Film Film { get; set; }
        public virtual Phong Phong { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ve> Ves { get; set; }
        public bool setTrangThai(String trangthai)
        {
            if (trangthai.Trim() == "1")
                return true;
            else return false;
        }
    }
}