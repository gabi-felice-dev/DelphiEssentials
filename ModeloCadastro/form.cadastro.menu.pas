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
    procedure ActionCadastroChuckExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuCadastro: TFrmMenuCadastro;

implementation

{$R *.dfm}

uses form.cadastro.chuck;

procedure TFrmMenuCadastro.ActionCadastroChuckExecute(Sender: TObject);
begin
  FrmCadastroChuck := TFrmCadastroChuck.Create(nil);
  FrmCadastroChuck.ShowModal;
end;

end.
