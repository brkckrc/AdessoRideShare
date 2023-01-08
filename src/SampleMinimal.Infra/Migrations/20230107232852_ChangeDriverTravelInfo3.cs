using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleMinimal.Infra.Migrations
{
    public partial class ChangeDriverTravelInfo3 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger");

            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_Passenger_PassengerId",
                table: "PassengerTravelInfo");

        

       

            migrationBuilder.DropPrimaryKey(
                name: "PK_PassengerTravelInfo",
                table: "PassengerTravelInfo");

            migrationBuilder.DropIndex(
                name: "IX_PassengerTravelInfo_PassengerId",
                table: "PassengerTravelInfo");


            migrationBuilder.DropColumn(
                name: "Id",
                table: "PassengerTravelInfo");
          

            migrationBuilder.AlterColumn<int>(
                name: "DriverTravelInfoId",
                table: "Passenger",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddPrimaryKey(
                name: "PK_PassengerTravelInfo",
                table: "PassengerTravelInfo",
                columns: new[] { "PassengerId", "DriverTravelInfoId", "TravelDate" });

            migrationBuilder.AddForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_Passenger_PassengerId",
                table: "PassengerTravelInfo",
                column: "PassengerId",
                principalTable: "Passenger",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger");

            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_Passenger_PassengerId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PassengerTravelInfo",
                table: "PassengerTravelInfo");

            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<int>(
                name: "IGG",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PassengerTravelInfo",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<int>(
                name: "TravelInfoId",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "VehicleId",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "DriverTravelInfoId",
                table: "Passenger",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PassengerTravelInfo",
                table: "PassengerTravelInfo",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_PassengerTravelInfo_PassengerId",
                table: "PassengerTravelInfo",
                column: "PassengerId");

            migrationBuilder.CreateIndex(
                name: "IX_PassengerTravelInfo_TravelInfoId",
                table: "PassengerTravelInfo",
                column: "TravelInfoId");

            migrationBuilder.CreateIndex(
                name: "IX_PassengerTravelInfo_VehicleId",
                table: "PassengerTravelInfo",
                column: "VehicleId");

            migrationBuilder.AddForeignKey(
                name: "FK_Passenger_DriverTravelInfo_DriverTravelInfoId",
                table: "Passenger",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_DriverTravelInfo_DriverTravelInfoId",
                table: "PassengerTravelInfo",
                column: "DriverTravelInfoId",
                principalTable: "DriverTravelInfo",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_Passenger_PassengerId",
                table: "PassengerTravelInfo",
                column: "PassengerId",
                principalTable: "Passenger",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_TravelInfo_TravelInfoId",
                table: "PassengerTravelInfo",
                column: "TravelInfoId",
                principalTable: "TravelInfo",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_Vehicle_VehicleId",
                table: "PassengerTravelInfo",
                column: "VehicleId",
                principalTable: "Vehicle",
                principalColumn: "Id");
        }
    }
}
