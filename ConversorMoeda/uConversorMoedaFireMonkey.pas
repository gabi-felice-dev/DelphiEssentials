unit uConversorMoedaFireMonkey;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.UITypes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls, FMX.Controls.Presentation, Classe.ConversorMoeda;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    edtReal: TEdit;
    Label2: TLabel;
    Panel2: TPanel;
    edtDolar: TEdit;
    Label3: TLabel;
    procedure edtRealExit(Sender: TObject);
    procedure edtDolarExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.edtDolarExit(Sender: TObject);
begin
  var real : double;
  if TryStrToFloat(edtDolar.Text, real) then
  begin
    edtReal.Text  := TConversorMoeda.DolarparaReal(edtDolar.Text);
    edtDolar.Text := FormatFloat('U$ 0.,00', StrToFloat(edtDolar.Text));
  end;
end;

procedure TForm2.edtRealExit(Sender: TObject);
begin
  var real : double;
  if TryStrToFloat(edtReal.Text, real) then
  begin
    edtDolar.Text := TConversorMoeda.RealparaDolar(edtReal.Text);
    edtReal.Text  := FormatFloat('R$ 0.,00', StrToFloat(edtReal.Text));
  end;
end;

end.
