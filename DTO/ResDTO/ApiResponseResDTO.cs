using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.ResDTO
{
    public class ApiResponseResDTO
    {
        public int Id { get; set; }
        public string ApiName { get; set; }
        public string Data { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
