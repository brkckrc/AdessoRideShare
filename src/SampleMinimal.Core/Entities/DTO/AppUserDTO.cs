using SampleMinimal.Core.Entities.Base;
using SampleMinimal.Core.Enums;

namespace SampleMinimal.Core.Entities.DTO
{
    public class AppUserDTO:Entity<int>
    {
        public string Name { get; set; }
        public string Surname { get; set; }
        public string IdentifierNo { get; set; }
        public DateTime BirthDate { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public AppUserType? AppUserType { get; set; }
       

    }

    public class DriverDTO: AppUserDTO
    {
        public IEnumerable<int> Vehicles { get; set; }
        //public IEnumerable<Vehicle> Vehicles { get; set; }
    }
}
