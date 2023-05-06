object FrmCadastroChuck: TFrmCadastroChuck
  AlignWithMargins = True
  Left = 0
  Top = 0
  Caption = 'Cadastro Chuck'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object DBGridChuck: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 622
    Height = 389
    Align = alClient
    DataSource = DataSourceChuck
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object PanelControle: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 622
    Height = 41
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 232
    ExplicitTop = 224
    ExplicitWidth = 185
    object ButtonBuscarFrase: TButton
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 93
      Height = 33
      Align = alLeft
      Caption = 'Buscar Frase'
      TabOrder = 0
      OnClick = ButtonBuscarFraseClick
    end
  end
  object DataSourceChuck: TDataSource
    DataSet = MemChuck
    Left = 240
    Top = 184
  end
  object MemChuck: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    ChangeAlertName = 'MemChuck_'
    Left = 128
    Top = 184
    object MemChuckicon_url: TStringField
      FieldName = 'icon_url'
      Size = 255
    end
    object MemChuckid: TStringField
      FieldName = 'id'
      Size = 30
    end
    object MemChuckurl: TStringField
      FieldName = 'url'
      Size = 255
    end
    object MemChuckvalue: TStringField
      FieldName = 'value'
      Size = 1000
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.chucknorris.io/jokes/random'
    Params = <>
    SynchronizedEvents = False
    Left = 120
    Top = 48
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 328
    Top = 48
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 224
    Top = 48
  end
  object TimerOpen: TTimer
    Enabled = False
    OnTimer = TimerOpenTimer
    Left = 528
    Top = 72
  end
end
