object FrmCadastroPaises: TFrmCadastroPaises
  Left = 0
  Top = 0
  Caption = 'FrmCadastroPaises'
  ClientHeight = 631
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  TextHeight = 15
  object PanelGrid: TPanel
    Left = 0
    Top = 0
    Width = 903
    Height = 631
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 120
    ExplicitHeight = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 901
      Height = 41
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 118
      object EditSigla: TEdit
        AlignWithMargins = True
        Left = 4
        Top = 6
        Width = 173
        Height = 29
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        TabOrder = 0
        Text = 'Informe a sigla'
        TextHint = 'Informe a sigla'
        ExplicitHeight = 23
      end
      object ButtonPais: TButton
        AlignWithMargins = True
        Left = 183
        Top = 6
        Width = 106
        Height = 29
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Buscar Pa'#237's'
        TabOrder = 1
        OnClick = ButtonPaisClick
      end
      object ButtonSalvar: TButton
        AlignWithMargins = True
        Left = 295
        Top = 6
        Width = 98
        Height = 29
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Salvar'
        TabOrder = 2
      end
    end
    object PanelImagem: TPanel
      Left = 717
      Top = 42
      Width = 185
      Height = 588
      Align = alRight
      TabOrder = 1
      ExplicitLeft = -66
      ExplicitHeight = 399
      object ImgPais: TImage
        Left = 1
        Top = 1
        Width = 183
        Height = 586
        Align = alClient
        ExplicitLeft = 3
        ExplicitWidth = 181
      end
    end
    object GridDados: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 45
      Width = 710
      Height = 582
      Align = alClient
      DataSource = DataSourcePais
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'name'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cca2'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'population'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'flag'
          Width = 200
          Visible = True
        end>
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://restcountries.com/v3.1/alpha'
    Params = <>
    SynchronizedEvents = False
    Left = 136
    Top = 336
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 208
    Top = 240
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 272
    Top = 336
  end
  object MemTable_: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    ChangeAlertName = 'MemTable_'
    Left = 160
    Top = 88
    object MemTable_name: TStringField
      FieldName = 'name'
      Size = 300
    end
    object MemTable_cca2: TStringField
      FieldName = 'cca2'
      Size = 50
    end
    object MemTable_population: TLargeintField
      FieldName = 'population'
    end
    object MemTable_flag: TStringField
      FieldName = 'flag'
      Size = 500
    end
  end
  object DataSourcePais: TDataSource
    DataSet = MemTable_
    OnDataChange = DataSourcePaisDataChange
    Left = 272
    Top = 88
  end
end
