using AutoMapper;
using SampleMinimal.Core.Entities.DTO;
using SampleMinimal.Infra.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Infra.Services
{
    public class DriverTravelInfoService : Repository<DriverTravelInfo>, IDriverTravelInfoService
    {
        private readonly ITravelInfoService _travelInfoService;
 
        private readonly IMapper _mapper;
        public DriverTravelInfoService(ApplicationDbContext context, ITravelInfoService travelInfoService,  IMapper mapper) : base(context)
        {
            this._mapper = mapper;
            this._travelInfoService = travelInfoService;
             
        }
        public async Task<IEnumerable<DriverTravelInfoDTO>> GetAllAsync()
        {
            return await base.GetAll()
                .Include(fz => fz.TravelInfo)
                .Include(fz => fz.PassengerTravelInfo)
                .Include(fz => fz.Vehicle)
                .Select(fz=>_mapper.Map<DriverTravelInfoDTO>(fz))
                .ToListAsync();
        }
        public Task<DriverTravelInfo> AddDriverRoute(DriverTravelInfoDTO model)
        {
            return base.AddAsync(_mapper.Map<DriverTravelInfo>(model));
        }

        public async Task<DriverTravelInfoDTO> AddAsync(DriverTravelInfoDTO model)
        {
            model.TravelInfoDTO = await _travelInfoService.AddAsync(model.TravelInfoDTO);
            var entity = await base.AddAsync(_mapper.Map<DriverTravelInfo>(model));
            return _mapper.Map<DriverTravelInfoDTO>(entity);
        }
        public async Task<DriverTravelInfo> GetDriverTravelInfo(DriverTravelInfoDTO model)
        {
            return await this.GetAll()
                    .Include(fz => fz.TravelInfo)
                    .Include(fz => fz.Vehicle)
                    .Where(fz => fz.TravelInfoId == model.TravelInfoDTO.Id && fz.VehicleId == model.VehicleId).FirstOrDefaultAsync();

        }
    }
}
