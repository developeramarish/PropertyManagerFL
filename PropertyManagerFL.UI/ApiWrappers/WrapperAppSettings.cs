﻿using Newtonsoft.Json;
using PropertyManagerFL.Application.Interfaces.Services.Common;
using PropertyManagerFL.Application.ViewModels.AppSettings;
using PropertyManagerFL.UI.Services.ClientApi;
using System.Text;

namespace PropertyManagerFL.UI.ApiWrappers;
public class WrapperAppSettings : IAppSettingsService
{
    private readonly HttpClient _httpClient;
    private readonly IConfiguration _env;
    private readonly ILogger<WrapperAppSettings> _logger;
    private readonly string? _url;
    private readonly string? _otherSettingsUrl;
    private readonly string? _initializeUrl;
    private readonly string? _updateLanguageUrl;
    private readonly HttpClientConfigurationService _httpClientConfigService;

    public WrapperAppSettings(HttpClient httpClient, IConfiguration env,
                                    ILogger<WrapperAppSettings> logger, HttpClientConfigurationService httpClientConfigService)
    {
        _env = env;
        _url = $"{_env["BaseUrl"]}/appsettings/emailsettings";
        _otherSettingsUrl = $"{_env["BaseUrl"]}/appsettings/othersettings";
        _initializeUrl = $"{_env["BaseUrl"]}/appsettings/initialize";
        _updateLanguageUrl = $"{_env["BaseUrl"]}/appsettings/updatelanguage";
        _logger = logger;

        _httpClient = httpClient;

        _httpClientConfigService = httpClientConfigService;
        _httpClientConfigService.ConfigureHttpClient(_httpClient);

    }

    public async Task<ApplicationSettingsVM> GetSettingsAsync()
    {
        try
        {
            using (HttpResponseMessage response = await _httpClient.GetAsync(_url))
            {
                if (response.IsSuccessStatusCode)
                {
                    var data = await response.Content.ReadAsStringAsync();
                    var output = JsonConvert.DeserializeObject<ApplicationSettingsVM>(data);
                    if (output != null)
                        return output;
                    else
                        return new ApplicationSettingsVM();
                }
                else
                {
                    return new ApplicationSettingsVM();
                }
            }
        }
        catch (Exception exc)
        {
            _logger.LogError(exc, "Erro ao pesquisar API (AppSettings)");
            return new ApplicationSettingsVM();
        }
    }

    public async Task UpdateSettingsAsync(ApplicationSettingsVM settings)
    {
        await _httpClient.PutAsJsonAsync(_url, settings);
    }
    public async Task UpdateOtherSettingsAsync(ApplicationSettingsVM settings)
    {
        await _httpClient.PutAsJsonAsync(_otherSettingsUrl, settings);
    }

    public async Task<bool> InitializeRentProcessingTables()
    {
        try
        {
            using (HttpResponseMessage response = await _httpClient.GetAsync(_initializeUrl))
            {
                if (!response.IsSuccessStatusCode)
                {
                    _logger.LogError(response.ReasonPhrase, "Erro ao executar API (AppSettings/Initialize)");
                    return false;
                }

                return true;
            }
        }
        catch (Exception exc)
        {
            _logger.LogError(exc, "Erro ao executar API (AppSettings/Initialize)");
            return false;
        }
    }

    public async Task<(string, bool)> UpdateLanguageAsync(string language)
    {
        // _updateLanguageUrl = $"{_env["BaseUrl"]}/appsettings/updatelanguage";
        // controller = AppSettingsController

        try
        {
            var content = new StringContent("\"" + language + "\"", Encoding.UTF8, "application/json");

            var response = await _httpClient.PatchAsync(_updateLanguageUrl, content);

            if (response.IsSuccessStatusCode)
            {
                return ("Campo atualizado com sucesso!", true);
            }
            else
            {
                return ("Falha ao atualizar o campo.", false);
            }

        }
        catch (HttpRequestException httpEx)
        {
            return (httpEx.Message, false);
        }
        catch (Exception ex)
        {
            return (ex.Message, false);
        }
    }
}