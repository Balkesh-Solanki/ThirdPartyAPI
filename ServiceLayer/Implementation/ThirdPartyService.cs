using BusinessLayer;
using DataLayer.Entities;
using DTO.ResDTO;
using ServiceLayer.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServiceLayer.Implementation
{
    public class ThirdPartyService : IThirdPartyService
    {
        private readonly ThirdPartyBLL _thirdPartyBLL;
        public ThirdPartyService(ThirdPartyBLL thirdPartyBLL)
        {
            _thirdPartyBLL = thirdPartyBLL;
        }
        public async Task<ApiResponseResDTO> FetchAndStoreApiResponse()
        {
            return await _thirdPartyBLL.FetchAndStoreApiResponse();
        }

    }
}
