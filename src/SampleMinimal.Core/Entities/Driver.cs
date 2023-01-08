using System.ComponentModel.DataAnnotations.Schema;

namespace SampleMinimal.Core.Entities
{
    [Table("Driver")]
    public class Driver : AppUser
    {
        public Driver()
        {
            Vehicles=new HashSet<Vehicle>();
        }
        public ICollection<Vehicle> Vehicles { get; set; }
    }
}
