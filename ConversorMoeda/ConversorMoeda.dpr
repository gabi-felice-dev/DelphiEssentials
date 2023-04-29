program ConversorMoeda;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Classe.ConversorMoeda;

begin
 var texto: string := '';
 var continua: Boolean := True;

 while continua do
 begin
    try
      var valorIniReal : Double := 0;
      var valorFimDolar : Double := 0;

      Writeln('Digite o valor em real a ser convertido: ');
      Readln(texto);
      try
        valorIniReal := StrToFloat(texto);
        valorFimDolar :=  TConversorMoeda.RealparaDolar(valorIniReal);
        Writeln('O valor ' + FormatFloat('R$0.,00', valorIniReal) + ' convertido é ' + FormatFloat('$0.,00', valorFimDolar));
      except on E: Exception do
        begin
          Writeln('Erro no formato digitado, formação esperada: 5,5 / 5. ' + E.Message);
          Readln(texto);
        end;
      end;
      Writeln('Deseja continuar? S ou N');
      Readln(texto);
      if UpperCase(texto) = 'S' then
        continua := true
      else
        continua := false;
    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
 end;
 Writeln(#13 + #13 + 'Obrigada por utilizar o sistema ♥.' + #13 + 'Digite quarquer tecla para sair');
 Readln(texto);
end.


