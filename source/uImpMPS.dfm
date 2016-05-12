object frmImpMPS: TfrmImpMPS
  Left = 188
  Top = 115
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'MPS'
  ClientHeight = 429
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 32
    Align = alTop
    BevelOuter = bvNone
    Color = clBlue
    TabOrder = 0
    object lbl_NMPROD: TLabel
      Left = 5
      Top = 5
      Width = 584
      Height = 24
      AutoSize = False
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 32
    Width = 594
    Height = 71
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 13
      Caption = '&Produto:'
      FocusControl = edtCDPROD
    end
    object spLocalizar: TSpeedButton
      Left = 199
      Top = 10
      Width = 23
      Height = 22
      Hint = 'Localizar produtos'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        00008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF0084000000840000008400000084000000840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        000000FFFF00840000008400000084000000FF00FF00840000008400000000FF
        FF008400000084000000840000008400000084000000FF00FF00FF00FF008400
        0000840000008400000084000000840000008400000084000000840000008400
        000084000000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00
        FF008400000000FFFF00840000008400000084000000FF00FF008400000000FF
        FF00840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF008400000084000000840000008400000084000000FF00FF00840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008400000000FFFF0084000000FF00FF00FF00FF00FF00FF008400
        000000FFFF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00840000008400000084000000FF00FF00FF00FF00FF00FF008400
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = spLocalizarClick
    end
    object Label2: TLabel
      Left = 7
      Top = 40
      Width = 69
      Height = 13
      Caption = 'Periodo &Inicial:'
      FocusControl = edtDTINIC
      Transparent = True
    end
    object Label3: TLabel
      Left = 206
      Top = 40
      Width = 64
      Height = 13
      Caption = 'P&eriodo Final:'
      FocusControl = edtDTFINA
      Transparent = True
    end
    object edtCDPROD: TEdit
      Left = 77
      Top = 10
      Width = 121
      Height = 21
      MaxLength = 13
      TabOrder = 0
      OnChange = edtCDPRODChange
      OnExit = edtCDPRODExit
      OnKeyPress = edtCDPRODKeyPress
    end
    object edtDTINIC: TDateEdit
      Left = 77
      Top = 34
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
      OnExit = edtDTINICExit
      OnKeyPress = edtDTINICKeyPress
    end
    object edtDTFINA: TDateEdit
      Left = 277
      Top = 34
      Width = 121
      Height = 21
      TabStop = False
      NumGlyphs = 2
      ReadOnly = True
      TabOrder = 2
      OnEnter = edtDTFINAEnter
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 103
    Width = 594
    Height = 285
    Align = alClient
    TabOrder = 2
    object GridQUANT: TDBGrid
      Left = 1
      Top = 1
      Width = 592
      Height = 283
      Align = alClient
      DataSource = dsSemanas
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = GridQUANTKeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MPS_CDTAMA'
          Title.Caption = 'TAMANHO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MPS_NOMCOR'
          Title.Caption = 'COR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 144
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MPS_PRIMSM'
          Title.Caption = '1'#170' SEMANA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MPS_SEGUSM'
          Title.Caption = '2'#170' SEMANA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MPS_TERCSM'
          Title.Caption = '3'#170' SEMANA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MPS_QUARSM'
          Title.Caption = '4'#170' SEMANA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 388
    Width = 594
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
    object btFechar: TBitBtn
      Left = 504
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar a janela atual'
      Caption = '&Fechar'
      TabOrder = 1
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
    object btVisualizar: TBitBtn
      Left = 416
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Visualizar produto atual'
      Caption = '&Visualizar'
      TabOrder = 2
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
  end
  object qryLocProd: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select PRO_CDPROD, PRO_CDBARR, PRO_NMPROD from SACPRO'
      'Where (PRO_CDBARR=:pCDBARR)')
    Left = 240
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDBARR'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryPedidos: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select PED_NRPEDI, PED_DTPEDI  from SACPED Where '
      '(PED_DTPEDI>=:pDTINIC) AND (PED_DTPEDI<=:pDTFINA)')
    Left = 424
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'pDTINIC'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pDTFINA'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryItens: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select GTM_NRPEDI, GTM_CDPROD, GTM_CDTAMA, GTM_CODCOR, GTM_QTPRO' +
        'D'
      
        'from SACGTM Where (GTM_NRPEDI=:pNRPEDI) And (GTM_CDPROD=:pCDPROD' +
        ')')
    Left = 456
    Top = 40
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCDPROD'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryCores: TQuery
    Active = True
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select COR_CODCOR, COR_NOMCOR from SACCOR')
    Left = 488
    Top = 40
  end
  object qryLocItem: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select MPS_CDPROD, MPS_CDTAMA, MPS_CODCOR from SACMPS Where (MPS' +
        '_CDPROD=:pCDPROD)'
      'And (MPS_CDTAMA=:pCDTAMA) And (MPS_CODCOR=:pCODCOR)')
    Left = 424
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDPROD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCDTAMA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCODCOR'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryIncluirDados: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACMPS')
    Left = 544
    Top = 40
  end
  object qryProduto: TQuery
    OnCalcFields = qryProdutoCalcFields
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select  * from SACMPS Where (MPS_CDPROD=:pCDPROD)')
    Left = 344
    Top = 191
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDPROD'
        ParamType = ptInput
        Value = ''
      end>
    object qryProdutoMPS_NRPEDI: TStringField
      FieldName = 'MPS_NRPEDI'
      Origin = 'INFOMODA."SACMPS.DB".MPS_NRPEDI'
      Size = 7
    end
    object qryProdutoMPS_CDPROD: TStringField
      FieldName = 'MPS_CDPROD'
      Origin = 'INFOMODA."SACMPS.DB".MPS_CDPROD'
      Size = 13
    end
    object qryProdutoMPS_CODCOR: TStringField
      FieldName = 'MPS_CODCOR'
      Origin = 'INFOMODA."SACMPS.DB".MPS_CODCOR'
      Size = 3
    end
    object qryProdutoMPS_NOMCOR: TStringField
      FieldKind = fkLookup
      FieldName = 'MPS_NOMCOR'
      LookupDataSet = qryCores
      LookupKeyFields = 'COR_CODCOR'
      LookupResultField = 'COR_NOMCOR'
      KeyFields = 'MPS_CODCOR'
      Lookup = True
    end
    object qryProdutoMPS_CDTAMA: TStringField
      FieldName = 'MPS_CDTAMA'
      Origin = 'INFOMODA."SACMPS.DB".MPS_CDTAMA'
      Size = 2
    end
    object qryProdutoMPS_PRIMSM: TFloatField
      FieldName = 'MPS_PRIMSM'
      Origin = 'INFOMODA."SACMPS.DB".MPS_PRIMSM'
    end
    object qryProdutoMPS_SEGUSM: TFloatField
      FieldName = 'MPS_SEGUSM'
      Origin = 'INFOMODA."SACMPS.DB".MPS_SEGUSM'
    end
    object qryProdutoMPS_TERCSM: TFloatField
      FieldName = 'MPS_TERCSM'
      Origin = 'INFOMODA."SACMPS.DB".MPS_TERCSM'
    end
    object qryProdutoMPS_QUARSM: TFloatField
      FieldName = 'MPS_QUARSM'
      Origin = 'INFOMODA."SACMPS.DB".MPS_QUARSM'
    end
    object qryProdutoMPS_DESPRI: TStringField
      FieldKind = fkCalculated
      FieldName = 'MPS_DESPRI'
      Size = 40
      Calculated = True
    end
    object qryProdutoMPS_DESSEG: TStringField
      FieldKind = fkCalculated
      FieldName = 'MPS_DESSEG'
      Size = 40
      Calculated = True
    end
    object qryProdutoMPS_DESTER: TStringField
      FieldKind = fkCalculated
      FieldName = 'MPS_DESTER'
      Size = 40
      Calculated = True
    end
    object qryProdutoMPS_DESQUA: TStringField
      FieldKind = fkCalculated
      FieldName = 'MPS_DESQUA'
      Size = 40
      Calculated = True
    end
  end
  object dsSemanas: TDataSource
    DataSet = qryProduto
    Left = 384
    Top = 191
  end
  object qryLimparDB: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACMPS Where (MPS_CDPROD=:pCDPROD)')
    Left = 496
    Top = 88
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDPROD'
        ParamType = ptInput
        Value = ''
      end>
  end
end
