using SampleMinimal.Core.Entities.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Interfaces
{
    public interface IPassengerTravelInfoService : IRepository<PassengerTravelInfo>
    {
        Task<string> AddAsync(PassengerTravelInfoDTO model);
        Task<DriverTravelInfo> GetPassengerTravelInfo(PassengerTravelInfoDTO model);
    }
}
