﻿using EmailService;
using PropertyManagerFL.Application.Interfaces.Services.Email;
using PropertyManagerFL.UI.Services.ClientApi;
using System.ComponentModel.DataAnnotations;

namespace PropertyManagerFL.UI.ApiWrappers
{
    public class WrapperEMail : IClientEmailService
    {
        private readonly IConfiguration _env;
        private readonly ILogger<WrapperEMail> _logger;
        private readonly string? _uri;
        private readonly HttpClient _httpClient;
        private readonly HttpClientConfigurationService _httpClientConfigService;


        public WrapperEMail(IConfiguration env, ILogger<WrapperEMail> logger, HttpClient httpClient, HttpClientConfigurationService httpClientConfigService)
        {
            _env = env;
            _logger = logger;
            _httpClient = httpClient;
            _uri = $"{_env["BaseUrl"]}/EmailMessages";

            _httpClientConfigService = httpClientConfigService;
            _httpClientConfigService.ConfigureHttpClient(_httpClient);
        }

        public bool IsValidEmail(string EmailName)
        {
            return new EmailAddressAttribute().IsValid(EmailName);
        }

        public void SendEmail(Message message)
        {
            throw new NotImplementedException();
        }


        public async Task  SendEmailAsync(Message message)
        {
            try
            {
                using (HttpResponseMessage result = await _httpClient.PostAsJsonAsync(_uri, message))
                {
                    var success = result.IsSuccessStatusCode;
                }
            }
            catch (Exception exc)
            {
                _logger.LogError(exc, $"Erro ao atualizar Arrendamento");
            }

        }
    }
}
