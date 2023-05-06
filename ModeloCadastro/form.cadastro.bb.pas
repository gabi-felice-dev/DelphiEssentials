unit form.cadastro.bb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,  System.JSON,
  Vcl.Bind.DBEngExt, Data.Bind.DBScope;

type
  TFrmCadastroBB = class(TForm)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    FlowPanel: TFlowPanel;
    GridPanel1: TGridPanel;
    Memo1: TMemo;
    Button1: TButton;
    Edit: TEdit;
    BitBtn1: TBitBtn;
    memBB_: TFDMemTable;
    dsPaises_: TDataSource;
    memBB_json: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure BitBtn1Click(Sender: TObject);
    procedure EditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure CarregaDados;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastroBB: TFrmCadastroBB;

implementation

//Link ponto .pas com .dfm
{$R *.dfm}

procedure TFrmCadastroBB.BitBtn1Click(Sender: TObject);
begin
  CarregaDados;
end;

procedure TFrmCadastroBB.CarregaDados;
begin
  var stm : TStringStream := TStringStream.Create;
    var strJson : string;

    //Busca Frase
    try
      RESTClient.BaseUrl := 'https://api.breakingbadquotes.xyz/v1/quotes/' + Edit.text;
      RESTRequest.Execute;
      strJson := RESTResponse.Content;
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
    MemBB_.Open;
    MemBB_.Append;
    MemBB_.FieldByName('JSON').AsString := objJSON.GetValue<string>('JSON');
    MemBB_.Post;
end;

procedure TFrmCadastroBB.EditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  begin
    CarregaDados;
  end;
end;

end.
