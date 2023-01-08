using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace SampleMinimal.Infra.Migrations
{
    public partial class ChangeDriverYravelInfoModel : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_TravelInfo_TravelInfoId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_Vehicle_VehicleId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropPrimaryKey(
                name: "PK_PassengerTravelInfo",
                table: "PassengerTravelInfo");

            migrationBuilder.AlterColumn<int>(
                name: "VehicleId",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AlterColumn<int>(
                name: "TravelInfoId",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<bool>(
                name: "IsDeleted",
                table: "PassengerTravelInfo",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PassengerTravelInfo",
                table: "PassengerTravelInfo",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_PassengerTravelInfo_PassengerId",
                table: "PassengerTravelInfo",
                column: "PassengerId");

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

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_TravelInfo_TravelInfoId",
                table: "PassengerTravelInfo");

            migrationBuilder.DropForeignKey(
                name: "FK_PassengerTravelInfo_Vehicle_VehicleId",
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

            migrationBuilder.DropColumn(
                name: "IsDeleted",
                table: "PassengerTravelInfo");

            migrationBuilder.AlterColumn<int>(
                name: "VehicleId",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "TravelInfoId",
                table: "PassengerTravelInfo",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_PassengerTravelInfo",
                table: "PassengerTravelInfo",
                columns: new[] { "PassengerId", "TravelInfoId", "VehicleId", "TravelDate" });

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_TravelInfo_TravelInfoId",
                table: "PassengerTravelInfo",
                column: "TravelInfoId",
                principalTable: "TravelInfo",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_PassengerTravelInfo_Vehicle_VehicleId",
                table: "PassengerTravelInfo",
                column: "VehicleId",
                principalTable: "Vehicle",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
