using SampleMinimal.Core.Entities.Base;
using System.ComponentModel.DataAnnotations.Schema;

namespace SampleMinimal.Core.Entities
{
    [Table("AppUser")]
    public  class AppUser : AuditableEntity<int>
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string IdentifierNo { get; set; }
        public DateTime BirthDate { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }

    }
}
