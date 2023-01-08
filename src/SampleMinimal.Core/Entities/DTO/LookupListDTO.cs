using SampleMinimal.Core.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Entities.DTO
{
    public class LookupListDTO : Entity<int>
    {
        public string Name { get; set; }
        public string ShortName { get; set; }
        public int? EnumType { get; set; } = 10;
        public int? ParentId { get; set; } = null;
        public int LookupId { get; set; } = 1;
    }
}
