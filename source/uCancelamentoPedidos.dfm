object frmCancelamentoPedidos: TfrmCancelamentoPedidos
  Left = 193
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Cancelamento de Pedidos'
  ClientHeight = 341
  ClientWidth = 536
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
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 26
    Width = 536
    Height = 47
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 52
      Height = 13
      Caption = 'PEDIDO:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNRPEDI: TEdit
      Left = 65
      Top = 11
      Width = 121
      Height = 21
      Hint = 'Digite o n'#250'mero do pedido'
      MaxLength = 7
      TabOrder = 0
      OnChange = edtNRPEDIChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 536
    Height = 227
    Align = alClient
    TabOrder = 1
    object GridDados: TRxDBGrid
      Left = 1
      Top = 1
      Width = 534
      Height = 225
      Align = alClient
      DataSource = dsPedidos
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = GridDadosKeyDown
      Columns = <
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'PED_NRPEDI'
          Title.Caption = 'PEDIDO'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_NMCLIE'
          Title.Caption = 'CLIENTE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 292
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_NMVEND'
          Title.Caption = 'VENDEDOR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 226
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PED_DTPEDI'
          Title.Alignment = taCenter
          Title.Caption = 'DATA'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PED_TOPEDI'
          Title.Alignment = taRightJustify
          Title.Caption = 'VALOR'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 100
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 300
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 2
    object btFechar: TBitBtn
      Left = 679
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Fechar'
      TabOrder = 0
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
    object btCancelar: TBitBtn
      Left = 584
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = btCancelarClick
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
        0A0A0A0A0A090805001F1F060A0C0C0D0E111111110C0906021F1F090C0F1F1D
        111111111D1F0A08031F1F0A0E11131F1D11111D1F0E0B09041F1F0C11131111
        1F1D1D1F110E0B0A051F1F0E13111111111F1D110F0C0A0A061F1F0F13131111
        1D1F1F1D0E0B0A0A061F1F131515131D1F100F1F1D0A0A0A061F1F1318181D1F
        13130F0E1F1D0A0A061F1F151A191F151514110F0E1F0A0A061F1F181C1A1817
        16161513100F0C0A061F1F191D1C1A191817161514110F0A041F1F1E19171513
        1311110F0E0C0A081B1F121F1F1F1F1F1F1F1F1F1F1F1F1F1F12}
    end
  end
  object Panel4: TPanel
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
    TabOrder = 3
    object DBText1: TDBText
      Left = 16
      Top = 6
      Width = 60
      Height = 16
      AutoSize = True
      DataField = 'PED_NMCLIE'
      DataSource = dsPedidos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object qryPedidos: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from "SACPED.DB"  Where (PED_FLSITU="A")'
      'order by PED_NRPEDI')
    Left = 336
    Top = 34
    object qryPedidosPED_NRPEDI: TStringField
      FieldName = 'PED_NRPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_NRPEDI'
      Size = 7
    end
    object qryPedidosPED_DTPEDI: TDateField
      FieldName = 'PED_DTPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_DTPEDI'
    end
    object qryPedidosPED_HOPEDI: TStringField
      FieldName = 'PED_HOPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_HOPEDI'
      Size = 5
    end
    object qryPedidosPED_TOPEDI: TCurrencyField
      FieldName = 'PED_TOPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_TOPEDI'
    end
    object qryPedidosPED_CDVEND: TStringField
      FieldName = 'PED_CDVEND'
      Origin = 'INFOMODA."SACPED.DB".PED_CDVEND'
      Size = 6
    end
    object qryPedidosPED_FLSITU: TStringField
      FieldName = 'PED_FLSITU'
      Origin = 'INFOMODA."SACPED.DB".PED_FLSITU'
      Size = 1
    end
    object qryPedidosPED_CDCLIE: TStringField
      FieldName = 'PED_CDCLIE'
      Origin = 'INFOMODA."SACPED.DB".PED_CDCLIE'
      Size = 7
    end
    object qryPedidosPED_NMCLIE: TStringField
      FieldKind = fkLookup
      FieldName = 'PED_NMCLIE'
      LookupDataSet = dmInfoModa.qryClientes
      LookupKeyFields = 'CLI_CDCLIE'
      LookupResultField = 'CLI_NMCLIE'
      KeyFields = 'PED_CDCLIE'
      Size = 40
      Lookup = True
    end
    object qryPedidosPED_NMVEND: TStringField
      FieldKind = fkLookup
      FieldName = 'PED_NMVEND'
      LookupDataSet = dmInfoModa.qryVendedores
      LookupKeyFields = 'VEN_CDVEND'
      LookupResultField = 'VEN_NMVEND'
      KeyFields = 'PED_CDVEND'
      Size = 40
      Lookup = True
    end
  end
  object dsPedidos: TDataSource
    DataSet = qryPedidos
    Left = 368
    Top = 34
  end
  object qryCancelaPedido: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACPED')
    Left = 424
    Top = 34
  end
end
