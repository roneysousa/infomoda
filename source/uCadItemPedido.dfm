object frmIncProdutos: TfrmIncProdutos
  Left = 293
  Top = 123
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Item do Pedidos'
  ClientHeight = 454
  ClientWidth = 683
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 683
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
    object lbl_nmprod: TLabel
      Left = 8
      Top = 7
      Width = 5
      Height = 13
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 683
    Height = 71
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 14
      Width = 40
      Height = 13
      Caption = '&Produto:'
      FocusControl = dbeCDPROD
      Transparent = True
    end
    object spLocalizar: TSpeedButton
      Left = 213
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
    object Label7: TLabel
      Left = 251
      Top = 14
      Width = 66
      Height = 13
      Caption = 'Valor Unit'#225'rio:'
    end
    object lbl_vlunit: TLabel
      Left = 350
      Top = 13
      Width = 29
      Height = 16
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 216
      Top = 48
      Width = 9
      Height = 13
      Caption = '...'
    end
    object dbeCDPROD: TDBEdit
      Left = 75
      Top = 9
      Width = 134
      Height = 21
      Hint = 'Digite o c'#243'digo do produto'
      DataField = 'ITP_CDPROD'
      DataSource = frmCadPedidos.dsItemPedido
      TabOrder = 0
      OnChange = dbeCDPRODChange
      OnEnter = dbeCDPRODEnter
      OnExit = dbeCDPRODExit
      OnKeyPress = dbeCDPRODKeyPress
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 97
    Width = 683
    Height = 287
    Align = alClient
    TabOrder = 2
    object GridGrade: TRxDBGrid
      Left = 1
      Top = 1
      Width = 681
      Height = 285
      Align = alClient
      DataSource = dsGrade
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColEnter = GridGradeColEnter
      OnEnter = GridGradeEnter
      OnKeyDown = GridGradeKeyDown
      OnKeyPress = GridGradeKeyPress
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'GRD_CODCOR'
          Title.Caption = 'CODIGO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_NOMCOR'
          Title.Caption = 'COR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA34'
          Title.Alignment = taCenter
          Title.Caption = '34'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA36'
          Title.Alignment = taCenter
          Title.Caption = '36/PP'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA38'
          Title.Alignment = taCenter
          Title.Caption = '38/P'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA40'
          Title.Alignment = taCenter
          Title.Caption = '40/M'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA42'
          Title.Alignment = taCenter
          Title.Caption = '42/G'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA44'
          Title.Alignment = taCenter
          Title.Caption = '44/GG'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA46'
          Title.Alignment = taCenter
          Title.Caption = '46'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA48'
          Title.Alignment = taCenter
          Title.Caption = '48'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRD_TAMA50'
          Title.Alignment = taCenter
          Title.Caption = '50'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'GRD_TOPROD'
          Title.Caption = 'QUANT.'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end>
    end
  end
  object pnlTotal: TPanel
    Left = 0
    Top = 384
    Width = 683
    Height = 29
    Align = alBottom
    TabOrder = 3
    object Label1: TLabel
      Left = 425
      Top = 6
      Width = 74
      Height = 13
      Caption = 'SUB-TOTAL:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object pnlSUBTOT: TPanel
      Left = 531
      Top = 1
      Width = 151
      Height = 27
      Hint = 'Valor o SUB-TOTAL'
      Align = alRight
      Alignment = taRightJustify
      Caption = '0,00'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 413
    Width = 683
    Height = 41
    Align = alBottom
    TabOrder = 4
    object btConfirmar: TBitBtn
      Left = 503
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Confirma dados'
      Caption = '&Confirma'
      TabOrder = 0
      OnClick = btConfirmarClick
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000E30E0000E30E00000001000000010000104A7B00184A
        840018528C0018529400185A9C00185AA5001863AD001863B500186BBD00186B
        C6001873CE001873D600187BDE00187BE7001884E7001884EF001884F700188C
        F700FF00FF00188CFF001894FF002194FF00299CFF00319CFF0039A5FF004AAD
        FF0052ADFF0063B5FF006BBDFF0084C6FF00ADDEFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00121F1F1F1F1F
        1F1F1F1F1F1F1F1F1F121F1A030404040505040403030201191F1F05080A0A0A
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F0F0F
        1D111111110E0A08031F1F0A0E11131D1F1D1111110E0B09041F1F0C11131D1F
        1D1F1D11110E0B0A051F1F0E131D1F1D11111F1D0F0C0A0A061F1F0F13131D11
        1111111F1D0B0A0A061F1F131515131311100F0F1F1D0A0A061F1F1318181514
        13130F0E0C1F1D0A061F1F151A1916151514110F0E0C1F0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
    object btCancelar: TBitBtn
      Left = 583
      Top = 8
      Width = 75
      Height = 25
      Hint = 'Fechar esta janela'
      Caption = '&Fechar'
      TabOrder = 1
      OnClick = btCancelarClick
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
  object dsGrade: TDataSource
    DataSet = dmInfoModa.tbGrade2
    OnDataChange = dsGradeDataChange
    Left = 552
    Top = 66
  end
  object dsCores: TDataSource
    DataSet = dmInfoModa.qryCores
    Left = 520
    Top = 64
  end
  object qryAtualizaQUANT: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACQTD')
    Left = 400
    Top = 26
  end
  object dsQUANT: TDataSource
    DataSet = qryQUANT
    Left = 488
    Top = 66
  end
  object qryQUANT: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select *  from  SACQTD Where (QTD_NRPEDI = :pNRPEDI)'
      'and (QTD_CDBARR = :pCDBARR)'
      'order by QTD_CDTAMA')
    Left = 528
    Top = 26
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCDBARR'
        ParamType = ptInput
        Value = ''
      end>
    object qryQUANTQTD_NRPEDI: TStringField
      FieldName = 'QTD_NRPEDI'
      Origin = 'INFOMODA."SACQTD.DB".QTD_NRPEDI'
      Size = 7
    end
    object qryQUANTQTD_CDBARR: TStringField
      FieldName = 'QTD_CDBARR'
      Origin = 'INFOMODA."SACQTD.DB".QTD_CDBARR'
      Size = 13
    end
    object qryQUANTQTD_CDTAMA: TStringField
      FieldName = 'QTD_CDTAMA'
      Origin = 'INFOMODA."SACQTD.DB".QTD_CDTAMA'
      Size = 2
    end
    object qryQUANTQTD_QTTAMA: TFloatField
      FieldName = 'QTD_QTTAMA'
      Origin = 'INFOMODA."SACQTD.DB".QTD_QTTAMA'
    end
  end
  object qrySUBTOT: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACGRA')
    Left = 496
    Top = 26
  end
  object qryDeleteItemPedido: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACITP Where (ITP_NRPEDI = :pNRPEDI)')
    Left = 464
    Top = 26
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryLimpar: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACGRA')
    Left = 432
    Top = 26
  end
end
