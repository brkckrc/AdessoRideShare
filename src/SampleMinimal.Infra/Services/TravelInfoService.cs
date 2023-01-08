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
    public class TravelInfoService : Repository<TravelInfo>, ITravelInfoService
    {
        private readonly IMapper _mapper;
        public TravelInfoService(ApplicationDbContext context, IMapper mapper) : base(context)
        {
            this._mapper = mapper;
        }

        public async Task<TravelInfoDTO> AddAsync(TravelInfoDTO model)
        {
            var existRoute = await this.GetDriverRoute(model);
            if (existRoute!=null)
                return await Task.FromResult(_mapper.Map<TravelInfoDTO>(existRoute));
            var entity = await base.AddAsync(_mapper.Map<TravelInfo>(model));
            return _mapper.Map<TravelInfoDTO>(entity);
        }

        public async Task<TravelInfo> GetDriverRoute(TravelInfoDTO model)
        {
            return await this.GetAll()
                    .Include(fz => fz.Beginning)
                    .Include(fz => fz.LastStation)
                    .Where(fz => fz.BeginningId == model.BeginningId && fz.LastStationId == model.LastStationId).FirstOrDefaultAsync();

        }
    }
}
