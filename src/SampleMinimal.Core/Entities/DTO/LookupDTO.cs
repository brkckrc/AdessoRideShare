using SampleMinimal.Core.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Entities.DTO
{
    public class LookUpDTO:AuditableEntity<int>
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public int? EnumType { get; set; }
    }
}
