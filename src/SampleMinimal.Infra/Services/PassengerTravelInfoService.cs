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
    public class PassengerTravelInfoService : Repository<PassengerTravelInfo>, IPassengerTravelInfoService
    {
        private readonly ITravelInfoService _travelInfoService;
        private readonly IDriverTravelInfoService _driverTravelInfoService;
        private readonly IVehicleService _vehicleInfoService;
        private readonly IMapper _mapper;
        public PassengerTravelInfoService(ApplicationDbContext context, ITravelInfoService travelInfoService, IVehicleService vehicleInfoService, IDriverTravelInfoService driverTravelInfoService, IMapper mapper) : base(context)
        {
            this._mapper = mapper;
            this._travelInfoService = travelInfoService;
            this._vehicleInfoService = vehicleInfoService;
            this._driverTravelInfoService = driverTravelInfoService;

        }
        public async Task<IEnumerable<PassengerTravelInfoDTO>> GetAllAsync()
        {
            return await base.GetAll()
                .Include(fz => fz.DriverTravelInfo)
                .Include(fz => fz.Passenger)
                .Select(fz => _mapper.Map<PassengerTravelInfoDTO>(fz))
                .ToListAsync();
        }


        public async Task<string> AddAsync(PassengerTravelInfoDTO model)
        {
            
            var existTravelInfo = await _driverTravelInfoService.GetAll().Include(fz => fz.PassengerTravelInfo).FirstOrDefaultAsync(fz => fz.Id == model.DriverTravelInfoId);
            if (existTravelInfo == null) await Task.FromResult(false);
            if (existTravelInfo.PassengerTravelInfo.Count() >= model.AcceptedSeat)
               return await Task.FromResult("Koltuk sayısından fazla atama olamaz.");
            var existPassenger = await GetPassengerTravelInfo(model);
            if (existPassenger != null) return await Task.FromResult("Yolcu zaten  atanmis.");

            var existVehicle = await _vehicleInfoService.GetAll().Include(fz => fz.Driver).FirstOrDefaultAsync(fz=>fz.Id== existTravelInfo.VehicleId);
            if (existVehicle == null) return await Task.FromResult("Araç bulunamdı.");
            if (model.AcceptedSeat > existVehicle.Seat) return await Task.FromResult( "Koltuk sayisi Arac koltugundan fazla girilemez.");

            if (model.AcceptedSeat <1) return await Task.FromResult("En az 1 koltuk girilmelidir.");

            var entity = await base.AddAsync(_mapper.Map<PassengerTravelInfo>(model));
            return await Task.FromResult("Basarili bir sekilde eklendi");
        }
        public async Task<DriverTravelInfo> GetPassengerTravelInfo(PassengerTravelInfoDTO model)
        {
            return await _driverTravelInfoService.GetAll()
                .Include(fz => fz.TravelInfo)
                .Include(fz => fz.PassengerTravelInfo)
                .Where(fz => fz.Id == model.DriverTravelInfoId &&
                !fz.PassengerTravelInfo.Any(fza => fza.PassengerId == model.PassengerId))
                .FirstOrDefaultAsync();

        }
    }
}
