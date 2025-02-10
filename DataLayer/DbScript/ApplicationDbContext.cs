using DataLayer.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.DbScript
{
    //public class ApplicationDbContext : DbContext
    //{
    //    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

    //    public DbSet<ApiResponse> ApiResponses { get; set; }
    //}
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<ApiResponse> ApiResponses { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // Define table name
            modelBuilder.Entity<ApiResponse>().ToTable("ApiResponses");

            // Ensure JSON storage type in MySQL
            modelBuilder.Entity<ApiResponse>()
                .Property(a => a.Data)
                .HasColumnType("JSON");

            // Set default value for CreatedAt
            modelBuilder.Entity<ApiResponse>()
                .Property(a => a.CreatedAt)
                .HasColumnType("DATETIME")
                .HasDefaultValueSql("CURRENT_TIMESTAMP");
        }
    }
}
