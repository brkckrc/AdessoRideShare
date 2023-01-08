using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleMinimal.Infra.Migrations
{
    public partial class AddDriverTravelInfo : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "DriverTravelInfoId",
                table: "Passenger",
                type: "int",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "DriverTravelInfo",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TravelInfoId = table.Column<int>(type: "int", nullable: false),
                    VehicleId = table.Column<int>(type: "int", nullable: false),
                    AcceptedSeat = table.Column<int>(type: "int", nullable: false),
                    IsDeleted = table.Column<bool>(type: "bit", nullable: false),
                    CreatedDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    CreatedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UpdatedDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    UpdatedBy = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DeletedDate = table.Column<DateTime>(type: "datetime2", nullable: true),
                    DeletedBy = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_DriverTravelInfo", x => x.Id);
                    table.ForeignKey(
                        name: "FK_DriverTravelInfo_TravelInfo_TravelInfoId",
                        column: x => x.TravelInfoId,
                        principalTable: "TravelInfo",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_DriverTravelInfo_Vehicle_VehicleId",
                        column: x => x.VehicleId,
                        principalTable: "Vehicle",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Passenger_DriverTravelInfoId",
                table: "Passenger",
                column: "DriverTravelInfoId");

            migrationBuilder.CreateIndex(
                name: "IX_DriverTravelInfo_TravelInfoId",
                table: "DriverTravelInfo",
                column: "TravelInfoId");

            migrationBuilder.CreateIndex(
                name: "IX_DriverTravelInfo_VehicleId",
                table: "DriverTravelInfo",
                column: "VehicleId");

            migrationBuilder.AddForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger");

            migrationBuilder.DropTable(
                name: "DriverTravelInfo");

            migrationBuilder.DropIndex(
                name: "IX_Passenger_DriverTravelInfoId",
                table: "Passenger");

            migrationBuilder.DropColumn(
                name: "DriverTravelInfoId",
                table: "Passenger");
        }
    }
}
