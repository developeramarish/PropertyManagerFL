﻿namespace PropertyManagerFL.Application.ViewModels;
public class HistoricoEnvioCartasVM
{
    public int Id { get; set; }
    public DateTime DataEnvio { get; set; } = DateTime.Now;
    public DateTime DataResposta { get; set; }
    public int IdInquilino { get; set; }
    public int IdTipoCarta { get; set; }
    public byte Tentativa { get; set; }

}
