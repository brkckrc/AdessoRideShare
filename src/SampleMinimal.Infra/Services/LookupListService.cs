using SampleMinimal.Infra.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Infra.Services
{
    public class LookupListService : Repository<LookUpList>,ILookupListService
    {
        public LookupListService(ApplicationDbContext context) : base(context)
        {

        }
          public async Task<List<LookUpList>> GetAllAsync()
        {
            return await base.GetAll().Include(fz=>fz.LookUp).Include(fz=>fz.Childs).ToListAsync();
        }

    }
}
