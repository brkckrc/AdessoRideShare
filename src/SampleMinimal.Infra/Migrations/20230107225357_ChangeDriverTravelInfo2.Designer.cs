﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using SampleMinimal.Infra.DAL;

#nullable disable

namespace SampleMinimal.Infra.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20230107225357_ChangeDriverTravelInfo2")]
    partial class ChangeDriverTravelInfo2
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.4")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("SampleMinimal.Core.Entities.AppUser", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<DateTime>("BirthDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DeletedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DeletedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Email")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("IdentifierNo")
                        .HasColumnType("nvarchar(max)");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Phone")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("Surname")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UpdatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.ToTable("AppUser");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.DriverTravelInfo", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("AcceptedSeat")
                        .HasColumnType("int");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DeletedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DeletedDate")
                        .HasColumnType("datetime2");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("TravelInfoId")
                        .HasColumnType("int");

                    b.Property<string>("UpdatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("VehicleId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("TravelInfoId");

                    b.HasIndex("VehicleId");

                    b.ToTable("DriverTravelInfo");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.LookUp", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DeletedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DeletedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("Description")
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<int?>("EnumType")
                        .HasColumnType("int");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(200)
                        .HasColumnType("nvarchar(200)");

                    b.Property<string>("UpdatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.ToTable("Lookup");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.LookUpList", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DeletedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DeletedDate")
                        .HasColumnType("datetime2");

                    b.Property<byte?>("DisplayOrder")
                        .HasColumnType("tinyint");

                    b.Property<int?>("EnumType")
                        .HasColumnType("int");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("LookUpId")
                        .HasColumnType("int");

                    b.Property<string>("Name")
                        .HasColumnType("nvarchar(max)");

                    b.Property<int?>("ParentId")
                        .HasColumnType("int");

                    b.Property<string>("ShortName")
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("UpdatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.HasIndex("LookUpId");

                    b.HasIndex("ParentId");

                    b.ToTable("LookUpList");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.PassengerTravelInfo", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DeletedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DeletedDate")
                        .HasColumnType("datetime2");

                    b.Property<int>("DriverTravelInfoId")
                        .HasColumnType("int");

                    b.Property<int>("IGG")
                        .HasColumnType("int");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("PassengerId")
                        .HasColumnType("int");

                    b.Property<DateTime>("TravelDate")
                        .HasColumnType("datetime2");

                    b.Property<int?>("TravelInfoId")
                        .HasColumnType("int");

                    b.Property<string>("UpdatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedDate")
                        .HasColumnType("datetime2");

                    b.Property<int?>("VehicleId")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("DriverTravelInfoId");

                    b.HasIndex("PassengerId");

                    b.HasIndex("TravelInfoId");

                    b.HasIndex("VehicleId");

                    b.ToTable("PassengerTravelInfo");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.TravelInfo", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("BeginningId")
                        .HasColumnType("int");

                    b.Property<string>("CreatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime>("CreatedDate")
                        .HasColumnType("datetime2");

                    b.Property<string>("DeletedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("DeletedDate")
                        .HasColumnType("datetime2");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("LastStationId")
                        .HasColumnType("int");

                    b.Property<string>("UpdatedBy")
                        .HasColumnType("nvarchar(max)");

                    b.Property<DateTime?>("UpdatedDate")
                        .HasColumnType("datetime2");

                    b.HasKey("Id");

                    b.HasIndex("BeginningId");

                    b.HasIndex("LastStationId");

                    b.ToTable("TravelInfo");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Vehicle", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"), 1L, 1);

                    b.Property<int>("DriverId")
                        .HasColumnType("int");

                    b.Property<bool>("IsDeleted")
                        .HasColumnType("bit");

                    b.Property<int>("ModelId")
                        .HasColumnType("int");

                    b.Property<int>("Seat")
                        .HasColumnType("int");

                    b.HasKey("Id");

                    b.HasIndex("DriverId");

                    b.HasIndex("ModelId");

                    b.ToTable("Vehicle");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Driver", b =>
                {
                    b.HasBaseType("SampleMinimal.Core.Entities.AppUser");

                    b.ToTable("Driver");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Passenger", b =>
                {
                    b.HasBaseType("SampleMinimal.Core.Entities.AppUser");

                    b.Property<int>("DriverTravelInfoId")
                        .HasColumnType("int");

                    b.HasIndex("DriverTravelInfoId");

                    b.ToTable("Passenger");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.DriverTravelInfo", b =>
                {
                    b.HasOne("SampleMinimal.Core.Entities.TravelInfo", "TravelInfo")
                        .WithMany()
                        .HasForeignKey("TravelInfoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SampleMinimal.Core.Entities.Vehicle", "Vehicle")
                        .WithMany()
                        .HasForeignKey("VehicleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("TravelInfo");

                    b.Navigation("Vehicle");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.LookUpList", b =>
                {
                    b.HasOne("SampleMinimal.Core.Entities.LookUp", "LookUp")
                        .WithMany("LookUpLists")
                        .HasForeignKey("LookUpId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SampleMinimal.Core.Entities.LookUpList", "Parent")
                        .WithMany("Childs")
                        .HasForeignKey("ParentId");

                    b.Navigation("LookUp");

                    b.Navigation("Parent");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.PassengerTravelInfo", b =>
                {
                    b.HasOne("SampleMinimal.Core.Entities.DriverTravelInfo", "DriverTravelInfo")
                        .WithMany()
                        .HasForeignKey("DriverTravelInfoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SampleMinimal.Core.Entities.Passenger", "Passenger")
                        .WithMany()
                        .HasForeignKey("PassengerId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SampleMinimal.Core.Entities.TravelInfo", null)
                        .WithMany("PassengerTravelInfo")
                        .HasForeignKey("TravelInfoId");

                    b.HasOne("SampleMinimal.Core.Entities.Vehicle", null)
                        .WithMany("PassengerTravelInfo")
                        .HasForeignKey("VehicleId");

                    b.Navigation("DriverTravelInfo");

                    b.Navigation("Passenger");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.TravelInfo", b =>
                {
                    b.HasOne("SampleMinimal.Core.Entities.LookUpList", "Beginning")
                        .WithMany()
                        .HasForeignKey("BeginningId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SampleMinimal.Core.Entities.LookUpList", "LastStation")
                        .WithMany()
                        .HasForeignKey("LastStationId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Beginning");

                    b.Navigation("LastStation");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Vehicle", b =>
                {
                    b.HasOne("SampleMinimal.Core.Entities.Driver", "Driver")
                        .WithMany("Vehicles")
                        .HasForeignKey("DriverId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SampleMinimal.Core.Entities.LookUpList", "Model")
                        .WithMany()
                        .HasForeignKey("ModelId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Driver");

                    b.Navigation("Model");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Driver", b =>
                {
                    b.HasOne("SampleMinimal.Core.Entities.AppUser", null)
                        .WithOne()
                        .HasForeignKey("SampleMinimal.Core.Entities.Driver", "Id")
                        .OnDelete(DeleteBehavior.ClientCascade)
                        .IsRequired();
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Passenger", b =>
                {
                    b.HasOne("SampleMinimal.Core.Entities.DriverTravelInfo", "DriverTravelInfo")
                        .WithMany("Passengers")
                        .HasForeignKey("DriverTravelInfoId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("SampleMinimal.Core.Entities.AppUser", null)
                        .WithOne()
                        .HasForeignKey("SampleMinimal.Core.Entities.Passenger", "Id")
                        .OnDelete(DeleteBehavior.ClientCascade)
                        .IsRequired();

                    b.Navigation("DriverTravelInfo");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.DriverTravelInfo", b =>
                {
                    b.Navigation("Passengers");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.LookUp", b =>
                {
                    b.Navigation("LookUpLists");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.LookUpList", b =>
                {
                    b.Navigation("Childs");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.TravelInfo", b =>
                {
                    b.Navigation("PassengerTravelInfo");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Vehicle", b =>
                {
                    b.Navigation("PassengerTravelInfo");
                });

            modelBuilder.Entity("SampleMinimal.Core.Entities.Driver", b =>
                {
                    b.Navigation("Vehicles");
                });
#pragma warning restore 612, 618
        }
    }
}
