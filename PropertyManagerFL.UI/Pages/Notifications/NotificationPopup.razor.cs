using Microsoft.AspNetCore.Components;
using PropertyManagerFL.Application.Interfaces.Services.AppManager;
using PropertyManagerFL.Application.Interfaces.Services.Common;
using PropertyManagerFL.Application.ViewModels.AppSettings;
using PropertyManagerFL.Application.ViewModels.Arrendamentos;

namespace PropertyManagerFL.UI.Pages.Notifications;
public partial class NotificationPopup
{
    [Parameter] public bool showPopup { get; set; }
    [Parameter] public EventCallback<int> HasAlerts { get; set; }

    [Inject] public IArrendamentoService? arrendamentosService { get; set; }
    [Inject] public IInquilinoService? inquilinosService { get; set; }
    [Inject] public IRecebimentoService? recebimentosService { get; set; }
    [Inject] protected IAppSettingsService? appSettingsService { get; set; }

    [Inject] public ILogger<App>? logger { get; set; }

    protected Dictionary<string, int> LeaseAlerts = new Dictionary<string, int>();

    protected IEnumerable<ArrendamentoVM>? leases { get; set; }
    protected ApplicationSettingsVM? AppSettings { get; set; } = new();

    //protected List<string> Alerts { get; set; } = new();
    protected override async Task OnInitializedAsync()
    {
        leases = await GetAllLeases();
        if (leases is not null && leases.Any())
        {
            AppSettings = await GetSettings();
            await CheckForAlerts();
        }
    }

    protected async Task<ApplicationSettingsVM> GetSettings()
    {
        return await appSettingsService!.GetSettingsAsync();
    }

    private async Task CheckForAlerts()
    {
        LeaseAlerts.Clear();
        if (AppSettings?.CartasAumentoAutomaticas == false)
        {
            // envio de carta de aumento Manual ==> Tipo de documento = 16 => 'Carta de atualiza��o de renda' 
            var tenantDocuments = await inquilinosService!.GetDocumentos();
            var updateLetterSentCurrentYear = tenantDocuments.Where(td => td.DocumentType == 16 && td.CreationDate.Year < DateTime.Now.Year);
            if (updateLetterSentCurrentYear.Any())
            {
                foreach (var document in tenantDocuments)
                {
                    LeaseAlerts.Add($"Necess�rio envio de carta de atualiza��o ao inquilino {document.NomeInquilino}", 1);
                }
            }

            var leasesWhoNeedToUpdateRent = leases?.Where(l => l.Data_Inicio.Month == DateTime.Now.Month + 1);
            if (leasesWhoNeedToUpdateRent?.Count() > 0)
            {
                foreach (var item in leasesWhoNeedToUpdateRent)
                {
                    var alertMsg = $"Necess�rio atualizar renda do inquilino {item.NomeInquilino} ({item.Fracao})";
                    if (item.EnvioCartaAtualizacaoRenda == false)
                        alertMsg += " - n�o foi enviada carta de atualiza��o!";

                    LeaseAlerts.Add(alertMsg, 1);
                }
            }
            else // Cartas de aumento de rendas autom�ticas
            {
                if (leases?.Count() > 0)
                {
                    var rentPayments = (await recebimentosService!.GetAll()).ToList().Count();
                    if (rentPayments > 0)
                    {
                        var UpdateLetterSent = await arrendamentosService!.CartaAtualizacaoRendasEmitida(DateTime.Now.Year);
                        if (UpdateLetterSent == false)
                        {
                            LeaseAlerts.Add("Cartas de atualiza��o de rendas n�o foram emitidas para o ano corrente!! Diploma � publicado em Outubro; cartas dever�o ser enviadas antes do fim do ano.", 3);
                        }
                    }
                }

            }
        }

        await HasAlerts.InvokeAsync(LeaseAlerts.Count);
        StateHasChanged();
    }

    protected async Task<IEnumerable<ArrendamentoVM>> GetAllLeases()
    {
        try
        {
            IEnumerable<ArrendamentoVM> listOfleases = await arrendamentosService!.GetAll();
            if (listOfleases is not null && listOfleases.Any())
            {
                listOfleases = listOfleases.OrderByDescending(l => l.Id).ToList();
                return listOfleases;
            }
            else
                return new List<ArrendamentoVM>();
        }
        catch (Exception ex)
        {
            logger?.LogError(ex.Message, ex);
            return new List<ArrendamentoVM>();

        }
    }


    protected int GetMonthDifference(DateTime startDate, DateTime endDate)
    {
        if (endDate.Date < startDate.Date)
        {
            return 0;
        }

        int monthsApart = 12 * (startDate.Year - endDate.Year) + startDate.Month - endDate.Month;
        return Math.Abs(monthsApart);
    }


}