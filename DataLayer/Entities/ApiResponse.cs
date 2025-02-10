using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLayer.Entities
{
    public class ApiResponse
    {
        public int Id { get; set; }
        public string Data { get; set; } // Store full API response (JSON format)
        public DateTime CreatedAt { get; set; }
        public string ApiName { get; set; }
    }
}
