using SampleMinimal.Infra.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Infra.Services
{
    public class LookupService : Repository<LookUp>,ILookupService
    {
        public LookupService(ApplicationDbContext context) : base(context)
        {

        }
    }
}
