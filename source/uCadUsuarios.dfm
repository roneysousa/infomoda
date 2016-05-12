object frmCadUsuarios: TfrmCadUsuarios
  Left = 247
  Top = 143
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Usu'#225'rios'
  ClientHeight = 306
  ClientWidth = 484
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 462
    Height = 306
    Align = alClient
    TabOrder = 0
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 460
      Height = 304
      Align = alClient
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 41
        Width = 44
        Height = 13
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 73
        Width = 37
        Height = 13
        Caption = 'Nome:'
        FocusControl = dbeNMUSUA
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 113
        Width = 38
        Height = 13
        Caption = 'Cargo:'
        FocusControl = dbeCargo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 16
        Top = 57
        Width = 65
        Height = 17
        DataField = 'SEN_CDUSUA'
        DataSource = dsUsuarios
      end
      object Label5: TLabel
        Left = 16
        Top = 152
        Width = 41
        Height = 13
        Caption = 'Senha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 16
        Top = 189
        Width = 54
        Height = 13
        Caption = 'Confirma:'
        FocusControl = dbeSenha
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbeNMUSUA: TDBEdit
        Left = 16
        Top = 89
        Width = 244
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_NMUSUA'
        DataSource = dsUsuarios
        TabOrder = 0
        OnExit = dbeNMUSUAExit
        OnKeyPress = FormKeyPress
      end
      object dbeCargo: TDBEdit
        Left = 16
        Top = 129
        Width = 244
        Height = 21
        CharCase = ecUpperCase
        DataField = 'SEN_NMCARG'
        DataSource = dsUsuarios
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object edtSenha: TEdit
        Left = 16
        Top = 166
        Width = 121
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 2
        OnExit = edtSenhaExit
        OnKeyPress = FormKeyPress
      end
      object dbeSenha: TDBEdit
        Left = 216
        Top = 173
        Width = 121
        Height = 21
        DataField = 'SEN_SNATUA'
        DataSource = dsUsuarios
        PasswordChar = '*'
        TabOrder = 3
        Visible = False
      end
      object edt_Confirma: TEdit
        Left = 16
        Top = 204
        Width = 121
        Height = 21
        MaxLength = 6
        PasswordChar = '*'
        TabOrder = 4
        OnExit = edt_ConfirmaExit
        OnKeyPress = edt_ConfirmaKeyPress
      end
      object dbGridUsuarios: TDBGrid
        Left = 1
        Top = 248
        Width = 458
        Height = 55
        Align = alBottom
        DataSource = dsUsuarios
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbGridUsuariosCellClick
        OnKeyDown = dbGridUsuariosKeyDown
        OnKeyPress = dbGridUsuariosKeyPress
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'SEN_CDUSUA'
            Title.Alignment = taCenter
            Title.Caption = 'C'#211'DIGO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEN_NMUSUA'
            Title.Alignment = taCenter
            Title.Caption = 'NOME'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 203
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEN_NMCARG'
            Title.Caption = 'CARGO'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 1
        Top = 1
        Width = 458
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Color = clBlue
        TabOrder = 6
        object DBText2: TDBText
          Left = 3
          Top = 4
          Width = 91
          Height = 24
          AutoSize = True
          DataField = 'SEN_NMUSUA'
          DataSource = dsUsuarios
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          Transparent = True
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 462
    Top = 0
    Width = 22
    Height = 306
    Align = alRight
    Caption = 'ToolBar1'
    Flat = True
    Images = frmPrincipal.ImageList1
    TabOrder = 1
    object btPrimeiro: TToolButton
      Left = 0
      Top = 0
      Hint = 'Primeiro registro'
      Caption = 'btPrimeiro'
      ImageIndex = 4
      Wrap = True
      OnClick = btPrimeiroClick
    end
    object btAnterior: TToolButton
      Left = 0
      Top = 22
      Hint = 'Registro anterior'
      Caption = 'btAnterior'
      ImageIndex = 5
      Wrap = True
      OnClick = btAnteriorClick
    end
    object btProximo: TToolButton
      Left = 0
      Top = 44
      Hint = 'Pr'#243'ximo registro'
      Caption = 'btProximo'
      ImageIndex = 6
      Wrap = True
      OnClick = btProximoClick
    end
    object btUltimo: TToolButton
      Left = 0
      Top = 66
      Hint = #218'ltimo registro'
      Caption = 'btUltimo'
      ImageIndex = 7
      Wrap = True
      OnClick = btUltimoClick
    end
    object btAdicionar: TToolButton
      Left = 0
      Top = 88
      Hint = 'Adicionar'
      Caption = 'btAdicionar'
      ImageIndex = 10
      Wrap = True
      OnClick = btAdicionarClick
    end
    object btEditar: TToolButton
      Left = 0
      Top = 110
      Hint = 'Editar'
      Caption = 'btEditar'
      ImageIndex = 2
      Wrap = True
      OnClick = btEditarClick
    end
    object btExcluir: TToolButton
      Left = 0
      Top = 132
      Hint = 'Excluir registro'
      Caption = 'btExcluir'
      ImageIndex = 3
      Wrap = True
      OnClick = btExcluirClick
    end
    object btGravar: TToolButton
      Left = 0
      Top = 154
      Hint = 'Gravar'
      Caption = 'btGravar'
      ImageIndex = 8
      Wrap = True
      OnClick = btGravarClick
    end
    object btCancelar: TToolButton
      Left = 0
      Top = 176
      Hint = 'Cancelar'
      Caption = 'btCancelar'
      ImageIndex = 9
      Wrap = True
      OnClick = btCancelarClick
    end
    object tbAcessos: TToolButton
      Left = 0
      Top = 198
      Hint = 'Acesso do usu'#225'rio'
      Caption = 'tbAcessos'
      ImageIndex = 19
      Wrap = True
      Visible = False
      OnClick = tbAcessosClick
    end
    object btLocalizar: TToolButton
      Left = 0
      Top = 220
      Hint = 'Localizar'
      Caption = 'btLocalizar'
      ImageIndex = 11
      Wrap = True
      OnClick = btLocalizarClick
    end
    object btSair: TToolButton
      Left = 0
      Top = 242
      Hint = 'Fechar'
      Caption = 'btSair'
      ImageIndex = 0
      OnClick = btSairClick
    end
  end
  object dsUsuarios: TDataSource
    DataSet = dmInfoModa.tbUsuarios
    OnStateChange = dsUsuariosStateChange
    OnDataChange = dsUsuariosDataChange
    Left = 280
    Top = 49
  end
  object dsTpAcesso: TDataSource
    Left = 313
    Top = 49
  end
end
