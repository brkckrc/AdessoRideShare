using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Entities.DTO
{
    public class DriverTravelInfoDTO:Entity<int>
    {
        public TravelInfoDTO TravelInfoDTO { get; set; }
        public int VehicleId { get; set; }
        public int AcceptedSeat { get; set; }

    }
}
