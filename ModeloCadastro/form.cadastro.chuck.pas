unit form.cadastro.chuck;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,  IdSSLOpenSSL,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, IdHTTP, System.JSON,
  IdAuthentication, IdIOHandler, IdIOHandlerSocket, IdIOHandlerStack, IdSSL,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, REST.Types,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TFrmCadastroChuck = class(TForm)
    DBGridChuck: TDBGrid;
    DataSourceChuck: TDataSource;
    MemChuck: TFDMemTable;
    MemChuckicon_url: TStringField;
    MemChuckid: TStringField;
    MemChuckurl: TStringField;
    MemChuckvalue: TStringField;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    TimerOpen: TTimer;
    PanelControle: TPanel;
    ButtonBuscarFrase: TButton;
    procedure TimerOpenTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ButtonBuscarFraseClick(Sender: TObject);
  private
    procedure CarregaFrase;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroChuck: TFrmCadastroChuck;

implementation

{$R *.dfm}

procedure TFrmCadastroChuck.ButtonBuscarFraseClick(Sender: TObject);
begin
  CarregaFrase;
end;

procedure TFrmCadastroChuck.CarregaFrase;
begin
  var stm : TStringStream := TStringStream.Create;
  var strJson : string;

  //Busca Frase
  try
    RESTRequest1.Execute;
    strJson := RESTResponse1.Content;
  finally
    stm.Free;
  end;

  //valida
  if strJson = '' then
  begin
    ShowMessage('Sem dados');
    Exit;
  end;

  //Serializar json
  var objJSON : TJSONObject := TJSONObject.ParseJSONValue(strJson) as TJSONObject;

  //Popular dataset
  MemChuck.Open;
  MemChuck.Append;
  MemChuck.FieldByName('icon_url').AsString := objJSON.GetValue<string>('icon_url');
  MemChuck.FieldByName('value').AsString    := objJSON.GetValue<string>('value');
  MemChuck.FieldByName('id').AsString       := objJSON.GetValue<string>('id');
  MemChuck.FieldByName('url').AsString      := objJSON.GetValue<string>('url');
  MemChuck.Post;
end;

procedure TFrmCadastroChuck.FormShow(Sender: TObject);
begin
    TimerOpen.Enabled := True;
end;

procedure TFrmCadastroChuck.TimerOpenTimer(Sender: TObject);
begin
    TimerOpen.Enabled := False;
    CarregaFrase;
end;

end.
