using SampleMinimal.Infra.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SampleMinimal.Infra.Services
{
    public class VehicleService : Repository<Vehicle>,IVehicleService
    {
        public VehicleService(ApplicationDbContext context) : base(context)
        {

        }
    }
}
