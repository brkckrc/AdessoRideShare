using System.ComponentModel.DataAnnotations.Schema;

namespace SampleMinimal.Core.Entities
{
    [Table("Passenger")]
    public class Passenger : AppUser
    {
        public ICollection<PassengerTravelInfo> PassengerTravelInfo { get; set; }
    }
}
