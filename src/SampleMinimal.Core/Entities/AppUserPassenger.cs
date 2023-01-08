using SampleMinimal.Core.Entities.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Entities
{
    public class AppUserPassenger : IAuditableEntity
    {
        public DateTime CreatedDate { get ; set ; }
        public string CreatedBy { get ; set ; }
        public DateTime? UpdatedDate { get ; set ; }
        public string UpdatedBy { get ; set ; }
        public DateTime? DeletedDate { get ; set ; }
        public string DeletedBy { get ; set ; }
    }
}
