using SampleMinimal.Core.Entities.DTO;
using SampleMinimal.Core.Enums;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Core.Interfaces
{
    public interface IUserService : IRepository<AppUser>
    {
        Task<AppUserDTO> AddPassengerAsync(AppUserDTO model);
        Task<AppUserDTO> AddDriverAsync(DriverDTO model);
        Task<IEnumerable<AppUserDTO>> GetAllAsync();
    }
}
