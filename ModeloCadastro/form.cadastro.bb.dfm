object FrmCadastroBB: TFrmCadastroBB
  Left = 0
  Top = 0
  Caption = 'FrmCadastroBB'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Enabled = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object FlowPanel: TFlowPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 622
    Height = 38
    Align = alTop
    TabOrder = 0
    object Edit: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 515
      Height = 23
      Hint = 'Informe qtd de frases..'
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alLeft
      TabOrder = 0
      Text = 'Informe qtd de frases..'
      OnKeyDown = EditKeyDown
    end
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 531
      Top = 6
      Width = 75
      Height = 25
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Align = alLeft
      Caption = 'BitBtn1'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 44
    Width = 628
    Height = 398
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = Memo1
        Row = 0
      end
      item
        Column = 0
        Control = Button1
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 1
    ExplicitLeft = -3
    ExplicitTop = 40
    DesignSize = (
      628
      398)
    object Memo1: TMemo
      Left = 329
      Top = 42
      Width = 282
      Height = 313
      Anchors = []
      TabOrder = 0
      ExplicitLeft = 327
      ExplicitTop = 10
    end
    object Button1: TButton
      Left = 120
      Top = 186
      Width = 75
      Height = 25
      Anchors = []
      Caption = 'Button1'
      TabOrder = 1
      ExplicitLeft = 9
      ExplicitTop = 26
    end
  end
  object RESTClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.breakingbadquotes.xyz/v1/quotes/5'
    Params = <>
    SynchronizedEvents = False
    Left = 296
    Top = 384
  end
  object RESTRequest: TRESTRequest
    Client = RESTClient
    Params = <>
    Response = RESTResponse
    SynchronizedEvents = False
    Left = 520
    Top = 384
  end
  object RESTResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 408
    Top = 384
  end
  object memBB_: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 200
    Top = 388
    object memBB_json: TStringField
      FieldName = 'json'
      Size = 2000
    end
  end
  object dsPaises_: TDataSource
    Left = 120
    Top = 388
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = memBB_
    ScopeMappings = <>
    Left = 32
    Top = 392
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'json'
      Control = Memo1
      Track = False
    end
  end
end
