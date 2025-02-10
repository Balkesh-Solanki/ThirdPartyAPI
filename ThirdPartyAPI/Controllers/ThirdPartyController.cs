using BusinessLayer;
using Microsoft.AspNetCore.Mvc;
using ServiceLayer.Interfaces;

namespace ThirdPartyAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ThirdPartyController : ControllerBase
    {
        private readonly IThirdPartyService _thirdPartyService;

        public ThirdPartyController(IThirdPartyService thirdPartyService)
        {
            _thirdPartyService = thirdPartyService;
        }

        [HttpGet("fetch")]
        public async Task<IActionResult> FetchAndStoreData()
        {
            var result = await _thirdPartyService.FetchAndStoreApiResponse();
            return Ok(result);
        }
    }
}
