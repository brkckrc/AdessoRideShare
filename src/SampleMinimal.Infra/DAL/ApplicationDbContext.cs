using Microsoft.EntityFrameworkCore.Query;
using SampleMinimal.Core.Entities.Base;

namespace SampleMinimal.Infra.DAL
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<AppUser> AppUser { get; set; }
        public DbSet<Driver> Driver { get; set; }
        public DbSet<Passenger> Passenger { get; set; }
        public DbSet<TravelInfo> TravelInfo { get; set; }
        public DbSet<Vehicle> Vehicle { get; set; }
        public DbSet<PassengerTravelInfo> PassengerTravelInfo { get; set; }
        public DbSet<DriverTravelInfo> DriverTravelInfo { get; set; }
        public DbSet<LookUp> Lookup { get; set; }
        public DbSet<LookUpList> LookUpList { get; set; }

        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<PassengerTravelInfo>(fz =>
            {
                fz.HasKey(fza => new { fza.PassengerId, fza.DriverTravelInfoId, fza.TravelDate });
                fz.HasOne(fza => fza.DriverTravelInfo)
                .WithMany(fz => fz.PassengerTravelInfo)
                .HasForeignKey(fza => fza.DriverTravelInfoId)
                .OnDelete(DeleteBehavior.Restrict);

                fz.HasOne(fza => fza.Passenger)
               .WithMany(fz => fz.PassengerTravelInfo)
               .HasForeignKey(fza => fza.PassengerId)
               .OnDelete(DeleteBehavior.Restrict);
            });


            base.OnModelCreating(builder);
        }
        
    }
}
