using SampleMinimal.Core.Enums;

namespace SampleMinimal.API.MapProfiles
{
    public class TravelProfile : Profile
    {
        private readonly IVehicleService _vehicleService;
        
        public TravelProfile(IVehicleService vehicleService)
        {
            this._vehicleService = vehicleService;

            CreateMap<LookUp, LookUpDTO>().ReverseMap();
            CreateMap<LookUpList, LookupListDTO>().ReverseMap();
            CreateMap<Vehicle, VehicleDTO>().ReverseMap();
            CreateMap<TravelInfo, TravelInfoDTO>().ReverseMap();

            CreateMap<Driver, DriverDTO >()
                .ForMember(dest => dest.AppUserType, opts => opts.MapFrom(fz => AppUserType.Driver))
                .ForMember(dest => dest.Vehicles, opts => opts.MapFrom(fz => fz.Vehicles.Select(fz=>fz.Id)));
            ;
            CreateMap<AppUserDTO, Passenger>();
            CreateMap<DriverDTO, Driver>()
            .ForMember(dest => dest.Vehicles, opts => opts.MapFrom(async (s,d) =>
            {
                foreach (var vehicle in s.Vehicles)
                {
                    var existVehicle = await vehicleService.GetByIdAsync(vehicle);
                    if(existVehicle != null)
                     d.Vehicles.Add(new Vehicle { ModelId = existVehicle.ModelId, Seat = existVehicle.Seat> existVehicle.Seat? existVehicle.Seat: existVehicle.Seat, IsDeleted = existVehicle.IsDeleted, Id = existVehicle.Id });
                }
                return d.Vehicles;
            }));
            


            CreateMap<Passenger, AppUserDTO >()
                        .ForMember(dest => dest.AppUserType, opts => opts.MapFrom(fz => AppUserType.Passenger));

            CreateMap<DriverTravelInfo, DriverTravelInfoDTO>()
                  .ForMember(dest => dest.TravelInfoDTO, opts => opts.MapFrom(fz => new TravelInfoDTO { BeginningId=fz.TravelInfo.BeginningId,LastStationId=fz.TravelInfo.LastStationId,Id=fz.Id,IsDeleted=fz.IsDeleted}));

            CreateMap<DriverTravelInfoDTO, DriverTravelInfo >()
                 .ForMember(dest => dest.TravelInfoId, opts => opts.MapFrom(fz => fz.TravelInfoDTO.Id));

      
            CreateMap<PassengerTravelInfoDTO, PassengerTravelInfo >();

            CreateMap<PassengerTravelInfo, PassengerTravelInfoDTO>();

        }
    }
    
}
