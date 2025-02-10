using DataLayer.Entities;
using DTO.ResDTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLayer.Interfaces
{
    public interface IThirdPartyService
    {
        Task<ApiResponseResDTO> FetchAndStoreApiResponse();
    }
}
