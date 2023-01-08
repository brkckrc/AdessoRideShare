using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleMinimal.Infra.Migrations
{
    public partial class ChangeDriverTravelInfo : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger");

            migrationBuilder.AlterColumn<int>(
                name: "DriverTravelInfoId",
                table: "Passenger",
                type: "int",
                nullable: false,
                defaultValue: 1,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger");

            migrationBuilder.AlterColumn<int>(
                name: "DriverTravelInfoId",
                table: "Passenger",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id");
        }
    }
}
