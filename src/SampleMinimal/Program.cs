using Microsoft.AspNetCore.Mvc;
using Microsoft.OpenApi.Models;
using SampleMinimal.API.MapProfiles;
using SampleMinimal.API.Middleware;
using SampleMinimal.Infra.Services;
using System.Reflection;

Log.Logger = new LoggerConfiguration()
    .WriteTo.Console()
    .CreateLogger();
Log.Information("Starting up...");

var builder = WebApplication.CreateBuilder(args);
ConfigurationManager configuration = builder.Configuration;

// Add database connection
builder.Services.AddDbContext<ApplicationDbContext>(options => options.UseSqlServer(configuration.GetConnectionString("DefaultConnection")));

// Add services to the container.
builder.Host.UseSerilog((ctx, lc) => lc
    .WriteTo.Console()
    .ReadFrom.Configuration(ctx.Configuration));

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(c => { c.SwaggerDoc("v1", new OpenApiInfo { Title = "Sample API", Version = "v1" }); });

// Add AutoMapper
builder.Services.AddSingleton(provider => new MapperConfiguration(cfg =>
{
    cfg.AddProfile(new TravelProfile(provider.CreateScope().ServiceProvider.GetService<IVehicleService>()));

}).CreateMapper());

builder.Services.AddControllers().AddNewtonsoftJson(options =>
    options.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore
);
// Add Services
builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
var appInterfaces = Assembly.Load("SampleMinimal.Core").GetTypes()
    .Where(s => s.Name.EndsWith("Service") && s.IsInterface).ToList();
var  appServices= Assembly.Load("SampleMinimal.Infra").GetTypes()
    .Where(s => s.Name.EndsWith("Service") && s.IsInterface == false).ToList();
foreach (var appService in appServices)
    builder.Services.Add(new ServiceDescriptor(appInterfaces.First(fz=>$"I{appService.Name}"== fz.Name), appService, ServiceLifetime.Scoped));


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI(c => c.SwaggerEndpoint("/swagger/v1/swagger.json", "Sample API V1"));
}

app.UseHttpsRedirection();

app.UseSerilogRequestLogging();

// Global error handler
app.UseMiddleware<ErrorHandlerMiddleware>();
app.MapControllers();


app.Run();