using SampleMinimal.Core.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Entities
{
    public class DriverTravelInfo : AuditableEntity<int>
    {
        public TravelInfo TravelInfo { get; set; }
        public int TravelInfoId { get; set; }
        public Vehicle Vehicle { get; set; }
        public int VehicleId { get; set; }
        public int AcceptedSeat { get; set; }
        public ICollection<PassengerTravelInfo> PassengerTravelInfo { get; set; }
    }
}
