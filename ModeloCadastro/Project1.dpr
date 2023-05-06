program Project1;

uses
  Vcl.Forms,
  form.cadastro.menu in 'form.cadastro.menu.pas' {FrmMenuCadastro},
  form.cadastro.chuck in 'form.cadastro.chuck.pas' {FrmCadastroChuck},
  form.cadastro.paises in 'form.cadastro.paises.pas' {FrmCadastroPaises},
  form.cadastro.bb in 'form.cadastro.bb.pas' {FrmCadastroBB},
  Pkg.Json.DTO in 'Pkg.Json.DTO.pas',
  Classe.Paises in 'Classe.Paises.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMenuCadastro, FrmMenuCadastro);
  Application.Run;
end.
