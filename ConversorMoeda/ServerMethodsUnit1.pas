unit ServerMethodsUnit1;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, Classe.ConversorMoeda;

type
{$METHODINFO ON}
  TServerMethods1 = class(TComponent)
  private
    { Private declarations }

  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function ConverteRealDolar(valorReal : string) :string;
    function ConverteDolarReal(valorDolar : string) : string;
  end;
{$METHODINFO OFF}

implementation


uses System.StrUtils;

function TServerMethods1.ConverteDolarReal(valorDolar: string): string;
begin
   Result := TConversorMoeda.DolarparaReal(valorDolar);
end;

function TServerMethods1.ConverteRealDolar(valorReal: string): string;
begin
  Result := TConversorMoeda.RealParaDolar(valorReal);
end;

function TServerMethods1.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TServerMethods1.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;
end.

