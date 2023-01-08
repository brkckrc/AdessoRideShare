using SampleMinimal.Core.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Entities
{
    public class TravelInfo : AuditableEntity<int>
    {
        public LookUpList Beginning { get; set; }
        public int BeginningId { get; set; }
        public LookUpList LastStation { get; set; }
        public int LastStationId { get; set; }


    }
}
