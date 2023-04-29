unit Classe.ConversorMoeda;

interface

uses
  Winapi.WinSock, System.SysUtils, System.Classes, System.JSON,
  System.Net.HttpClient, HTTPApp, IdHTTP;

type
  TConversorMoeda = class
    class function RealparaDolar(valorReal : Double) : Double; overload;
    class function DolarparaReal(valorReal : Double) : Double; overload;
    class function RealparaDolar(valorReal : string) : string; overload;
    class function DolarparaReal(valorReal : string) : string; overload;
    class function GetCotacaoDolarBCB: Double;
  end;

implementation

{ TConversorMoeda }

class function TConversorMoeda.RealparaDolar(valorReal: Double): Double;
var Quote : double;
begin
  Result :=  valorReal / GetCotacaoDolarBCB;
end;

class function TConversorMoeda.DolarparaReal(valorReal: Double): Double;
var Quote : double;
begin
  Result :=  valorReal * GetCotacaoDolarBCB;
end;

class function TConversorMoeda.DolarparaReal(valorReal: string): string;
begin
  var valorIniDolar :double;
  if not TryStrToFloat(valorReal, valorIniDolar) then
  begin
    Result := 'Valor Inválido, verifique.';
  end
  else
  begin
    Result := FormatFloat('R$ 0.,00', DolarparaReal(valorIniDolar));
  end;
end;

class function TConversorMoeda.GetCotacaoDolarBCB: Double;
var
  templist:   TJSONArray;
  httpClient: THTTPClient;
  Response: IHTTPResponse;
begin
  try
    httpClient := THTTPClient.Create;
    templist   := TJSONArray.Create;
    Response := httpClient.Get('https://api.bcb.gov.br/dados/serie/bcdata.sgs.10813/dados/ultimos/1?formato=json');
    templist := TJSONObject.ParseJSONValue(Response.ContentAsString) as TJSONArray;
    try
      Result := templist.Items[0].GetValue<Double>('valor');
    finally
      templist.Free;
      httpClient.Free;
    end;
  except on E: Exception do
    Result := 0;
  end;
end;

class function TConversorMoeda.RealparaDolar(valorReal: string): string;
begin
  var valorIniReal :double;
  if not TryStrToFloat(valorReal, valorIniReal) then
  begin
    Result := 'Valor Inválido, verifique.';
  end
  else
  begin
    Result := FormatFloat('U$ 0.,00', RealParaDolar(valorIniReal));
  end;
end;

end.
