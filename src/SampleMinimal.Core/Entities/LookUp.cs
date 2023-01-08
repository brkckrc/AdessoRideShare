using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Entities
{
    public class LookUp : AuditableEntity<int>
    {
        public LookUp()
        {
            LookUpLists = new HashSet<LookUpList>(); 
        }
    
        [Required(AllowEmptyStrings = false, ErrorMessage = "{0} alanı boş bırakılamaz")]
        [DataType(DataType.Text)]
        [Display(Name = "Adı")]
        [StringLength(200, MinimumLength = 3, ErrorMessage = "{0} alanı {1} karakterden uzun, {2} karakterden kısa olamaz.")]
        public string Name { get; set; }
        [Display(Name = "Adı")]
        [StringLength(200, ErrorMessage = "{0} alanı {1} karakterden uzun olamaz.")]
        public string Description { get; set; }
        public int? EnumType { get; set; }
        public ICollection<LookUpList> LookUpLists { get; set; } 
    }
}
