program ConversorMoedaFM;

uses
  System.StartUpCopy,
  FMX.Forms,
  uConversorMoedaFireMonkey in 'uConversorMoedaFireMonkey.pas' {Form2},
  Classe.ConversorMoeda in 'Classe.ConversorMoeda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
