using SampleMinimal.Core.Entities.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Interfaces
{
    public interface ITravelInfoService : IRepository<TravelInfo>
    {
        Task<TravelInfo> GetDriverRoute(TravelInfoDTO model);
        Task<TravelInfoDTO> AddAsync(TravelInfoDTO model);
    }
}
