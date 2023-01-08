using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Core.Entities.DTO
{
    public class TravelInfoDTO:Entity<int>
    {
       
        public int BeginningId { get; set; }
        public int LastStationId { get; set; }
    }
}
