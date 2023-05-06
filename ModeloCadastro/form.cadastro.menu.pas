unit form.cadastro.menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  TFrmMenuCadastro = class(TForm)
    ActionList: TActionList;
    MainMenu1: TMainMenu;
    FlowPanel: TFlowPanel;
    ActionCadastroChuck: TAction;
    Cadastros1: TMenuItem;
    CadastroChuck1: TMenuItem;
    BitBtnCadastroChuck: TBitBtn;
    ActionCadastroPaises: TAction;
    CadastroPaises1: TMenuItem;
    ImageList1: TImageList;
    BitBtnPaises: TBitBtn;
    BitBtnBB: TBitBtn;
    ActionCadastroBB: TAction;
    ActionCadastroBB1: TMenuItem;
    procedure ActionCadastroChuckExecute(Sender: TObject);
    procedure ActionCadastroBBExecute(Sender: TObject);
    procedure ActionCadastroPaisesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuCadastro: TFrmMenuCadastro;

implementation

{$R *.dfm}

uses form.cadastro.chuck, form.cadastro.bb, form.cadastro.paises;

procedure TFrmMenuCadastro.ActionCadastroBBExecute(Sender: TObject);
begin
  var frm : TFrmCadastroBB := TFrmCadastroBB.Create(Self);
      frm.ShowModal;
      frm.Free;

//  FrmCadastrobb := TFrmCadastroBB.Create(nil);
//  FrmCadastrobb.ShowModal;
//  FrmCadastrobb.Free;
end;

procedure TFrmMenuCadastro.ActionCadastroChuckExecute(Sender: TObject);
begin
  FrmCadastroChuck := TFrmCadastroChuck.Create(Self);
  FrmCadastroChuck.ShowModal;
  FrmCadastroChuck.Free;
end;


procedure TFrmMenuCadastro.ActionCadastroPaisesExecute(Sender: TObject);
begin
  var frm : TFrmCadastroPaises := TFrmCadastroPaises.Create(Self);
      frm.ShowModal;
      frm.Free;
end;

end.
