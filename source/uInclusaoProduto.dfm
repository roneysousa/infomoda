object frmInclusaoProdutos: TfrmInclusaoProdutos
  Left = 169
  Top = 112
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Inclus'#227'o de Produtos'
  ClientHeight = 410
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 613
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
  object pnlSuperior: TPanel
    Left = 0
    Top = 26
    Width = 613
    Height = 40
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 48
      Top = 14
      Width = 40
      Height = 13
      Caption = '&Produto:'
      FocusControl = dbeCDPROD
      Transparent = True
    end
    object Label7: TLabel
      Left = 259
      Top = 14
      Width = 66
      Height = 13
      Caption = 'Valor Unit'#225'rio:'
    end
    object spLocalizar: TSpeedButton
      Left = 221
      Top = 9
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
    object lbl_vlunit: TLabel
      Left = 358
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
    object dbeCDPROD: TDBEdit
      Left = 96
      Top = 9
      Width = 121
      Height = 21
      Hint = 'Digite o c'#243'digo do produto'
      DataField = 'ITP_CDPROD'
      DataSource = frmCadPedidos.dsItemPedido
      TabOrder = 0
      OnExit = dbeCDPRODExit
      OnKeyPress = dbeCDPRODKeyPress
    end
  end
  object pnlTamanhos1: TPanel
    Left = 0
    Top = 66
    Width = 613
    Height = 36
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 64
      Top = 11
      Width = 21
      Height = 13
      Caption = 'PP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 133
      Top = 11
      Width = 13
      Height = 13
      Caption = 'P:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 199
      Top = 11
      Width = 15
      Height = 13
      Caption = 'M:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label4: TLabel
      Left = 267
      Top = 11
      Width = 14
      Height = 13
      Caption = 'G:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 331
      Top = 11
      Width = 23
      Height = 13
      Caption = 'GG:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtPP: TEdit
      Left = 83
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 0
      OnEnter = edtPPEnter
      OnExit = edtPPExit
      OnKeyPress = edtPPKeyPress
    end
    object edtP: TEdit
      Left = 151
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 1
      OnEnter = edtPEnter
      OnExit = edtPExit
      OnKeyPress = edtPKeyPress
    end
    object edtM: TEdit
      Left = 219
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 2
      OnEnter = edtMEnter
      OnExit = edtMExit
      OnKeyPress = edtMKeyPress
    end
    object edtG: TEdit
      Left = 287
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 3
      OnEnter = edtGEnter
      OnExit = edtGExit
      OnKeyPress = edtGKeyPress
    end
    object edtGG: TEdit
      Left = 356
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 4
      OnEnter = edtGGEnter
      OnExit = edtGGExit
      OnKeyPress = edtGGKeyPress
    end
  end
  object pnlTamanhos2: TPanel
    Left = 0
    Top = 102
    Width = 613
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label8: TLabel
      Left = 2
      Top = 11
      Width = 19
      Height = 13
      Caption = '34:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label9: TLabel
      Left = 65
      Top = 11
      Width = 19
      Height = 13
      Caption = '36:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label10: TLabel
      Left = 129
      Top = 11
      Width = 19
      Height = 13
      Caption = '38:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 197
      Top = 11
      Width = 19
      Height = 13
      Caption = '40:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label12: TLabel
      Left = 267
      Top = 11
      Width = 19
      Height = 13
      Caption = '42:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label13: TLabel
      Left = 333
      Top = 11
      Width = 19
      Height = 13
      Caption = '44:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label14: TLabel
      Left = 401
      Top = 11
      Width = 19
      Height = 13
      Caption = '46:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label15: TLabel
      Left = 470
      Top = 11
      Width = 19
      Height = 13
      Caption = '48:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label16: TLabel
      Left = 534
      Top = 11
      Width = 19
      Height = 13
      Caption = '50:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edt34: TEdit
      Left = 23
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 0
      OnEnter = edt34Enter
      OnExit = edt34Exit
      OnKeyPress = edt34KeyPress
    end
    object edt36: TEdit
      Left = 83
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 1
      OnEnter = edt36Enter
      OnExit = edt36Exit
      OnKeyPress = edt36KeyPress
    end
    object edt38: TEdit
      Left = 151
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 2
      OnEnter = edt38Enter
      OnExit = edt38Exit
      OnKeyPress = edt38KeyPress
    end
    object edt40: TEdit
      Left = 219
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 3
      OnEnter = edt40Enter
      OnExit = edt40Exit
      OnKeyPress = edt40KeyPress
    end
    object edt42: TEdit
      Left = 287
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 4
      OnEnter = edt42Enter
      OnExit = edt42Exit
      OnKeyPress = edt42KeyPress
    end
    object edt44: TEdit
      Left = 356
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 5
      OnEnter = edt44Enter
      OnExit = edt44Exit
      OnKeyPress = edt44KeyPress
    end
    object edt46: TEdit
      Left = 424
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 6
      OnEnter = edt46Enter
      OnExit = edt46Exit
      OnKeyPress = edt46KeyPress
    end
    object edt48: TEdit
      Left = 489
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 7
      OnEnter = edt48Enter
      OnExit = edt48Exit
      OnKeyPress = edt48KeyPress
    end
    object edt50: TEdit
      Left = 557
      Top = 6
      Width = 41
      Height = 21
      MaxLength = 2
      TabOrder = 8
      OnEnter = edt50Enter
      OnExit = edt50Exit
      OnKeyPress = edt50KeyPress
    end
  end
  object pnlDados: TPanel
    Left = 0
    Top = 143
    Width = 613
    Height = 53
    Align = alTop
    TabOrder = 4
    object Label17: TLabel
      Left = 8
      Top = 8
      Width = 65
      Height = 13
      Caption = 'C'#211'D. COR:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label18: TLabel
      Left = 8
      Top = 31
      Width = 86
      Height = 13
      Caption = 'QUANTIDADE:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbl_NMCOR: TLabel
      Left = 223
      Top = 10
      Width = 13
      Height = 13
      Caption = '...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtCDCOR: TEdit
      Left = 96
      Top = 4
      Width = 121
      Height = 21
      MaxLength = 3
      TabOrder = 0
      OnChange = edtCDCORChange
      OnEnter = edtCDCOREnter
      OnExit = edtCDCORExit
      OnKeyPress = edtCDCORKeyPress
    end
    object edtQUANT: TEdit
      Left = 96
      Top = 27
      Width = 121
      Height = 21
      MaxLength = 2
      TabOrder = 1
      OnEnter = edtQUANTEnter
      OnExit = edtQUANTExit
      OnKeyPress = edtQUANTKeyPress
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 196
    Width = 613
    Height = 173
    Align = alClient
    TabOrder = 5
    object GridQUANT: TDBGrid
      Left = 1
      Top = 1
      Width = 611
      Height = 171
      Align = alClient
      DataSource = dsConsulta
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
          FieldName = 'TEM_CODCOR'
          Title.Caption = 'COD.COR'
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
          FieldName = 'TEM_NOMCOR'
          Title.Caption = 'DESCRI'#199#195'O'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 297
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TEM_QTPROD'
          Title.Caption = 'QUANTIDADE'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Visible = True
        end>
    end
  end
  object pnlBotoes: TPanel
    Left = 0
    Top = 369
    Width = 613
    Height = 41
    Align = alBottom
    TabOrder = 6
    object btConfirmar: TBitBtn
      Left = 425
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Confirma dados'
      Caption = '&Gravar'
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
    object btFechar: TBitBtn
      Left = 513
      Top = 9
      Width = 75
      Height = 25
      Hint = 'Fechar esta janela'
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
  end
  object qryConsulta: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACQPR Where (TEM_NRPEDI = :pNRPEDI)'
      'AND (TEM_CDTAMA=:pCDTAMA)')
    Left = 320
    Top = 159
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCDTAMA'
        ParamType = ptInput
        Value = ''
      end>
    object qryConsultaTEM_NRPEDI: TStringField
      FieldName = 'TEM_NRPEDI'
      Origin = 'INFOMODA."SACQPR.DB".TEM_NRPEDI'
      Size = 7
    end
    object qryConsultaTEM_CDPROD: TStringField
      FieldName = 'TEM_CDPROD'
      Origin = 'INFOMODA."SACQPR.DB".TEM_CDPROD'
      Size = 13
    end
    object qryConsultaTEM_CODCOR: TStringField
      FieldName = 'TEM_CODCOR'
      Origin = 'INFOMODA."SACQPR.DB".TEM_CODCOR'
      Size = 3
    end
    object qryConsultaTEM_NOMCOR: TStringField
      FieldKind = fkLookup
      FieldName = 'TEM_NOMCOR'
      LookupDataSet = dmInfoModa.qryCores
      LookupKeyFields = 'COR_CODCOR'
      LookupResultField = 'COR_NOMCOR'
      KeyFields = 'TEM_CODCOR'
      Size = 40
      Lookup = True
    end
    object qryConsultaTEM_QTPROD: TFloatField
      FieldName = 'TEM_QTPROD'
      Origin = 'INFOMODA."SACQPR.DB".TEM_QTPROD'
    end
    object qryConsultaTEM_CDTAMA: TStringField
      FieldName = 'TEM_CDTAMA'
      Origin = 'INFOMODA."SACQPR.DB".TEM_CDTAMA'
      Size = 2
    end
    object qryConsultaTEM_TAMANH: TStringField
      FieldName = 'TEM_TAMANH'
      Origin = 'INFOMODA."SACQPR.DB".TEM_TAMANH'
      Size = 2
    end
  end
  object qryIncItem: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'INSERT INTO SACQPR (TEM_NRPEDI, TEM_CDPROD, TEM_CODCOR, TEM_QTPR' +
        'OD, TEM_CDTAMA, TEM_TAMANH) '
      
        'VALUES (:pNRPEDI, :pCDPROD, :pCODCOR, :pQTPROD, :pCDTAMA, :pTAMA' +
        'NH)')
    Left = 352
    Top = 159
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
      end
      item
        DataType = ftString
        Name = 'pCDTAMA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pTAMANH'
        ParamType = ptInput
        Value = ''
      end>
  end
  object dsConsulta: TDataSource
    DataSet = qryConsulta
    Left = 384
    Top = 159
  end
  object qryCor: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACCOR Where (COR_CODCOR=:pCODCOR)')
    Left = 464
    Top = 162
    ParamData = <
      item
        DataType = ftString
        Name = 'pCODCOR'
        ParamType = ptInput
        Value = ''
      end>
    object qryCorCOR_CODCOR: TStringField
      FieldName = 'COR_CODCOR'
      Origin = 'INFOMODA."SACCOR.DBF".COR_CODCOR'
      Size = 3
    end
    object qryCorCOR_NOMCOR: TStringField
      FieldName = 'COR_NOMCOR'
      Origin = 'INFOMODA."SACCOR.DBF".COR_NOMCOR'
      Size = 40
    end
  end
  object qryLimparGrid: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACQPR Where (TEM_NRPEDI = :pNRPEDI)')
    Left = 424
    Top = 159
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryTOTALPRO: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select  SUM(GTM_QTPROD) GTM_TOTAL from SACGTM '
      'Where (GTM_NRPEDI = :pNRPEDI) AND (GTM_CDPROD = :pCDPROD)')
    Left = 496
    Top = 159
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
    object qryTOTALPROGTM_TOTAL: TFloatField
      FieldName = 'GTM_TOTAL'
      Origin = 'INFOMODA."SACGTM.DB".GTM_QTPROD'
    end
  end
  object qryLimparTemp: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACQPR Where (TEM_NRPEDI=:pNRPEDI)')
    Left = 552
    Top = 159
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
  end
  object qryLimpaTamanho: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete from SACQPR Where (TEM_NRPEDI=:pNRPEDI)'
      'And (TEM_CDTAMA=:pCDTAMA)')
    Left = 488
    Top = 58
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
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
  object qryQTTAMA: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select SUM(TEM_QTPROD) TEM_TOTPRO from SACQPR'
      'Where (TEM_NRPEDI=:pNRPEDI) AND (TEM_CDTAMA=:pCDTAMA)')
    Left = 528
    Top = 58
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'pCDTAMA'
        ParamType = ptInput
        Value = ''
      end>
    object qryQTTAMATEM_TOTPRO: TFloatField
      FieldName = 'TEM_TOTPRO'
      Origin = 'INFOMODA."SACQPR.DB".TEM_QTPROD'
    end
  end
  object qryGravarItens: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACQPR Where (TEM_NRPEDI = :pNRPEDI)'
      '')
    Left = 272
    Top = 159
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
    object qryGravarItensTEM_NRPEDI: TStringField
      FieldName = 'TEM_NRPEDI'
      Origin = 'INFOMODA."SACQPR.DB".TEM_NRPEDI'
      Size = 7
    end
    object qryGravarItensTEM_CDPROD: TStringField
      FieldName = 'TEM_CDPROD'
      Origin = 'INFOMODA."SACQPR.DB".TEM_CDPROD'
      Size = 13
    end
    object qryGravarItensTEM_CODCOR: TStringField
      FieldName = 'TEM_CODCOR'
      Origin = 'INFOMODA."SACQPR.DB".TEM_CODCOR'
      Size = 3
    end
    object qryGravarItensTEM_CDTAMA: TStringField
      FieldName = 'TEM_CDTAMA'
      Origin = 'INFOMODA."SACQPR.DB".TEM_CDTAMA'
      Size = 2
    end
    object qryGravarItensTEM_TAMANH: TStringField
      FieldName = 'TEM_TAMANH'
      Origin = 'INFOMODA."SACQPR.DB".TEM_TAMANH'
      Size = 2
    end
    object qryGravarItensTEM_QTPROD: TFloatField
      FieldName = 'TEM_QTPROD'
      Origin = 'INFOMODA."SACQPR.DB".TEM_QTPROD'
    end
  end
end
