using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Entities.DTO
{
    public class PassengerTravelInfoDTO : Entity<int>
    {
        
        public int PassengerId { get; set; }
        public int DriverTravelInfoId { get; set; }
        public int AcceptedSeat { get; set; }

    }
}
