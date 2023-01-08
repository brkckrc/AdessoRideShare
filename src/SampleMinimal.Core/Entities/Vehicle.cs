using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Entities
{
    public class Vehicle : Entity<int>
    {
        public LookUpList Model { get; set; }
        public int ModelId { get; set; }
        public Driver Driver { get; set; }
        public int DriverId { get; set; }
        public int Seat { get; set; }

    }
}
