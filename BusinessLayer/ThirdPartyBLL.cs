using DataLayer.DbScript;
using DataLayer.Entities;
using DTO.ResDTO;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class ThirdPartyBLL
    {
        private readonly HttpClient _httpClient;
        private readonly ApplicationDbContext _context;
        private readonly ILogger<ThirdPartyBLL> _logger;

        public ThirdPartyBLL(HttpClient httpClient, ApplicationDbContext context, ILogger<ThirdPartyBLL> logger)
        {
            _httpClient = httpClient ?? throw new ArgumentNullException(nameof(httpClient));
            _httpClient.DefaultRequestHeaders.Add("User-Agent", "MyDotNetApp"); // Required by GitHub API
            _context = context;
            _logger = logger;
        }
        
        public async Task<ApiResponseResDTO> FetchAndStoreApiResponse()
        {
            try
            {
                // Call third-party API using Service Layer
                string apiResponse = await GetGitHubUserAsync();

                // Store response in database
                var apiResponseEntity = new ApiResponse
                {
                    ApiName = "GitHubUserAPI",
                    Data = apiResponse,
                    CreatedAt = DateTime.UtcNow
                };

                await _context.ApiResponses.AddAsync(apiResponseEntity);
                await _context.SaveChangesAsync();

                return new ApiResponseResDTO
                {
                    Id = apiResponseEntity.Id,
                    ApiName = apiResponseEntity.ApiName,
                    Data = apiResponseEntity.Data,
                    CreatedAt = apiResponseEntity.CreatedAt
                };

            }
            catch (Exception ex)
            {
                _logger.LogError($"Error fetching API response: {ex.Message}");
                throw ;
            }


        }
        public async Task<string> GetGitHubUserAsync()
        {
            var url = "https://api.github.com/users/octocat";

            // Send API request
            var response = await _httpClient.GetAsync(url);

            if (!response.IsSuccessStatusCode)
            {
                throw new HttpRequestException($"GitHub API failed: {response.StatusCode}");
            }

            return await response.Content.ReadAsStringAsync();
        }
    }
}
