using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SampleMinimal.Core.Entities.Base
{
    public abstract class AuditableEntity<T> : Entity<T>, IAuditableEntity 
    {
        
        public DateTime CreatedDate { get; set; }


      
        public string CreatedBy { get; set; }

      
        public DateTime? UpdatedDate { get; set; }

       
        public string UpdatedBy { get; set; }  
      
        public DateTime? DeletedDate { get; set; }

      
        public string DeletedBy { get; set; }
    }
}
