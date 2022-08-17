object fexccli: Tfexccli
  Left = 0
  Top = 0
  Caption = 'FORMU'#193'LRIO DE EXCLUS'#195'O DE DADOS DOS CLIENTES'
  ClientHeight = 469
  ClientWidth = 897
  Color = 8404992
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 44
    Height = 17
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 54
    Height = 17
    Caption = 'Cadastro'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 136
    Width = 37
    Height = 17
    Caption = 'Nome'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 176
    Width = 56
    Height = 17
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 216
    Width = 37
    Height = 17
    Caption = 'Bairro'
    FocusControl = DBEdit5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 256
    Width = 42
    Height = 17
    Caption = 'Cidade'
    FocusControl = DBEdit6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 296
    Width = 41
    Height = 17
    Caption = 'Estado'
    FocusControl = DBEdit7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 336
    Width = 106
    Height = 17
    Caption = 'Data Nascimento'
    FocusControl = DBEdit8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 8
    Top = 376
    Width = 39
    Height = 17
    Caption = 'E-mail'
    FocusControl = DBEdit9
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 8
    Top = 416
    Width = 23
    Height = 17
    Caption = 'CPF'
    FocusControl = DBEdit10
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 897
    Height = 49
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 165
      Height = 17
      Caption = 'Digite o c'#243'digo do cliente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 376
      Top = 8
      Width = 23
      Height = 22
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object Edit1: TEdit
      Left = 192
      Top = 8
      Width = 161
      Height = 24
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = Edit1Change
    end
    object btlimpar: TBitBtn
      Left = 656
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Limpar'
      TabOrder = 2
      OnClick = btlimparClick
    end
    object btfechar: TBitBtn
      Left = 800
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 3
      OnClick = btfecharClick
    end
    object btiniciar: TBitBtn
      Left = 488
      Top = 5
      Width = 137
      Height = 25
      Caption = '&Excluir cliente'
      Enabled = False
      TabOrder = 1
      OnClick = btiniciarClick
    end
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 72
    Width = 120
    Height = 21
    DataField = 'CODCLI'
    DataSource = dsclientes
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 112
    Width = 118
    Height = 21
    DataField = 'CADCLI'
    DataSource = dsclientes
    MaxLength = 10
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 152
    Width = 770
    Height = 21
    DataField = 'NOMCLI'
    DataSource = dsclientes
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 8
    Top = 192
    Width = 770
    Height = 21
    DataField = 'ENDCLI'
    DataSource = dsclientes
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 8
    Top = 232
    Width = 770
    Height = 21
    DataField = 'BAICLI'
    DataSource = dsclientes
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 8
    Top = 272
    Width = 770
    Height = 21
    DataField = 'CIDCLI'
    DataSource = dsclientes
    TabOrder = 6
  end
  object DBEdit7: TDBEdit
    Left = 8
    Top = 312
    Width = 27
    Height = 21
    DataField = 'ESTCLI'
    DataSource = dsclientes
    TabOrder = 7
  end
  object DBEdit8: TDBEdit
    Left = 8
    Top = 352
    Width = 118
    Height = 21
    DataField = 'DATCLI'
    DataSource = dsclientes
    MaxLength = 10
    TabOrder = 8
  end
  object DBEdit9: TDBEdit
    Left = 8
    Top = 392
    Width = 770
    Height = 21
    DataField = 'EMACLI'
    DataSource = dsclientes
    TabOrder = 9
  end
  object DBEdit10: TDBEdit
    Left = 8
    Top = 432
    Width = 248
    Height = 21
    DataField = 'CPFCLI'
    DataSource = dsclientes
    TabOrder = 10
  end
  object tbclientes: TFDTable
    IndexFieldNames = 'CODCLI'
    Connection = dm.FDConnection1
    UpdateOptions.AssignedValues = [uvEDelete, uvUpdateMode, uvGeneratorName, uvUpdateNonBaseFields, uvAutoCommitUpdates]
    UpdateOptions.UpdateTableName = 'CLIENTES'
    UpdateOptions.KeyFields = 'CODCLI'
    TableName = 'CLIENTES'
    Left = 392
    Top = 72
    object tbclientesCODCLI: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'CODCLI'
      Origin = 'CODCLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbclientesCADCLI: TDateField
      FieldName = 'CADCLI'
      Origin = 'CADCLI'
      Required = True
      EditMask = '99/99/9999'
    end
    object tbclientesNOMCLI: TStringField
      FieldName = 'NOMCLI'
      Origin = 'NOMCLI'
      Required = True
      Size = 60
    end
    object tbclientesENDCLI: TStringField
      FieldName = 'ENDCLI'
      Origin = 'ENDCLI'
      Required = True
      Size = 60
    end
    object tbclientesBAICLI: TStringField
      FieldName = 'BAICLI'
      Origin = 'BAICLI'
      Required = True
      Size = 60
    end
    object tbclientesCIDCLI: TStringField
      FieldName = 'CIDCLI'
      Origin = 'CIDCLI'
      Required = True
      Size = 60
    end
    object tbclientesESTCLI: TStringField
      FieldName = 'ESTCLI'
      Origin = 'ESTCLI'
      Required = True
      FixedChar = True
      Size = 2
    end
    object tbclientesDATCLI: TDateField
      FieldName = 'DATCLI'
      Origin = 'DATCLI'
      Required = True
      EditMask = '99/99/9999'
    end
    object tbclientesEMACLI: TStringField
      FieldName = 'EMACLI'
      Origin = 'EMACLI'
      Required = True
      Size = 60
    end
    object tbclientesCPFCLI: TStringField
      FieldName = 'CPFCLI'
      Origin = 'CPFCLI'
      Required = True
    end
  end
  object dsclientes: TDataSource
    DataSet = tbclientes
    Left = 468
    Top = 72
  end
end
