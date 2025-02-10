using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO.ReqDTO
{
    public class ApiResponseReqDTO
    {
        [Required]
        public string ApiName { get; set; } 

        [Required]
        public string Data { get; set; } 
    }
}
