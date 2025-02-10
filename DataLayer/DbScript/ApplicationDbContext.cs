using DataLayer.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.DbScript
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        public DbSet<ApiResponse> ApiResponses { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ApiResponse>().ToTable("ApiResponses");

            modelBuilder.Entity<ApiResponse>()
                .Property(a => a.Data)
                .HasColumnType("JSON");

            modelBuilder.Entity<ApiResponse>()
                .Property(a => a.CreatedAt)
                .HasColumnType("DATETIME")
                .HasDefaultValueSql("CURRENT_TIMESTAMP");
        }
    }
}
