object frmConfRemessa: TfrmConfRemessa
  Left = 252
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Remessa'
  ClientHeight = 205
  ClientWidth = 383
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 383
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    Color = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 383
    Height = 138
    Align = alClient
    TabOrder = 2
    object Label2: TLabel
      Left = 591
      Top = 18
      Width = 69
      Height = 13
      Caption = 'Periodo &Inicial:'
      Transparent = True
      Visible = False
    end
    object Label3: TLabel
      Left = 591
      Top = 39
      Width = 64
      Height = 13
      Caption = 'Periodo &Final:'
      Transparent = True
      Visible = False
    end
    object Label1: TLabel
      Left = 7
      Top = 15
      Width = 66
      Height = 13
      Caption = 'Pedido &Inicial:'
      FocusControl = edtPDINIC
      Transparent = True
    end
    object Label4: TLabel
      Left = 7
      Top = 36
      Width = 61
      Height = 13
      Caption = '&Pedido Final:'
      FocusControl = edtDTFINA
      Transparent = True
    end
    object edtDTINIC: TDateEdit
      Left = 662
      Top = 10
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      Visible = False
    end
    object edtDTFINA: TDateEdit
      Left = 662
      Top = 33
      Width = 121
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 2
      Visible = False
    end
    object edtPDINIC: TEdit
      Left = 80
      Top = 6
      Width = 121
      Height = 21
      MaxLength = 7
      TabOrder = 0
      OnChange = edtPDINICChange
      OnEnter = edtPDINICEnter
      OnExit = edtPDINICExit
      OnKeyPress = edtPDINICKeyPress
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 164
    Width = 383
    Height = 41
    Align = alBottom
    TabOrder = 3
    object btGerar: TBitBtn
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gerar...'
      TabOrder = 0
      OnClick = btGerarClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        777700000000000077770FFFFFFFFFF077770F00F00000F077770FFFFFFFFFF0
        77770F00F00000F077770FFFFFFFFFF077770FFFFFFF0FF077770F00FFF070F0
        77740F070F07070007440FF07070707770440000070707777744777770707777
        7744777777077777704477777770000007447777777777777777}
    end
    object btVisualizar: TBitBtn
      Left = 190
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Visualizar produto atual'
      Caption = '&Visualizar'
      TabOrder = 1
      Visible = False
      OnClick = btVisualizarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        A46769A46769A46769A46769A46769A46769A46769A46769A46769A46769A467
        69A46769A46769FF00FFFF00FFFF00FF485360FEE9C7F4DAB5F3D5AAF2D0A0EF
        CB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF00FFFF00FF4380B7
        1F6FC2656B86F3DABCF2D5B1F0D0A7EECB9EEDC793EDC28BE9BD81E9BD7FE9BD
        7FEFC481A46769FF00FFFF00FFFF00FF32A3FF1672D76B6A80F2DABCF2D5B2EF
        D0A9EECB9EEDC796EBC28CE9BD82E9BD7FEFC481A46769FF00FFFF00FFFF00FF
        A0675B34A1FF1572D45E6782F3DABBF2D5B1F0D0A6EECB9EEDC795EBC28AEABF
        81EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF033A6FF4078AD8E675EAC
        7F7597645EAC7D6FCAA083EDC695EBC28AEFC583A46769FF00FFFF00FFFF00FF
        A7756BFFFFFCFAF0E6AD8A88B78F84D8BAA5EED5B6D7B298B58877CBA083EBC7
        93F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFFFEF7F2AF847FDAC0B4F7
        E3CFF6E0C5FFFFF4D7B198AC7D6FEECC9EF3CE97A46769FF00FFFF00FFFF00FF
        BC8268FFFFFFFFFEFC976560F6E9E0F7EADAF6E3CFFFFFEBEFD4B797645EF0D0
        A6F6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFFFFFFFFB08884DECAC4FA
        EFE5F8EAD9FFFFD4D9B8A5AC7F74F4D8B1EBCFA4A46769FF00FFFF00FFFF00FF
        D1926DFFFFFFFFFFFFD5BFBCBA9793DECAC4F6E9DEDAC0B4B78F84B28C7BDECE
        B4B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFD5BFBCB0
        8884976560AF867FCAA79DA56B5FA56B5FA56B5FA46769FF00FFFF00FFFF00FF
        DA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7DAC1BAA56B5FE19E
        55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF00FFFF00FFFF00FF
        E7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EFD8C2C0A56B5FC183
        6CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD1926DD1926DD1926DD1
        926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF00FF}
    end
    object btFechar: TBitBtn
      Left = 294
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar a janela atual'
      Caption = '&Fechar'
      TabOrder = 2
      OnClick = btFecharClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4BA64B4BA9
        4D4D4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        824B4B824B4BB64F50C24F50C54D4EB24D4E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FF824B4BD45859CB5556C95455C95253B7
        4F524E1E1FFE8B8CFB9A9CF8AAABF7B5B6F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BD75C5DD05A5BCF595ACF5758BD53564E1E1F23B54A13C14816BD480CBC
        41F7B5B6824B4BFF00FFFF00FFFF00FF824B4BDD6364D75F60D55E5FD55C5DC2
        575A4E1E1F2AB44D1CBF4C1EBC4C13BC45F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BE36869DD6566DA6364DE6667C6595B4E1E1F26B14916BC481BBB4910BB
        43F7B5B6824B4BFF00FFFF00FFFF00FF824B4BEB6D6EE26768E67E7FFAD3D4CC
        6E704E1E1FA5D89750D16F42C9662DC758F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BF27374E96C6DEB8182FCD1D3CF6E704E1E1FFFF2CCFFFFD7FFFFD4E6FC
        C7F7B5B6824B4BFF00FFFF00FFFF00FF824B4BF87879F07576EE7273F07374D1
        65664E1E1FFCEFC7FFFFD5FFFFD3FFFFD7F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFE7F80F77A7BF6797AF77779D76B6B4E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4BFF8384FC7F80FB7E7FFE7F80DA
        6E6F4E1E1FFCEFC7FFFFD5FFFFD3FFFFD5F7B5B6824B4BFF00FFFF00FFFF00FF
        824B4BFF8889FF8283FF8182FF8283E073744E1E1FFCEFC7FFFFD5FFFFD3FFFF
        D5F7B5B6824B4BFF00FFFF00FFFF00FF824B4B824B4BE27576FE8182FF8687E5
        76774E1E1FFAEBC5FCFBD1FCFBCFFCFBD1F7B5B6824B4BFF00FFFF00FFFF00FF
        FF00FFFF00FF824B4B9C5657CB6C6DCF6E6E4E1E1F824B4B824B4B824B4B824B
        4B824B4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B82
        4B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object edtPDFINA: TEdit
    Left = 80
    Top = 57
    Width = 121
    Height = 21
    MaxLength = 7
    TabOrder = 1
    OnExit = edtPDFINAExit
    OnKeyPress = edtPDFINAKeyPress
  end
  object qryProdutosRemessa: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACREM order by REM_CDPROD')
    Left = 288
    Top = 34
    object qryProdutosRemessaREM_NRSEQU: TIntegerField
      FieldName = 'REM_NRSEQU'
      Origin = 'INFOMODA."SACREM.DB".REM_NRSEQU'
    end
    object qryProdutosRemessaREM_CDPROD: TStringField
      FieldName = 'REM_CDPROD'
      Origin = 'INFOMODA."SACREM.DB".REM_CDPROD'
      Size = 13
    end
    object qryProdutosRemessaREM_NMPROD: TStringField
      FieldKind = fkLookup
      FieldName = 'REM_NMPROD'
      LookupDataSet = qryProdutos
      LookupKeyFields = 'PRO_CDBARR'
      LookupResultField = 'PRO_NMPROD'
      KeyFields = 'REM_CDPROD'
      Size = 40
      Lookup = True
    end
    object qryProdutosRemessaREM_QTPROD: TFloatField
      FieldName = 'REM_QTPROD'
      Origin = 'INFOMODA."SACREM.DB".REM_QTPROD'
    end
  end
  object dsProdutos: TDataSource
    DataSet = qryProdutosRemessa
    Left = 320
    Top = 34
  end
  object qryProdutos: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select PRO_CDPROD, PRO_CDBARR, PRO_NMPROD from "SACPRO.DBF"')
    Left = 248
    Top = 106
  end
  object qryLimparRemessa: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACRIT')
    Left = 248
    Top = 36
  end
  object qryPedido: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select PED_NRPEDI, PED_DTPEDI from SACPED Where (PED_NRPEDI>=:pN' +
        'RINIC) '
      'And (PED_NRPEDI<=:pNRFINA)')
    Left = 264
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRINIC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pNRFINA'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryItens: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select GTM_NRPEDI, GTM_CDPROD, GTM_CDTAMA, GTM_CODCOR, GTM_QTPRO' +
        'D'
      'from SACGTM Where (GTM_NRPEDI=:pNRPEDI)')
    Left = 296
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryLocItem: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select RIT_CDPROD, RIT_CODCOR from SACRIT Where (RIT_CDPROD=:pCD' +
        'PROD) And (RIT_CODCOR=:pCODCOR) '
      'AND (RIT_CDTAMA=:pCDTAMA)')
    Left = 328
    Top = 76
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDPROD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCODCOR'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCDTAMA'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryIncluirDados: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACRIT')
    Left = 248
    Top = 136
  end
  object qryIncRemessa: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACREM')
    Left = 208
    Top = 114
  end
  object qryLocRemessa: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select REM_CDPROD from SACREM Where (REM_CDPROD=:pCDPROD)')
    Left = 320
    Top = 122
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDPROD'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryExistPedido: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select PED_NRPEDI from SACPED Where (PED_NRPEDI=:pNRPEDI)')
    Left = 16
    Top = 98
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
  end
end
