using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Entities.DTO
{
    public class VehicleDTO:Entity<int>
    {
        public int ModelId { get; set; }
        public int DriverId { get; set; }
        public int Seat { get; set; }
    }
}
