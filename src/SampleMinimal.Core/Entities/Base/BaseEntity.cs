using System;
using System.Collections.Generic;
using System.Text;

namespace SampleMinimal.Core.Entities.Base
{
    public abstract class BaseEntity
    {
        public virtual bool IsDeleted { get; set; }
    }
}
