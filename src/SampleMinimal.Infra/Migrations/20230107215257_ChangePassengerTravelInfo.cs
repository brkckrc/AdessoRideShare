using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleMinimal.Infra.Migrations
{
    public partial class ChangePassengerTravelInfo : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "DriverTravelInfoId",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: false,
                defaultValue: 1);

            migrationBuilder.CreateIndex(
                name: "IX_PassengerTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo",
                column: "DriverTravelInfoId");

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropIndex(
                name: "IX_PassengerTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropColumn(
                name: "DriverTravelInfoId",
                table: "PassengerTravelInfo");
        }
    }
}
