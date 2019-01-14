//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyCuaHang.Model
{
    using QuanLyCuaHang.ViewModel;
    using System;
    using System.Collections.Generic;
    
    public partial class Output :BaseViewModel
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Output()
        {
            this.OutputInfo = new HashSet<OutputInfo>();
        }
        private Model.Object _SelectedObject;
        public Model.Object SelectedObject { get => _SelectedObject; set { _SelectedObject = value; OnPropertyChanged(); } }

        public string Id { get; set; }
        public int IdCustomer { get; set; }
        public int IdUser { get; set; }
        public Nullable<int> IdPromotion { get; set; }
        public Nullable<System.DateTime> DateOutput { get; set; }
        public string Status { get; set; }
        public Nullable<double> Total { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Promotion Promotion { get; set; }
        public virtual Users Users { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OutputInfo> OutputInfo { get; set; }
    }
}
