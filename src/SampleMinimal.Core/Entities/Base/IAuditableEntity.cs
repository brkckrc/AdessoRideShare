using System;
using System.Collections.Generic;
using System.Text;

namespace SampleMinimal.Core.Entities.Base
{
    public interface IAuditableEntity
    {
        DateTime CreatedDate { get; set; }

        string CreatedBy { get; set; }

        DateTime? UpdatedDate { get; set; }

        string UpdatedBy { get; set; }
        DateTime? DeletedDate { get; set; }
        string DeletedBy { get; set; }
    }
}
