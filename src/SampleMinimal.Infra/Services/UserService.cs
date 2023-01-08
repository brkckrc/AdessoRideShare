using AutoMapper;
using SampleMinimal.Core.Entities.DTO;
using SampleMinimal.Core.Enums;
using SampleMinimal.Infra.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Infra.Services
{
    public class UserService : Repository<AppUser>, IUserService
    {
        private readonly IRepository<Passenger> _passengerService;
        private readonly IRepository<Driver> _driverService;
        private readonly ITravelInfoService _travelInfoService;
        private readonly IVehicleService _vehicleService;
        private readonly IDriverTravelInfoService _driverTravelInfoService;
        private readonly IMapper _mapper;
        public UserService(ApplicationDbContext context, IRepository<Passenger> passengerService, IRepository<Driver> driverService, ITravelInfoService travelInfoService, IDriverTravelInfoService driverTravelInfoService, IVehicleService _vehicleService, IMapper mapper) : base(context)
        {
            this._driverService = driverService;
            this._passengerService = passengerService;
            this._mapper = mapper;
            this._travelInfoService = travelInfoService;
            this._driverTravelInfoService = driverTravelInfoService;
        }
        public async Task<AppUserDTO> AddPassengerAsync(AppUserDTO model)
        { 
            return _mapper.Map<AppUserDTO>(await _passengerService.AddAsync(_mapper.Map<Passenger>(model)));
        }
        public async Task<AppUserDTO> AddDriverAsync(DriverDTO model)
        {
            return _mapper.Map<DriverDTO>(await _driverService.AddAsync(_mapper.Map<Driver>(model)));
        }
        public async Task<IEnumerable<AppUserDTO>> GetAllAsync()
        {
            var passengers = _passengerService.GetAll().Select(fz => _mapper.Map<AppUserDTO>(fz)).ToList();
            var drivers = _driverService.GetAll().Include(fz => fz.Vehicles).Select(fz => _mapper.Map<DriverDTO>(fz)).ToList();
            return await Task.FromResult(passengers.Union(drivers));
        }


        public async Task<DriverTravelInfo> AddDriverRoute(DriverTravelInfoDTO model)
        {
            var entity = await _travelInfoService.AddAsync(model.TravelInfoDTO);
            if (entity == null)
            {
                var exists =await _travelInfoService.GetDriverRoute(model.TravelInfoDTO);
                model.TravelInfoDTO.Id= exists.Id;
            }
            else
            {
                model.TravelInfoDTO.Id = entity.Id;
            }
            return await _driverTravelInfoService.AddAsync(_mapper.Map<DriverTravelInfo>(model));
        }
    }
}
