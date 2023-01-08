using SampleMinimal.Core.Entities.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Interfaces
{
    public interface IDriverTravelInfoService : IRepository<DriverTravelInfo>
    {
        Task<DriverTravelInfoDTO> AddAsync(DriverTravelInfoDTO model);
    }
}
