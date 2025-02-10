using BusinessLayer;
using DataLayer.DbScript;
using Microsoft.EntityFrameworkCore;
using ServiceLayer.Implementation;
using ServiceLayer.Interfaces;

var builder = WebApplication.CreateBuilder(args);

// Add HttpClient support
builder.Services.AddHttpClient();

// Configure MySQL Database
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseMySql(builder.Configuration.GetConnectionString("DefaultConnection"),
        ServerVersion.AutoDetect(builder.Configuration.GetConnectionString("DefaultConnection"))));

// Register Services
builder.Services.AddScoped<IThirdPartyService, ThirdPartyService>();
builder.Services.AddScoped<ThirdPartyBLL>();

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
