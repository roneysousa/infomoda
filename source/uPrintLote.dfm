object frmPrintLote: TfrmPrintLote
  Left = 192
  Top = 114
  Width = 544
  Height = 375
  Caption = 'Impress'#227'o de Lote'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 536
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
    Width = 536
    Height = 47
    Align = alTop
    TabOrder = 1
    object lbl_NRLOTE: TLabel
      Left = 8
      Top = 14
      Width = 30
      Height = 13
      Caption = '&Lote:'
      FocusControl = edtNRLOTE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtNRLOTE: TEdit
      Left = 40
      Top = 10
      Width = 121
      Height = 21
      MaxLength = 7
      TabOrder = 0
      OnChange = edtNRLOTEChange
      OnKeyPress = edtNRLOTEKeyPress
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 73
    Width = 536
    Height = 186
    Align = alClient
    TabOrder = 2
    object GridPedidos: TDBGrid
      Left = 1
      Top = 1
      Width = 534
      Height = 184
      Align = alClient
      DataSource = dsProdutosLote
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'LOT_CDPROD'
          Title.Caption = 'C'#211'DIGO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOT_NMPRO2'
          Title.Caption = 'PRODUTO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 330
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'LOT_QTPROD'
          Title.Caption = 'QUANTIDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 123
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 259
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 3
  end
  object Panel4: TPanel
    Left = 0
    Top = 300
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 4
    object btVisualizar: TBitBtn
      Left = 608
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Visualizar produto atual'
      Caption = '&Visualizar'
      TabOrder = 0
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
      Left = 696
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
    object btImprimir: TBitBtn
      Left = 16
      Top = 8
      Width = 100
      Height = 25
      Hint = 'Imprimi todos os produtos do lote atual'
      Caption = '&Imprimir Todos'
      TabOrder = 1
      OnClick = btImprimirClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000004000
        000080000000FF000000002000004020000080200000FF200000004000004040
        000080400000FF400000006000004060000080600000FF600000008000004080
        000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
        000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
        200080002000FF002000002020004020200080202000FF202000004020004040
        200080402000FF402000006020004060200080602000FF602000008020004080
        200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
        200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
        400080004000FF004000002040004020400080204000FF204000004040004040
        400080404000FF404000006040004060400080604000FF604000008040004080
        400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
        400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
        600080006000FF006000002060004020600080206000FF206000004060004040
        600080406000FF406000006060004060600080606000FF606000008060004080
        600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
        600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
        800080008000FF008000002080004020800080208000FF208000004080004040
        800080408000FF408000006080004060800080608000FF608000008080004080
        800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
        800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
        A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
        A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
        A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
        A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
        C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
        C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
        C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
        C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
        FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
        FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
        FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
        FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00DBDBDBDBDBDB
        DBDBDBDBDBDBDBDBDBDBDBDB0000000000000000000000DBDBDBDB00DBDBDBDB
        DBDBDBDBDB00DB00DBDB00000000000000000000000000DB00DB00DBDBDBDBDB
        DBFCFCFCDBDB000000DB00DBDBDBDBDBDB929292DBDB00DB00DB000000000000
        00000000000000DBDB0000DBDBDBDBDBDBDBDBDBDB00DB00DB00DB0000000000
        0000000000DB00DB0000DBDB00FFFFFFFFFFFFFFFF00DB00DB00DBDBDB00FF00
        00000000FF00000000DBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00FF
        0000000000FF00DBDBDBDBDBDBDB00FFFFFFFFFFFFFFFF00DBDBDBDBDBDBDB00
        0000000000000000DBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDBDB}
    end
    object btRemessa: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Remessa'
      TabOrder = 3
      Visible = False
      OnClick = btRemessaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777700000000000777770FFFFFFFFF0777770F888888F
        F0777770FFFFFFFFF0777770F8888888F0777770FFFFFFFFF0777770F000000F
        F0777770FFFFFFFFF0777770F8888888F0777770FFFFFFFFF077777444444444
        4477777444444444447777777777777777777777777777777777}
    end
  end
  object dsProdutosLote: TDataSource
    DataSet = qryLotes
    OnDataChange = dsProdutosLoteDataChange
    Left = 248
    Top = 32
  end
  object qryLotes: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACLOT Where (LOT_NRLOTE=:pNRLOTE) '
      'And (LOT_QTPROD>=:pQTMINI) order by LOT_CDPROD')
    Left = 288
    Top = 34
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRLOTE'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftFloat
        Name = 'pQTMINI'
        ParamType = ptInput
        Value = 0.000000000000000000
      end>
    object qryLotesLOT_NRSEQU: TStringField
      FieldName = 'LOT_NRSEQU'
      Origin = 'INFOMODA."SACLOT.DB".LOT_NRSEQU'
      Size = 10
    end
    object qryLotesLOT_NRLOTE: TStringField
      FieldName = 'LOT_NRLOTE'
      Origin = 'INFOMODA."SACLOT.DB".LOT_NRLOTE'
      Size = 7
    end
    object qryLotesLOT_NRPEDI: TStringField
      FieldName = 'LOT_NRPEDI'
      Origin = 'INFOMODA."SACLOT.DB".LOT_NRPEDI'
      Size = 7
    end
    object qryLotesLOT_CDPROD: TStringField
      FieldName = 'LOT_CDPROD'
      Origin = 'INFOMODA."SACLOT.DB".LOT_CDPROD'
      Size = 13
    end
    object qryLotesLOT_NMPROD: TStringField
      FieldName = 'LOT_NMPROD'
      Origin = 'INFOMODA."SACLOT.DB".LOT_NMPROD'
      Size = 40
    end
    object qryLotesLOT_QTPROD: TFloatField
      FieldName = 'LOT_QTPROD'
      Origin = 'INFOMODA."SACLOT.DB".LOT_QTPROD'
    end
    object qryLotesLOT_NMPRO2: TStringField
      FieldKind = fkLookup
      FieldName = 'LOT_NMPRO2'
      LookupDataSet = dmInfoModa.qryProduto
      LookupKeyFields = 'PRO_CDBARR'
      LookupResultField = 'PRO_NMPROD'
      KeyFields = 'LOT_CDPROD'
      Size = 40
      Lookup = True
    end
  end
  object qryQUANTIDADE: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select SUM(ITP_QTPROD)  TOTAL from SACITP'
      'Where (ITP_NRPEDI=:fNRPEDI) And (ITP_CDPROD=:fCDPROD)')
    Left = 320
    Top = 34
    ParamData = <
      item
        DataType = ftString
        Name = 'fNRPEDI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'fCDPROD'
        ParamType = ptInput
        Value = ''
      end>
    object qryQUANTIDADETOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = 'INFOMODA."SACITP.DB".ITP_QTPROD'
    end
  end
  object qryLocalizar: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACLOT Where (LOT_NRLOTE=:pNRLOTE) '
      'and (LOT_CDPROD=:pCDPROD) ')
    Left = 352
    Top = 34
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRLOTE'
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
  object qryQTCORES: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select SUM(GTM_QTPROD) GTM_TOQUAN from SACGTM Where (GTM_NRLOTE=' +
        ':pNRLOTE)'
      'And (GTM_CDPROD=:pCDPROD)'
      'and (GTM_CODCOR=:pCODCOR)')
    Left = 432
    Top = 34
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRLOTE'
        ParamType = ptInput
        Value = ''
      end
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
      end>
    object qryQTCORESGTM_TOQUAN: TFloatField
      FieldName = 'GTM_TOQUAN'
      Origin = 'INFOMODA."SACGTM.DB".GTM_QTPROD'
    end
  end
  object qryQTNUMEROS: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select SUM(GTM_QTPROD) GTM_TOQUAN from SACGTM Where (GTM_NRLOTE=' +
        ':pNRLOTE)'
      'And (GTM_CDPROD=:pCDPROD)'
      'and (GTM_TAMANH=:pTAMANH)')
    Left = 464
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pNRLOTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pCDPROD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pTAMANH'
        ParamType = ptUnknown
      end>
  end
  object qryProdLote: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACGTM')
    Left = 200
    Top = 34
    object qryProdLoteGTM_NRPEDI: TStringField
      FieldName = 'GTM_NRPEDI'
      Origin = 'INFOMODA."SACGTM.DB".GTM_NRPEDI'
      Size = 7
    end
    object qryProdLoteGTM_NRLOTE: TStringField
      FieldName = 'GTM_NRLOTE'
      Origin = 'INFOMODA."SACGTM.DB".GTM_NRLOTE'
      Size = 7
    end
    object qryProdLoteGTM_CDPROD: TStringField
      FieldName = 'GTM_CDPROD'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CDPROD'
      Size = 13
    end
    object qryProdLoteGTM_CDTAMA: TStringField
      FieldName = 'GTM_CDTAMA'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CDTAMA'
      Size = 2
    end
    object qryProdLoteGTM_CODCOR: TStringField
      FieldName = 'GTM_CODCOR'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CODCOR'
      Size = 3
    end
    object qryProdLoteGTM_TAMANH: TStringField
      FieldName = 'GTM_TAMANH'
      Origin = 'INFOMODA."SACGTM.DB".GTM_TAMANH'
      Size = 2
    end
    object qryProdLoteGTM_QTPROD: TFloatField
      FieldName = 'GTM_QTPROD'
      Origin = 'INFOMODA."SACGTM.DB".GTM_QTPROD'
    end
    object qryProdLoteGTM_FLSITU: TStringField
      FieldName = 'GTM_FLSITU'
      Origin = 'INFOMODA."SACGTM.DB".GTM_FLSITU'
      Size = 1
    end
  end
  object qryIncItemRem: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'INSERT INTO SACRIT (RIT_CDPROD, RIT_CDTAMA, RIT_NRLOTE, RIT_CODC' +
        'OR, RIT_QTPROD)'
      'VALUES (:pCDPROD, :pCDTAMA, :pNRLOTE, :pCODCOR, :pQTPROD)')
    Left = 344
    Top = 308
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
        Name = 'pNRLOTE'
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
        DataType = ftFloat
        Name = 'pQTPROD'
        ParamType = ptInput
        Value = 0.000000000000000000
      end>
  end
  object qryLocItem: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select RIT_CDPROD, RIT_CODCOR from SACRIT Where (RIT_CDPROD=:pCD' +
        'PROD) And (RIT_CODCOR=:pCODCOR) '
      'AND (RIT_CDTAMA=:pCDTAMA)')
    Left = 384
    Top = 308
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
  object qryAtualizarItem: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'UpDate SACRIT SET RIT_QTPROD = RIT_QTPROD + :pQTPROD'
      'Where (RIT_CDPROD=:pCDPROD) And (RIT_CODCOR=:pCODCOR)'
      'And (RIT_CDTAMA=:pCDTAMA)'
      '')
    Left = 416
    Top = 308
    ParamData = <
      item
        DataType = ftFloat
        Name = 'pQTPROD'
        ParamType = ptInput
        Value = 0.000000000000000000
      end
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
  object qryRemessa: TQuery
    DatabaseName = 'InfoModa'
    Left = 448
    Top = 308
  end
  object qryLimparRemessa: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACRIT')
    Left = 488
    Top = 308
  end
  object qryPedido: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select PED_NRPEDI, PED_NRLOTE from SACPED Where (PED_NRLOTE=:pNR' +
        'LOTE) ')
    Left = 312
    Top = 275
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRLOTE'
        ParamType = ptInput
        Value = ''
      end>
  end
end
