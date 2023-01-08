using System;
using System.Collections.Generic;
using System.Text;

namespace SampleMinimal.Core.Entities.Base
{
    public  class Entity<T> : BaseEntity, IEntity<T>
    {
        public virtual T? Id { get; set; }

    }
    public class DefaultEntity : Entity<string>
    {
        public DefaultEntity()
        {
            Id = Guid.NewGuid().ToString();
        }
        public override string Id { get; set; }

    }

    public class DefaultAuditEntity : AuditableEntity<string>
    {
        public DefaultAuditEntity()
        {
            Id= Guid.NewGuid().ToString();
        }
        public override string Id { get; set; } 

    }
}
