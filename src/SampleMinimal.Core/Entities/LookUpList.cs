using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Entities
{
    public class LookUpList: AuditableEntity<int>

    {
        [Display(Name = "Üst Kategori...")]
        public int LookUpId { get; set; }
        public LookUp LookUp { get; set; }
        [Display(Name = "Ana Kategori...")]
        public int? ParentId { get; set; }
        public LookUpList Parent { get; set; }
        //[Required(ErrorMessage = "{0} alanı boş bırakılamaz")]
        [Display(Name = "Adı ...")]
        //[StringLength(100, MinimumLength = 3, ErrorMessage = "{0} alanı {1} karakterden uzun, {2} karakterden kısa olamaz.")]
        //[DataType(DataType.Text)]
        public string Name { get; set; }


        //[DataType(DataType.Text)]
        //[StringLength(100, MinimumLength = 3, ErrorMessage = "{0} alanı {1} karakterden uzun, {2} karakterden kısa olamaz.")]
        public string ShortName { get; set; }
        [Display(Name = "Sıra ...")]
        public byte? DisplayOrder { get; set; }
        public int? EnumType { get; set; }
        public ICollection<LookUpList> Childs { get; set; }

    }
}
