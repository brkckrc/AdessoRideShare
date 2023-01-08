using SampleMinimal.Core.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Entities
{
    public class PassengerTravelInfo: IAuditableEntity
    {
        public DriverTravelInfo DriverTravelInfo { get; set; }
        public int DriverTravelInfoId { get; set; }
        public Passenger Passenger { get; set; }
        public int PassengerId { get; set; }
        public DateTime TravelDate { get; set; }
        public DateTime CreatedDate { get ; set ; }
        public string CreatedBy { get ; set ; }
        public DateTime? UpdatedDate { get ; set ; }
        public string UpdatedBy { get ; set ; }
        public DateTime? DeletedDate { get ; set ; }
        public string DeletedBy { get ; set ; }
    }
}
