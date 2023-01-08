using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleMinimal.Infra.Migrations
{
    public partial class ChangeDriverTravelInfo2 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
               name: "TravelInfoId",
               table: "PassengerTravelInfo");
            migrationBuilder.DropColumn(
             name: "VehicleId",
             table: "PassengerTravelInfo");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            
        }
    }
}
