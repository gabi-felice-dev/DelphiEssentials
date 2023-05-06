unit form.cadastro.paises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,    System.JSON,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Rest.Json,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Classe.Paises;

type
  TFrmCadastroPaises = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    PanelGrid: TPanel;
    Panel2: TPanel;
    EditSigla: TEdit;
    ButtonPais: TButton;
    PanelImagem: TPanel;
    GridDados: TDBGrid;
    ImgPais: TImage;
    MemTable_: TFDMemTable;
    DataSourcePais: TDataSource;
    MemTable_name: TStringField;
    MemTable_cca2: TStringField;
    MemTable_population: TLargeintField;
    MemTable_flag: TStringField;
    procedure ButtonPaisClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroPaises: TFrmCadastroPaises;

implementation

{$R *.dfm}

procedure TFrmCadastroPaises.ButtonPaisClick(Sender: TObject);
begin
//Busca Frase
  var strJson : string;
  RESTClient1.BaseURL := 'https://restcountries.com/v3.1/alpha/' + EditSigla.Text;
  RESTRequest1.Execute;
  strJson := RESTResponse1.Content;

  //valida
  if strJson = '' then
  begin
    ShowMessage('Sem dados');
    Exit;
  end;

  var pais: TRootDTO := TJson.JsonToObject<TRootDTO>('{"Items": '+ strJson + '}');

  MemTable_.Open;
  MemTable_.Append;
  MemTable_name.AsString        := pais.Items.First.Name.Common;
  MemTable_cca2.AsString        := pais.Items.First.Cca2;
  MemTable_population.AsInteger := pais.Items.First.Population;
  MemTable_flag.AsString        := pais.Items.First.Flags.Png;
  MemTable_.Post;

end;

end.
